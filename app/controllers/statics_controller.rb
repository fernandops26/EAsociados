class StaticsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only:[:subscribe_new,:postulate_new]

  before_action :set_sector, only:[:sectors]
  before_action :set_service, only:[:services]
  before_action :set_publications, only:[:publications]
  before_action :susbcriptor_params, only:[:subscribe_new]
  before_action :postulate_params, only:[:postulate_new]
  before_action :contact_params, only:[:contact_new]
  before_action :set_locale

 
  def set_locale
    I18n.locale = :es || I18n.default_locale
  end

  def index
    @subservicios=Subservicio.where(estado:true)
    @publicaciones=Post.where(estado:true).order(created_at: :desc).limit(4)
  end

  def services
  end

  def sectors
    @sectores=Sectore.where(estado: true).order(nombre: :asc)
  end

  def team
    @roles=Role.all.order(nombre: :asc)
    @equipo=Equipo.where(estado:true).order(apellidos: :asc)
    respond_to do |format|
      format.html
      format.json { render :json => {:roles => @roles,:equipo => @equipo}}
    end
  end

  def subscribe
  end

  def subscribe_new
    @suscriptor=Inscrito.new(susbcriptor_params)
    if @suscriptor.save
      @suscriptor=Inscrito.new
      flash.now[:correcto]="Te has suscrito correctamente, te enviaremos un mensaje a tu correo."
      render :subscribe
    else
      flash.now[:errors]=@suscriptor.errors
      render :subscribe
    end
  end

  def contact
    @contacto=Contacto.new
  end

  def contact_new
    @contacto=Contacto.new(contact_params)
    if @contacto.save
      @contacto=Contacto.new
      flash.now[:correcto]="Tu mensaje ha sido enviado correctamente, pronto nos comunicaremos contigo."
      render :contact
    else
      flash.now[:errors]=@contacto.errors
      render :contact
    end
    
  end

  def publications
    @categorias=Category.all
  end

  def showPublication
    @categorias=Category.all

    if params[:id].present?
      @publicacion_actual=Post.includes(:category,:equipo).find(params[:id])
    end
  end

  def our
  end

  def postulate
  end

  def postulate_new
    @postulante=Postulante.new(postulate_params)
    if @postulante.save
      @postulante=Contacto.new
      flash.now[:correcto]="Tu postulación se ha procesado correctamente, la revisaremos."
      render :postulate
    else
      flash.now[:errors]=@postulante.errors
      render :postulate
    end
  end

  def resources
    servicios=Servicio.where(estado:true).order(nombre: :asc)
    recursos=Recurso.where(estado:true).order(created_at: :asc)
    respond_to do |format|
      format.html
      format.json {render :json => {:servicios => servicios, :recursos => recursos }}
    end
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


  def set_publications
    pagina=1
    if params[:page].present?
      pagina=params[:page]
    else
      pagina=1
    end

    if(params[:query].present? and params[:category].present?)
      @publicaciones=Post.where(" estado=true and titulo LIKE ? and category_id= ?","%#{params[:query]}%", params[:category]).order(created_at: :desc).page(pagina).per_page(5)
    
    elsif (!params[:query].present? and params[:category].present?)
      @publicaciones=Post.where(" estado=true and category_id= ?", params[:category]).order(created_at: :desc).page(pagina).per_page(5)
    
    elsif (params[:query].present? and !params[:category].present?)
      @publicaciones=Post.where(" estado=true and titulo LIKE ? ","%#{params[:query]}%").order(created_at: :desc).page(pagina).per_page(5)
    else
      @publicaciones=Post.includes(:category).where(estado:true).order(created_at: :desc).page(pagina).per_page(5)
    end
  end

  def susbcriptor_params
    params.permit(:nombre,:email)
  end

  def postulate_params
    params.permit(:nombres,:email,:cv)
  end

  def contact_params
    params.require(:contacto).permit(:nombres,:email,:telefono,:mensaje)
  end


end
