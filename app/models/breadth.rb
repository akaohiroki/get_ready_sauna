class Breadth < ActiveHash::Base
  self.data = [
    { id: 1, name: '1.--' },
    { id: 2, name: '2.狭い' },
    { id: 3, name: '3.やや狭い' },
    { id: 4, name: '4.普通' },
    { id: 5, name: '5.広め' },
    { id: 6, name: '6.かなり広め' },
    { id: 7, name: '7.大広間' }
  ]

  include ActiveHash::Associations
  has_many :articles
end