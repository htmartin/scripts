
jobs

- what jobs are running (doesn't ps do that?)

bg

fg

&
(automatically run a command in the background)

# idea is run one console with multiple tasks

- to show how this works, using
sleep <num-seconds>
just stops prompt from reappearing


## bg and fg - hmmm how to add them, if you ctrl c the sleep, then nothing is running so ... and putting bg after the command doesn't work

### ah, ctrl z pauses the command, then 
### sleep 80 &
- when you run ps, you see that it's running in the background


funwithflags:~/scripts (master ) $ sleep 180
^Z[1]   Done                    sleep 80

[2]+  Stopped                 sleep 180
funwithflags:~/scripts (master ) $ bg
[2]+ sleep 180 &
funwithflags:~/scripts (master ) $ bg
-bash: bg: job 2 already in background


### fg/bg and specific job number will foreground/background that job

### ps

kill
killall (e.g., `killall firefox` if problems with firefox will stop all jobs )

pgrep (= ps | grep)

funwithflags:~/scripts (master *) $ ps | grep bash
  750 ttys001    0:00.06 -bash
  918 ttys001    0:00.00 grep --color=auto bash
funwithflags:~/scripts (master *) $ pgrep bash
funwithflags:~/scripts (master *) $ 

#### afaik, pgrep doesn't work on mac version

yup, b/c here's the same on elias

taylor@elias:~ $ ps | grep bash
11204 pts/10   00:00:00 bash
taylor@elias:~ $ pgrep bash
332
3178
3456
4101


pkill

kill -9 is total kill

ps - l

long

ps -f

     -f      Display the uid, pid, parent pid, recent CPU usage, process start time, controlling tty, elapsed CPU usage,

ps -a (or -e)

-a      Display information about other users' processes as well as your own.  This will skip any processes which do
             not have a controlling terminal, unless the -x option is also specified.

ps -aux

-x      When displaying processes matched by other options, include processes which do not have a controlling termi-
             nal.  This is the opposite of the -X option.  If both -X and -x are specified in the same command, then ps
             will use the one which was specified last.
-u 
user (I think user name of the terminal window you're in)

-w      Use 132 columns to display information, instead of the default which is your window size.  If the -w option
             is specified more than once, ps will use as many columns as necessary without regard for your window size.
             When output is not to a terminal, an unlimited number of columns are always used.