class SeminariosController < ApplicationController
  # GET /seminarios
  # GET /seminarios.json
  def index
    @seminarios = Seminario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seminarios }
    end
  end

 

  # GET /seminarios/1
  # GET /seminarios/1.json
  def show
    @seminario = Seminario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seminario }
    end
  end

  # GET /seminarios/new
  # GET /seminarios/new.json
  def new
    @seminario = Seminario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seminario }
    end
  end

  # GET /seminarios/1/edit
  def edit
    @seminario = Seminario.find(params[:id])
  end

  # POST /seminarios
  # POST /seminarios.json
  def create
    @seminario = Seminario.new(params[:seminario])

    respond_to do |format|
      if @seminario.save
        format.html { redirect_to @seminario, notice: 'Seminario was successfully created.' }
        format.json { render json: @seminario, status: :created, location: @seminario }
      else
        format.html { render action: "new" }
        format.json { render json: @seminario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seminarios/1
  # PUT /seminarios/1.json
  def update
    @seminario = Seminario.find(params[:id])

    respond_to do |format|
      if @seminario.update_attributes(params[:seminario])
        format.html { redirect_to @seminario, notice: 'Seminario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seminario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seminarios/1
  # DELETE /seminarios/1.json
  def destroy
    @seminario = Seminario.find(params[:id])
    @seminario.destroy

    respond_to do |format|
      format.html { redirect_to seminarios_url }
      format.json { head :no_content }
    end
  end

  

end
