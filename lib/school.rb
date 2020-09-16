class School

attr_accessor :roster

     def initialize(name)
     @name = name
     @roster = {}
     end

     def add_student(student, grade)

         if !!roster[grade]
             roster[grade]<<student
         else
             roster[grade] = []
             roster[grade] << student
         end
     end

     def grade(student)
         roster[student]
     end

     def sort
         sorted_by_grades = {}
         roster.each do |k,v|
             sorted_by_grades[k] = v.sort
         end
         p sorted_by_grades
     end

 end