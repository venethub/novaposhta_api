# frozen_string_literal: true

module NovaposhtaApi
  class Resource
    attr_reader :http

    HTTP_METHODS = %i[get post patch put delete].freeze

    def initialize(http: nil)
      @http = http
    end

    HTTP_METHODS.each do |http_method|
      define_method http_method do |*args|
        response = http.request(http_method, *args)
        response['data']
      end
    end
  end
end
