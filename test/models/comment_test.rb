require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "ratings" do
    # user = FactoryGirl.create(:user)
    # sign_in user
    # get :new
    # assert_response :success

    place = FactoryGirl.create(:place)
    comment = FactoryGirl.create(:comment)
    expected = 'three stars'
    actual = comment.humanized_rating
    assert_equal expected, actual 
  end
end

