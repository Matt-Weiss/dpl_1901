class Author
  attr_reader :books,
              :author_first_name,
              :author_last_name

  def initialize(attributes)
    @author_first_name = attributes[:first_name]
    @author_last_name = attributes[:last_name]
    @books = []
  end

  def add_book(title, publication_date)
    @books << Book.new({author_first_name: @author_first_name, author_last_name: @author_last_name, title: title, publication_date: publication_date})
  end
end
