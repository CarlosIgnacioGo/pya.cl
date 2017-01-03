class MainController < ApplicationController    
  def index
  	@services = Service.published.order(:created_at).limit(4)
  	if params[:input_search]
  		@search = Service.search(params[:input_search]).published.order(:visit_count => :desc)
  	end
  	@categories = Category.all
  end
end
