class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname, length: { maximum: 20 }
    validates :age, format: { with: /\A[0-9]+\z/ }
    validates :gender_id
    validates :sauna_history_id
  end
end
