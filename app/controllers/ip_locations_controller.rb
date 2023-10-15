# frozen_string_literal: true

class IpLocationsController < ApplicationController
  # GET /ip_locations
  def index
    render json: IpApi::Client.new.location(params[:ip]).to_json
  end

  # GET /ip_country
  def country
    render json: { country: IpApi::Client.new.location(params[:ip]).country }
  end
end
