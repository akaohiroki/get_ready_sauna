class Gender < ActiveHash::Base
  self.data = [
    { id: 1, name: '1.--' },
    { id: 2, name: '2.男性' },
    { id: 3, name: '3.女性' }
  ]

  include ActiveHash::Associations
  has_many :users
end