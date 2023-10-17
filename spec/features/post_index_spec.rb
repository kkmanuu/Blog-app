require 'rails_helper'

RSpec.describe 'Post index ' do
  before :each do
    @user = User.create(name: 'John Doe', photo: 'https://example.com/john-doe.jpg', bio: 'Web Developer',
                        post_counter: 0)
    @post1 = Post.create(author_id: @user.id, title: 'Rails Journey', text: 'Exploring the world.',
                         like_counter: 2, comment_counter: 1)
    @post2 = Post.create(author_id: @user.id, title: 'Hello World', text: 'Another day, another hello.',
                         like_counter: 0, comment_counter: 0)
    @post3 = Post.create(author_id: @user.id, title: 'Ruby Adventures', text: 'Discovering the beauty.',
                         like_counter: 1, comment_counter: 2)
    @comment = Comment.create(user_id: @user.id, post_id: @post1.id, text: 'Great post!')
    visit user_posts_path(@user.id)
  end

  it 'see the user profile picture' do
    expect(page).to have_css("img[src*='https://example.com/john-doe.jpg']")
  end

  it 'can see the user name' do
    expect(page).to have_content('John Doe')
  end

  it 'can see the number of posts user has written' do
    expect(page).to have_content('Number of posts: 3')
  end

  # write your code below