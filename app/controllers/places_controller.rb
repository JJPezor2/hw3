class PlacesController < ApplicationController
  def index  
    @places = Place.all
   end

   def show
    @places = Place.find_by({"id" => params["id"]})
    @entries = Entry.where({"place_id" => @places["id"]})
   end

   def new
   end
  
   def create
   @places = Place.new 
   @places["name"] = params["name"]
   @places.save
    redirect_to "/places"
   end
end

