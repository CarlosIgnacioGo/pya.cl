class MainController < ApplicationController    
  def index
  	@services = Service.published.order(:created_at).limit(4)

  	@all_cetegories =
  end
end
