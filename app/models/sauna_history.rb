class SaunaHistory < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'サウナ初級者' },
    { id: 3, name: 'サウナ駆け出し' },
    { id: 4, name: 'サウナ中級者' },
    { id: 5, name: 'サウナ熟練者' },
    { id: 6, name: 'サウナ上級者' },
    { id: 7, name: 'サウナ魔神' }
  ]

  include ActiveHash::Associations
  has_many :users
end