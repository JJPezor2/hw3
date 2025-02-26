class EntriesController < ApplicationController
 def index  
  @entries = Entry.all
 end

 def new
 end

 def create
 @entries = Entry.new 
 @entries["title"] = params["title"]
 @entries["description"] = params["description"]
 @entries["occured_on"] = params["occurred_on"]
 @entries["place_id"] = params["place_id"]
 @entries.save

 redirect_to "/places/#{@place["place_id"]}"
 end

end