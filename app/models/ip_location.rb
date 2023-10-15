# frozen_string_literal: true

class IpLocation
  include ActiveModel::Model

  attr_accessor :ip, :network, :version, :city, :region, :region_code, :country, :country_code, :country_code_iso3, :country_name,
                :country_capital, :country_tld, :continent_code, :in_eu, :postal, :latitude, :longitude, :latlong, :timezone, :utc_offset,
                :country_calling_code, :currency, :currency_name, :languages, :country_area, :country_population, :asn, :org, :hostname
end
