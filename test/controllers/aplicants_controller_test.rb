require "test_helper"

class AplicantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aplicant = aplicants(:one)
  end

  test "should get index" do
    get aplicants_url
    assert_response :success
  end

  test "should get new" do
    get new_aplicant_url
    assert_response :success
  end

  test "should create aplicant" do
    assert_difference("Aplicant.count") do
      post aplicants_url, params: { aplicant: { name: @aplicant.name, vacancy_id: @aplicant.vacancy_id } }
    end

    assert_redirected_to aplicant_url(Aplicant.last)
  end

  test "should show aplicant" do
    get aplicant_url(@aplicant)
    assert_response :success
  end

  test "should get edit" do
    get edit_aplicant_url(@aplicant)
    assert_response :success
  end

  test "should update aplicant" do
    patch aplicant_url(@aplicant), params: { aplicant: { name: @aplicant.name, vacancy_id: @aplicant.vacancy_id } }
    assert_redirected_to aplicant_url(@aplicant)
  end

  test "should destroy aplicant" do
    assert_difference("Aplicant.count", -1) do
      delete aplicant_url(@aplicant)
    end

    assert_redirected_to aplicants_url
  end
end
