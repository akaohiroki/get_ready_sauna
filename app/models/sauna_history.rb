class SaunaHistory < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '整い初級者' },
    { id: 3, name: '整い駆け出し' },
    { id: 4, name: '整い中級者' },
    { id: 5, name: '整い熟練者' },
    { id: 6, name: '整い上級者' },
    { id: 7, name: '整い魔神' }
  ]

  include ActiveHash::Associations
  has_many :users
end