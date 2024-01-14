class FeedbacksController < ApplicationController
    def create
      @dissertation = Dissertation.find(params[:dissertation_id])
      @feedback = @dissertation.feedbacks.build(feedback_params)
  
      if @feedback.save
        redirect_to @dissertation, notice: 'Komentarz został dodany.'
      else
        render 'dissertations/show'
      end
    end
  
    private
  
    def feedback_params
      params.require(:feedback).permit(:content)
    end
  end