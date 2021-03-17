class WaterBath < ActiveHash::Base
  self.data = [
    { id: 1, name: '1.--' },
    { id: 2, name: '2.ぬるめ' },
    { id: 3, name: '3.ややぬるい' },
    { id: 4, name: '4.平温' },
    { id: 5, name: '5.低温' },
    { id: 6, name: '6.かなり低温' },
    { id: 7, name: '7.極寒' }
  ]

  include ActiveHash::Associations
  has_many :articles
end