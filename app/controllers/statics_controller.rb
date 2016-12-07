class StaticsController < ApplicationController

  before_action :set_sector, only:[:sectors]
  before_action :set_service, only:[:services]

  def index
    @subservicios=Subservicio.where(estado:true)
  end

  def services
  end

  def sectors
    @sectores=Sectore.where(estado: true).order(nombre: :asc)
  end

  def team
  end

  def contact
  end

  def publications
  end

  def showPublication
  end

  def our
  end

  def set_sector
    if(params[:id].present?)
      @sector_actual=Sectore.find(params[:id])

    else
      @sector_actual=Sectore.where(estado:true).order(nombre: :asc).first
    end

  end

  def set_service

    #si existe el parametro servicio
    if(params[:id].present?)
      @servicio_actual=Servicio.includes(:subservicios).find_by(id:params[:id], estado:true)
    
    else
      @servicio_actual=Servicio.includes(:subservicios).where(estado:true).order(nombre: :asc).first
    end
  end

end
