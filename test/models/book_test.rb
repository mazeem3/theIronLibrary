require 'test_helper'

class BookTest < ActiveSupport::TestCase

    test "book should have price" do

      book = Book.new
      book.price = 8.99
      book.valid?
      assert_equal false, book.errors[:price].any?, "Should not have error on price"

    end

end
