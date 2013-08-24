class Task < ActiveRecord::Base
    belongs_to :flatmate

    def overdue?
        due_date < Date.today && !completed?
    end

    def flatmate_name
        if flatmate
          flatmate.name 
        else
          ""
        end
    end

end
