# frozen_string_literal: true

module NovaposhtaApi
  class Model < Hashie::Trash
    include Hashie::Extensions::IndifferentAccess
    include Hashie::Extensions::Coercion
    include Hashie::Extensions::IgnoreUndeclared

    class << self
      def extract_collection(data)
        NovaposhtaApi::Collection.new(data, self)
      end

      def extract_single(data)
        item = data.is_a?(Array) ? data.first : data

        new(item)
      end
    end
  end
end
