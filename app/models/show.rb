class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def build_network(network)
    self.network = Network.new(network)
  end
end
