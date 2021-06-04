class SourceMastersController < ApplicationController
  before_action :set_source_master, only: %i[ show edit update destroy ]

  # GET /source_masters or /source_masters.json
  def index
    @source_masters = SourceMaster.all
  end

  # GET /source_masters/1 or /source_masters/1.json
  def show
  end

  # GET /source_masters/new
  def new
    @source_master = SourceMaster.new
  end

  # GET /source_masters/1/edit
  def edit
  end

  # POST /source_masters or /source_masters.json
  def create
    @source_master = SourceMaster.new(source_master_params)

    respond_to do |format|
      if @source_master.save
        format.html { redirect_to @source_master, notice: "Source master was successfully created." }
        format.json { render :show, status: :created, location: @source_master }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @source_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_masters/1 or /source_masters/1.json
  def update
    respond_to do |format|
      if @source_master.update(source_master_params)
        format.html { redirect_to @source_master, notice: "Source master was successfully updated." }
        format.json { render :show, status: :ok, location: @source_master }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @source_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_masters/1 or /source_masters/1.json
  def destroy
    @source_master.destroy
    respond_to do |format|
      format.html { redirect_to source_masters_url, notice: "Source master was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_master
      @source_master = SourceMaster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def source_master_params
      params.require(:source_master).permit(:source_desc, :comment, :active_status, :del_status, :user_id)
    end
end
