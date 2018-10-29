class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    if @query == "I am going to work"
      @response = "Great"
    elsif @query.include?('?')
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work"
    end
  end
end
