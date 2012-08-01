class DetallefacturasController < ApplicationController
  # GET /detallefacturas
  # GET /detallefacturas.json
  def index
    @detallefacturas = Detallefactura.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @detallefacturas }
    end
  end

  # GET /detallefacturas/1
  # GET /detallefacturas/1.json
  def show
    @detallefactura = Detallefactura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @detallefactura }
    end
  end

  # GET /detallefacturas/new
  # GET /detallefacturas/new.json
  def new
    @detallefactura = Detallefactura.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @detallefactura }
    end
  end

  # GET /detallefacturas/1/edit
  def edit
    @detallefactura = Detallefactura.find(params[:id])
  end

  # POST /detallefacturas
  # POST /detallefacturas.json
  def create
    @detallefactura = Detallefactura.new(params[:detallefactura])

    respond_to do |format|
      if @detallefactura.save
        format.html { redirect_to @detallefactura, notice: 'Detallefactura was successfully created.' }
        format.json { render json: @detallefactura, status: :created, location: @detallefactura }
      else
        format.html { render action: "new" }
        format.json { render json: @detallefactura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /detallefacturas/1
  # PUT /detallefacturas/1.json
  def update
    @detallefactura = Detallefactura.find(params[:id])

    respond_to do |format|
      if @detallefactura.update_attributes(params[:detallefactura])
        format.html { redirect_to @detallefactura, notice: 'Detallefactura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @detallefactura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detallefacturas/1
  # DELETE /detallefacturas/1.json
  def destroy
    @detallefactura = Detallefactura.find(params[:id])
    @detallefactura.destroy

    respond_to do |format|
      format.html { redirect_to detallefacturas_url }
      format.json { head :no_content }
    end
  end
end
