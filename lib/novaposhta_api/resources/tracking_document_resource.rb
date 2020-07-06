# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class TrackingDocumentResource < Resource
      def track(number)
        response = post(
          'TrackingDocument/getStatusDocuments', documents: [{document_number: number}]
        )

        NovaposhtaApi::Models::TrackingDocument.extract_single(response)
      end
    end
  end
end
