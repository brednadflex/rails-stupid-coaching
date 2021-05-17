class QuestionsController < ApplicationController
  def ask

  end

  def answer
    search = params[:question]
    @answers = ["Great", 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    if search == "I am going to work"
      @answers = @answers[0]
    elsif search.include?('?')
      @answers = @answers[1]
    else
      @answers = @answers[2]
    end
  end
end
