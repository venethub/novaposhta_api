# frozen_string_literal: true

module NovaposhtaApi
  class Configuration
    attr_accessor :api_url, :api_key

    def initialize
      @api_url = 'https://api.novaposhta.ua/v2.0/json/'
      @api_key = ''
    end
  end
end
