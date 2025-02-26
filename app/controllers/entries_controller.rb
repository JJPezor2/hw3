class EntriesController < ApplicationController
 def index  
  @entries = Entry.all
 end
 
 def show
  @entries = Entry.find_by({"id" => params["id"]})
  @places = Place.find_by({"id" => @places["place_id"]})
 end


 def new
 end

 def create
 @entries = Entry.new 
 @entries["title"] = params["title"]
 @entries["description"] = params["description"]
 @entries["occured_on"] = params["occurred_on"]
 @entries.save
 end

end