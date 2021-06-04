class CostUploadsController < ApplicationController
  before_action :set_cost_upload, only: %i[ show edit update destroy ]

  # GET /cost_uploads or /cost_uploads.json
  def index
    @cost_uploads = CostUpload.all
  end

  # GET /cost_uploads/1 or /cost_uploads/1.json
  def show
  end

  # GET /cost_uploads/new
  def new
    @cost_upload = CostUpload.new
  end

  # GET /cost_uploads/1/edit
  def edit
  end

  # POST /cost_uploads or /cost_uploads.json
  def create
    @cost_upload = CostUpload.new(cost_upload_params)

    respond_to do |format|
      if @cost_upload.save
        format.html { redirect_to @cost_upload, notice: "Cost upload was successfully created." }
        format.json { render :show, status: :created, location: @cost_upload }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cost_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cost_uploads/1 or /cost_uploads/1.json
  def update
    respond_to do |format|
      if @cost_upload.update(cost_upload_params)
        format.html { redirect_to @cost_upload, notice: "Cost upload was successfully updated." }
        format.json { render :show, status: :ok, location: @cost_upload }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cost_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cost_uploads/1 or /cost_uploads/1.json
  def destroy
    @cost_upload.destroy
    respond_to do |format|
      format.html { redirect_to cost_uploads_url, notice: "Cost upload was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost_upload
      @cost_upload = CostUpload.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cost_upload_params
      params.require(:cost_upload).permit(:file_upload_id, :name, :category, :source, :debit1, :debit2, :credit1, :credit2, :subtotal_debit1, :subtotal_debit2, :subtotal_credit1, :subtotal_credit2, :net_profit1, :net_profit2, :net_loss1, :net_loss2, :period_start1, :period_start2, :period_end1, :period_end2, :active_status, :del_status, :user_id)
    end
end
