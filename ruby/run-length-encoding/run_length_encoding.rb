module BookKeeping
  VERSION = 2
end

class RunLengthEncoding
  def self.encode(input)
    res = ''
    last = ''
    count = 0
    input.each_char do |c|
      if c == last
        count += 1
      else
        res += ((count > 1 ? count.to_s : '')+ last) if last != ''
        count = 1
        last = c
      end
    end
    res += (count > 1 ? count.to_s : '') + last
    res
  end

  def self.decode(input)
    res = ''
    times = 0
    input.each_char do |c|
      if is_digit(c)
        times = times * 10 + c.to_i
      else
        res += c * [times, 1].max
        times = 0
      end
    end
    res
  end

  private
  def self.is_digit(c)
    '0' <= c && c <= '9'
  end
end
