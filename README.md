# Software

!IMPORTANT: this repository was used in 2015 and is no longer supported.

Software stack represented as [ansible roles] (http://docs.ansible.com/ansible/playbooks_roles.html).

The main idea of this repository is to have a **reusable base** for every project infrastructure.

From one project to another I see that some code samples are **same** for every project,   
so I need a library for them to avoid *copy-and-paste* and keep my projects infrastructure **up-to-date**. 

This roles collection provides **only** simple way to install software  
and, for some reasons, can contain a bit of configuration (ex. my vim config that is same for every project). 

All other configuration should be bundled with current project  
and this roles collection may be used as git submodule (this approach can be found in my [workstation] (https://github.com/aeryaguzov/workstation) project).

## F.A.Q. about roles

### php*

There are two ways to represent php setup

- one "god" role

- many small roles
 
I prefer second way (IMO like Unix way), so you can see many roles starting with "**php-**".

The main roles are **php-cli** and **php-fpm** as they represent php SAPI setup, **php-ext-\*** represent php extensions.

There are also **php-{SAPI}-env-dev** and **php-{SAPI}-env-prod**, which represents common configs for development and production environment respectively.
