# frozen_string_literal: true

class IpLocationsController < ApplicationController
  # GET /ip_locations
  def index
    puts 'hiefe'
    render json: IpApi::Client.new.location(params[:ip]).to_json
  end

  # Get /ip_postal
  def postal
    render json: { postal: IpApi::Client.new.location(params[:ip]).postal }
  end
end
