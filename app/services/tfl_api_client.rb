class TflApiClient
  GREAT_PORTLAND_STREET = '940GZZLUGPS'

  include HTTParty
  headers 'Content-Type' => 'application/json'

  def arrivals(stop_point: GREAT_PORTLAND_STREET)
    url = "/StopPoint/#{stop_point}/Arrivals"
    response = self.class.get("#{host}/#{url}")

    case response.code
    when 200
      JSON.parse(response.body).map { Arrival.new(_1) }
    else
      raise "Unexpected response from TFL API - status #{response.code}"
    end
  end

  private

  def host
    ENV.fetch('TFL_API_HOST', 'https://api.tfl.gov.uk')
  end
end
