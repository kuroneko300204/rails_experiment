class User < ApplicationRecord
  with_options presence: true do
    validates :first_name
    validates :last_name
    validates :email
  end
end
