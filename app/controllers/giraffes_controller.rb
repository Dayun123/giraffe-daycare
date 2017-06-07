class GiraffesController < ApplicationController
  def index
    @giraffes = Giraffe.all
  end

  def new
    @giraffes = Giraffe.new
  end

  def create
    @giraffe = Giraffe.new(safe_params)
    if @giraffe.save
      redirect_to giraffes_url, notice: "Successfully saved giraffe!"
    else
      flash.now[:notice] = "There was a problem saving your giraffe!"
      render :new
    end
  end

  private
    def safe_params
      params.require(:giraffe).permit(:name, :age, :color)
    end

end
