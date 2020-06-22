# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class Warehouse < Model
      property :ref, from: :Ref
      property :city_ref, from: :CityRef
      property :city_description, from: :CityDescription
      property :description, from: :Description
      property :short_address, from: :ShortAddress
      property :longitude, from: :Longitude
      property :latitude, from: :Latitude
    end
  end
end
