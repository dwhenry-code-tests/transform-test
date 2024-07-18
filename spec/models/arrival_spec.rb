require 'rails_helper'

RSpec.describe Arrival do
  let(:data) do
    {
      "lineName" => "Circle",
      "platformName" => "Eastbound - Platform 2",
      "destinationName" => "Edgware Road (Circle Line) Underground Station",
      "timeToStation" => 1009
    }
  end
  subject(:arrival) { described_class.build(data) }

  it '#time_to_station' do
    expect(arrival.time_to_station).to eq(1009)
  end

  it '#platform' do
    expect(arrival.platform).to eq('Eastbound - Platform 2')
  end

  it 'line_name' do
    expect(arrival.line_name).to eq('Circle')
  end

  it '#destination' do
    expect(subject.destination).to eq('Edgware Road (Circle Line) Underground Station')
  end
end
