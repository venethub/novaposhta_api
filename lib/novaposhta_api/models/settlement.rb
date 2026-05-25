# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class Settlement < Model
      property :Ref
      property :SettlementType
      property :Latitude
      property :Longitude
      property :Description
      property :DescriptionRu
      property :DescriptionTranslit
      property :SettlementTypeDescription
      property :SettlementTypeDescriptionRu
      property :SettlementTypeDescriptionTranslit
      property :Region
      property :RegionsDescription
      property :RegionsDescriptionRu
      property :RegionsDescriptionTranslit
      property :Area
      property :AreaDescription
      property :AreaDescriptionRu
      property :AreaDescriptionTranslit
      property :Index1
      property :Index2
      property :AddressDeliveryAllowed
    end
  end
end
