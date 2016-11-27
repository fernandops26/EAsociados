class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :find_services

  def find_services
    @servicios=Servicio.where(estado:true).order(nombre: :asc)
  end

end
