class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    roles = []
    self.characters.each do |character|
      full_role = "#{character.name} - #{character.show.name}"
      roles << full_role
    end
    roles
  end
end
