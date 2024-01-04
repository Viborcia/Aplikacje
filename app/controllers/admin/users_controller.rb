class Admin::UsersController < ApplicationController
    before_action :authenticate_admin!
  

    #Dodawanie nowego użytkownika do bazy danych jako ADMIN
    def new
      @new_user = User.new
    end
  
    def create
      @new_user = User.new(user_params)

        if params[:user][:is_student] == '1'
            @new_user.role = 0
        elsif params[:user][:is_promoter] == '1'
            @new_user.role = 1 
        elsif params[:user][:is_admin] == '1'
            @new_user.role = 2
        else 'Podałeś złe parametry'
        end

      if @new_user.save
        redirect_to dodaj_path, notice: 'Użytkownik został dodany pomyślnie.'
      else
        render :new
      end
    end

    #Usuwanie użytkowników z bazy danych jako ADMIN
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to usun_path, notice: 'Użytkownik został pomyślnie usunięty.'
    end
    
    private
  
    def user_params
      params.require(:user).permit(:index, :password, :is_student, :is_promoter, :is_admin, :email, :encrypted_password)
    end

    def authenticate_admin!
        redirect_to root_path, alert: 'Brak dostępu.' unless current_user && current_user.is_admin?
    end
  end
  