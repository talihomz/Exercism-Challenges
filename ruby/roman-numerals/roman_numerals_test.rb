require 'minitest/autorun'
require_relative 'roman_numerals'

# Common test data version: 1.0.0 070e8d5
class RomanNumeralsTest < Minitest::Test
  def test_1
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'I', 1.to_roman
  end

  def test_2
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'II', 2.to_roman
  end

  def test_3
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'III', 3.to_roman
  end

  def test_4
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'IV', 4.to_roman
  end

  def test_5
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'V', 5.to_roman
  end

  def test_6
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'VI', 6.to_roman
  end

  def test_9
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'IX', 9.to_roman
  end

  def test_27
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'XXVII', 27.to_roman
  end

  def test_48
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'XLVIII', 48.to_roman
  end

  def test_59
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'LIX', 59.to_roman
  end

  def test_93
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'XCIII', 93.to_roman
  end

  def test_141
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'CXLI', 141.to_roman
  end

  def test_163
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'CLXIII', 163.to_roman
  end

  def test_402
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'CDII', 402.to_roman
  end

  def test_575
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'DLXXV', 575.to_roman
  end

  def test_911
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'CMXI', 911.to_roman
  end

  def test_1024
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'MXXIV', 1024.to_roman
  end

  def test_3000
<<<<<<< HEAD
=======

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 'MMM', 3000.to_roman
  end

  # Problems in exercism evolve over time, as we find better ways to ask
  # questions.
  # The version number refers to the version of the problem you solved,
  # not your solution.
  #
  # Define a constant named VERSION inside of the top level BookKeeping
  # module, which may be placed near the end of your file.
  #
  # In your file, it will look like this:
  #
<<<<<<< HEAD
  module BookKeeping
    VERSION = 2 # Where the version number matches the one in the test.
  end
=======
   module BookKeeping
     VERSION = 2 # Where the version number matches the one in the test.
   end
>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
  #
  # If you are curious, read more about constants on RubyDoc:
  # http://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/constants.html

<<<<<<< HEAD
  def test_bookkeeping
=======
  def test_bookkee

>>>>>>> d38b0b7b708255f2fe0091aa060e4c0445e4d033
    assert_equal 2, BookKeeping::VERSION
  end
end
