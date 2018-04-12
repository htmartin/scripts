# cut and sort

### tail -n 3

###  cut -f1,3 -d":" !$"
fileds 1 & 3, with delimiter from the last argument (ie which file)

tail -n 3 usage-agg-grouped.csv

cut -f1,3 -d"," !$

cut -f2,4 -d"," usage-agg-grouped.csv | head | sort


cut -f2,4 -d"," usage-agg-grouped.csv | head | sort -r

cut -f2,4 -d"," usage-agg-grouped.csv | head | sort -g
cut -f2,4 -d"," usage-agg-grouped.csv | head | sort -gr


### sort options
       -b, --ignore-leading-blanks
              ignore leading blanks

       -d, --dictionary-order
              consider only blanks and alphanumeric characters

       -f, --ignore-case
              fold lower case to upper case characters

       -g, --general-numeric-sort
              compare according to general numerical value

       -i, --ignore-nonprinting
              consider only printable characters

       -M, --month-sort
              compare (unknown) < 'JAN' < ... < 'DEC'

       -h, --human-numeric-sort
              compare human readable numbers (e.g., 2K 1G)

       -n, --numeric-sort
              compare according to string numerical value

       -R, --random-sort
              shuffle, but group identical keys.  See shuf(1)

       --random-source=FILE
              get random bytes from FILE

       -r, --reverse
              reverse the result of comparisons

       --sort=WORD
              sort according to WORD: general-numeric  -g,  human-numeric  -h,
              month -M, numeric -n, random -R, version -V

       -V, --version-sort
              natural sort of (version) numbers within text


### work with columns with sort
sort -k4 -t",""
sort on 4th column, using the comma delimiter













