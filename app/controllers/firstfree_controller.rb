class FirstfreeController < ApplicationController
  def index
    @order = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0'"])

	 respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hours }
    end
    
  end
end
