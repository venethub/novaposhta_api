# frozen_string_literal: true

module NovaposhtaApi
  class Collection < SimpleDelegator
    def initialize(collection, klass)
      fail StandardError, 'Collection must be a Array' unless collection.is_a? Array

      @collection = collection.map { |item| klass.new(item) }

      super(@collection)
    end
  end
end
