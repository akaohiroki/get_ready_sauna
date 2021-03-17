class NumberOfVisit < ActiveHash::Base
  self.data = [
    { id: 1, name: '1.--' },
    { id: 2, name: '2.初めて' },
    { id: 3, name: '3.2回〜3回目' },
    { id: 4, name: '4.3回〜5回目' },
    { id: 5, name: '5.5回〜10回目' },
    { id: 6, name: '6.10回以上' },
    { id: 7, name: '7.毎日' }
  ]

  include ActiveHash::Associations
  has_many :articles
end