class ExperiecesController < ApplicationController
  def index
    @user = Experiece.all
  end

  def show
    @user = Experiece.find(params[:id])
  end

  def new #display the form for new record
    @user = Experiece.new
  end

  def create #save the record
    @user = Experiece.new(allowed_params)

    if @user.save
      redirect_to employees_path
    else
      render 'new'
    end

  end

  def edit #display existing record
    @user = Experiece.find(params[:id])
  end

  def update #save updated changes
    @user = Experiece.(params[:id])
    if @user.update(allowed_params)
      redirect_to employees_path
    else
      render 'new'
    end
  end

  def destroy #delete the record
    @user = Experiece.find(params[:id])
    @user.destroy
    redirect_to employees_path
  end

  private
    def allowed_params
      params.require(:employee).permit(:company, :from, :to)
    end
end
