class School
  
  def initialize    
    @students = Hash.new
    @students_by_grade = Hash.new 
  end

  def add(*args)
    @student, @grade = *args
    if @students.has_key?(@grade) 
      @students[@grade] += [@student]
      @students[@grade] = @students[@grade].sort
    else
      @students[@grade] = [@student]
    end
  end

  def students(x)
    if @student.nil? && @grade.nil?
      []
    else
      @students[x]
    end 
  end

  def students_by_grade
    if @student.nil? && @grade.nil?
      []
    else
      @students_by_grade[:grade] = @grade
      @students_by_grade[:students] = @students[@grade].sort
      [@students_by_grade]
    end
  end
end
module BookKeeping
  VERSION = 3
end
