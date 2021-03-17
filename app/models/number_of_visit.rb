class NumberOfVisit < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '初めて' },
    { id: 3, name: '2回〜3回目' },
    { id: 4, name: '3回〜5回目' },
    { id: 5, name: '5回〜10回目' },
    { id: 6, name: '10回以上' },
    { id: 7, name: '毎日' }
  ]

  include ActiveHash::Associations
  has_many :articles
end