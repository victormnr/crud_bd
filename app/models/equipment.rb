class Equipment < ApplicationRecord
  belongs_to :secretary
  belongs_to :equip_type
end
