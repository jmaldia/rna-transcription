# A program that, given a DNA strand, returns its RNA complement (per RNA transcription).

VERSION = 3

class Complement
  def self.of_dna(strand)

    @converted_strand = ""
    
    strand.split("").each do |element|
      if element == 'C'
        @converted_strand = @converted_strand + 'G'
      elsif element == 'G'
        @converted_strand = @converted_strand + 'C'
      elsif element == 'T'
        @converted_strand = @converted_strand + 'A'
      elsif element == 'A'
        @converted_strand = @converted_strand + 'U'
      else
        raise ArgumentError.new("Only numbers are allowed")
        break
      end
    end
  
    @converted_strand

  end

end