class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    
    role_array =[]
    self.characters #gives an array of the characters
    self.characters.each do |character|
    role_array << "#{character.name} - #{character.show.name}"
  end

end
