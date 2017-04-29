require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post :create, card: { allergy: @card.allergy, building: @card.building, city: @card.city, dateofcreation: @card.dateofcreation, firstname: @card.firstname, flat: @card.flat, house: @card.house, insurancepolicy: @card.insurancepolicy, lastname: @card.lastname, nomer: @card.nomer, passportnumber: @card.passportnumber, passportseries: @card.passportseries, passportwhen: @card.passportwhen, passsportfrom: @card.passsportfrom, pindex: @card.pindex, secondname: @card.secondname, street: @card.street, telephone: @card.telephone, typeoftreatment: @card.typeoftreatment }
    end

    assert_redirected_to card_path(assigns(:card))
  end

  test "should show card" do
    get :show, id: @card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card
    assert_response :success
  end

  test "should update card" do
    patch :update, id: @card, card: { allergy: @card.allergy, building: @card.building, city: @card.city, dateofcreation: @card.dateofcreation, firstname: @card.firstname, flat: @card.flat, house: @card.house, insurancepolicy: @card.insurancepolicy, lastname: @card.lastname, nomer: @card.nomer, passportnumber: @card.passportnumber, passportseries: @card.passportseries, passportwhen: @card.passportwhen, passsportfrom: @card.passsportfrom, pindex: @card.pindex, secondname: @card.secondname, street: @card.street, telephone: @card.telephone, typeoftreatment: @card.typeoftreatment }
    assert_redirected_to card_path(assigns(:card))
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @card
    end

    assert_redirected_to cards_path
  end
end
