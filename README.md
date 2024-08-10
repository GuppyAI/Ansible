# SMS-Gateway Ansible Playbook

This playbook is used to install and configure the SMS-Gateway application on a server.
It has been tested on a Raspberry Pi 3B running Raspberry Pi OS Lite (64-bit).

## Requirements

- Ansible 2.16 or later
- A server running a Linux distribution (tested on Raspberry Pi OS Lite)
- A user with sudo privileges

## Usage

```shell
cd playbooks
ansible-playbook -i ../inventory.yaml setup.yaml --ask-become-pass --ask-vault-pass
```

## Copyright

GuppyAI SMS-Gateway (c) 2024 Lucca Greschner and contributors

SPDX-License-Identifier: GPL-3.0