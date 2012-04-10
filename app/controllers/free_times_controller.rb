class FreeTimesController < ApplicationController
  def index
    @hours = Hour.find_all_by_numberbusy(0)
    @order = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0'"])
    @week1 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND weeknumber = '1'"])
    @week2 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND weeknumber = '2'"])
    @week3 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND weeknumber = '3'"])
    @week4 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND weeknumber = '4'"])
    
    @first = Hour.find(:first, :order => 'id', :conditions => ["numberbusy = '0'"])
  
    
     @sunday1 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '1' AND id <= '16'"])
    @monday1 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '17' AND id <= '32'"])
    @tuesday1 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '33' AND id <= '48'"])
    @wednesday1 = Hour.find(:all, :order => 'id',:conditions => ["numberbusy = '0' AND id >= '49' AND id <= '64'"])
    @thursday1 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '65' AND id <= '80'"])
    @friday1 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '81' AND id <= '96'"])
    @saturday1 = Hour.find(:all, :order => 'id',:conditions => ["numberbusy = '0' AND id >= '97' AND id <= '112'"])
    
    
     @sunday2 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '113' AND id <= '128'"])
    @monday2 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '129' AND id <= '144'"])
    @tuesday2 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '145' AND id <= '160'"])
    @wednesday2 = Hour.find(:all, :order => 'id',:conditions => ["numberbusy = '0' AND id >= '161' AND id <= '176'"])
    @thursday2 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '177' AND id <= '192'"])
    @friday2 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '193' AND id <= '208'"])
    @saturday2 = Hour.find(:all, :order => 'id',:conditions => ["numberbusy = '0' AND id >= '209' AND id <= '224'"])
    
    
     @sunday3 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '225' AND id <= '240'"])
    @monday3 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '241' AND id <= '256'"])
    @tuesday3 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '257' AND id <= '272'"])
    @wednesday3 = Hour.find(:all, :order => 'id',:conditions => ["numberbusy = '0' AND id >= '273' AND id <= '288'"])
    @thursday3 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '289' AND id <= '304'"])
    @friday3 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '305' AND id <= '320'"])
    @saturday3 = Hour.find(:all, :order => 'id',:conditions => ["numberbusy = '0' AND id >= '321' AND id <= '336'"])
    
    
     @sunday4 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '337' AND id <= '352'"])
    @monday4 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '353' AND id <= '368'"])
    @tuesday4 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '369' AND id <= '384'"])
    @wednesday4 = Hour.find(:all, :order => 'id',:conditions => ["numberbusy = '0' AND id >= '385' AND id <= '400'"])
    @thursday4 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '401' AND id <= '416'"])
    @friday4 = Hour.find(:all, :order => 'id', :conditions => ["numberbusy = '0' AND id >= '417' AND id <= '432'"])
    @saturday4 = Hour.find(:all, :order => 'id',:conditions => ["numberbusy = '0' AND id >= '433' AND id <= '448'"])
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hours }
    end
    
  end
end


