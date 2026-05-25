# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class SettlementResource < Resource
      def all(params = {})
        response = request('Address/getSettlements', params)

        NovaposhtaApi::Models::Settlement.extract_collection(response)
      end
    end
  end
end
