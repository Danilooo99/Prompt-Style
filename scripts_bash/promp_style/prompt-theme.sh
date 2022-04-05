#! /bin/bash

# Function that controls the possible errors when executing the script.
# Control of errors
function die () {

    # Case 1
    shell=$(echo $SHELL)
    if [ $shell != "/bin/bash" ]
    then
        echo "ERROR: This script is only compatible with the 'bash' shell."
        exit 1;
    fi

    # Case 2
    if (( $# > 1 ))
    then
        echo "ERROR: Only one argument can be passed to the script."
        echo "Try './prompt-theme.sh -h' or './prompt-theme.sh --help' for more information."
        exit 1;
    fi

    # Case 3
    if (( $# == 0 ))
    then
        echo "ERROR: An argument is required for script execution."
        echo "Try './prompt-theme.sh -h' or './prompt-theme.sh --help' for more information."
        exit 1;
    fi
}

# Function that implements the "-h" or "--help" option for script execution.
# Usage and list of available themes of the script.
function help () {
    if [[ $1 == "-h" ]] || [[ $1 == "--help" ]]
    then
        echo "Usage: ./prompt-theme.sh [Name of theme] ... [-h] ... [-r] ..."
        echo -e "Modifies our bash shell prompt with the theme of 'Oh my bash' passed as an argument.\n"
        echo "The list available themes are:"
        echo -e "\n\t - 90210\n\t - agnoster\n\t - axin\n\t - bakke\n\t - binaryanomaly\n\t - bobby-python\n\t - bobby\n\t - brainy\n\t - brunton"
        echo -e "\t - candy\n\t - clean\n\t - cooperkid\n\t - cupcake\n\t - demula\n\t - dos\n\t - doubletime\n\t - doubletime_multiline"
        echo -e "\t - doubletime_multiline_pyonly\n\t - dulcie\n\t - duru\n\t - emperor\n\t - envy\n\t - font\n\t - gallifrey\n\t - garo"
        echo -e "\t - half-life\n\t - hawaii50\n\t - iterate\n\t - kitsune\n\t - luan\n\t - mairan\n\t - mbriggs\n\t - minimal\n\t - modern-t"
        echo -e "\t - modern\n\t - morris\n\t - n0qorg\n\t - nwinkler\n\t - nwinkler_random_colors\n\t - pete\n\t - powerline-multiline"
        echo -e "\t - powerline-naked\n\t - powerline-plain\n\t - powerline\n\t - primer\n\t - pro\n\t - pure\n\t - purity\n\t - rainbowbrite"
        echo -e "\t - rana\n\t - rjorgenson\n\t - roderik\n\t - sexy\n\t - simple\n\t - sirup\n\t - slick\n\t - standard\n\t - tonka"
        echo -e "\t - tonotdo\n\t - tylenol\n\t - wanelo\n\t - zitron\n\t - zork\n"
        echo "For more information visit the official 'Oh my bash' repository: <https://github.com/ohmybash/oh-my-bash/tree/master/themes>"
        exit 0
    fi
}

# Function that makes a backup copy of our old shell before we have executed the script.
# Backup of the bash prompt style we had.
function backup_old_prompt () {
    dir_backup="/backup-prompt/"
    file_backup=".bashrc-old"

    if [ ! -d $dir_backup ]
    then
        sudo mkdir -p $dir_backup
    fi
    cd $dir_backup

    if [ ! -f $file_backup ]
    then
        sudo touch $file_backup
        sudo cp ~/.bashrc $dir_backup$file_backup
    fi
}

# Function that implements the "-r" or "--reset" option for script execution.
# Shell prompt reset
function reset_prompt () {
    if [ $1 == "-r" ] || [ $1 == "--reset" ]
    then
        sudo yes | cp -r /backup-prompt/.bashrc-old ~/.bashrc
        source ~/.bashrc
        echo "The shell prompt has been successfully reset."
        echo "To modify the prompt, run the script with the desired theme."
        sudo rm -rf ~/install.sh
        sudo rm -rf ~/.oh-my-bash/
        exit 0
    fi
}

# Function that checks that the topic passed by argument is a topic available in "Oh my bash".
# Array with the available themes of "oh my bash"
function check_theme () {
    themes=('90210' 'agnoster' 'axin' 'bakke' 'binaryanomaly' 'bobby-python' 'bobby' 'brainy' 'brunton' 'candy' 'clean' 'cooperkid' 'cupcake' 'demula'
            'dos' 'doubletime' 'doubletime_multiline' 'doubletime_multiline_pyonly' 'dulcie' 'duru' 'emperor' 'envy' 'font' 'gallifrey' 'garo' 'half-life'
            'hawaii50' 'iterate' 'kitsune' 'luan' 'mairan' 'mbriggs' 'minimal' 'modern-t' 'modern' 'morris' 'n0qorg' 'nwinkler' 'nwinkler_random_colors'
            'pete' 'powerline-multiline' 'powerline-naked' 'powerline-plain' 'powerline' 'primer' 'pro' 'pure' 'purity' 'rainbowbrite' 'rana' 'rjorgenson'
            'roderik' 'sexy' 'simple' 'sirup' 'slick' 'standard' 'tonka' 'tonotdo' 'tylenol' 'wanelo' 'zitron' 'zork')

    flag=0
    for (( i=0; i<"${#themes[@]}"; i++ ));
    do
        if [[ ${themes[$i]} = $1 ]]
        then
            flag=1
            break;
        fi
    done

    if (( $flag == 0 ))
    then
        echo "ERROR: The topic passed as an argument is not available!"
        echo "Try './prompt-theme.sh -h' or './prompt-theme.sh --help' for more information on all available topics."
        exit 1;
    fi
}

# Function that makes the script compatible with different Linux distributions.
function compatibility_distros_linux () {

    # We are located in the "Home Directory" of the current user.
    cd ~

    # We install the "wget" and "git" tools in the Linux distribution that we find.
    arch_version=$(cat /etc/os-release | grep -i "^name" | grep -i "Arch*" | wc -l)
    manjaro_version=$(cat /etc/os-release | grep -i "^name" | grep -i "Manja*" | wc -l)
    centos_version=$(cat /etc/os-release | grep -i "^name" | grep -i "Centos*" | wc -l)
    oracle_version=$(cat /etc/os-release | grep -i "^name" | grep -i "Oracle*" | wc -l)
    fedora_version=$(cat /etc/os-release | grep -i "^name" | grep -i "Fedor*" | wc -l)
    ubuntu_version=$(cat /etc/os-release | grep -i "^name" | grep -i "Ubuntu*" | wc -l)
    debian_version=$(cat /etc/os-release | grep -i "^name" | grep -i "Debia*" | wc -l)
    kali_version=$(cat /etc/os-release | grep -i "^name" | grep -i "Kali*" | wc -l)

    if (( $arch_version != 0 || $manjaro_version !=0 ))
    then
        sudo yes | pacman -S wget &>/dev/null
        sudo yes | pacman -S git &>/dev/null
        sudo yes | pacman -S figlet &>/dev/null
    else
        if (( $centos_version != 0 || $fedora_version !=0 || $oracle_version !=0 ))
        then
            sudo yum -y install wget &>/dev/null
            sudo yum -y install git &>/dev/null
            sudo yum -y install epel-release &>/dev/null
            sudo yum -y install figlet &>/dev/null
        else
            if (( $ubuntu_version != 0 || $debian_version !=0 || $kali_version !=0 ))
            then
                sudo apt-get install wget -y &>/dev/null
                sudo apt-get install git -y &>/dev/null
                sudo apt-get install figlet -y &>/dev/null
            else
                echo "¡Sorry!. Your Linux distribution is not compatible with this Script"
                exit 1
            fi
        fi
    fi
}

# Function that downloads and configures the necessary files, to use the "Oh my bash" themes.
# Download the script for changing the Bash prompt from the GitHub repository "Oh my bash!".
function download_ohmybash_installer () {
    if [ $(ls -l ~/.oh-my-bash 2> /dev/null | wc -l) -eq 0 ]
    then
        wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh
        chmod a+x ./install.sh
        sed "190 a source ~/prompt-theme.sh &> /dev/null" -i install.sh
        ./install.sh
    fi
}

# Function that configures the necessary fonts to be able to use the "agnoster" theme of "Oh my bash".
# Special settings for the "agnoster" theme.
function special_settings_agnoster_theme () {
    cd ~
    git clone https://github.com/powerline/fonts.git fonts &> /dev/null
    cd fonts
    chmod a+x install.sh
    ./install.sh &> /dev/null
}

# Function that updates the new prompt with the theme of "Oh my bash" passed as an argument.
# We add the "Oh my bash" theme to the bash configuration file.
function update_new_prompt () {
    command=$(cat ~/.bashrc | grep -i "OSH_THEME*" | cut -d "\"" -f2)
    sed -i s/$command/$1/g ~/.bashrc
    source ~/.bashrc

    echo "Fantastic!. Your prompt has been successfully modified."
    echo -e "You can see the list of available themes by running: './prompt.sh -h' or './promtp.sh --help'.\n"
    figlet -c Danilo Script
    echo "Take a look at the official 'Oh my bash' repository: <https://github.com/ohmybash/oh-my-bash>"
    echo "You can also go through my personal GitHub repository: <https://github.com/Danilooo99>"
    exit 0
}

# Main function that establishes the calls to the different functions of the script.
function main () {
    die $*
    help $1
    backup_old_prompt
    reset_prompt $1
    check_theme $1
    compatibility_distros_linux
    download_ohmybash_installer
    special_settings_agnoster_theme
    update_new_prompt $1
}

# Call the Main Function
main $*

