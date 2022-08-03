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
    @detail = Candiate.find_by(name:params[:name],email:params[:email],password:params[:password])
    if @detail && params[:name] ==@d.name
      flash[:notice] = "Applied"
      @d.demos.create(date:params[:date])
      redirect_to root_path
    else
      flash[:notice] = "Invalid Details Please fill correct detail"
      redirect_to all_path(session[:user_id])
    end    
  end


  private
  def user_params(*args)
    params.require(:demo).permit(:date)
  end 
end
