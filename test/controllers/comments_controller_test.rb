require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'create_comment' do 
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place)

    assert_difference 'Comment.count' do
      post :create, :place_id => place.id, :comment => {
        :message => 'this place is great', 
        :rating => '3_stars'
      }
    end
    assert_redirected_to place_path(place)
    assert_equal 1, place.comments.count
  end
end
