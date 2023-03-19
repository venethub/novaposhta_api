# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class CityResource < Resource
      def all(params = {})
        response = request('Address/getCities', params)

        NovaposhtaApi::Models::City.extract_collection(response)
      end
    end
  end
end
