class Year
  def initialize(year)
    @year = year.to_i
  end

  def leap?
    if !evenly_divisible_by?(4)
      return false
    end

    if evenly_divisible_by?(100) && !evenly_divisible_by?(400)
      return false
    end

    true
  end

  private

  def evenly_divisible_by?(num)
    @year % num == 0
  end
end
