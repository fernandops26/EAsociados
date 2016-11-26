class StaticsController < ApplicationController

  before_action :set_sector, only:[:sectors]
  def index
  end

  def services
  end

  def sectors
    @sectores=Sectore.where(estado: true).order(nombre: :desc)
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
      @sector_actual=Sectore.order(nombre: :desc).first
    end

  end

end
