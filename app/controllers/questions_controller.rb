class QuestionsController < ApplicationController
  def ask; end

  def answer
    if params[:answer].downcase == 'i am going to work right now!'
      params[:answer] = 'Great!'
    elsif params[:answer].end_with?('?')
      params[:answer] = 'Silly question, get dressed and go to work!'
    else
      params[:answer] = "I don't care, get dressed and go to work!"
    end
  end
end
