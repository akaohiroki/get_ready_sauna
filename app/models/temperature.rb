class Temperature < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '低い' },
    { id: 3, name: 'やや低め' },
    { id: 4, name: '普通' },
    { id: 5, name: 'やや高め' },
    { id: 6, name: '高い' },
    { id: 7, name: '灼熱' }
  ]

  include ActiveHash::Associations
  has_many :articles
end