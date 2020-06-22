# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class CounterpartyResource < Resource
      def create(params = {})
        response = post('Counterparty/save', params)

        NovaposhtaApi::Models::Counterparty.extract_single(response)
      end

      def senders
        response = post('Counterparty/getCounterparties', counterparty_property: 'Sender')

        NovaposhtaApi::Models::Counterparty.extract_collection(response)
      end

      def addresses(ref)
        response = post('Counterparty/getCounterpartyAddresses', ref: ref)

        NovaposhtaApi::Models::Address.extract_collection(response)
      end

      def contacts(ref)
        response = post('Counterparty/getCounterpartyContactPersons', ref: ref)

        NovaposhtaApi::Models::ContactPerson.extract_collection(response)
      end
    end
  end
end
