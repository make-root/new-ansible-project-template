#/bin/bash

#Install VENV dependencies 
if [  -n "$(uname -a | grep Ubuntu)" ]; then
    sudo apt-get update
	sudo apt-get -y install python-pip python-virtualenv
else
    echo 'This OS still not supported. You should install Python and VENV dependencies manually.'
fi  

#Add gitignore info
#https://github.com/github/gitignore/blob/master/Global/Ansible.gitignore
grep -qxF '*.retry' .gitignore || echo '*.retry' >> .gitignore

#https://github.com/github/gitignore/blob/master/Global/VirtualEnv.gitignore
grep -qxF '.Python' .gitignore || echo '.Python' >> .gitignore
grep -qxF '[Bb]in' .gitignore || echo '[Bb]in' >> .gitignore
grep -qxF '[Ii]nclude' .gitignore || echo '[Ii]nclude' >> .gitignore
grep -qxF '[Ll]ib' .gitignore || echo '[Ll]ib' >> .gitignore
grep -qxF '[Ll]ib64' .gitignore || echo '[Ll]ib64' >> .gitignore
grep -qxF '[Ll]ocal' .gitignore || echo '[Ll]ocal' >> .gitignore
grep -qxF '[Ss]cripts' .gitignore || echo '[Ss]cripts' >> .gitignore
grep -qxF 'pyvenv.cfg' .gitignore || echo 'pyvenv.cfg' >> .gitignore
grep -qxF '.venv' .gitignore || echo '.venv' >> .gitignore
grep -qxF 'pip-selfcheck.json' .gitignore || echo 'pip-selfcheck.json' >> .gitignore
