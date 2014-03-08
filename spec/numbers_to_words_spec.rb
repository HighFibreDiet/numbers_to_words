require('rspec')
require('numbers_to_words')

describe('numbers_to_words') do
  it('returns the correct words for single digit numbers') do
    numbers_to_words(8).should(eq("eight"))
  end

  it('returns the correct words for teen numbers') do
    numbers_to_words(18).should(eq("eighteen"))
  end

  it('returns the correct words for decade numbers') do
    numbers_to_words(50).should(eq("fifty"))
  end

  it('returns the correct words for decade numbers') do
    numbers_to_words(58).should(eq("fifty eight"))
  end

  it('returns the correct words for hundred numbers') do
    numbers_to_words(200).should(eq("two hundred"))
  end

  it('returns the correct words for hundred decade numbers') do
    numbers_to_words(250).should(eq("two hundred fifty"))
  end

  it('returns the correct words for hundred decade numbers') do
    numbers_to_words(259).should(eq("two hundred fifty nine"))
  end

  it('returns the correct words for more than three digits') do
    numbers_to_words(2343242).should(eq("two million three hundred forty three thousand two hundred forty two"))
  end

  it('returns the correct words for hundred decade numbers') do
    numbers_to_words(216).should(eq("two hundred sixteen"))
  end

  it('returns the correct words for hundred decade numbers') do
    numbers_to_words(802).should(eq("eight hundred two"))
  end

  it('returns the correct words for hundred decade numbers') do
    numbers_to_words(4002).should(eq("four thousand two"))
  end

  it('returns the correct words for hundred decade numbers') do
    numbers_to_words(1000000).should(eq("one million"))
  end

  it('returns the correct words for hundred decade numbers') do
    numbers_to_words(1000).should(eq("one thousand"))
  end

  it('returns the correct words for hundred decade numbers') do
    numbers_to_words(1000342).should(eq("one million three hundred forty two"))
  end
end
