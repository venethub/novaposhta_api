# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class CounterpartyResource < Resource
      def create(params = {})
        response = request('Counterparty/save', params)

        NovaposhtaApi::Models::Counterparty.extract_single(response)
      end

      def senders
        response = request('Counterparty/getCounterparties', counterparty_property: 'Sender')

        NovaposhtaApi::Models::Counterparty.extract_collection(response)
      end

      def addresses(ref)
        response = request('Counterparty/getCounterpartyAddresses', ref: ref)

        NovaposhtaApi::Models::Address.extract_collection(response)
      end

      def contacts(ref)
        response = request('Counterparty/getCounterpartyContactPersons', ref: ref)

        NovaposhtaApi::Models::ContactPerson.extract_collection(response)
      end
    end
  end
end
