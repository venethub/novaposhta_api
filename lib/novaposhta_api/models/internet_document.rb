# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class InternetDocument < Model
      property :ref, from: :Ref
      property :cost_on_site, from: :CostOnSite
      property :estimated_delivery_date, from: :EstimatedDeliveryDate
      property :int_doc_number, from: :IntDocNumber
      property :type_document, from: :TypeDocument

      property :sender, from: :Sender
      property :city_sender, from: :CitySender
      property :sender_address, from: :SenderAddress
      property :contact_sender, from: :ContactSender
      property :senders_phone, from: :SendersPhone

      property :recipient, from: :Recipient
      property :city_recipient, from: :CityRecipient
      property :recipient_address, from: :RecipientAddress
      property :contact_recipient, from: :ContactRecipient
      property :recipients_phone, from: :RecipientsPhone

      property :sevice_type, from: :SeviceType
      property :cargo_type, from: :CargoType
      property :payment_method, from: :PaymentMethod
      property :payer_type, from: :PayerType
      property :cost, from: :Cost
      property :seats_amount, from: :SeatsAmount
      property :description, from: :Description
      property :weight, from: :Weight
      property :date_time, from: :DateTime
      property :options_seat, from: :OptionsSeat
    end
  end
end
