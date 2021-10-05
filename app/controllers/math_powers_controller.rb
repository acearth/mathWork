class MathPowersController < ApplicationController
  before_action :set_math_power, only: [:show, :update, :destroy]

  # GET /math_powers
  def index
    @math_powers = MathPower.all

    render json: @math_powers
  end

  # GET /math_powers/1
  def show
    render json: @math_power
  end

  # POST /math_powers
  def create
    @math_power = MathPower.new(math_power_params)

    if @math_power.save
      #render json: @math_power, status: :created, location: @math_power, only: :power
      render json: @math_power.to_json(:only => [:base, :exp, :power]), status: :created, location: @math_power
    else
      render json: @math_power.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /math_powers/1
  def update
    if @math_power.update(math_power_params)
      render json: @math_power
    else
      render json: @math_power.errors, status: :unprocessable_entity
    end
  end

  # DELETE /math_powers/1
  def destroy
    @math_power.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_math_power
      @math_power = MathPower.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def math_power_params
      #params.require(:math_power).permit(:base, :exp)
      params.permit(:base, :exp)
    end
end
