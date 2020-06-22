# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class CityResource < Resource
      def all(params = {})
        response = Rails.cache.fetch("cities/#{params}", CACHE_OPTIONS) do
          post('Address/getCities', params)
        end

        NovaposhtaApi::Models::City.extract_collection(response)
      end
    end
  end
end
