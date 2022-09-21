# Configurando Entornos de Desarrollo


## Configurando VSCode

1. Instale VSCode en su máquina
3. Siga los tutoriales de VSCode
4. Instale el plugin Remote SSH  y aprenda a usarlo
5. Use Live Share para colaborar con un compañero
6. Elabore un informe con la experiencia adquirida en el repositorio asignado


###  Collaboration con Visual Studio Share

Instale Visual Studio Live Share y pruébelo con un compañero

### Remote - SSH: Editando con VSCode en una máquina remota via SSH 

Instale las extensiones Remote SSH y compruebe que funcionan con su máquina del iaas

* [Visual Studio Code Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
* [Remote - SSH: Editing Configuration](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh-edit)

## Configurando CodeSpaces

See section [CodeSpaces](../../codespaces)

## Configurando GitPod

* [Apuntes de GitPod](../../gitpod)

## Configurando el Entorno ULL IAAS

* Siguiendo las instrucciones en el  [repositorio SYTW/iaas-ull-es](https://github.com/SYTW/iaas-ull-es) despliegue un ejemplo como el que aparece en [crguezl/express-start](https://github.com/crguezl/express-start) en su máquina virtual del servicio [iaas.ull.es](iaas.ull.es).
* Puede encontrar un vídeo del profesor introduciendo el [iaas.ull.es aquí](https://youtu.be/qKHgbV0lYbA).
    - [![iaas.ull.es](http://i3.ytimg.com/vi/qKHgbV0lYbA/hqdefault.jpg)](https://youtu.be/qKHgbV0lYbA)
    - [Como instalar X11 en las máquinas de iaas.ull.es](https://youtu.be/m2y0gq35Ujc) Vídeo en Youtube
* Añada en el `README.md` un pequeño tutorial de como usar y desplegar una aplicación web en [iaas.ull.es](iaas.ull.es).
  - Haga capturas de pantalla que muestren que su máquina esta bien configurada y funcionando
* La IP dinámica de su máquina virtual no debería cambiar si no la apaga. Publique la URL de despliegue en su máquina
* Prepare la máquina para poder trabajar:
  - Instale [linuxbrew](http://linuxbrew.sh/)
  - Instale git si es necesario
  - [Configura git](https://git-scm.com/book/es/v1/Empezando-Configurando-Git-por-primera-vez)
  - Procure que la rama actual aparezca en el prompt de la terminal. 
     - Puede usar [git prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)
     - Puede añadir algo como esto a su PS1: `PS1="\$(git branch 2>/dev/null | sed -n 's/* \(.*\)/\1 /p')$ "`
     - Recuerde que si su prompt es muy largo siempre puede acortarlo con `PROMPT_DIRTRIM=1`
  - [git aliases](https://git-scm.com/book/tr/v2/Git-Basics-Git-Aliases)
  - Instale [nvm](https://github.com/creationix/nvm)
  - install nodeJS usando nvm
  - etc. 

