class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :responsible
end
