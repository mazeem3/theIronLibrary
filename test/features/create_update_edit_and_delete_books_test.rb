require "test_helper"

class CreateUpdateEditAndDeleteBooksTest < Capybara::Rails::TestCase


  setup do
    the_user = User.create! username: "maaz", password: "12345678"

    Author.create! first_name: "This", last_name: "Test", bio: "Is a test"
  end
  test "can sign in" do
    visit root_path
    sign_in_user
    assert_content page, "Sign Out"
  end

  test "can create new book" do

    sign_in_user
    click_link "Add New Book"
    fill_in('Title', :with => "Test")
    fill_in('Photo url', :with => 'http://pngimg.com/upload/book_PNG2116.png')
    fill_in('Price', :with => 8.99)
    select('This Test', :from => "Author")

    click_button "Create Book"

    assert_content page, "Test"
    book = Book.find_by title: "This Test"




  end
  def sign_in_user
  visit root_path
  fill_in "Username", with: "maaz"
  fill_in "Password", with: "12345678"
  click_button "Sign In"
  end




end
