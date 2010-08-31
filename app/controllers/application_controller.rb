class ApplicationController < ActionController::Base
  inherit_resources
  protect_from_forgery
  layout 'application'

  protected 

  def collection
    get_collection_ivar || set_collection_ivar(end_of_association_chain.all)
  end

end
