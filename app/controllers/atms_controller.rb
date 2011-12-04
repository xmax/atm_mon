class AtmsController < ApplicationController
  # GET /atms
  # GET /atms.json
  def index
    @atms = Atm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @atms }
    end
  end

  # GET /atms/1
  # GET /atms/1.json
  def show
    @atm = Atm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @atm }
    end
  end

  # GET /atms/new
  # GET /atms/new.json
  def new
    @atm = Atm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @atm }
    end
  end

  # GET /atms/1/edit
  def edit
    @atm = Atm.find(params[:id])
  end

  # POST /atms
  # POST /atms.json
  def create
    @atm = Atm.new(params[:atm])

    respond_to do |format|
      if @atm.save
        format.html { redirect_to @atm, notice: 'Atm was successfully created.' }
        format.json { render json: @atm, status: :created, location: @atm }
      else
        format.html { render action: "new" }
        format.json { render json: @atm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /atms/1
  # PUT /atms/1.json
  def update
    @atm = Atm.find(params[:id])

    respond_to do |format|
      if @atm.update_attributes(params[:atm])
        format.html { redirect_to @atm, notice: 'Atm was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @atm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atms/1
  # DELETE /atms/1.json
  def destroy
    @atm = Atm.find(params[:id])
    @atm.destroy

    respond_to do |format|
      format.html { redirect_to atms_url }
      format.json { head :ok }
    end
  end
end
