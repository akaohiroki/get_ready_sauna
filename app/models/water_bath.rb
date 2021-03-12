class WaterBath < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ぬるめ' },
    { id: 3, name: 'ややぬるい' },
    { id: 4, name: '平温' },
    { id: 5, name: '低音' },
    { id: 6, name: 'かなり低音' },
    { id: 7, name: '極寒' }
  ]

  include ActiveHash::Associations
  has_many :articles
end