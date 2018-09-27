class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = set_employee
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save
      redirect_to employee_path(@employee)
    else
      flash.now[:error] = @employee.errors.full_messages
      @dogs = Dog.all
      render :new
    end
  end

  def edit
    @employee = set_employee
    @dogs = Dog.all
  end

  def update
    @employee = set_employee
    @employee.update(employee_params)
    if @employee.valid?
      @employee.save
      redirect_to employee_path(@employee)
    else
      flash.now[:error] = @employee.errors.full_messages
      @dogs = Dog.all
      render :edit
    end

  end

  private

  def set_employee
    Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :office, :alias, :img_url, :title, :dog_id)
  end

end
