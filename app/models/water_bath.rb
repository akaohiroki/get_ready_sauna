class WaterBath < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ぬるめ' },
    { id: 3, name: 'ややぬるい' },
    { id: 4, name: '平温' },
    { id: 5, name: '低温' },
    { id: 6, name: 'かなり低温' },
    { id: 7, name: '極寒' }
  ]

  include ActiveHash::Associations
  has_many :articles
end