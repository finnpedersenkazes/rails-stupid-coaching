class QuestionsController < ApplicationController

  def ask

  end

  def answer
    if params[:query]
      @question = params[:query]
      @answer = coach_answer_enhanced(@question)
    else
      @question = ""
      @answer = "You didn't ask anything. How can I then help you? Idiot!"
    end
  end

  private

  def coach_answer(your_message)
    return "" unless your_message
    # TODO: return coach answer to your_message
    if your_message.include? "work"
      return "OK."
    elsif your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    return "" unless your_message
    if your_message.include? "WORK"
      return "Yes! Let's do this."
    elsif your_message == your_message.upcase
      return "I can feel your motivation! " + coach_answer(your_message)
    else
      return coach_answer(your_message)
    end
  end

end
