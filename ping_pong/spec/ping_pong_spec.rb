require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
  it('should count from 1 to the given number') do
    expect(2.ping_pong()).to(eq([1, 2]))
  end

  it('should print "ping" if divisible by 3') do
    expect(3.ping_pong()).to(eq([1, 2, 'ping']))
  end

  it('should print "pong" if divisible by 5') do
    expect(5.ping_pong()).to(eq([1, 2, 'ping', 4, 'pong']))
  end

  it('should print "ping-pong" if divisible by 3 * 5') do
    expect(15.ping_pong()).
      to(eq([1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping-pong']))
  end

  it('should handle 0 input') do
    expect{0.ping_pong()}.to raise_error(ArgumentError)
  end
end
