# Prompt-Style

Edit the style of your Linux bash shell prompt in the fastest way with this script!

## Description of the script:

The "prompt-theme.sh" script customizes the Linux bash terminal prompt with different themes.
The available themes have been selected from a well-known script called "Oh my bash".
Also, this script is compatible with differents Linux distributions such as:

- [Arch Linux](https://archlinux.org/)
- [CentOS](https://www.centos.org/)
- [Debian](https://www.debian.org/)
- [Fedora](https://getfedora.org/es/)
- [Kali Linux](https://www.kali.org/)
- [Manjaro](https://manjaro.org/)
- [Ubuntu](https://ubuntu.com/)

## Requirements

In order to customize the shell prompt with this script, the following requirements must be taken into account:

- A Linux-based operating system.
- A Linux distribution of those indicated in the "Description of the script" section of this file.
- The Unix shell named ```bash```.
- Have at least one administrator user.
- Have the ```wget``` command line utility installed on the system ( Optionally, the [curl](https://linux.die.net/man/1/curl) utility could be used instead).
- The system user account that will customize your prompt must have a ```home directory```.
- Run the script from the ```user's home directory```.


## Extra configuration for non-administrator users of the system:

Attention!. If the user account from which the script is going to be executed is not an administrator user account, the user must be registered in the **/etc/sudoers** file.

<br />

To do this, the following steps must be followed:


- Login as a system administrator user (for example ```root```) and run:

```bash
visudo
```                       

- And add below the line **"root ALL=(ALL) ALL"**, the following:


> **[username] ALL=(ALL) ALL**


- If the non-administrator user was called **"danilo"**, the file would look like this:

```yaml
root ALL=(ALL) ALL
danilo ALL=(ALL) ALL
``` 


## Installation:
For ```Arch Linux``` or ```Manjaro```:
```bash
sudo yes | pacman -S wget &>/dev/null && cd ~ && wget https://github.com/Danilooo9/prompt-style && chmod a+x ~/prompt-theme.sh && ./prompt-theme.sh [Name of theme]
```

For ```CentOS``` or ```Fedora```:
```bash
sudo yum -y install wget &> /dev/null && cd ~ && wget https://github.com/Danilooo9/prompt-style && chmod a+x ~/prompt-theme.sh && ./prompt-theme.sh [Name of theme]
```

For ```Ubuntu```, ```Debian``` or ```Kali Linux```:
```bash
sudo apt-get install wget -y &>/dev/null && cd ~ && wget https://github.com/Danilooo9/prompt-style && chmod a+x ~/prompt-theme.sh && ./prompt-theme.sh [Name of theme]
```
