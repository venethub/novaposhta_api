# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class Warehouse < Model
      property :Ref
      property :CityRef
      property :CityDescription
      property :CityDescriptionRu
      property :SettlementRef
      property :SettlementDescription
      property :SettlementAreaDescription
      property :SettlementRegionsDescription
      property :SettlementTypeDescription
      property :SettlementTypeDescriptionRu
      property :Description
      property :DescriptionRu
      property :ShortAddress
      property :ShortAddressRu
      property :Longitude
      property :Latitude
      property :WarehouseStatus
      property :WarehouseStatusDate
      property :Number
      property :PostalCodeUA
      property :CategoryOfWarehouse
      property :TypeOfWarehouse
    end
  end
end
