require 'rails_helper'

RSpec.describe 'Arrivals' do
  let(:arrivals) do
    [
      build(:arrival, :first_east),
      build(:arrival, :first_west),
      build(:arrival, :second_east)
    ]
  end
  let(:client) { instance_double(TflApiClient, arrivals:) }
  before do
    allow(TflApiClient).to receive(:new).and_return(client)
  end

  it 'can view a list of arrivals' do
    visit arrivals_path

    within('table#arrivals thead') do
      expect(page).to have_content(
        'Destination ' \
        'Platform ' \
        'Arriving In ' \
        'Arriving At'
      )
    end

    within('table#arrivals tbody') do
      expect(page).to have_content(
        "Circle Edgware Road (Circle Line) Underground Station Eastbound - Platform 2 409 409\n" \
        "Circle Hammersmith (H&C Line) Underground Station Westbound - Platform 1 509 509\n" \
        "Circle Edgware Road (Circle Line) Underground Station Eastbound - Platform 2 609 609"
      )
    end
  end
end
