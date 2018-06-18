class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    saying = self.catchphrase
    char = self.name
    "#{char} always says: #{saying}"
  end
end
