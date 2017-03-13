# Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date

@books = [
 {
 title: "lord_of_the_rings",
 rental_details: { 
   student_name: "Jeff", 
   date: "01/12/16"
   }
 },

 {
   title: "american_pyscho",
   rental_details: {
     student_name: "Ben",
     date: "10/12/16"
   }
 },

 {
   title: "bear_hunt",
   rental_details: {
     student_name: "Max",
     date: "11/12/16"
   }
 }
 ]

# Create a method that list all the books and their corresponding details.

def return_all_info
 return @books
end

return_all_info()


# Create a method that takes in a book title and returns all of the information about that book.
def return_book_info(title)
  for book in @books
    if book[:title] == title
      return book
    end
  end
end

return_book_info("bear_hunt")


# Create a method that takes in a book title and returns only the rental details for that book.
def return_book_rental_info(title)
  for book in @books
    if book[:title] == title
      return book[:rental_details]
    end
  end
end

return_book_rental_info("lord_of_the_rings")

# Create a method that takes in a book title and adds it to our book list (Add a new hash for the book with the student name and date being left as empty strings)
def add_new_book(title)
  @books.push({
    title: title,
    rental_details: {
      student_name:"",
      date:"" 
    }
    })
end

add_new_book("lion_witch_wardrobe")


# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
def new_rental_info(title, student, new_date)
  for book in @books
    if book[:title] == title
      book[:rental_details][:student_name] = student
      book[:rental_details][:date] = new_date
    end
  end
end

new_rental_info("american_pyscho", "not_ben", "31/03/17")