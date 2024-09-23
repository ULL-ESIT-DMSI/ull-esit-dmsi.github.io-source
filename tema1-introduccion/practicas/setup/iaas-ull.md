# Configurando el Entorno ULL IAAS

* Siguiendo las instrucciones en el  [repositorio SYTW/iaas-ull-es](https://github.com/SYTW/iaas-ull-es) despliegue un ejemplo como el que aparece en [crguezl/express-start](https://github.com/crguezl/express-start) en su máquina virtual del servicio [iaas.ull.es](https://iaas.ull.es).

  ![]({{ site.baseurl }}/assets/images/iaas-ull-es.png)
* Puede encontrar un vídeo del profesor introduciendo el [iaas.ull.es aquí](https://youtu.be/qKHgbV0lYbA).
    - [![iaas.ull.es](https://i3.ytimg.com/vi/qKHgbV0lYbA/hqdefault.jpg)](https://youtu.be/qKHgbV0lYbA)
    - [Como instalar X11 en las máquinas de iaas.ull.es](https://youtu.be/m2y0gq35Ujc) Vídeo en Youtube
* Añada en el `README.md` un pequeño tutorial de como usar y desplegar una aplicación web en [iaas.ull.es](iaas.ull.es).
  - Haga capturas de pantalla que muestren que su máquina esta bien configurada y funcionando
* La IP dinámica de su máquina virtual no debería cambiar si no la apaga. Publique la URL de despliegue en su máquina
* Prepare la máquina para poder trabajar:
  - Instale [linuxbrew](https://linuxbrew.sh/)
  - Instale git si es necesario
  - [Configura git](https://git-scm.com/book/en/v2/GitHub-Account-Setup-and-Configuration)
  - Procure que la rama actual aparezca en el prompt de la terminal. 
     - Puede usar [git prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)
     - Puede añadir algo como esto a su PS1: `PS1="\$(git branch 2>/dev/null | sed -n 's/* \(.*\)/\1 /p')$ "`
     - Recuerde que si su prompt es muy largo siempre puede acortarlo con `PROMPT_DIRTRIM=1`
  - [git aliases](https://git-scm.com/book/tr/v2/Git-Basics-Git-Aliases)
  - Instale [nvm](https://github.com/creationix/nvm)
  - Install nodeJS usando nvm
  - Install GitHub CLI
  - etc. 

## Tips course 24/25

The ssh connection with the ull iass machine **only opens when the wifi is activated**

```bash
➜  practicas-alumnos ifconfig en0
en0: flags=8863<UP,BROADCAST,SMART,RUNNING,SIMPLEX,MULTICAST> mtu 1500
        options=400<CHANNEL_IO>
        ether f8:ff:c2:2a:30:43
        inet6 fe80::8d6:eae8:55e3:bdf3%en0 prefixlen 64 secured scopeid 0x6 
        inet 10.151.45.224 netmask 0xffff0000 broadcast 10.151.255.255
        nd6 options=201<PERFORMNUD,DAD>
        media: autoselect
        status: active
➜  practicas-alumnos ssh dmsi    
Welcome to Ubuntu 20.04.3 LTS (GNU/Linux 5.4.0-196-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Mon Sep 23 08:38:45 UTC 2024

  System load:  0.0                Processes:             140
  Usage of /:   37.5% of 19.52GB   Users logged in:       1
  Memory usage: 6%                 IPv4 address for ens3: 10.6.131.75
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

103 updates can be applied immediately.
To see these additional updates run: apt list --upgradable

New release '22.04.5 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Mon Sep 23 08:35:49 2024 from 10.151.45.224
usuario@ubuntu:~$  
```

If you do not know the device name for the Wi-Fi network adapter, on a Mac you can use the following examples:

```
➜  apuntes git:(master) ✗ networksetup -getairportpower $(system_profiler SPAirPortDataType | awk -F: '/Interfaces:/{getline; print $1;}')
Wi-Fi Power (en0): On
```

or 

```
➜  apuntes git:(master) ✗ ifconfig $(system_profiler SPAirPortDataType | awk -F: '/Interfaces:/{getline; print $1;}') | awk '/status:/{print $2}'
active
```

Or we can use `wdutil` (Wireless Diagnostics command line utility):

```
➜  apuntes git:(master) ✗ wdutil --help
usage: sudo wdutil diagnose [-q] [-f outputDirectoryPath]
            -q may be specified to suppress legal prompt and Finder window
       sudo wdutil info
       sudo wdutil log [{+|-} {system|wifi}]+
       sudo wdutil dump
       sudo wdutil clean
```