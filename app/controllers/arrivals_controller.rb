class ArrivalsController < ApplicationController
  def index
    @arrivals = TflApiClient.new.arrivals.sort_by(&:time_to_station)
  end
end
