class Person < ActiveRecord::Base
  has_many :addresses
  accepts_nested_attributes_for :addresses

  def address_attributes=(address)
    self.address = Address.find_or_create_by(name: address[:name])
    self.address.update(artist)
  end

end
