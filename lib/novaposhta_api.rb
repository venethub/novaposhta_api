# frozen_string_literal: true

require 'novaposhta_api/version'
require 'novaposhta_api/configuration'

module NovaposhtaApi
  autoload :Client, 'novaposhta_api/client'
  autoload :HttpClient, 'novaposhta_api/http_client'
  autoload :Resource, 'novaposhta_api/resource'
  autoload :Model, 'novaposhta_api/model'
  autoload :Collection, 'novaposhta_api/collection'

  module Middlewares
    autoload :ErrorHandling, 'novaposhta_api/middlewares/error_handling'
    autoload :ParseJson, 'novaposhta_api/middlewares/parse_json'
  end

  module Resources
    autoload :CityResource, 'novaposhta_api/resources/city_resource'
    autoload :CounterpartyResource, 'novaposhta_api/resources/counterparty_resource'
    autoload :InternetDocumentResource, 'novaposhta_api/resources/internet_document_resource'
    autoload :TrackingDocumentResource, 'novaposhta_api/resources/tracking_document_resource'
    autoload :SettlementResource, 'novaposhta_api/resources/settlement_resource'
    autoload :WarehouseResource, 'novaposhta_api/resources/warehouse_resource'
  end

  module Models
    autoload :City, 'novaposhta_api/models/city'
    autoload :Counterparty, 'novaposhta_api/models/counterparty'
    autoload :InternetDocument, 'novaposhta_api/models/internet_document'
    autoload :TrackingDocument, 'novaposhta_api/models/tracking_document'
    autoload :Settlement, 'novaposhta_api/models/settlement'
    autoload :Warehouse, 'novaposhta_api/models/warehouse'
    autoload :ContactPerson, 'novaposhta_api/models/contact_person'
  end

  Error = Class.new(StandardError)
  ResourceError = Class.new(Error)
  ResponseError = Class.new(Error)

  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  # @example
  #   NovaposhtaApi.setup do |config|
  #     config.api_url = "https://api.novaposhta.ua/v2.0/json/"
  #   end
  #
  def self.setup
    yield configuration
  end

  if Faraday::Middleware.respond_to? :register_middleware
    Faraday::Response.register_middleware json: NovaposhtaApi::Middlewares::ParseJson
    Faraday::Response.register_middleware error_handling: NovaposhtaApi::Middlewares::ErrorHandling
  end
end

require 'novaposhta_api/rails'
