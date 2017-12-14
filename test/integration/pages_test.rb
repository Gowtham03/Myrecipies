require 'test_helper'

class PagesTest < ActionDispatch::IntegrationTest
   test "should get home" do
     get pages_home_url
     assert_response :success
   end
   
   test "should get root" do
     get root_url
     assert_response :success
   end
   
   test "should get recipes show" do
   get recipe_path(@recipe)
   assert_template 'recipes/show'
   assert_match @recipe.name, response.body
   assert_match @recipe.description, response.body
   assert_match @chef.chefname, response.body
   assert_select 'a[href=?]', edit_recipe_path(@recipe), text: "Edit this recipe"
   assert_select 'a[href=?]', recipe_path(@recipe), text: "Delete this recipe"
   assert_select 'a[href=?]', recipes_path, text: "Return to recipes listing"
   end
   
end
