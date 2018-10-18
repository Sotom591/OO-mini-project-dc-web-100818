class Allergen
  attr_accessor :user, :ingredient
  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    self.class.all << self
  end

  @@all = []
  def self.all
    @@all
  end
end
