class Hamming
  def self.compute(strand, other_strand)
    strand = strand.split(//)
    other_strand = other_strand.split(//)

    shorter_strand = strand
    longer_strand = other_strand

    if strand.length > other_strand.length
      shorter_strand = other_strand
      longer_strand = strand
    end

    distance = 0
    shorter_strand.each_with_index do |base, index|
      distance += 1 if base != longer_strand[index]
    end

    distance
  end
end
