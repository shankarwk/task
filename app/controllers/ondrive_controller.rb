class OndriveController < ApplicationController
  def detail
    @data = Candiate.find(params[:id])
  end



  def all_detail
    @data1 = Candiate.find(params[:id])
    
    
  end
   
  def track
    @data2 = Candiate.find(params[:id]) 
  end


  def info
    @d = Candiate.find(session[:user_id])
    @d.demos.create(date:params[:date])
    redirect_to root_path
  end


  private
  def user_params(*args)
    params.require(:demo).permit(:date)
  end 
end
