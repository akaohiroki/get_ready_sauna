class Budget < ActiveHash::Base
  self.data = [
    { id: 1, name: '1.--' },
    { id: 2, name: '2.¥1,000円未満' },
    { id: 3, name: '3.¥1,000円〜¥2,000円' },
    { id: 4, name: '4.¥2,000円〜¥3,000円' },
    { id: 5, name: '5.¥3,000円〜¥4,000円' },
    { id: 6, name: '6.¥4,000円〜¥5,000円' },
    { id: 7, name: '7.¥5,000円〜' }
  ]

  include ActiveHash::Associations
  has_many :articles
end