class AuthorImagesController < ApplicationController
  # GET /author_images
  # GET /author_images.json
  def index
    @author_images = AuthorImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @author_images }
    end
  end

  # GET /author_images/1
  # GET /author_images/1.json
  def show
    @author_image = AuthorImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @author_image }
    end
  end

  # GET /author_images/new
  # GET /author_images/new.json
  def new
    @author_image = AuthorImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @author_image }
    end
  end

  # GET /author_images/1/edit
  def edit
    @author_image = AuthorImage.find(params[:id])
  end

  # POST /author_images
  # POST /author_images.json
  def create
    @author_image = AuthorImage.new(params[:author_image])

    respond_to do |format|
      if @author_image.save
        format.html { redirect_to @author_image, notice: 'Author image was successfully created.' }
        format.json { render json: @author_image, status: :created, location: @author_image }
      else
        format.html { render action: "new" }
        format.json { render json: @author_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /author_images/1
  # PUT /author_images/1.json
  def update
    @author_image = AuthorImage.find(params[:id])

    respond_to do |format|
      if @author_image.update_attributes(params[:author_image])
        format.html { redirect_to @author_image, notice: 'Author image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @author_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /author_images/1
  # DELETE /author_images/1.json
  def destroy
    @author_image = AuthorImage.find(params[:id])
    @author_image.destroy

    respond_to do |format|
      format.html { redirect_to author_images_url }
      format.json { head :no_content }
    end
  end
end
