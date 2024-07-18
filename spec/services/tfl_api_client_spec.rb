require 'rails_helper'

RSpec.describe TflApiClient, :vcr do
  describe '#arrivals' do
    subject(:arrivals) { described_class.new.arrivals }

    it 'can pull a list of arrivals from the default (Great portland Street) station' do
      expect(arrivals.count).to eq(23)
    end

    it 'returns Arrival objects' do
      arrivals.each do |arrival|
        expect(arrival).to be_a(Arrival)
      end
    end

    context 'when service is uncontactable' do
      it 'can pull a list of arrivals from the default (Great portland Street) station' do
        expect { arrivals.count }.to raise_error("Unexpected response from TFL API - status 404")
      end
    end
  end
end