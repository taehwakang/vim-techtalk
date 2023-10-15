# frozen_string_literal: true

class IpLocationsController < ApplicationController
  # GET /ip_locations
  def index
    render json: IpApi::Client.new.location(params[:ip]).to_json
  end
end
