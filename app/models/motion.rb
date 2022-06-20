class Motion < ActiveHash::Base
  self.data = [
    { id: 0, name: '' },
    { id: 1, name: 'はい' },
    { id: 2, name: 'いいえ' }
  ]

  include ActiveHash::Associations
  has_many :events

end