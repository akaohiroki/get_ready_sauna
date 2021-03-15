class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname, length: { maximum: 20 }
    validates :age, numericality: { only_integer: true }
    with_options numericality: { other_than: 1 } do
      validates :gender_id
      validates :sauna_history_id
    end
  end
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }

  has_many :articles
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
  belongs_to :sauna_history
end