class PlacesController < ApplicationController
  def index  
    @places = Place.all
   end

   def show
    @places = Place.find_by({"id" => params["id"]})
    @entries = Entries.where({"place_id" => @place["id"]})
   end

   def new
   end
  
   def create
   @places = Place.new 
   @places["name"] = params["name"]
   @places.save
   end
end

