require_relative '../config/environment.rb'

user1 = User.new("Iman")
user2 = User.new("Marissa")
user3 = User.new("Sally")
user4 = User.new("Jimbo")

recipe1 = Recipe.new("Apple Pie")
recipe2 = Recipe.new("Chocolate Cake")
recipe3 = Recipe.new("Waffles")
recipe4 = Recipe.new("Rice pudding")

card1 = Recipecard.new(user1, recipe1, 4, "10/03/18")
card2 = Recipecard.new(user1, recipe2, 3, "09/15/17")
card3 = Recipecard.new(user2, recipe3, 2, "08/07/16")
card4 = Recipecard.new(user3, recipe3, 5, "07/12/13")

ing1 = Ingredient.new("sugar")
ing2 = Ingredient.new("peanuts")
ing3 = Ingredient.new("milk")
ing4 = Ingredient.new("shellfish")

al1 = Allergen.new(user1, ing1)
al2 = Allergen.new(user2, ing1)
al3 = Allergen.new(user3, ing2)
al4 = Allergen.new(user3, ing3)
al5 = Allergen.new(user4, ing4)

ri1 = Recipeingredient.new(recipe1, ing1)
ri2 = Recipeingredient.new(recipe1, ing2)
ri3 = Recipeingredient.new(recipe2, ing3)
ri4 = Recipeingredient.new(recipe3, ing3)

p "----check recipe.users----"
p recipe3.users
p user2
p user3

p "----check Recipe.most_popular----"
p Recipe.most_popular
p recipe3

p '---check user.add_recipe_card----'
p user1.add_recipe_card(recipe3, 1, "12/03/18")
# p User.most_recent_recipe

p '---check recipe.add_ingredients and recipe.ingredients'
p recipe1.add_ingredients("pears")
p recipe1.ingredients


binding.pry
0
