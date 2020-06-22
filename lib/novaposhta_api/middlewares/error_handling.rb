# frozen_string_literal: true

module NovaposhtaApi
  module Middlewares
    class ErrorHandling < Faraday::Response::Middleware
      SEPARATOR = ', '

      def on_complete(env)
        return if env.response_body['success']

        fail(NovaposhtaApi::ResponseError, error_message(env.body))
      end

      def error_message(body)
        (from_codes(body['errorCodes']) || body['errors']).join(SEPARATOR)
      end

      def from_codes(codes = [])
        return nil if codes.blank?

        codes.map { |code| I18n.t(code, scope: %i[NovaposhtaApi errors]) }
      end
    end
  end
end