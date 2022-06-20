class Posture < ActiveHash::Base
  self.data = [
    { id: 0, name: 'はい' },
    { id: 1, name: 'いいえ' },
  ]

  include ActiveHash::Associations
  has_many :events

end