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

      yield(connection) if block_given?
    end

    def uri
      @uri ||= URI(config[:uri])
    end

    def api_key
      @api_key ||= config[:api_key]
    end

    def request(http_method, path, params = {})
      options = build_options(path).merge(methodProperties: params)
      response = connection.public_send(http_method, '', options.to_json)
      response.body
    end

    def connection
      @connection ||= Faraday.new(connection_options) do |client|
        client.adapter Faraday.default_adapter
        client.response :error_handling
        client.response :json
      end
    end

    private

    def build_options(path)
      paths = path.split('/')

      {
        apiKey: api_key,
        modelName: paths[0],
        calledMethod: paths[1]
      }
    end

    def connection_options
      {
        url: uri,
        headers: DEFAULT_HEADERS
      }
    end
  end
end
