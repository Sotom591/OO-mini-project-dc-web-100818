class Recipeingredient
  attr_accessor :recipe, :ingredient
  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    self.class.all << self
  end

  @@all = []
  def self.all
    @@all
  end
end
