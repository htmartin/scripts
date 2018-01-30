
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
pkill

kill -9 is total kill