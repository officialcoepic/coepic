class PdfDownloadsController < ApplicationController
  # GET /pdf_downloads
  # GET /pdf_downloads.json
  def index
    @pdf_downloads = PdfDownload.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pdf_downloads }
    end
  end

  # GET /pdf_downloads/1
  # GET /pdf_downloads/1.json
  def show
    @pdf_download = PdfDownload.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pdf_download }
    end
  end

  # GET /pdf_downloads/new
  # GET /pdf_downloads/new.json
  def new
    @pdf_download = PdfDownload.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pdf_download }
    end
  end

  # GET /pdf_downloads/1/edit
  def edit
    @pdf_download = PdfDownload.find(params[:id])
  end

  # POST /pdf_downloads
  # POST /pdf_downloads.json
  def create
    @pdf_download = PdfDownload.new(params[:pdf_download])

    respond_to do |format|
      if @pdf_download.save
        format.html { redirect_to @pdf_download, notice: 'Pdf download was successfully created.' }
        format.json { render json: @pdf_download, status: :created, location: @pdf_download }
      else
        format.html { render action: "new" }
        format.json { render json: @pdf_download.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pdf_downloads/1
  # PUT /pdf_downloads/1.json
  def update
    @pdf_download = PdfDownload.find(params[:id])

    respond_to do |format|
      if @pdf_download.update_attributes(params[:pdf_download])
        format.html { redirect_to @pdf_download, notice: 'Pdf download was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pdf_download.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pdf_downloads/1
  # DELETE /pdf_downloads/1.json
  def destroy
    @pdf_download = PdfDownload.find(params[:id])
    @pdf_download.destroy

    respond_to do |format|
      format.html { redirect_to pdf_downloads_url }
      format.json { head :no_content }
    end
  end
end
