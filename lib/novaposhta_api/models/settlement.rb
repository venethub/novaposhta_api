# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class Settlement < Model
      property :ref, from: :Ref
      property :present, from: :Present
      property :area, from: :Area
      property :delivery_city, from: :DeliveryCity
      property :main_description, from: :MainDescription
      property :region, from: :Region
    end
  end
end
