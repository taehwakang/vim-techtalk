# frozen_string_literal: true

module IpApi
  class Client
    HOST = 'https://ipapi.co/'

    def initialize
      @connection = Faraday.new(HOST) do |conn|
        conn.adapter :typhoeus
      end
    end

    def location(ip)
      response = @connection.get("#{ip}/json/")
      IpLocation.new(**JSON.parse(response.body))
    end
  end
end
