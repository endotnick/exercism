module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(strand)
    result = ""
    strand.each_char do |nucleotide|
      result += 
      case nucleotide
        when 'G'
          'C'
        when 'C' 
          'G'
        when 'T'
          'A'
        when 'A' 
          'U'
        else
          'X'
      end
    end
    if result.include?('X') 
      result = '' 
    end
    result
  end
end