require 'test_helper'

class SeminariosControllerTest < ActionController::TestCase
  setup do
    @seminario = seminarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seminarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seminario" do
    assert_difference('Seminario.count') do
      post :create, seminario: { category: @seminario.category, hora: @seminario.hora, nombre: @seminario.nombre, obligatory: @seminario.obligatory }
    end

    assert_redirected_to seminario_path(assigns(:seminario))
  end

  test "should show seminario" do
    get :show, id: @seminario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seminario
    assert_response :success
  end

  test "should update seminario" do
    put :update, id: @seminario, seminario: { category: @seminario.category, hora: @seminario.hora, nombre: @seminario.nombre, obligatory: @seminario.obligatory }
    assert_redirected_to seminario_path(assigns(:seminario))
  end

  test "should destroy seminario" do
    assert_difference('Seminario.count', -1) do
      delete :destroy, id: @seminario
    end

    assert_redirected_to seminarios_path
  end
end
