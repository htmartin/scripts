

`awk -F'\t' '{ print $2 }'` will pick out the second column... `$3` the third, etc etc


[9:23] 
and this guy has some great "one-liner" pages for various shell tools http://www.catonmat.net/
catonmat.net
good coders code, great coders reuse
Peteris Krumins' blog about programming, hacking, software reuse, software ideas, computer security, browserling, google and technology.


[9:25] 
that might be useful in what you're doing to see exceptional situations using something like 
cat file.tsv | awk -F'\t' '{print $2}' | sort | uniq | less 



[9:28] 
you can also do stuff like filter out any fields that have periods (normal floats) via something like `grep -v '\.'`


[9:30] 
so `cat file.tsv | awk -F'\t' '{print $2}' | grep -v '\.' | sort | uniq`

| wc -l




## trying to get lowest value in a csv with 4 fields ##


Lets say I have a csv file like this:

a,b1,12,
a,b1,42,
d,e1,12,
r,12,33,
I want to use grep to return only only the rows where the third column = 12. So it would return:

a,b1,12,
d,e1,12,
but not:

r,12,33,
Any ideas for a regular expression that will allow me to do this?


David
66124
1	 	
For anything more complicated than this you should consider awk or perl. – mob Mar 3 '10 at 18:36
add a comment
5 Answers
active oldest votes
up vote
22
down vote
I'd jump straight to awk to test the value exactly

### finding min values, etc ###

awk -F, '$3 == 12' file.csv

awk -F, '$3 == 2016' usage-agg-testing.csv
#seemed to work, says 0, which I think is right and didn't throw error

awk 'NR == 1 || $3 < min {line = $0; min = $3}END{print line}' file.txt

awk 'NR == 1 || $3 < min {line = $0; min = $3}END{print line}' usage-agg-testing.csv
#printed this: salesforce_id,title_identifier,units_viewed,date
#which is top line of file

sort -nk 3 file.txt | head -n 1

sort -nk 3 usage-agg-testing.csv | head -n 1
#seemed to be working, but way slow, so I stopped it









