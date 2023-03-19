# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class ContactPerson < Model
      property :ref, from: :Ref
      property :first_name, from: :FirstName
      property :middle_name, from: :MiddleName
      property :last_name, from: :LastName
      property :phones, from: :Phones
      property :description, from: :Description
      property :email, from: :Email
    end
  end
end
