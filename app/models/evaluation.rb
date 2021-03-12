class Evaluation < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '少し物足りない' },
    { id: 3, name: '悪くない' },
    { id: 4, name: 'ちょうど良い' },
    { id: 5, name: 'マイホーム' },
    { id: 6, name: '楽園' },
    { id: 7, name: '桃源郷' }
  ]

  include ActiveHash::Associations
  has_many :articles
end