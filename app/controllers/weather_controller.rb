class WeatherController < ApplicationController
require 'open_weather'
require 'date'

  def home
  end

  def index
	# @options = { units: "metric", APPID: "randomkey" }
	@x = OpenWeather::Current.geocode(14.651, 121.0486, @options) 

	@coordinates = @x['coord']
	@weather = @x['weather'][0]
	@main = @x['main']
	@wind = @x['wind']
	@sys = @x['sys']
	@sys['sunrise'] = Time.at(@sys['sunrise'])
	@sys['sunset'] = Time.at(@sys['sunset'])

  end
end

