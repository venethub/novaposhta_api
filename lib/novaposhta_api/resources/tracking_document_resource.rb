# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class TrackingDocumentResource < Resource
      def track(number)
        response = request(
          'TrackingDocument/getStatusDocuments',
          Documents: [
            {
              DocumentNumber: number
            }
          ]
        )

        NovaposhtaApi::Models::TrackingDocument.extract_single(response)
      end
    end
  end
end
