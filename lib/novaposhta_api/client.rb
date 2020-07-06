# frozen_string_literal: true

module NovaposhtaApi
  class Client
    attr_reader :api_key

    def initialize(api_key: nil)
      @api_key = api_key
    end

    def self.resources
      {
        cities: Resources::CityResource,
        counterparties: Resources::CounterpartyResource,
        internet_documents: Resources::InternetDocumentResource,
        tracking_documents: Resources::TrackingDocumentResource,
        settlements: Resources::SettlementResource,
        warehouses: Resources::WarehouseResource
      }
    end

    def method_missing(name, *args, &block)
      if with_resource?(name)
        resources[name] ||= self.class.resources[name].new(connection: connection)
        resources[name]
      else
        super
      end
    end

    def respond_to_missing?(method_name, include_private = false)
      with_resource?(method_name) || super
    end

    def with_resource?(resource_name)
      self.class.resources.keys.include?(resource_name)
    end

    def resources
      @resources ||= {}
    end

    def connection
      @connection ||= NovaposhtaApi::HttpClient.new(
        uri: NovaposhtaApi.configuration.api_url,
        api_key: api_key || NovaposhtaApi.configuration.api_key
      )
    end
  end
end
