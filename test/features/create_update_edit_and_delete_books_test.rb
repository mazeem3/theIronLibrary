require "test_helper"

class CreateUpdateEditAndDeleteBooksTest < Capybara::Rails::TestCase


  setup do
    author = Author.create! first_name: "This", last_name: "Test", bio: "Is a test"
  end
  test "can visit Home" do
    visit root_path

  end
  test "can create new book" do


    visit root_path
    click_link "Add New Book"
    fill_in('Title', :with => "Test")
    fill_in('Photo url', :with => 'http://pngimg.com/upload/book_PNG2116.png')
    fill_in('Price', :with => 8.99)
    select('This Test', :from => "Author")

    click_button "Create Book"

    assert_content page, "Test"

  end




end
