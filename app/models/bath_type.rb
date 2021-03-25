class BathType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '男湯(漢のサウナ)' },
    { id: 3, name: '女湯(乙女のサウナ)' }
  ]

  include ActiveHash::Associations
  has_many :articles
end