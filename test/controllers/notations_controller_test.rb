require 'test_helper'

class NotationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notation = notations(:one)
  end

  test "should get index" do
    get notations_url
    assert_response :success
  end

  test "should get new" do
    get new_notation_url
    assert_response :success
  end

  test "should create notation" do
    assert_difference('Notation.count') do
      post notations_url, params: { notation: { criterion_id: @notation.criterion_id, score: @notation.score, subject_id: @notation.subject_id, {polymorphic}: @notation.{polymorphic} } }
    end

    assert_redirected_to notation_url(Notation.last)
  end

  test "should show notation" do
    get notation_url(@notation)
    assert_response :success
  end

  test "should get edit" do
    get edit_notation_url(@notation)
    assert_response :success
  end

  test "should update notation" do
    patch notation_url(@notation), params: { notation: { criterion_id: @notation.criterion_id, score: @notation.score, subject_id: @notation.subject_id, {polymorphic}: @notation.{polymorphic} } }
    assert_redirected_to notation_url(@notation)
  end

  test "should destroy notation" do
    assert_difference('Notation.count', -1) do
      delete notation_url(@notation)
    end

    assert_redirected_to notations_url
  end
end
