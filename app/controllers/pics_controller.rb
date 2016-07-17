class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @pics = Pic.all
    #redirect_to root_path
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @pic = Pic.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @pic = Pic.new(pic_params)

    respond_to do |format|
      if @pic.save
        format.html { redirect_to @pic, notice: 'Pic was successfully created.' }
        format.json { render :show, status: :created, location: @pic }
      else
        format.html { render :new }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @pic.update(pic_params)
        format.html { redirect_to @pic, notice: 'Pic was successfully updated.' }
        format.json { render :show, status: :ok, location: @pic }
      else
        format.html { render :edit }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @pic.destroy
    respond_to do |format|
      format.html { redirect_to pic_url, notice: 'Pic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic
      @pic = Pic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
  def pic_params
      params.require(:pic).permit(:name, :price, :dental_piccomment, :image, :image_cache, :remove_image)
  end

end

