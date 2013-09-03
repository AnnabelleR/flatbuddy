class Flatmate < ActiveRecord::Base
    has_many :tasks
    belongs_to :user
    belongs_to :flat


end
