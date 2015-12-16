require 'test_helper'

class ResidentesControllerTest < ActionController::TestCase
  setup do
    @residente = residentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:residentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create residente" do
    assert_difference('Residente.count') do
      post :create, residente: { apartamento_id: @residente.apartamento_id, apellido: @residente.apellido, fecha_nacimiento: @residente.fecha_nacimiento, identificacion: @residente.identificacion, nombre: @residente.nombre, telefono: @residente.telefono }
    end

    assert_redirected_to residente_path(assigns(:residente))
  end

  test "should show residente" do
    get :show, id: @residente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @residente
    assert_response :success
  end

  test "should update residente" do
    patch :update, id: @residente, residente: { apartamento_id: @residente.apartamento_id, apellido: @residente.apellido, fecha_nacimiento: @residente.fecha_nacimiento, identificacion: @residente.identificacion, nombre: @residente.nombre, telefono: @residente.telefono }
    assert_redirected_to residente_path(assigns(:residente))
  end

  test "should destroy residente" do
    assert_difference('Residente.count', -1) do
      delete :destroy, id: @residente
    end

    assert_redirected_to residentes_path
  end
end
