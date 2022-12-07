class BooksResp
    def initialize(books)
        @books = books
    end
    
    def as_json
       books.map do |book| 
        {
            name: book.name,
            price: book.price
        } 
        end
    end

    private
    attr_reader :books
end