class Article < ApplicationRecord
  with_options presence: true do
    validates :name, length: { maximum: 40 }
    with_options numericality: { other_than: 1 } do
      validates :prefecture_id
      validates :bath_type_id
      validates :temperature_id
      validates :breadth_id
      validates :water_bath_id
      validates :break_space_id
      validates :budget_id
      validates :number_of_visit_id
      validates :evaluation_id
    end
    validates :general_comment, length: { maximum: 1000 }
  end
  
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :bath_type
  belongs_to :temprerature
  belongs_to :breadth
  belongs_to :water_bath
  belongs_to :break_space
  belongs_to :budget
  belongs_to :number_of_visit
  belongs_to :evaluation
end