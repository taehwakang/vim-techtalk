# frozen_string_literal: true

require 'rails_helper'

RSpec.describe IpLocationsController, type: :controller do
  describe '#index' do
    let(:ip_api_client) { instance_double(IpApi::Client) }
    let(:ip_location) do
      IpLocation.new(
        ip: '8.8.8.8',
        city: 'Mountain View',
        region: 'California',
        country: 'US',
        postal: '94035',
        latitude: 37.386,
        longitude: -122.0838,
        timezone: 'America/Los_Angeles'
      )
    end

    before do
      allow(IpApi::Client).to receive(:new).and_return(ip_api_client)
      allow(ip_api_client).to receive(:location).and_return(ip_location)
    end

    it 'returns a successful response' do
      get :index, params: { ip: '8.8.8.8' }

      expect(JSON.parse(response.body)).to eq(ip_location.as_json)
    end
  end
end
