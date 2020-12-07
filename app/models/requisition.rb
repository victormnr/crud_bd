class Requisition < ApplicationRecord
  belongs_to :responsible
  belongs_to :equipment
end
