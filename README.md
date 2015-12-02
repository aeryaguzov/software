# software

Software stack represented as [ansible roles] (http://docs.ansible.com/ansible/playbooks_roles.html).

## base for real cases

Ansible provides rather good way to reuse stuff - roles.

This roles collection provides **only** simple way to install software 
and, for some reasons, can contain a bit of configuration (ex. my vim config that is same for every project), 
so the main goal of this roles collection is to be a "base" for other projects. All other configuration should be bundled with current project and this roles collection may be used as git submodule
(this approach can be found in my [workstation] (https://github.com/aeryaguzov/workstation) project with represent my desktop setup).

## my skills presentation

This roles collection contains only stuff I major in, so if you are interested in my skills this repository is a great place to start.

## additional notes about roles

### php*

There are two ways to represent php setup

- one "god" role

- many small roles
 
I prefer second way (IMO like Unix way), so you can see many roles starting with "**php-**".

The main roles are **php-cli** and **php-fpm** as they represent php SAPI setup, **php-ext-\*** represent php extensions.

There are also **php-{SAPI}-env-dev** and **php-{SAPI}-env-prod**, which represents common configs for development and production environment respectively.
 
### where is mysql-server role ?

    ERROR 2006 (HY000): MySQL server has gone away
    
Of course I know how to setup mysql server and I can work with it, my code executing some queries right now, 
but I do not like to work with it. I do not like to work with **subversion** too.
