require 'test_helper'

class CookbooksToRecipesRelationshipsControllerTest < ActionController::TestCase
  setup do
    @cookbooks_to_recipes_relationship = cookbooks_to_recipes_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cookbooks_to_recipes_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cookbooks_to_recipes_relationship" do
    assert_difference('CookbooksToRecipesRelationship.count') do
      post :create, cookbooks_to_recipes_relationship: { cookbook_id: @cookbooks_to_recipes_relationship.cookbook_id, recipe_id: @cookbooks_to_recipes_relationship.recipe_id }
    end

    assert_redirected_to cookbooks_to_recipes_relationship_path(assigns(:cookbooks_to_recipes_relationship))
  end

  test "should show cookbooks_to_recipes_relationship" do
    get :show, id: @cookbooks_to_recipes_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cookbooks_to_recipes_relationship
    assert_response :success
  end

  test "should update cookbooks_to_recipes_relationship" do
    patch :update, id: @cookbooks_to_recipes_relationship, cookbooks_to_recipes_relationship: { cookbook_id: @cookbooks_to_recipes_relationship.cookbook_id, recipe_id: @cookbooks_to_recipes_relationship.recipe_id }
    assert_redirected_to cookbooks_to_recipes_relationship_path(assigns(:cookbooks_to_recipes_relationship))
  end

  test "should destroy cookbooks_to_recipes_relationship" do
    assert_difference('CookbooksToRecipesRelationship.count', -1) do
      delete :destroy, id: @cookbooks_to_recipes_relationship
    end

    assert_redirected_to cookbooks_to_recipes_relationships_path
  end
end
