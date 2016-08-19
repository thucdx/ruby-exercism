class ValueError < StandardError
  def initialize
  end
end

class Board
  def self.transform(inp)
    height = inp.length
    width = inp[0].length
    res = []

    height.times do |i|
      res << inp[i].dup
      raise ValueError.new if inp[i].length != width

      width.times do |j|
        raise ValueError.new if i * (i - height + 1) * j * (j - width + 1) == 0 && !"+-|".include?(inp[i][j])

        raise ValueError.new if !"|+-* ".include?(inp[i][j])
        next if inp[i][j] != ' '
        
        val = 0
        (-1..1).each do |ii|
          (-1..1).each do |jj|
            nx = i + ii
            ny = j + jj
            if 1 <= nx && nx < height - 1 && 1 <= ny && ny < width - 1 && inp[nx][ny] == '*'
             val += 1
            end 
          end
        end
        res[i][j] = val.to_s if val > 0
      end
    end
    res
  end
end
