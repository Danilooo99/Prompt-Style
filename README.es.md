## Estilo del Prompt


***Idioma***
- 🇪🇸 Español
- [![united-kingdom](https://user-images.githubusercontent.com/55488676/152346624-aa99712d-5039-4382-af6e-90f71fe483c9.png) Ingl](https://github.com/Danilooo99/Prompt-Style/blob/master/README.md)


¡Edite el estilo de su prompt de la shell de bash de Linux de la manera más rápida haciendo uso de este script!

![screen1](https://user-images.githubusercontent.com/55488676/152246886-ac3f82da-eacb-4c73-ae10-0330fbe80db9.png)

![screen2](https://user-images.githubusercontent.com/55488676/152246950-ddf5af79-f016-451a-b02b-bdee8db75ab2.png)


## Descripción del script:


El script ```prompt-theme.sh``` personaliza el prompt de la terminal bash de Linux con diferentes temas.
Los temas disponibles han sido seleccionados de un conocido respositorio llamado "Oh my bash".
Además, este script es compatible con diferentes distribuciones de Linux como:

- [Arch Linux](https://archlinux.org/)
- [CentOS](https://www.centos.org/)
- [Debian](https://www.debian.org/)
- [Fedora](https://getfedora.org/es/)
- [Kali Linux](https://www.kali.org/)
- [Manjaro](https://manjaro.org/)
- [Ubuntu](https://ubuntu.com/)

## Requisitos

Para personalizar el prompt de la shell de bash con este script, se deben tener en cuenta los siguientes requisitos:

- Un sistema operativo basado en Linux.
- Una distribución Linux de las indicadas en el apartado "Descripción del script" de este mismo fichero.
- El shell de Unix llamado ```bash```.
- Tener al menos un usuario administrador.
- Tener la utilidad de línea de comandos ```wget``` instalada en el sistema (Opcionalmente, se podría usar la utilidad [curl](https://linux.die.net/man/1/curl) en su lugar).
- La cuenta de usuario del sistema que personalizará su prompt debe tener un ```directorio home```.
- Ejecutar el script desde el ```directorio home``` del usuario.


## Configuración extra para los usuarios que no tienen privilegios de administrador en el sistema:

¡Atención!. Si la cuenta de usuario desde la que se va a ejecutar el script no es una cuenta de usuario administrador, entonces ese usuario debe estar registrado en el archivo **/etc/sudoers**.

<br />

Para ello, se deben seguir los siguientes pasos:


- Inicie sesión como usuario administrador del sistema (por ejemplo ```root```) y ejecute:

```bash
visudo
```  

**NOTA**: También puede editar directamente el archivo sudoers (```nano /etc/sudoers```).

- Y agregar debajo de la línea **"root ALL=(ALL) ALL"**, lo siguiente:

> **[username] ALL=(ALL) ALL**

- Si el usuario no administrador se llamara, por ejemplo,  **"danilo"**, el archivo quedaría así:

```yaml
root ALL=(ALL) ALL
danilo ALL=(ALL) ALL
``` 

Reiniciar el sistema para que se apliquen los cambios:

```bash
reboot
```

## Instalación:


Para ```Arch Linux``` o ```Manjaro```:
```bash
sudo yes | pacman -S wget &>/dev/null && cd ~ && sudo wget https://raw.githubusercontent.com/Danilooo99/Prompt-Style/master/scripts_bash/promp_style/prompt-theme.sh && sudo chmod a+x ~/prompt-theme.sh
```

Para ```CentOS``` o ```Fedora```:
```bash
sudo yum -y install wget &> /dev/null && cd ~ && sudo wget https://raw.githubusercontent.com/Danilooo99/Prompt-Style/master/scripts_bash/promp_style/prompt-theme.sh && sudo chmod a+x ~/prompt-theme.sh
```

Para ```Ubuntu```, ```Debian``` o ```Kali Linux```:
```bash
sudo apt-get install wget -y &>/dev/null && cd ~ && sudo wget https://raw.githubusercontent.com/Danilooo99/Prompt-Style/master/scripts_bash/promp_style/prompt-theme.sh && sudo chmod a+x ~/prompt-theme.sh
```

Luego de haber ejecutado el comando anterior en la distribución Linux correspondiente, el script se encontrará en el directorio home del usuario ```(~)```.


## Ejecución del Script:

Es **MUY IMPORTANTE** que el script se ejecute desde el ```directorio home del usuario```. Para ello, el script debe estar previamente en el directorio home del usuario y con los permisos de ejecución adecuados, requisitos que se han conseguido ejecutando el comando correspondiente en la sección **"Instalación"** de este mismo archivo.


<br />

Para ejecutar el script, debe ejecutarse en la terminal bash de Linux:


```bash
cd ~ && sudo ./prompt-theme.sh [Name of theme]
```

Puede ver la lista de temas disponibles [aquí](https://github.com/Danilooo99/Prompt-Style/tree/master/scripts_bash/promp_style/themes) o ejecutando el script con la opción -h (``` ./prompt-theme.sh -h```).


Si el script se ejecuta pasando el tema ```"brainy"``` como argumento, por ejemplo:

```bash
cd ~ && sudo ./prompt-theme.sh brainy
```

Tras la ejecución del script se debe **cerrar** y **reabrir** la **terminal bash** para que los cambios surtan efecto.


Al abrir la terminal, nuestro prompt se habrá modificado con el tema Brainy de "Oh my bash":


![screen3](https://user-images.githubusercontent.com/55488676/152252717-e931c9e5-990b-4647-b911-4c756d09a7e1.png)


## Ayuda del script:

Si ejecuta el script con la opción ```-h``` o ```--help```, se podrá observar el uso adecuado del script, así como los temas "Oh my bash" disponibles para ejecutar el mismo:


```bash
cd ~ && ./prompt-theme.sh -h
```

o

```bash
cd ~ && ./prompt-theme.sh --help
```

## Recuperación del prompt original:

Al ejecutar el script, se realiza una copia de seguridad del estilo del prompt original, antes de haber ejecutado este script por primera vez. Se ha implementado la opción ```-r``` o ```--reset``` para ayudar al usuario a recuperar el estilo de su prompt original, antes de haber interactuado con este script:


```bash
cd ~ && ./prompt-theme.sh -r
```

o

```bash
cd ~ && ./prompt-theme.sh --reset
```

## Consejos y Recomendaciones:

En mi caso uso Linux con una distribución ```Arch Linux```, y he probado diferentes temas para personalizar el prompt de mi terminal bash. Los mejores temas para mi gusto personal son:

#### Powerline ####

Ejecutar en el directorio home del usuario: ```./prompt-theme.sh powerline```

* * *

![powerline](https://user-images.githubusercontent.com/55488676/152255969-314357c3-f944-415d-9186-0465816ffa74.png)


* * *

#### Candy ####

Ejecutar en el directorio home del usuario: ```./prompt-theme.sh candy```

* * *

![candy](https://user-images.githubusercontent.com/55488676/152256346-5c51bfd4-a99c-43fb-bb20-26cf01727f64.png)


* * *


#### Agnoster ####
Ejecutar en el directorio home del usuario: ```./prompt-theme.sh agnoster```

* * *

![agnoster](https://user-images.githubusercontent.com/55488676/152256504-c54f0a65-4f68-4f32-8e30-2d125c06548d.png)


* * *

## Utilidades del Script

| Software                                                              | Utilidad                                  |
| --------------------------------------------------------------------- | ----------------------------------------- |
| **[git](https://git-scm.com/)**                                       | Software de control de versiones          |
| **[figlet](http://www.figlet.org/)**                                  | Generador de banners de texto             |
| **[wget](https://www.gnu.org/software/wget/)**                        | Herramienta para la descarga de contenido |

