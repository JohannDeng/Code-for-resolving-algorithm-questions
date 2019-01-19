# A string S consisting of N characters is called properly nested if:

# S is empty;
# S has the form "(U)" where U is a properly nested string;
# S has the form "VW" where V and W are properly nested strings.
# For example, string "(()(())())" is properly nested but string "())" isn't.

# Write a function:

# int solution(char *S);

# that, given a string S consisting of N characters, returns 1 if string S is properly nested and 0 otherwise.

# For example, given S = "(()(())())", the function should return 1 and given S = "())", the function should return 0, as explained above.

# Write an efficient algorithm for the following assumptions:

# N is an integer within the range [0..1,000,000];
# string S consists only of the characters "(" and/or ")".


#100
def solution(s)
#~ s="{[()()]}"
#~ s="{"
#~ s="]]][[["
#~ s=""
n=s.size
i=0
a=[]
#actions when S is empty
if n==0 then 
      result=1
end
#actions when S is not empty
while i<n do
	curChar=s[i]
	if curChar=="(" then 
		a.push(curChar);
	else
		if a.size!=0 then
			topChar=a.last
			if curChar==")"&&topChar=="(" then
				a.pop
			else
                                result=0
			end	
		else
		        result=0
		end
	end	
i+=1
end
if a.size==0&&result!=0 then
        result=1
else
        result=0
end	
return result
end