module TeacherMod
  require_relative 'apprentice_teacher'
  require_relative 'senior_teacher'

  def teach_stuff
    response = "Listen, class, this is how everything works"
    if self.instance_of?(ApprenticeTeacher)
      response += ". *drops crazy knowledge bomb* ... You're welcome."
    else
      response += ", fo SHO! *drops flat-out insane knowledge bomb* ... You're welcome. *saunters away*"
    end
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
    response = ""
    if self.instance_of?(ApprenticeTeacher)
      if rating > 80
        response = "Yay, I'm a great employee!"
        receive_raise(@target_raise)
      end
    else
      if rating > 90
        response = "Yay, I'm a great employee!"
        receive_raise(@target_raise)
      end
    end
    return response if response != ""
    response += "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    response
  end
end
