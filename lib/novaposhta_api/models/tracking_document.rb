# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class TrackingDocument < Model
      property :number, from: :Number
      property :status, from: :Status
      property :status_code, from: :StatusCode
      property :scheduled_delivery_date, from: :ScheduledDeliveryDate
    end
  end
end
