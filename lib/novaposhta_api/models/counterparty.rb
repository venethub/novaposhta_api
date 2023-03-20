# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class Counterparty < Model
      property :Ref
      property :FirstName
      property :MiddleName
      property :LastName
      property :Phone
      property :Description
      property :City
      property :ContactPerson

      coerce_key :ContactPerson, ->(value) do
        NovaposhtaApi::Models::ContactPerson.extract_single(value['data'])
      end
    end
  end
end
