# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class InternetDocument < Model
      property :Ref
      property :CostOnSite
      property :EstimatedDeliveryDate
      property :IntDocNumber
      property :TypeDocument

      property :Sender
      property :CitySender
      property :SenderAddress
      property :ContactSender
      property :SendersPhone

      property :Recipient
      property :CityRecipient
      property :RecipientAddress
      property :ContactRecipient
      property :RecipientsPhone

      property :SeviceType
      property :CargoType
      property :PaymentMethod
      property :PayerType
      property :Cost
      property :SeatsAmount
      property :Description
      property :Weight
      property :DateTime
      property :OptionsSeat
    end
  end
end
