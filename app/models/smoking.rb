class Smoking < ActiveHash::Base
  self.data = [
    { id: 0, name: '' },
    { id: 1, name: '吸わない' },
    { id: 2, name: '1〜5本' },
    { id: 3, name: '6〜10本' },
    { id: 4, name: '11〜20本' },
    { id: 5, name: '20〜30本' },
    { id: 6, name: '30本以上' }
  ]

  include ActiveHash::Associations
  has_many :events

end