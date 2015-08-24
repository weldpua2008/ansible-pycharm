[![Build Status](https://travis-ci.org/weldpua2008/ansible-pycharm.svg)](https://travis-ci.org/weldpua2008/ansible-pycharm)
# ansible-pycharm
The ansible role to install [PyCharm](https://www.jetbrains.com/pycharm/).
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
ANSIBLE_SHORT_VERSION=`ansible-playbook --version 2> /dev/null|cut -d " " -f2|cut -d "." -f1,2` ansible-playbook -i 127.0.0.1,  -e "pycharm_install=True" example.yml

#### Example playbook file (example.yml)

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

