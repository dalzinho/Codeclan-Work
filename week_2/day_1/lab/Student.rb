class Student

attr_accessor :name, :cohort

  def initialize(student_name, cohort)

    @name = student_name
    @cohort = cohort

  end

  def talk
    return "I'm STUCK!!!!1"
  end

  def say_favourite_language(language)
    return "I love #{language}!"  
  end

end