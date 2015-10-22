# Grandma can't hear me
class Grandma
  def initialize
    @has_said_goodbye = false
  end

  def talk(sentence)
    if empty_sentence?(sentence)
      'WHAT?!'
    elsif said_goodbye?(sentence)
      respond_to_goodbye
    elsif all_upper_case?(sentence)
      'NO, NOT SINCE 1946!'
    else
      'SPEAK UP, KID!'
    end
  end

  private

  def all_upper_case?(sentence)
    sentence == sentence.upcase
  end

  def said_goodbye?(sentence)
    sentence == 'GOODBYE'
  end

  def empty_sentence?(sentence)
    sentence == ''
  end

  def respond_to_goodbye
    if @has_said_goodbye
      'LATER, SKATER!'
    else
      @has_said_goodbye = true
      'LEAVING SO SOON?'
    end
  end
end
