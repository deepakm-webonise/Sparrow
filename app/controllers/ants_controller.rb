class AntsController < ApplicationController
  before_action :set_ant, only: [:edit, :update, :destroy]

  def index
    @ant = Ant.new
    @ants = Ant.order(clicks: :desc).first(10)
  end

  def show
    @ant = Ant.find_by_slug(params[:slug])
    # @ant.hits.create(country: request.location.try(:country))
    if @ant
      @ant.increment!(:clicks)
      redirect_to @ant.in_url
    else
      redirect_to root_path, notice: t('ant.error.show')
    end
  end

  def create
    @ant = Ant.new(ant_params)
    respond_to do |format|
      if @ant.save
        format.html { redirect_to ants_path, notice: t('ant.success.create') }
        format.json { render :index, status: :created }
        format.js
      else
        format.html { render :new }
        format.json { render json: @ant.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  private

  def set_ant
    @ant = Ant.find(params[:id])
  end

  def ant_params
    params.require(:ant).permit(:in_url, :slug, :clicks, :snapshot, :title)
  end
end
