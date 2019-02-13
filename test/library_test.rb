require './test/test_helper'

class LibraryTest < Minitest::Test

  def test_it_exists
    dpl = Library.new

    assert_instance_of Library, dpl
  end

  def test_it_starts_with_no_books
    dpl = Library.new

    assert_equal [], dpl.books
  end

  def test_we_can_add_books
    dpl = Library.new
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    fifth_season = nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    dpl.add_to_collection(fifth_season)

    assert_equal [fifth_season], dpl.books
  end

  def test_we_can_add_multiple_books
    dpl = Library.new
    nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    fifth_season = nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    kingdoms = nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")
    dpl.add_to_collection(fifth_season)
    dpl.add_to_collection(kingdoms)
    dpl.add_to_collection(mockingbird)

    assert_equal [fifth_season, kingdoms, mockingbird], dpl.books
  end


end
