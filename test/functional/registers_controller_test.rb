require 'test_helper'

class RegistersControllerTest < ActionController::TestCase
  setup do
    @register = registers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create register" do
    assert_difference('Register.count') do
      post :create, register: { amat: @register.amat, apat: @register.apat, apoderado: @register.apoderado, asistencia: @register.asistencia, carrera: @register.carrera, celular: @register.celular, ci: @register.ci, ciudad: @register.ciudad, direccion: @register.direccion, direccionapoderado: @register.direccionapoderado, email: @register.email, nivel: @register.nivel, nombre: @register.nombre, otro: @register.otro, parentesco: @register.parentesco, salud: @register.salud, telefonoapoderado: @register.telefonoapoderado, telefonos: @register.telefonos, zona: @register.zona }
    end

    assert_redirected_to register_path(assigns(:register))
  end

  test "should show register" do
    get :show, id: @register
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @register
    assert_response :success
  end

  test "should update register" do
    put :update, id: @register, register: { amat: @register.amat, apat: @register.apat, apoderado: @register.apoderado, asistencia: @register.asistencia, carrera: @register.carrera, celular: @register.celular, ci: @register.ci, ciudad: @register.ciudad, direccion: @register.direccion, direccionapoderado: @register.direccionapoderado, email: @register.email, nivel: @register.nivel, nombre: @register.nombre, otro: @register.otro, parentesco: @register.parentesco, salud: @register.salud, telefonoapoderado: @register.telefonoapoderado, telefonos: @register.telefonos, zona: @register.zona }
    assert_redirected_to register_path(assigns(:register))
  end

  test "should destroy register" do
    assert_difference('Register.count', -1) do
      delete :destroy, id: @register
    end

    assert_redirected_to registers_path
  end
end
