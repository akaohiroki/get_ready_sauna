class Budget < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '¥1,000円未満' },
    { id: 3, name: '¥1,000円〜¥2,000円' },
    { id: 4, name: '¥2,000円〜¥3,000円' },
    { id: 5, name: '¥3,000円〜¥4,000円' },
    { id: 6, name: '¥4,000円〜¥5,000円' },
    { id: 7, name: '¥5,000円〜' }
  ]

  include ActiveHash::Associations
  has_many :articles
end