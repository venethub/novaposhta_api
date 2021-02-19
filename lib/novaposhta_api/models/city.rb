# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class City < Model
      property :ref, from: :Ref
      property :city_id, from: :CityID
      property :area, from: :Area
      property :description, from: :Description
      property :description_ru, from: :DescriptionRu
      property :settlement_type_description, from: :SettlementTypeDescription
      property :settlement_type_description_ru, from: :SettlementTypeDescriptionRu
    end
  end
end
