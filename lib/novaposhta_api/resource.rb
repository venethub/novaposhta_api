# frozen_string_literal: true

module NovaposhtaApi
  class Resource
    attr_reader :http

    def initialize(http: nil)
      @http = http
    end

    def request(*args)
      response = http.request(:post, *args)
      response['data']
    end
  end
end
