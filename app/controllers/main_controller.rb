require 'rubygems'
require 'nokogiri'
require 'open-uri'

class MainController < ApplicationController
	def show
		@username = "mccabec123"
  		@email = "conner@koansystems.co.uk"
  		@name = "Conner Stephen McCabe"
		doc = Nokogiri::HTML(open("https://github.com/#{@username}?tab=repositories"))
		@repos = doc.css("h3.repo-list-name a")
		@default = "Hello there, welcome to #{@name}\'s portfolio!"
	end
end
