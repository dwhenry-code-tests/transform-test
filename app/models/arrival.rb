class Arrival
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :time_to_station, :integer
  attribute :platform
  attribute :line_name
  attribute :destination
  attribute :line_id

  def self.build(data)
    new(
      time_to_station: data['timeToStation'],
      platform: data['platformName'],
      line_name: data['lineName'],
      destination: data['destinationName'],
      line_id: data['lineId']
    )
  end
end
