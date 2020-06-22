# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class InternetDocumentResource < Resource
      def create(params = {})
        response = post('InternetDocument/save', params)

        NovaposhtaApi::Models::InternetDocument.extract_single(response)
      end
    end
  end
end
