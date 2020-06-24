# frozen_string_literal: true

module NovaposhtaApi
  class HttpClient
    DEFAULT_HEADERS = {
      accept: 'application/json',
      content_type: 'application/json'
    }.freeze

    attr_reader :config

    def initialize(config)
      @config = config.with_indifferent_access
    end

    def uri
      @uri ||= URI(config[:uri])
    end

    def api_key
      @api_key ||= config[:api_key]
    end

    def request(http_method, path, params = {})
      options = build_options(path).merge(methodProperties: transform_keys(params))
      response = connection.public_send(http_method, '', options.to_json)
      response.body
    end

    private

    def transform_keys(params)
      convert_params_to_hash(params).deep_transform_keys { |key| key.to_s.camelcase }
    end

    def convert_params_to_hash(params)
      if params.respond_to?(:to_unsafe_h)
        params.to_unsafe_h
      else
        params
      end
    end

    def build_options(path)
      paths = path.split('/')

      {
        apiKey: api_key,
        modelName: paths[0],
        calledMethod: paths[1]
      }
    end

    def connection
      @connection ||= Faraday.new(connection_options) do |client|
        client.adapter Faraday.default_adapter
        client.response :error_handling
        client.response :json
      end
    end

    def connection_options
      {
        url: uri,
        headers: DEFAULT_HEADERS
      }
    end
  end
end
