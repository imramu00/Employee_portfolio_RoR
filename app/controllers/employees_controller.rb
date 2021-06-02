class EmployeesController < ApplicationController

  before_action :employee, only: [:show, :edit, :update, :destroy]
  def index
    @employees = Employee.page(params[:page] || 1)
  end

  def show
   employee
  end

  def new #display the form for new record
    @employee = Employee.new
  end

  def create #save the record
    @employee = Employee.new(allowed_params)

    if @employee.save
      redirect_to employees_path
    else
      flash.now[:error] = "Unable to save the employee details"
      render 'new'
    end

  end

  def edit #display existing record
    employee
  end

  def update #save updated changes
    employee
    if @employee.update(allowed_params)
      redirect_to employees_path
    else
      flash.now[:error] = "Unable to save the employee details"
      render 'new'
    end
  end

  def destroy #delete the record
    employee
    @employee.destroy
    redirect_to employees_path
  end

  private
    def allowed_params
      params.require(:employee).permit(:name, :age, :emp_id, :gender, :phone, :email, :address, :skills)
    end

    def employee
      @employee ||= Employee.find(params[:id])
    end
end
