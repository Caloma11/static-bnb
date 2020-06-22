require "open-uri"

class FlatsController < ApplicationController
  # Calls the set_flats method before the index and show actions
  before_action :set_flats, only: [:index, :show]

  # Creates a constant to be accessed between actions
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

  def index;end

  def show
    # Finds the first in the flats array that the "id" property matching the "id"
    # coming from the url through the params
    # Set the @flat instance variable to be accessed in the view
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
  end

  private

  def set_flats
    # Opens the db url
    opened_url = open(FLATS_URL).read
    # Parses the JSON response into an array of hashes
    @flats = JSON.parse(opened_url) # Array of hashes
  end

end
