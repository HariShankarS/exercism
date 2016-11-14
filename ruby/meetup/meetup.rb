class Meetup
  
  def initialize(month,year)
    @month = month
    @year = year
  end

  def day(day,week_day)
    @day = day
    @week_day = week_day
    @date = ""
    case @week_day
    when :teenth
      week = (13..19).to_a
      check_date(week)
    when :first
      week = (1..7).to_a
      check_date(week)
    when :second
      week = (8..14).to_a
      check_date(week)
    when :third
      week = (15..21).to_a
      check_date(week)
    when :fourth
      week = (21..28).to_a
      check_date(week)
    when :last
      case @month
      when 1,3,5,7,8,10,12
      	week = (25..31).to_a
      when 4,6,9,11
        week = (24..30).to_a
      when 2
      	week = (22..28).to_a
      end
      check_date(week)
    end
    @date
  end

  def check_date(week)
    week.each do |i|
      @date = Date.new(@year,@month,i) if Date.new(@year,@month,i).strftime("%A").downcase.to_sym == @day
    end
  end
end