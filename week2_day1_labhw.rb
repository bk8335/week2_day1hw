# Part A

class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_name
    return @name
  end

  def cohort_number
    return @cohort
  end

  def set_student_name(name)
    @name = name
  end

  def set_cohort_number(cohort)
    @cohort = cohort
  end

  def student_talk(words)
    return words
  end

  def student_language(language)
    return "I love #{language}"
  end
end