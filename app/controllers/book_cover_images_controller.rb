class BookCoverImagesController < ApplicationController
  # GET /book_cover_images
  # GET /book_cover_images.json
  def index
    @book_cover_images = BookCoverImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_cover_images }
    end
  end

  # GET /book_cover_images/1
  # GET /book_cover_images/1.json
  def show
    @book_cover_image = BookCoverImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_cover_image }
    end
  end

  # GET /book_cover_images/new
  # GET /book_cover_images/new.json
  def new
    @book_cover_image = BookCoverImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_cover_image }
    end
  end

  # GET /book_cover_images/1/edit
  def edit
    @book_cover_image = BookCoverImage.find(params[:id])
  end

  # POST /book_cover_images
  # POST /book_cover_images.json
  def create
    @book_cover_image = BookCoverImage.new(params[:book_cover_image])

    respond_to do |format|
      if @book_cover_image.save
        format.html { redirect_to @book_cover_image, notice: 'Book cover image was successfully created.' }
        format.json { render json: @book_cover_image, status: :created, location: @book_cover_image }
      else
        format.html { render action: "new" }
        format.json { render json: @book_cover_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_cover_images/1
  # PUT /book_cover_images/1.json
  def update
    @book_cover_image = BookCoverImage.find(params[:id])

    respond_to do |format|
      if @book_cover_image.update_attributes(params[:book_cover_image])
        format.html { redirect_to @book_cover_image, notice: 'Book cover image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_cover_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_cover_images/1
  # DELETE /book_cover_images/1.json
  def destroy
    @book_cover_image = BookCoverImage.find(params[:id])
    @book_cover_image.destroy

    respond_to do |format|
      format.html { redirect_to book_cover_images_url }
      format.json { head :no_content }
    end
  end
end
