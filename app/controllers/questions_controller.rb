class QuestionsController < ApplicationController

  def ask
  end

  def answer
    if params[:question_text].include? "I am going to work right now!"
      params[:answer_text] = ""
    elsif params[:question_text].include? "?"
      params[:answer_text] = "Silly question, get dressed and go to work!"
    else
      params[:answer_text] = "I don't care, get dressed and go to work!"
    end
    return params[:answer_text].to_s
  end
end
