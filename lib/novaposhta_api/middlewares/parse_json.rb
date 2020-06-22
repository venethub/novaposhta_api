# frozen_string_literal: true

module NovaposhtaApi
  module Middlewares
    class ParseJson < Faraday::Response::Middleware
      def on_complete(env)
        process_response(env)
      end

      def process_response(env)
        env[:body] = JSON.parse(env[:body])
      rescue Faraday::ParsingError => e
        raise Faraday::ParsingError.new(e.wrapped_exception, env[:response])
      end
    end
  end
end
