class Member < ApplicationRecord
  # belongs_to :demartment
  # belongs_to :demartment, inverse_of: :members
  belongs_to :department, inverse_of: :members
end
