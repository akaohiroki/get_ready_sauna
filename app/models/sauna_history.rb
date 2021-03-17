class SaunaHistory < ActiveHash::Base
  self.data = [
    { id: 1, name: '1.--' },
    { id: 2, name: '2.サウナ初級者' },
    { id: 3, name: '3.サウナ駆け出し' },
    { id: 4, name: '4.サウナ中級者' },
    { id: 5, name: '5.サウナ熟練者' },
    { id: 6, name: '6.サウナ上級者' },
    { id: 7, name: '7.サウナ魔神' }
  ]

  include ActiveHash::Associations
  has_many :users
end