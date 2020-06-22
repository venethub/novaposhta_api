# frozen_string_literal: true

module NovaposhtaApi
  class Client
    attr_reader :api_url, :api_key

    def initialize(api_url: nil, api_key:)
      @api_url = api_url || ENV['NOVAPOSHTA_URL']
      @api_key = api_key || delivery_member_api_key || ENV['NOVAPOSHTA_KEY']
    end

    def self.resources
      {
        cities: Resources::CityResource,
        counterparties: Resources::CounterpartyResource,
        internet_documents: Resources::InternetDocumentResource,
        settlements: Resources::SettlementResource,
        warehouses: Resources::WarehouseResource
      }
    end

    def method_missing(name, *args, &block)
      if self.class.resources.keys.include?(name)
        resources[name] ||= self.class.resources[name].new(connection: connection)
        resources[name]
      else
        super
      end
    end

    def respond_to_missing?(method_name, include_private = false)
      self.class.resources.keys.include?(method_name) || super
    end

    def resources
      @resources ||= {}
    end

    def connection
      @connection ||= NovaposhtaApi::HttpClient.new(
        uri: api_url,
        api_key: api_key
      )
    end

    def delivery_member_api_key
      @delivery_member_api_key ||= Delivery::Member.select(:api_key).primary&.api_key
    end
  end
end
