# Terraform Beginner Bootcamp 2023

## Semantic Versioning :mage:

This project is going utilize semantic versioning for its tagging.
[semver.org](https://semver.org/) 

The general format: 

**MAJOR.MINOR.PATCH**, e.g. `1.0.1`:

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes

## Install Terraform CLI

The Terraform CLI installation instructions have change due to gpg keyring changes and add yes prompt `-y`. So we need to refer the latest install CLI instructions via Terraform Documentation and change the scripting for install

[Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### Consideration for linux Distribution

This project is built using Ubuntu, so please consider checking your Linux Distribution.

[How to Check OS Version in Linux](https://www.cyberciti.biz/faq/how-to-check-os-version-in-linux-command-line/)

```bash
$ cat /etc/os-release
PRETTY_NAME="Ubuntu 22.04.3 LTS"
NAME="Ubuntu"
VERSION_ID="22.04"
VERSION="22.04.3 LTS (Jammy Jellyfish)"
VERSION_CODENAME=jammy
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=jammy
$ 
```

### Refactoring into Bash Scripts

While fixing the Terraform CLI gpg depreciation issues we notices that the installation bash scripts steps were a considerable amount more code, so we decided to create a portable bash script to install the Terraform CLI. 

This bash script is located here : [./bin/install_terraform_cli.sh](./bin/install_terraform_cli.sh)

- This will keep the Gitpod Task File Tidy ([.gitpod.yml](.gitpod.yml))
- This allow us an easier to debug and execute manually Terraform CLI Install
- This will allow better portability for others projects that need to install Terraform CLI. 

## Ref

### [Shebang](https://en.wikipedia.org/wiki/Shebang_(Unix))
In computing, a shebang is the character sequence consisting of the characters number sign and exclamation mark (#!) at the beginning of a script. It is also called  harp-exclamation, sha-bang, hashbang, pound-bang, or hash-pling.

Use `#!/usr/bin/env bash` for :
- Portability for different OS distributions
- Will search user's PATH for bash executeable
### [Linux Permissions](https://en.wikipedia.org/wiki/File-system_permissions)
Add executeable permission to newly created file as existing user
```bash
chmod u+x ./bin/install_terraform_cli.sh
```
### [Github Lifecycle](https://www.gitpod.io/docs/configure/workspaces/tasks)
Gitpod Tasks and Consideration about how init and before parameter work
