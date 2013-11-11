class AnswersController < ApplicationController

  def poke  
	@question = Question.active.first
	@answer   = Answer.new
  end
  
end
