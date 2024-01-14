class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, only: [:moon, :sun]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  def wszyscy 
    @users = User.all
  end

  def dodaj 
    @new_user = User.new
  end

  def usun 
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end
  
  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      if user.student? && user.email.end_with?('@student.pwr.edu.pl')
        # Logowanie dla studenta z domeną @student.pwr.edu.pl
        # Przeprowadź odpowiednie akcje
      elsif user.promoter? && user.email.end_with?('@pwr.edu.pl')
        # Logowanie dla promotora z domeną @pwr.edu.pl
        # Przeprowadź odpowiednie akcje
      elsif user.admin?
        # Logowanie dla admina - dowolna domena
        # Przeprowadź odpowiednie akcje
      else
        # Obsługa innych przypadków (np. błędne dane logowania)
      end
    else
      # Obsługa przypadku, gdy użytkownik nie istnieje lub podano błędne dane logowania
    end
  end

  

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "Użytkownik został pomyślnie usunięty." }
      format.json { head :no_content }
    end
  end

    #KONFIGURACJA STRONY - ADMIN - ZMIANA WYGLĄDU NA JASNY I CIEMNY

    def moon 
      cookies[:moon] = {
        value: 'dark mode on'
      }
      if @logged_in_user
        redirect_to konf_path
      else
        redirect_to admin_path
      end
    end
  
    def sun 
      cookies.delete(:moon)
      if @logged_in_user
        redirect_to konf_path
      else
        redirect_to admin_path
      end
    end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:index, :password, :is_student, :is_promoter, :is_admin, :email, :encrypted_password)
    end

    def authenticate_admin!
      redirect_to root_path, alert: 'Brak dostępu.' unless current_user && current_user.is_admin?
    end
    
  end

