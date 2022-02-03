# Prompt-Style

Edit the style of your Linux bash shell prompt in the fastest way with this script!


![screen1](https://user-images.githubusercontent.com/55488676/152246886-ac3f82da-eacb-4c73-ae10-0330fbe80db9.png)

![screen2](https://user-images.githubusercontent.com/55488676/152246950-ddf5af79-f016-451a-b02b-bdee8db75ab2.png)





## Description of the script:

The ```prompt-theme.sh``` script customizes the Linux bash terminal prompt with different themes.
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
**NOTE**: You could also directly edit the sudoers file (```nano /etc/sudoers```).

- And add below the line **"root ALL=(ALL) ALL"**, the following:


> **[username] ALL=(ALL) ALL**


- If the non-administrator user was called **"danilo"**, the file would look like this:

```yaml
root ALL=(ALL) ALL
danilo ALL=(ALL) ALL
``` 
Reboot the system for the changes to take effect:

```bash
reboot
```

## Installation:
For ```Arch Linux``` or ```Manjaro```:
```bash
sudo yes | pacman -S wget &>/dev/null && cd ~ && sudo wget https://raw.githubusercontent.com/Danilooo99/Prompt-Style/master/scripts_bash/promp_style/prompt-theme.sh && sudo chmod a+x ~/prompt-theme.sh
```

For ```CentOS``` or ```Fedora```:
```bash
sudo yum -y install wget &> /dev/null && cd ~ && sudo wget https://raw.githubusercontent.com/Danilooo99/Prompt-Style/master/scripts_bash/promp_style/prompt-theme.sh && sudo chmod a+x ~/prompt-theme.sh
```

For ```Ubuntu```, ```Debian``` or ```Kali Linux```:
```bash
sudo apt-get install wget -y &>/dev/null && cd ~ && sudo wget https://raw.githubusercontent.com/Danilooo99/Prompt-Style/master/scripts_bash/promp_style/prompt-theme.sh && sudo chmod a+x ~/prompt-theme.sh
```
After having executed the previous command in the corresponding Linux distribution, the script will be in the user's home directory ```(~)```.

## Script execution:

It's **VERY IMPORTANT** that the script be executed from the ```user home directory```. To do this, the script must first be in the user's home directory and with the appropriate execution permissions, a requirement that has been achieved by executing the corresponding command in the **"Execution of the script"** section of this same file.


<br />

To run the script it must be run in the Linux bash terminal:

```bash
cd ~ && sudo ./prompt-theme.sh [Name of theme]
```

You can see the list of available themes [here](https://github.com/Danilooo99/Prompt-Style/tree/master/scripts_bash/promp_style/themes) or by running the script with the -h option (```./prompt-theme.sh -h```).


If the script is executed passing the theme ```"brainy"``` as an argument, for example:

```bash
cd ~ && sudo ./prompt-theme.sh brainy
```
Then you must **close** and **reopen** the **bash terminal** for the changes to take effect.


When opening the terminal, our prompt will have been modified with the "Oh my bash" brainy theme:

![screen3](https://user-images.githubusercontent.com/55488676/152252717-e931c9e5-990b-4647-b911-4c756d09a7e1.png)


## Script help:

If you run the script with the ```-h``` or ```--help``` option, you'll see the proper usage of the script, as well as the "Oh my bash" topics available to run the script:

```bash
cd ~ && ./prompt-theme.sh -h
```

or

```bash
cd ~ && ./prompt-theme.sh --help
```
## Recovery of the original prompt:

Running the script backups the style of the original prompt, prior to running this script for the first time. The ```-r``` or ```--reset``` option has been implemented to help the user to recover the style of his original prompt, before having interacted with this script:

```bash
cd ~ && ./prompt-theme.sh -r
```

or

```bash
cd ~ && ./prompt-theme.sh --reset
```

## Recommendations and Tips:

In my case I use Linux with an ```Arch Linux``` distribution, and I have tried different themes to customize my bash terminal prompt. The best themes for my personal taste are:

#### Powerline ####

Execute in home directory: ```./prompt-theme.sh powerline```

* * *

![powerline](https://user-images.githubusercontent.com/55488676/152255969-314357c3-f944-415d-9186-0465816ffa74.png)


* * *

#### Candy ####

Execute in home directory: ```./prompt-theme.sh candy```

* * *

![candy](https://user-images.githubusercontent.com/55488676/152256346-5c51bfd4-a99c-43fb-bb20-26cf01727f64.png)


* * *


#### Agnoster ####

Execute in home directory: ```./prompt-theme.sh agnoster```

* * *

![agnoster](https://user-images.githubusercontent.com/55488676/152256504-c54f0a65-4f68-4f32-8e30-2d125c06548d.png)


* * *

## Script utilities:

| Software                                                              | Utility                  |
| --------------------------------------------------------------------- | ------------------------ |
| **[git](https://git-scm.com/)**                                       | Version control software |
| **[figlet](http://www.figlet.org/)**                                  | Text banner generator    |
| **[wget](https://www.gnu.org/software/wget/)**                        | Content download tool    |


