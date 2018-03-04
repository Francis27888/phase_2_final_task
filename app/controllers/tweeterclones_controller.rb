class TweeterclonesController < ApplicationController
  before_action :set_tweeterclone, only: [:show, :edit, :update, :destroy]

  # GET /tweeterclones
  # GET /tweeterclones.json
  def index
    @tweeterclones = Tweeterclone.all
    @tweetercount = Tweeterclone.all.count
  end

  # GET /tweeterclones/1
  # GET /tweeterclones/1.json
  def show
  end

  def confirm
    @tweeterclone=Tweeterclone.new(tweeterclone_params)
    render new_tweeterclone_path if @tweeterclone.invalid?
  end
  # GET /tweeterclones/new
  def new
    if params[:back]
      @tweeterclone = Tweeterclone.new(tweeterclone_params)
    else
      @tweeterclone = Tweeterclone.new
    end
  end

  # GET /tweeterclones/1/edit
  def edit
  end

  # POST /tweeterclones
  # POST /tweeterclones.json
  def create
    @tweeterclone = Tweeterclone.new(tweeterclone_params)

    respond_to do |format|
      if @tweeterclone.save
        format.html { redirect_to tweeterclones_path, notice: 'Tweeterclone was successfully created.' }
        format.json { render :show, status: :created, location: @tweeterclone }
      else
        format.html { render :new }
        format.json { render json: @tweeterclone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweeterclones/1
  # PATCH/PUT /tweeterclones/1.json
  def update
    respond_to do |format|
      if @tweeterclone.update(tweeterclone_params)
        format.html { redirect_to tweeterclones_path, notice: 'Tweeterclone was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweeterclone }
      else
        format.html { render :edit }
        format.json { render json: @tweeterclone.errors, status: :unprocessable_entity }
      end
    end
    
    # @tweeterclone=Tweeterclone.find(params[:id])
    # if @tweeterclone.update(tweeterclone_params)
    #   redirect_to tweeterclones_path, notice: "The Tweet updated successfully!"
    # else
    #   render 'edit'
    # end
  end

  # DELETE /tweeterclones/1
  # DELETE /tweeterclones/1.json
  def destroy
    @tweeterclone.destroy
    respond_to do |format|
      format.html { redirect_to tweeterclones_url, notice: 'Tweeterclone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweeterclone
      @tweeterclone = Tweeterclone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweeterclone_params
      params.require(:tweeterclone).permit(:content)
    end
end
