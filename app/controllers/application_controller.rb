require 'rubygems'
require 'nokogiri'
require 'open-uri'

class ApplicationController < ActionController::Base
  	# Prevent CSRF attacks by raising an exception.
  	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	before_filter :pre_reqs

	def pre_reqs
		@username = "elrok123"
  		@email = "conner@elrok.com"
  		@name = "Conner Stephen McCabe"
		doc = Nokogiri::HTML(open("https://github.com/#{@username}?tab=repositories"))
		@repos = doc.css("h3.repo-list-name a")
		@default = "Hello there, welcome to #{@name}\'s portfolio!"
	end

end
