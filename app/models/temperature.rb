class Temperature < ActiveHash::Base
  self.data = [
    { id: 1, name: '1.--' },
    { id: 2, name: '2.低い' },
    { id: 3, name: '3.やや低め' },
    { id: 4, name: '4.普通' },
    { id: 5, name: '5.やや高め' },
    { id: 6, name: '6.高い' },
    { id: 7, name: '7.灼熱' }
  ]

  include ActiveHash::Associations
  has_many :articles
end