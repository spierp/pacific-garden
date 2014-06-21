class TestsController < ApplicationController
  before_filter :authenticate_user!
  
  def index   
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
     @test = Test.create(params[:test])
     if @test.save
       flash[:success] = "Test created"
       redirect_to tests_path  
     else 
       render 'new'
     end   
  end

  def destroy
    @test = Test.find(params[:id]).destroy
    flash[:success] = "Test deleted"
    redirect_to root_path
  end
  
end
