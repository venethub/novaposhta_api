# frozen_string_literal: true

module NovaposhtaApi
  module Models
    class TrackingDocument < Model
      property :Number
      property :Status
      property :StatusCode
      property :ScheduledDeliveryDate
    end
  end
end
