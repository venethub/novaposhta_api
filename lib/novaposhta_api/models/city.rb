# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class City < Model
      property :ref, from: :Ref
      property :city_id, from: :CityID
      property :area, from: :Area
      property :description, from: :Description
    end
  end
end
