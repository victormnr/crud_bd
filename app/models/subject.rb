class Subject < ApplicationRecord
  belongs_to :professor
  has_and_belongs_to_many :classrooms
end
