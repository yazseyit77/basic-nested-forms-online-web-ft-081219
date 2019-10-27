class Address < ActiveRecord::Base
  belongs_to :person
  
  def person_attributes=(person)
    self.person = Person.find_or_create_by(name: person[:name])
    self.person.update(person)
  end

end
