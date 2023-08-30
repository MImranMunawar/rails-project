# #Write a program to calculate the grade of a student from his marks
# #(above 80% - A, above 70% - B, above 50% - C, below 50% - F).

def calculate_grade(marks)
  if marks > 80
    grade = 'A'
  elsif marks > 70
    grade = 'B'
  elsif marks > 50
    grade = 'C'
  else
    grade = 'F'
  end

  return grade
end

student_marks = 60
student_grade = calculate_grade(student_marks)
puts "The student's grade is: #{student_grade}"
