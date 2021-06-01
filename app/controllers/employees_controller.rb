class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new #display the form for new record
    @employee = Employee.new
  end

  def create #save the record
    @employee = Employee.new(allowed_params)

    if @employee.save
      redirect_to employees_path
    else
      render 'new'
    end

  end

  def edit #display existing record
    @employee = Employee.find(params[:id])
  end

  def update #save updated changes
    @employee = Employee.find(params[:id])
    if @employee.update(allowed_params)
      redirect_to employees_path
    else
      render 'new'
    end
  end

  def destroy #delete the record
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  private
    def allowed_params
      params.require(:employee).permit(:name, :age, :emp_id, :gender, :phone, :email, :address, :skills, :experience)
    end
end
