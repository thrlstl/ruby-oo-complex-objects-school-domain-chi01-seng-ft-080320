class School
    attr_accessor :name, :roster
    
        def initialize(name)
            @name = name
            @roster = {}
            end
        
        def add_student (students_name, grade)
            roster[grade] ||= []
            roster[grade] << students_name
        end

        def grade (grade_level)
            roster[grade_level]
        end

        def sort
            sorted_list = {}
            roster.each do |grade, students|
                sorted_list[grade] = students.sort
            end
            sorted_list
        end
    end #end of school class