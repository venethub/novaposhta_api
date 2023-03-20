# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class Warehouse < Model
      property :Ref
      property :CityRef
      property :CityDescription
      property :CityDescriptionRu
      property :Description
      property :DescriptionRu
      property :ShortAddress
      property :Longitude
      property :Latitude
    end
  end
end
