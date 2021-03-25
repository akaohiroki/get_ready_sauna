class Evaluation < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '冥界(地獄の入り口)' },
    { id: 3, name: '微妙(少し物足りない)' },
    { id: 4, name: '無難(悪くはない)' },
    { id: 5, name: '普通(ちょうど良い)' },
    { id: 6, name: '実家(マイホーム)' },
    { id: 7, name: '楽園(整い絶頂)' },
    { id: 8, name: '天国(天に召される)' }
  ]

  include ActiveHash::Associations
  has_many :articles
end