class BlogController < ApplicationController
  def show
  	#Left pane information vars
  	#
  	@username = "mccabec123"
  	@email = "conner@koansystems.co.uk"
  	@name = "Conner Stephen McCabe"
  	doc = Nokogiri::HTML(open("https://github.com/#{@username}?tab=repositories"))
	@repos = doc.css("h3.repo-list-name a")
	#
	#End of left pain information vars
  end

  def create
	#Blog Logic
  end
end
