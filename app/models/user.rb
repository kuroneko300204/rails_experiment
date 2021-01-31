class User < ApplicationRecord
  with_options presence: true do
    validates :first_name
    validates :last_name
    validates :email
  end

  # confirmの時のみチェック
  with_options on: :confirm do
    validates_presence_of :gender
    validates_presence_of :age
    validates_presence_of :phone_number
    validates_presence_of :address
  end

  enum gender: { man: '0', woman: '1' }

end
