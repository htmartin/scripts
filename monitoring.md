# All from procps package: top, uptime

# uptime

sebmac05436:~/scripts $ uptime
 7:55  up 4 days, 16:30, 2 users, load averages: 2.37 2.22 1.98

- load averages are over the last 1 min, 5 min & 15 min
- For a single core, values should be less than 1 (dual core less than 2, etc)

# top

## toggle these sections above the bar on and off

l (load)
m (memory) 
t (tasks) 

f (fields management)
opens a new window

     Fields Management for window 1:Def, whose current sort field is %CPU
     Navigate with Up/Dn, Right selects for move then <Enter> or Left commits,
     'd' or <Space> toggles display, 's' sets sort.  Use 'q' or <Esc> to end!

 it's f to enter, up/d arrows to move, s to sort (select) then <Esc> to go back to regular window.

r (renice) reorder priority of jobs