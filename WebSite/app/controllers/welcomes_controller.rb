class WelcomesController < ApplicationController
  def index
  	begin
  		@contact_sites = ContactSite.new
  		@type_contacts = TypeContact.all
  	rescue Exception => e
  		puts e
  	end
  end

  def create
  	begin
  		contact_sites = params[:contact_site]
  		@contact_sites = ContactSite.create!(contact_sites)
  		render :json => {:success => 1}, :callback => params[:callback]
  	rescue Exception => e
  		puts e
  		render :json => {:success => 0,:message => e.message}, :callback => params[:callback]
  	end
  end
end
