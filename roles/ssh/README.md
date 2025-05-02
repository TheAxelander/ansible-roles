SSH
=========

Setup SSH (including pubkeys)

Requirements
------------

n.a

Role Variables
--------------

Includes an encrypted `vars/pubkeys.yml` file which can be decrypted via 

``` bash
ansible-playbook playbook.yml --ask-vault-pass
```

Dependencies
------------

n.a.

Example Playbook
----------------

    - hosts: servers
      become: true
      vars_files:
        - roles/ssh/vars/pubkeys.yml
      roles:
        - ssh

License
-------

MIT
