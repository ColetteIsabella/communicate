class NerdsController < ApplicationController
  # GET /nerds
  # GET /nerds.json
  def index
    @nerds = Nerd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nerds }
    end
  end

  # GET /nerds/1
  # GET /nerds/1.json
  def show
    @nerd = Nerd.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nerd }
    end
  end

  # GET /nerds/new
  # GET /nerds/new.json
  def new
    @nerd = Nerd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nerd }
    end
  end

  # GET /nerds/1/edit
  def edit
    @nerd = Nerd.find(params[:id])
  end

  # POST /nerds
  # POST /nerds.json
  def create
    @nerd = Nerd.new(params[:nerd])

    respond_to do |format|
      if @nerd.save
        format.html { redirect_to @nerd, notice: 'Successfully created.' }
        format.json { render json: @nerd, status: :created, location: @nerd }
      else
        format.html { render action: "new" }
        format.json { render json: @nerd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nerds/1
  # PUT /nerds/1.json
  def update
    @nerd = Nerd.find(params[:id])

    respond_to do |format|
      if @nerd.update_attributes(params[:nerd])
        format.html { redirect_to @nerd, notice: 'Nerd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nerd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nerds/1
  # DELETE /nerds/1.json
  def destroy
    @nerd = Nerd.find(params[:id])
    @nerd.destroy

    respond_to do |format|
      format.html { redirect_to nerds_url }
      format.json { head :no_content }
    end
  end
end
