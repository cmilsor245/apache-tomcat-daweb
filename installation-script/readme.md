# preparación

1. ejecuta el comando `git clone https://github.com/cmilsor245/apache-tomcat-daweb.git /tmp/apache-tomcat-daweb` para descargar el repositorio en el directorio /tmp, donde se encuentra el script para la instalación automática de apache tomcat

2. ejecutar el comando `sudo chmod +x /tmp/apache-tomcat-daweb/installation-script/cmilsor-installation-script.sh` para otorgarle permisos de ejecución

3. preparar la máquina donde se va a ejcutar la instalación añadiendo una regla de entrada que permita las conexiones entrantes mediante el uso del puerto `8080` para cualquier dirección ipv4

---

# ejecución

`sudo /tmp/apache-tomcat-daweb/installation-script/cmilsor-installation-script.sh`