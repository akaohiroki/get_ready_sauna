class BreakSpace < ActiveHash::Base
  self.data = [
    { id: 1, name: '1.--' },
    { id: 2, name: '2.狭め 外気浴なし' },
    { id: 3, name: '3.普通 外気浴なし' },
    { id: 4, name: '4.広い 外気浴なし' },
    { id: 5, name: '5.狭め 外気浴あり' },
    { id: 6, name: '6.普通 外気浴あり' },
    { id: 7, name: '7.広い 外気浴あり' }
  ]

  include ActiveHash::Associations
  has_many :articles
end