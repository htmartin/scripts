#!/bin/bash

I think this works:

sebmac05436:~ $ rsync -azvP tm taylor@elias:~/tm


note that we want to transfer the actual directory in this case, so we omit the trailing slash

You may have noticed that there is a trailing slash (/) at the end of the first argument 
in the above commands:

rsync -a dir1/ dir2
This is necessary to mean "the contents of dir1".

The alternative, without the trailing slash, would place dir1, including the directory, within dir2. 
This would create a hierarchy that looks like:

~/dir2/dir1/[files]


what azvP options mean, z=zip, v=loud, P=partial and progress bar, a=recursive in the way rsync likes (i.e., keeps permissions etc)

The -r option means recursive, which is necessary for directory syncing.

The -a option is a combination flag.

It stands for archive and syncs recursively and preserves symbolic links, special and device files, modification times, group, owner, and permissions.

It is more commonly used than -r and is usually what you want to use.

*** Working out directory stuff ***

sebmac05436:~/tm $ rsync -azvP . taylor@elias:~/tm
building file list ... 
105 files to consider
columbia/
columbia/new-talk-notes-1217.txt
         100 100%    0.00kB/s    0:00:00 (xfer#1, to-check=99/105)

sent 2824 bytes  received 48 bytes  820.57 bytes/sec
total size is 57082260  speedup is 19875.44
sebmac05436:~/tm $ subl testingfile.txt
sebmac05436:~/tm $ cd

***This says no such file or directory ***

sebmac05436:~ $ rsync -azvP /tm taylor@elias:~/tm
building file list ... 
rsync: link_stat "/tm" failed: No such file or directory (2)
0 files to consider

sent 29 bytes  received 20 bytes  14.00 bytes/sec
total size is 0  speedup is 0.00
rsync error: some files could not be transferred (code 23) at /BuildRoot/Library/Caches/com.apple.xbs/Sources/rsync/rsync-47/rsync/main.c(992) [sender=2.6.9]
sebmac05436:~ $ 

***This starts copying everything, but actually not as individual files outside of folder structure of tm/ ***

sebmac05436:~ $ rsync -azvP tm taylor@elias:~/tm
building file list ... 
106 files to consider
tm/
tm/testingfile.txt
          20 100%    0.00kB/s    0:00:00 (xfer#1, to-check=104/106)
tm/columbia/
tm/columbia/chomsky-parsing-pipeline
        6243 100%    5.95MB/s    0:00:00 (xfer#2, to-check=102/106)
tm/columbia/edm-ad.pdf
      160116 100%    9.54MB/s    0:00:00 (xfer#3, to-check=101/106)
tm/columbia/ideas.txt
         436 100%   25.05kB/s    0:00:00 (xfer#4, to-check=100/106)
tm/columbia/new-talk-notes-1217.txt
         100 100%    5.43kB/s    0:00:00 (xfer#5, to-check=99/106)
tm/columbia/ryan_deeplearning_edm.pdf
      234891 100%    5.46MB/s    0:00:00 (xfer#6, to-check=98/106)
tm/columbia/talk-stuff.txt
        2662 100%   61.90kB/s    0:00:00 (xfer#7, to-check=97/106)
tm/columbia/cv/

rsync -azvP tm taylor@elias:~/tm
