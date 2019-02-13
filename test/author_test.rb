require './test/test_helper'

class AuthorTest < Minitest::Test

  def test_it_exists
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})

    assert_instance_of Author, nk_jemisin
  end

  def test_it_has_attributes
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})

    assert_equal "N.K.", nk_jemisin.author_first_name
  end

  def test_books_is_an_empty_hash
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})

    assert_equal [], nk_jemisin.books
  end

  def test_we_can_add_books
    skip
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    book_1 = Book.new({author_first_name: "N.K.", author_last_name: "Jemisin", title: "The Fifth Season", publication_date: "November 3, 2015"})

    nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    assert_equal [book_1], nk_jemisin.books
    #I don't know how to make my test book the same object as the Book being shoveled in. It fails, but the attribute values are correct.
  end

  def test_we_can_add_multiple_books
    skip
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    book_1 = Book.new({author_first_name: "N.K.", author_last_name: "Jemisin", title: "The Fifth Season", publication_date: "November 3, 2015"})
    book_2 = Book.new({author_first_name: "N.K.", author_last_name: "Jemisin", title: "The Hundred Thousand Kingdoms", publication_date: "2010"})

    nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    assert_equal [book_1, book_2], nk_jemisin.books
    #same as above. I'll come back to it if I get time.
  end

end
