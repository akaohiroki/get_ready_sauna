class BathType < ActiveHash::Base
  self.data = [
    { id: 1, name: '1.--' },
    { id: 2, name: '2.男湯' },
    { id: 3, name: '3.女湯' }
  ]

  include ActiveHash::Associations
  has_many :articles
end