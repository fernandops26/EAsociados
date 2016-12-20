class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  protect_from_forgery with: :exception

  before_action :find_services

  def find_services
    @servicios_global=Servicio.includes(:subservicios).where(estado:true).order(nombre: :asc)
    @publicaciones_global=Post.where(estado:true).order(created_at: :desc).limit(4)
  end

  def render_404
    render :template => "errors/error_404", :status => 404
  end
end
