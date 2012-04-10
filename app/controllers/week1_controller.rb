class Week1Controller < ApplicationController
  def index
     @week1 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND weeknumber = '1'"])
      respond_to do |format|
         format.html # index.html.erb
         format.json { render json: @hours }
       end

     end
   end


     