def mod (n,m)
  return  ((n % m + m) % m);
end

def codeSet (code)
  if code < 97 then
        return 65 ;
    else
        return 97 ;
end

end





#example Cesar enchription


def cesar(string,number)

newstring=""

string.each_char do |c|
    code=c.ord
  if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122))
    newstring+=(mod(code + number - codeSet(code), 26) + codeSet(code)).chr
  else
    newstring+=c
  end

#puts newstring
end

newstring

end


#example="THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
#example="computer"
#puts example
#puts cesar(example,7)
