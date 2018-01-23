# Create a new account

    sudo adduser fred
	
which will ask you for a password for that user.
You can set it to anything as he'll be logging in 
using ssh.

# add some ssh boilerplate

    sudo mkdir /home/fred/.ssh
	sudo chmod 700 /home/fred/.ssh
	sudo touch /home/fred/.ssh/authorized_keys
	sudo chown -Rf fred.fred /home/fred/.ssh
	
# add his ssh key

Get his ssh pub key... from `curl https://github.com/fred.keys` for instance.

    sudo cat >> /home/fred/.ssh/authorized_keys
	<paste key here>
	ctrl-d
	
# make him sudo if you want

    sudo vi /etc/group
	
and add his user to wherever you see yours... `adm`, `sudo`, etc..
I forget the exact group names for xenial.