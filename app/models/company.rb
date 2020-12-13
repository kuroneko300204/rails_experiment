class Company < ApplicationRecord
  has_one :department
  # has_one :department, inverse_of: :company
  accepts_nested_attributes_for :department
end
