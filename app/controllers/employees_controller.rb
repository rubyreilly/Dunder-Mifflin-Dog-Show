class EmployeesController < ApplicationController


  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
  end

  def new
  end

  def update
    @employee = Employee.find(params[:id])
  end

  def create
  end

  def delete
    @employee = Employee.find(params[:id])
  end


end
