require ('minitest/autorun')
require ('minitest/rg')
require_relative('./week2_day1_labhw')

# Part A

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Teddy", 11)
  end

  def test_student_name
    @student = Student.new("Bill", 4)
    assert_equal("Bill", @student.student_name)
  end

  def test_cohort_number
    assert_equal(11, @student.cohort_number)
  end
  
  def test_set_student_name
    assert_equal("Big bill", @student.set_student_name("Big bill"))
  end

  def test_set_cohort_number
    assert_equal(7, @student.set_cohort_number(7))
  end

  def test_student_talk
    assert_equal("I can talk", @student.student_talk("I can talk"))
  end

  def test_student_language
    assert_equal("I love ruby", @student.student_language("ruby"))
  end

end


