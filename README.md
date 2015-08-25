[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-pycharm-blue.svg)](https://galaxy.ansible.com/list#/roles/4854) [![Build Status](https://travis-ci.org/weldpua2008/ansible-pycharm.svg)](https://travis-ci.org/weldpua2008/ansible-pycharm) 
[![Circle CI](https://circleci.com/gh/weldpua2008/ansible-pycharm/tree/master.svg?style=svg)](https://circleci.com/gh/weldpua2008/ansible-pycharm/tree/master)

# ansible-pycharm
The ansible role to install [PyCharm](https://www.jetbrains.com/pycharm/) through Ansible.
Tested on Ubuntu Linux:
*   12.04
*   14.04

Tested on CentOs Linux:
* 6
* 7

#### Requirements
ansible 

#### Variables to change
PyCharm 4.5.3:
* `pycharm_install` [default: `True`]: True - Install; False - Remove
* `pycharm_major` [default: `4`]: Major version of PyCharm
* `pycharm_minor` [default: `5`]: Minor version of PyCharm
* `pycharm_build` [default: `3`]: Build version of PyCharm
* `pycharm_version` will generated as {{`pycharm_major`}}.{{`pycharm_minor`}}.{{`pycharm_build`}} [default: `4.5.3`]: Version to install
* `pycharm_type` [default: `community`]: Edition to install (e.g. `professional`)
* `pycharm_base_dir` [default: `/usr/local/pycharm`]: Install prefix

## Dependencies

None
## Use
You need to create a example playbook file `example.yml` (below).
###### Install
```bash
ANSIBLE_SHORT_VERSION=`ansible-playbook --version 2> /dev/null|cut -d " " -f2|cut -d "." -f1,2` ansible-playbook -i 127.0.0.1,  -e "pycharm_install=True" example.yml
```
#### Example playbook file (example.yml)
If you are using Ansible Galaxy
```bash
ansible-galaxy install weldpua2008.pycharm
```

```yaml
---
- hosts: all
  roles:
    - weldpua2008.pycharm
```

if you aren't using Ansible Galaxy
```yaml
---
- hosts: all
  roles:
    - pycharm
```

#### License

MIT

#### Author Information

Valeriy Solovyov

#### Feedback, bug-reports, requests, ...

Are [welcome](https://github.com/weldpua2008/ansible-pycharm/issues)!
[HipChat](https://www.hipchat.com/gcHUItkTq)
