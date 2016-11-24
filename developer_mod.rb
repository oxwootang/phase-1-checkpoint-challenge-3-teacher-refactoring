module DeveloperMod
  require_relative 'student'

  def set_phase(num)
    response = ""
    if self.instance_of?(Student)
      if num == @phase
        response += "I'm doing phase #{@phase} again because I put my learning first. I'm gonna rock it!"
      else
        response = "Oooh, phase #{num}. I hope I'm ready!"
      end
      @phase = num
      response
    else
      @phase = num
      "Cool, I've always wanted to teach phase #{num}!"
    end
  end
end
