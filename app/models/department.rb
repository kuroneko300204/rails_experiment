class Department < ApplicationRecord
  # # belongs_to :company
  # belongs_to :company, inverse_of: :department
  # # has_many :members
  # has_many :members, inverse_of: :department
  # accepts_nested_attributes_for :members

  belongs_to :company, inverse_of: :department
  has_many :members, inverse_of: :department
  accepts_nested_attributes_for :members
end
