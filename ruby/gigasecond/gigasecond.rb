class Gigasecond

  def self.from(time)
    time = time.to_i
    time += 10**9
    Time.at(time).utc
  end

end

module BookKeeping
  VERSION = 3
end