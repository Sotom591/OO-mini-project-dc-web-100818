class Recipecard
  attr_accessor :user, :recipe, :rating, :date
  # attr_reader :date
  def initialize(user, recipe, rating, date)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    self.class.all << self
  end

  @@all = []
  def self.all
    @@all
  end

end
