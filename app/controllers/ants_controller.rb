class AntsController < ApplicationController
  before_action :set_ant, only: [:edit, :update, :destroy]
  after_action :generate_slug, only: [:create]

  # GET /ants
  # GET /ants.json
  def index
    @ants = Ant.all
  end

  # GET /ants/1
  # GET /ants/1.json
  def show
    @ant = Ant.find_by_slug(params[:slug])
    debugger
    country = request.location.country_code
    puts country
    if @ant
      @ant.increment!(:clicks)
      redirect_to @ant.in_url
    else
      redirect_to root_path, notice: 'Ant lost'
    end
  end

  # GET /ants/new
  def new
    @ant = Ant.new
  end

  # GET /ants/1/edit
  def edit
  end

  # POST /ants
  # POST /ants.json
  def create
    @ant = Ant.new(ant_params)

    respond_to do |format|
      if @ant.save
        format.html { redirect_to ants_path, notice: 'Ant was successfully created.' }
        format.json { render :index, status: :created }
      else
        format.html { render :new }
        format.json { render json: @ant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ants/1
  # PATCH/PUT /ants/1.json
  def update
    respond_to do |format|
      if @ant.update(ant_params)
        format.html { redirect_to ants_path, notice: 'Ant was successfully updated.' }
        format.json { render :index, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @ant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ants/1
  # DELETE /ants/1.json
  def destroy
    @ant.destroy
    respond_to do |format|
      format.html { redirect_to ants_url, notice: 'Ant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ant
      @ant = Ant.find(params[:id])
    end

    def generate_slug
      @ant.generate_slug if @ant.valid?
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def ant_params
      params.require(:ant).permit(:in_url, :slug, :clicks, :snapshot, :title)
    end
end
