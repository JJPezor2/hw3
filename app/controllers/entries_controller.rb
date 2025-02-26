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
 @entries.save
 end

end