require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.create(username: 'prevosis', email: 'aadilzbhatti@gmail.com',
                     password: 'foobar', password_confirmation: 'foobar')
    @post = Post.new(title: 'Why I am a CS Major',
                     description: 'Because I Want to Drown in Schoolwork.', user_id: @user.id)
  end

  test 'should be valid' do
    assert @post.valid?
  end
end
