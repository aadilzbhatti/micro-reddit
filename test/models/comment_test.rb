require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @user = User.create(username: 'prevosis', email: 'aadilzbhatti@gmail.com',
                        password: 'foobar', password_confirmation: 'foobar')
    @post = Post.create(title: 'Why I am a CS Major',
                     description: 'Because I Want to Drown in Schoolwork.', user_id: @user.id)
    @comment = Comment.new(body: 'lol i made a shitpost', user_id: @user.id, post_id: @post.id)
  end

  test 'should be valid' do
    assert @comment.valid?
  end

  test 'invalid if no user' do
    @comment = Comment.new(body: 'what', post_id: @post.id)
    assert_not @comment.valid?
  end

  test 'invalid if no post' do
    @comment = Comment.new(body: 'wheat', user_id: @user.id)
    assert_not @comment.valid?
  end
end
