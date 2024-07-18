class ArrivalsController < ApplicationController
  def index
    @arrivals = TflApiClient.new.arrivals
  end
end
