# preparación

1. ejecutar el comando ```git clone https://github.com/cmilsor245/apache-tomcat-daweb.git``` para descargar el repositorio, donde se encuentra el script para la instalación automática de apache tomcat

2. ejecutar el comando ```sudo chmod +x apache-tomcat-daweb/installation-script/cmilsor-installation-script.sh``` para otorgarle permisos de ejecución

3. preparar la máquina donde se va a ejcutar la instalación añadiendo una regla de entrada que permita las conexiones entrantes mediante el uso del puerto ```8080``` para cualquier dirección ipv4

---

# ejecución

```sudo ./apache-tomcat-daweb/installation-script/cmilsor-installation-script.sh```