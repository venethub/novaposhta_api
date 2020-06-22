# frozen_string_literal: true

module NovaposhtaApi
  class Resource
    attr_reader :connection

    HTTP_METHODS = %i[get post patch put delete].freeze
    CACHE_OPTIONS = {expires_in: 1.day}.freeze

    def initialize(connection: nil)
      @connection = connection
    end

    HTTP_METHODS.each do |http_method|
      define_method http_method do |*args|
        response = connection.request(http_method, *args)
        response['data']
      end
    end
  end
end
