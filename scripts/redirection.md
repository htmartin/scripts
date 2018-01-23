redirection

# Redirecting standard output

ls tm/ > tm-list.txt

- is the same as 

ls tm/ 1> tm-list.txt

- because 
* putting a '1' there names the output and 1=standard output, 
* and b/c it's the default if you don't put anything.

# Redirecting standard error

ls tm/ 2> tm-list.txt

# Redirecting standard error & output to same place

ls tm/ > tm-list.txt 2>&1

- &1 says "same place as 1(st out)"

ls tm/ time/ > tm-list.txt 2>&1


# Named and unnamed pipes

## This uses an unnamed pipe (to count numb items in a directory)

ls -l | wc -l

## Can do the same thing creating a named pipe and running processes through it
- Named pipes are files

mkfifo mypipe

- then do redirection (the 1st of these will pause in one shell until run the 2nd in another, holding the value until needed)

ls -l > mypipe
wc -l < mypipe

# Pipe files are marked in an ls -al

prw-r--r--    1 tmartin  staff       0 Jan  5 07:52 mypipe


# tee - send output to file and screen at same time, tee b/c of T shape

ls ~/scripts | tee mynewpipe [This is a file, not a pipe]

ls ~/scripts shows up in output and this creates mynewpipe file with the text of ls ~/scripts








