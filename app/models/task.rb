class Task < ActiveRecord::Base
    has_many :task_tags
    has_many :tags, :through => :task_tags
    belongs_to :flatmate
    belongs_to :flat 

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
