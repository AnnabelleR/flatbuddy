class Flat < ActiveRecord::Base
    has_many :flatmates
    has_many :tasks
end
