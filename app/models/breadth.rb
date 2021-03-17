class Breadth < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '狭い' },
    { id: 3, name: 'やや狭い' },
    { id: 4, name: '普通' },
    { id: 5, name: '広め' },
    { id: 6, name: 'かなり広め' },
    { id: 7, name: '大広間' }
  ]

  include ActiveHash::Associations
  has_many :articles
end