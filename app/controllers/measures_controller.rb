class MeasuresController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin, except: [:index, :show, :general, :individual, :relational, :community, :suggestion]
  before_action :require_admin, only: [:new, :edit, :update, :create, :destroy]
  before_action :set_measure, only: [:show, :edit, :update, :destroy]

  def index
    @measures = Measure.all
  end

  def general
    @measures = Measure.where(category: :general)
  end

  def individual
    @measures = Measure.where(category: :individual)
  end

  def relational
    @measures = Measure.where(category: :relational)
  end

  def community
    @measures = Measure.where(category: :community)
  end

  def suggestion; end

  def show; end

  def new
    @measure = Measure.new
  end

  def edit; end

  def create
    @measure = Measure.new(measure_params)

    if @measure.save
      redirect_to @measure
      flash[:success] = 'Measure was successfully created.'
    else
      render :new
    end
  end

  def update
    if @measure.update(measure_params)
      redirect_to @measure
      flash[:success] = 'Measure was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @measure.destroy
    redirect_to measures_path
    flash[:success] = 'Measure was successfully destroyed.'
  end

  private
    def set_measure
      @measure = Measure.find(params[:id])
    end

    def measure_params
      params.require(:measure).permit(:title, :category, :document)
    end
end
