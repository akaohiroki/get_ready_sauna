class Evaluation < ActiveHash::Base
  self.data = [
    { id: 1, name: '1.--' },
    { id: 2, name: '2.少し物足りない' },
    { id: 3, name: '3.悪くない' },
    { id: 4, name: '4.ちょうど良い' },
    { id: 5, name: '5.マイホーム' },
    { id: 6, name: '6.楽園' },
    { id: 7, name: '7.桃源郷' }
  ]

  include ActiveHash::Associations
  has_many :articles
end