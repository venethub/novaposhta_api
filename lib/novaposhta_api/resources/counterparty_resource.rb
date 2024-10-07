# frozen_string_literal: true

module NovaposhtaApi
  module Resources
    class CounterpartyResource < Resource
      def create(params = {})
        response = request('Counterparty/save', params)

        NovaposhtaApi::Models::Counterparty.extract_single(response)
      end

      def senders
        response = request('Counterparty/getCounterparties', CounterpartyProperty: 'Sender')

        NovaposhtaApi::Models::Counterparty.extract_collection(response)
      end

      def addresses(ref)
        response = request('Counterparty/getCounterpartyAddresses', Ref: ref)

        NovaposhtaApi::Models::CounterpartyAddress.extract_collection(response)
      end

      def contacts(ref)
        response = request('Counterparty/getCounterpartyContactPersons', Ref: ref)

        NovaposhtaApi::Models::ContactPerson.extract_collection(response)
      end
    end
  end
end
