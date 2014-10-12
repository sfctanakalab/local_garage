require 'test_helper'

class PrintersControllerTest < ActionController::TestCase
  setup do
    @printer = printers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:printers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create printer" do
    assert_difference('Printer.count') do
      post :create, printer: { condition: @printer.condition, image_url: @printer.image_url, location: @printer.location, machinemodel: @printer.machinemodel, material: @printer.material, resolution: @printer.resolution, sizex: @printer.sizex, sizey: @printer.sizey, sizez: @printer.sizez, user_id: @printer.user_id }
    end

    assert_redirected_to printer_path(assigns(:printer))
  end

  test "should show printer" do
    get :show, id: @printer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @printer
    assert_response :success
  end

  test "should update printer" do
    patch :update, id: @printer, printer: { condition: @printer.condition, image_url: @printer.image_url, location: @printer.location, machinemodel: @printer.machinemodel, material: @printer.material, resolution: @printer.resolution, sizex: @printer.sizex, sizey: @printer.sizey, sizez: @printer.sizez, user_id: @printer.user_id }
    assert_redirected_to printer_path(assigns(:printer))
  end

  test "should destroy printer" do
    assert_difference('Printer.count', -1) do
      delete :destroy, id: @printer
    end

    assert_redirected_to printers_path
  end
end
