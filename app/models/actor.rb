class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = "#{first_name + " " + last_name}"
  end

  def list_roles
    name = self.characters.first.name
    show = self.shows.first.name
    role = "#{name} - #{show}"
  end
end
