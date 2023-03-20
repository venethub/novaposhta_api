# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class ContactPerson < Model
      property :Ref
      property :FirstName
      property :MiddleName
      property :LastName
      property :Phones
      property :Description
      property :Email
    end
  end
end
