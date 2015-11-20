# software

Software stack represented as [ansible roles] (http://docs.ansible.com/ansible/playbooks_roles.html).

## base for real cases

Ansible provides rather good way to reuse stuff - roles.

This roles collection only represents simple way to install software 
and, for some reasons, can contain a bit of configuration (ex. my vim config that is same for every project), 
so the main goal of this roles collection is to be a "base" for other projects. All other configuration should be bundled with current project and this roles collection may be used as git submodule
(this approach can be found in my [workstation] (https://github.com/aeryaguzov/workstation) project with represent my desktop setup).
