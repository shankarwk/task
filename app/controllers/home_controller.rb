class HomeController < ApplicationController
  def index
    
    @user2=""
    if !session[:user_id].blank?
      @user = Candiate.find(session[:user_id])
      @user22=@user.id   
    end
    if !session[:hr_id].blank?
      @user = Hr.find(session[:hr_id])
      @user2=@user.id
    end
    
  end

  def show
    @show = Candiate.find(params[:id])
  end

  def updatedata
    @filed = Candiate.find(params[:id])
    @filed.update(user_params(:name,:email,:password,:inter,:first,:second,:third))
  end 


  def candidate
    @can  = Candiate.all
  end  

  def delete_user
    session.delete(:user_id)
    session.delete(:hr_id)
    redirect_to root_path
  end  
  def signup
    @form_data =  Candiate.new
  end

  def log
  
  end
  
  def login
    @user = Candiate.find_by(email: params[:email],password:params[:password])
    if @user
    session[:user_id] = @user.id
    redirect_to root_path
    else
      flash[:notice] = "UnSuccefully"
      redirect_to root_path
    end
  end
  def create
    @user = Candiate.new(user_params(name:params[:name],email:params[:email],password:params[:password]))
    @email = Candiate.find_by(user_params(email:params[:email]))
    if @email
      flash[:notice] = "Email Already Exits"
      redirect_to signup_path
    elsif @user.save 
      flash[:notice] = "Succefully Sign Up"
      redirect_to root_path
    else
      flash[:notice] = "Failed" 
      render("signup")
    end
  end

  private
  def user_params(*args)
    params.require(:candiate).permit(:name,:email,:password,:inter,:first,:second,:third,:role)
  end 
end
