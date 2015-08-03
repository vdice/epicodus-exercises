require('rspec')
require('title_case')

EXPECTED_MULTI_WORD_TITLE =
  'Today Is the First Day of Class'

describe('String#title_case') do
  it('should capitalize the first letter of the word') do
    expect(('epicodus').title_case()).to(eq('Epicodus'))
  end

# Multiple words

  it('should capitalize non-articles') do
    expect(('today is the first day of class').title_case()).
      to(eq(EXPECTED_MULTI_WORD_TITLE))
  end

  it('should lowercase articles') do
    expect(('today is The first day Of class').title_case()).
      to(eq(EXPECTED_MULTI_WORD_TITLE))
  end

  it('should lowercase all non leading characters') do
    expect(('tODAY iS The first dAY Of class').title_case()).
      to(eq(EXPECTED_MULTI_WORD_TITLE))
  end

  it('should not affect non-alphabet characters') do
    expect(('tODAY iS The 2nd dAY Of class!').title_case()).
      to(eq('Today Is the 2nd Day of Class!'))
  end
end
