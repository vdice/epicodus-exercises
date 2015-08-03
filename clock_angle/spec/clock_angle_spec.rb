require('rspec')
require('clock_angle')

describe('#clock_angle') do

  # it('should accept a string input with numerical form "hour:minute"') do
  #   expect{clock_angle('1:30')}.to_not raise_error
  # end
  #
  # it('should not accept a string input without form "hour:minute"') do
  #   expect{clock_angle('blah')}.to raise_error(ArgumentError)
  # end
  #
  # it('should not accept a string input with non-numerical form "hour:minute"') do
  #   expect{clock_angle('blah:30')}.to raise_error(ArgumentError)
  # end
  #
  # it('should convert hour and minute input to FixNum') do
  #   expect{clock_angle('blah:30')}.to raise_error(ArgumentError)
  # end

  it('should calculate smallest degree between hour and minute hand') do
    expect(clock_angle('12:30')).to(eq(165.0))
    expect(clock_angle('12:40')).to(eq(140.0))
  end
end
