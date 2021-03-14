class BreakSpace < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '狭め 外気浴なし' },
    { id: 3, name: '普通 外気浴なし' },
    { id: 4, name: '広い 外気浴なし' },
    { id: 5, name: '狭め 外気浴あり' },
    { id: 6, name: '普通 外気浴あり' },
    { id: 7, name: '広い 外気浴あり' }
  ]

  include ActiveHash::Associations
  has_many :articles
end