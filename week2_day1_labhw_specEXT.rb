require ('minitest/autorun')
require ('minitest/rg')
require_relative('./week2_day1_labhwEXT')

# Extension

class TestLibrary < MiniTest::Test

   def setup 
   @books = Library.new([
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
    ])
  end

def test_return_all_info
  expected = [
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
  assert_equal(expected, @books)
end



end