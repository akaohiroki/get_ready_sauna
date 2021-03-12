class BathType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '男湯' },
    { id: 3, name: '女湯' }
  ]

  include ActiveHash::Associations
  has_many :articles
end