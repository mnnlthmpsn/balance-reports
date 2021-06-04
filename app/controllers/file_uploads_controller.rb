class FileUploadsController < ApplicationController
  before_action :set_file_upload, only: %i[ show edit update destroy ]

  # GET /file_uploads or /file_uploads.json
  def index
    @file_uploads = FileUpload.all
    @file_upload = FileUpload.new
  end

  # GET /file_uploads/1 or /file_uploads/1.json
  def show; end

  # GET /file_uploads/new
  def new
    @file_upload = FileUpload.new
  end

  # GET /file_uploads/1/edit
  def edit; end

  # POST /handle_import for file upload
  def handle_import
    # uploaded file
    file = params[:file]

    puts '==========================='
    puts "this is my file #{file}"
    puts '==========================='

    redirect_to file_uploads_path
  end

  # POST /file_uploads or /file_uploads.json
  def create
    @file_upload = FileUpload.new()

    respond_to do |format|
      if @file_upload.save
        format.html { redirect_to @file_upload, notice: 'File upload was successfully created.' }
        format.json { render :show, status: :created, location: @file_upload }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @file_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_uploads/1 or /file_uploads/1.json
  def update
    respond_to do |format|
      if @file_upload.update(file_upload_params)
        format.html { redirect_to @file_upload, notice: 'File upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_upload }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @file_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_uploads/1 or /file_uploads/1.json
  def destroy
    @file_upload.destroy
    respond_to do |format|
      format.html { redirect_to file_uploads_url, notice: 'File upload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_upload
      @file_upload = FileUpload.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def file_upload_params
      params.require(:file_upload).permit(:file_name, :file_path, :active_status, :del_status, :user_id)
    end
end
