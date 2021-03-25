class Gender < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '男性(サ活男子)' },
    { id: 3, name: '女性(サ活女子)' }
  ]

  include ActiveHash::Associations
  has_many :users
end