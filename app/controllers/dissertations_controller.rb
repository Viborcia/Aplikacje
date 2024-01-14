class DissertationsController < ApplicationController
  before_action :set_dissertation, only: %i[ show edit update destroy ]
  before_action :authenticate_student!, only: [:create, :show, :check_submission_date_message, :set_submission_time_message]


  # GET /dissertations or /dissertations.json
  def index
    @dissertations = Dissertation.all
  end
  
  def kontrola
    @dissertations = Dissertation.all
  end

  # GET /dissertations/1 or /dissertations/1.json

  def show
    @dissertation = Dissertation.find(params[:id])
  end
  
  def new
    @dissertations = current_user.dissertations || []
    @dissertation = Dissertation.new
    @submission_message = set_submission_time_message
  end
    


  #Dodawanie pracy dyplomowej przez użytkownika zmiana przy losowaniu promotora
  def create
    puts "Params: #{params.inspect}"
    
    promoters = User.where(is_promoter: true)

    if current_user.dissertations.exists?
      flash[:alert] = 'Dodałeś już swoją pracę dyplomową!'
      redirect_to praca_path
      return
    end

    @dissertation = current_user.dissertations.new(dissertation_params)
    @dissertation.index = current_user.dissertations.count + 1
    @dissertation.sending_date = Time.now
    @dissertation.student_index = current_user.index
    if current_user.index < 210010
      @dissertation.promoter_index = current_user.index + 10000
    else
      @dissertation.promoter_index = current_user.index + 9990
    end


    if @dissertation.save
      @dissertation.pdf.attach(params[:dissertation][:pdf]) # <- Zapis pliku w bazie
      redirect_to praca_path(@dissertation), notice: 'Praca dyplomowa została dodana pomyślnie.'
    else
      render :new
    end
  end

  #Kontrola czy praca została oddana na czas
  def set_submission_time_message
    if current_user.dissertations.exists?
      submission_date = current_user.dissertations.last.sending_date
      if submission_date < Date.new(2024, 1, 8)
        submission_time = (Date.new(2024, 1, 8) - submission_date.to_date).to_i
        @submission_time_message = "Praca została oddana #{submission_time} dni przed 5 stycznia 2024 roku."
      else
        submission_time = (submission_date.to_date - Date.new(2024, 1, 8)).to_i
        @submission_time_message = "Praca została oddana #{submission_time} dni po 5 stycznia 2024 roku."
      end
    else
      @submission_time_message = "Nie masz jeszcze oddanej pracy."
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dissertation
      @dissertation = Dissertation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dissertation_params
      params.require(:dissertation).permit(:index, :student_index, :promoter_index, :sending_date, :user_id, :pdf)
    end

    def authenticate_student!
      redirect_to root_path, alert: 'Brak dostępu.' unless current_user && current_user.is_student?
    end
    
end
