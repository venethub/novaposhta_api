# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class SettlementResource < Resource
      def all(params = {})
        response = Rails.cache.fetch("settlements/#{params}", CACHE_OPTIONS) do
          post('Address/searchSettlements', params)
        end

        NovaposhtaApi::Models::Settlement.extract_collection(response[0]['Addresses'])
      end
    end
  end
end
