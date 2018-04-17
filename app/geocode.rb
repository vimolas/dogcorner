require 'net/http'
require 'json'
require 'pry'

class Geocode
  def location
    location = "Milano"
    api = "AIzaSyB7q1vWloHEGAUM2bKrQss3DV6vp6OTm1o"

    location = URI("https://maps.googleapis.com/maps/api/geocode/json?address=" + location + "&key=" + api)
    location_res = Net::HTTP.get_response(location)
    lng = JSON.parse(location_res.body)["results"][0]["geometry"]["location"]["lng"]
    lat = JSON.parse(location_res.body)["results"][0]["geometry"]["location"]["lat"]
    return lng
  end

end
