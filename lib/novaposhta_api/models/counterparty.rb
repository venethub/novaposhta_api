# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class Counterparty < Model
      property :ref, from: :Ref
      property :first_name, from: :FirstName
      property :middle_name, from: :MiddleName
      property :last_name, from: :LastName
      property :phone, from: :Phone
      property :description, from: :Description
      property :city, from: :City
      property :persons, from: :ContactPerson

      def person
        @person ||= NovaposhtaApi::Models::Counterparty.extract_single(persons['data']&.first)
      end
    end
  end
end
