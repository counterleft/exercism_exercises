class Hamming
  def self.compute(strand, other_strand)
    strand = strand.split(//)
    other_strand = other_strand.split(//)

    shorter_strand, longer_strand = [strand, other_strand].sort { |a,b| a.length <=> b.length }

    distance = 0
    shorter_strand.each_with_index do |base, index|
      distance += 1 if base != longer_strand[index]
    end

    distance
  end
end
