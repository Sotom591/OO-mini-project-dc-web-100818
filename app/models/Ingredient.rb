class Ingredient
  attr_accessor :name
  def initialize(name)
    @name = name
    self.class.all << self
  end

  @@all = []
  def self.all
    @@all
  end

  # def self.most_common_allergen
  #   Allergen.all.group_by { |al, al.ingredient| }
  # end

end
