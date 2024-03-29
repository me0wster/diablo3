require 'test_helper'

class HerosControllerTest < ActionController::TestCase
  setup do
    @hero = heros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:heros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hero" do
    assert_difference('Hero.count') do
      post :create, hero: { dead: @hero.dead, gender: @hero.gender, hardcore: @hero.hardcore, hero_class: @hero.hero_class, hero_id: @hero.hero_id, level: @hero.level, name: @hero.name, paragon_level: @hero.paragon_level }
    end

    assert_redirected_to hero_path(assigns(:hero))
  end

  test "should show hero" do
    get :show, id: @hero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hero
    assert_response :success
  end

  test "should update hero" do
    put :update, id: @hero, hero: { dead: @hero.dead, gender: @hero.gender, hardcore: @hero.hardcore, hero_class: @hero.hero_class, hero_id: @hero.hero_id, level: @hero.level, name: @hero.name, paragon_level: @hero.paragon_level }
    assert_redirected_to hero_path(assigns(:hero))
  end

  test "should destroy hero" do
    assert_difference('Hero.count', -1) do
      delete :destroy, id: @hero
    end

    assert_redirected_to heros_path
  end
end
