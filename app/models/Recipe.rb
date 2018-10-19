require 'pry'

class Recipe
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
      rc.recipe == self
    end
  end

  def users
    self.select_all_rcs.collect { |rc| rc.user }
  end

  def self.most_popular
    histogram = {}
    Recipecard.all.each do |rc|
      if histogram[rc.recipe]
        histogram[rc.recipe] += 1
      else
        histogram[rc.recipe] = 1
      end
    end
    # What if we have two max values?
    histogram.key(histogram.values.max)
  end

  def ingredients
    ris = Recipeingredient.all.select do |ri|
      ri.recipe == self
    end
    ris.collect { |ri| ri.ingredient }
  end

  def allergens
    als = Allergen.all.select do |al|
      self.ingredients.include?(al.ingredient)
    end

    als.collect do |al|
      al.ingredient
    end.uniq
  end

  def add_ingredients(ing)
    new_ing = Ingredient.new(ing)
    Recipeingredient.new(self, new_ing)
  end



end
