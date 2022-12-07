class BooksResp
    def initialize(books)
        @books = books
    end
    
    def as_json
       books.map do |book| 
        {
            name: book.name,
            price: book.price,
            # author_name: author_name(book),
            # author_age: book.author.first_name
        } 
        end
    end

    private
    attr_reader :books

    def author_name 
        "#{book.author.first_name} #{book.author.last_name}"
    end
end