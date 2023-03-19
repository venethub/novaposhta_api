# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class SettlementResource < Resource
      def all(params = {})
        response = request('Address/searchSettlements', params)

        NovaposhtaApi::Models::Settlement.extract_collection(response[0]['Addresses'])
      end
    end
  end
end
