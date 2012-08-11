class PatientHistoriesController < ApplicationController
  # GET /patient_histories
  # GET /patient_histories.json
  def index
    @patient_histories = PatientHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patient_histories }
    end
  end

  # GET /patient_histories/1
  # GET /patient_histories/1.json
  def show
    @patient_history = PatientHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient_history }
    end
  end

  # GET /patient_histories/new
  # GET /patient_histories/new.json
  def new
    @patient_history = PatientHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient_history }
    end
  end

  # GET /patient_histories/1/edit
  def edit
    @patient_history = PatientHistory.find(params[:id])
  end

  # POST /patient_histories
  # POST /patient_histories.json
  def create
    @patient_history = PatientHistory.new(params[:patient_history])

    respond_to do |format|
      if @patient_history.save
        format.html { redirect_to @patient_history, notice: 'Patient history was successfully created.' }
        format.json { render json: @patient_history, status: :created, location: @patient_history }
      else
        format.html { render action: "new" }
        format.json { render json: @patient_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patient_histories/1
  # PUT /patient_histories/1.json
  def update
    @patient_history = PatientHistory.find(params[:id])

    respond_to do |format|
      if @patient_history.update_attributes(params[:patient_history])
        format.html { redirect_to @patient_history, notice: 'Patient history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patient_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_histories/1
  # DELETE /patient_histories/1.json
  def destroy
    @patient_history = PatientHistory.find(params[:id])
    @patient_history.destroy

    respond_to do |format|
      format.html { redirect_to patient_histories_url }
      format.json { head :no_content }
    end
  end
end
