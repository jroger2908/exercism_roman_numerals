class Fixnum
  VERSION = 1
  ARABIC_TO_ROMAN= {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  def to_roman
    roman_numeral = ""
    arabic_numeral = self
    ARABIC_TO_ROMAN.each do |arabic, roman|
      while arabic_numeral >= arabic
        arabic_numeral -= arabic
        roman_numeral << roman
      end
    end  
    return roman_numeral
  end
end