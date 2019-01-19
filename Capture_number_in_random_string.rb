#objective: capture numbers in a random string

s="GACAC21 C2A［］］｛fdf｝％dsT34Ajfjg6  *3!@%#0ddasffdf  7[[]{}{}43{}e{8}{}" #random string
n= s.length
i=0
a=[]
while i <n do 
  a<<s[i] if s[i]<="9" and s[i]>="0"; #capture number 0-9, and push them to array a
  i+=1;
end
puts a.join"" #display array like a string