
class School

  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new([])
  end


  def add_student(student_name, grade)
    @roster[grade] += [student_name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = @roster.each do |k,v|
      v.sort!
    end
    sorted
  end
end
