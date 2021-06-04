class GeneratedReportsController < ApplicationController
  before_action :set_generated_report, only: %i[ show edit update destroy ]

  # GET /generated_reports or /generated_reports.json
  def index
    @generated_reports = GeneratedReport.all
  end

  # GET /generated_reports/1 or /generated_reports/1.json
  def show
  end

  # GET /generated_reports/new
  def new
    @generated_report = GeneratedReport.new
  end

  # GET /generated_reports/1/edit
  def edit
  end

  # POST /generated_reports or /generated_reports.json
  def create
    @generated_report = GeneratedReport.new(generated_report_params)

    respond_to do |format|
      if @generated_report.save
        format.html { redirect_to @generated_report, notice: "Generated report was successfully created." }
        format.json { render :show, status: :created, location: @generated_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @generated_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generated_reports/1 or /generated_reports/1.json
  def update
    respond_to do |format|
      if @generated_report.update(generated_report_params)
        format.html { redirect_to @generated_report, notice: "Generated report was successfully updated." }
        format.json { render :show, status: :ok, location: @generated_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @generated_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generated_reports/1 or /generated_reports/1.json
  def destroy
    @generated_report.destroy
    respond_to do |format|
      format.html { redirect_to generated_reports_url, notice: "Generated report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generated_report
      @generated_report = GeneratedReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def generated_report_params
      params.require(:generated_report).permit(:cost_upload_id, :report_file_name, :report_file_path, :active_status, :del_status, :user_id)
    end
end
