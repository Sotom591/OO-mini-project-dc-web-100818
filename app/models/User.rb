require 'date'

class User
  attr_reader :name
  def initialize(name)
    @name = name
    self.class.all << self
  end

  @@all = []
  def self.all
    @@all
  end

  def select_all_rcs
    Recipecard.all.select do |rc|
      rc.user == self
    end
  end

  def recipes
    self.select_all_rcs.collect { |rc| rc.user }
  end

  def add_recipe_card(recipe, rating, date)
    Recipecard.new(self, recipe, rating, date)
  end

  # def top_three_recipes
  #   self.select_all_rcs
  # end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    als = Allergen.all.select do |al|
      al.user == self
    end

    als.collect do |al|
      al.ingredient
    end.uniq
  end

  def most_recent_recipe
    dates = self.select_all_rcs.collect do |rc|
      rc.date
    end
    # binding.pry
    dates.sort[-1]
    
    # binding.pry
  end

end
