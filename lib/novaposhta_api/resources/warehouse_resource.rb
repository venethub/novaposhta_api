# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class WarehouseResource < Resource
      def all(params = {})
        response = Rails.cache.fetch("warehouses/#{params}", CACHE_OPTIONS) do
          post('Address/getWarehouses', params)
        end

        NovaposhtaApi::Models::Warehouse.extract_collection(response)
      end
    end
  end
end
