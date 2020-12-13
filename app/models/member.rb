class Member < ApplicationRecord
  belongs_to :demartment
  # belongs_to :demartment, inverse_of: :members
end
