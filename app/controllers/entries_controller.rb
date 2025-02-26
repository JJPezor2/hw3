class EntriesController < ApplicationController
 def index  
  @entries = Entry.all
 end

 def new
  @places = Place.find_by({ "id" => params["place_id"] })
 end

 def create
 @entries = Entry.new 
 @entries["title"] = params["title"]
 @entries["description"] = params["description"]
 @entries["occurred_on"] = params["occurred_on"]
 @entries["place_id"] = params["place_id"]
 @entries.save

 redirect_to "/places/#{@entries["place_id"]}"
 end

end