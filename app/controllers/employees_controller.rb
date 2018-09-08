class EmployeesController < ApplicationController


  def index
    @employees = Employee.all
  end

  def show
    @employees = Employee.all
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

  def slideshow
    @employees = Employee.all
  end


end
