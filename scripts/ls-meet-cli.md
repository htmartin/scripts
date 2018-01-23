Last login: Thu Nov 16 09:31:56 on ttys004
sebmac05436:~ $ whoami
tmartin
sebmac05436:~ $ w
12:26  up 3 days, 21:59, 6 users, load averages: 2.04 2.08 1.83
USER     TTY      FROM              LOGIN@  IDLE WHAT
tmartin  console  -                Sun14   3days -
tmartin  s001     -                Wed11    3:33 -bash
tmartin  s002     -                 8:52    3:33 -bash
tmartin  s003     -                Wed08   25:24 ssh elias
tmartin  s004     -                 9:31    2:54 ssh jurafsky
tmartin  s005     -                12:26       - w
sebmac05436:~ $ uname
Darwin
sebmac05436:~ $ uname -a
Darwin sebmac05436.wifi.jupiter.markmims.com 15.3.0 Darwin Kernel Version 15.3.0: Thu Dec 10 18:40:58 PST 2015; root:xnu-3248.30.4~1/RELEASE_X86_64 x86_64
sebmac05436:~ $ 



pwd
full path to where I am


general structure:
command [source] [destination] flags


ls -hatl

(human readable, long, with dot files, sorted by last modified)

ls -haSl

(human readable, long, with dot files, sorted by last size)

sebmac05436:~ $ ls -lah
total 415440
drwxr-xr-x+  142 tmartin  staff   4.7K Nov 13 06:48 .
drwxr-xr-x     6 root     admin   204B Jan 13  2016 ..
-r--------     1 tmartin  staff     7B Jul 12  2016 .CFUserTextEncoding
-rw-r--r--@    1 tmartin  staff    34K Nov  8 07:33 .DS_Store
-rw-r--r--     1 tmartin  staff     0B Dec  8  2016 .Rapp.history
-rw-r--r--     1 tmartin  staff     0B Jul 18 12:46 .Rhistory
drwx------     5 tmartin  staff   170B Oct 30 08:06 .Trash
drwxr-xr-x     3 tmartin  staff   102B Jul  8  2016 .anaconda
-rw-r--r--     1 tmartin  staff   845K May 31 16:17 .babel.json
-rw-r--r--     1 tmartin  staff   9.6K Nov 16 12:29 .bash_history
-rw-r--r--     1 tmartin  staff   1.2K Jun  8 08:07 .bash_profile
-rw-r--r--     1 root     staff    73B Feb 24  2016 .bash_profile-anaconda.bak
-rw-r--r--     1 tmartin  staff   793B Jun  7 15:21 .bash_profile.backup
-rw-r--r--     1 root     staff   158B Jul  8  2016 .bash_profile.pysave



ebmac05436:~/python-stuff/ps $ ls ..
data-camp			pandas_slides.pdf
data_wrangling_analysis_python	ps
mit_601				py_fundamentals
pandas-head-to-tail		real-python


sebmac05436:~/python-stuff/ps $ tree
.
├── __pycache__
│   ├── exceptions.cpython-35.pyc
│   └── sales.cpython-35.pyc
├── exceptions.py
├── filters.py
├── generator.py
├── guess.py
├── iterables.py
├── learning-programming-abstractions-python
│   ├── 1-learning-programming-abstractions-python-m1-exercise-files
│   │   └── excercises
│   │       └── after
│   │           └── guess.py
│   ├── 1-learning-programming-abstractions-python-m1-slides.pdf
│   ├── 2-learning-programming-abstractions-python-m2-exercise-files
│   │   └── excercises
│   │       └── after
│   │           └── wordgames.py
│   ├── 2-learning-programming-abstractions-python-m2-slides.pdf
│   ├── 3-learning-programming-abstractions-python-m3-exercise-files
│   │   └── excercises


sebmac05436:~/python-stuff/ps $ ls -altr


ls -F = filetype

ls -F !$

Apparently, the !$ does whatever it is to the last file you did something else to

Basically, it's the last argument to the previous command.

!$ is the "end" of the previous command. 





     -c      Use time when file status was last changed for sorting or printing.
     -S      Sort files by size

-t      Sort by time modified (most recently modified first) before
             sorting the operands by lexicographical order.
-r      Reverse the order of the sort to get reverse lexicographical
             order or the oldest entries first.
             (or largest files last, if combined with sort by size)

-h      (human readable) When used with the -l option, use unit suffixes: Byte, Kilobyte,
             Megabyte, Gigabyte, Terabyte and Petabyte in order to reduce the
             number of digits to three or less using base 2 for sizes.


-n      Display user and group IDs numerically rather than converting to
             a user or group name in a long (-l) output. This option turns on the -l option.




