# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class WarehouseResource < Resource
      def all(params = {})
        response = request('Address/getWarehouses', params)

        NovaposhtaApi::Models::Warehouse.extract_collection(response)
      end
    end
  end
end
