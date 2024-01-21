# preparación

> se recomienda utilizar el comando `sudo apt update -y && sudo apt upgrade -y && sudo apt auto-remove -y` antes de nada para mantener la máquina actualizada

1. en la máquia desde donde se ejecutarán los scripts, ejecutar el comando `sudo apt install awscli -y`

2. a continuación, con el comando `git clone https://github.com/cmilsor245/apache-tomcat-daweb.git` se descarga el repositorio, donde están almacenados los scripts y el template del nuevo stack

3. entrar al script de deploy con el comando `sudo nano apache-tomcat-daweb/deploy-delete-scripts/cmilsor-deploy-script.sh` y especificar las credenciales de cada apartado: `export AWS_ACCESS_KEY_ID=`, `export AWS_SECRET_ACCESS_KEY=` y `export AWS_SESSION_TOKEN=`. hacer lo mismo en el script de delete (`sudo nano apache-tomcat-daweb/deploy-delete-scripts/cmilsor-delete-script.sh`)

4. sin moverse de ruta en la máquina, ejecutar el comando `sudo chmod +x apache-tomcat-daweb/deploy-delete-scripts/cmilsor-deploy-script.sh apache-tomcat-daweb/deploy-delete-scripts/cmilsor-delete-script.sh` para otorgarles persmisos de ejecución

---

# ejecución

## cmilsor-deploy-script.sh
`sudo ./apache-tomcat-daweb/deploy-delete-scripts/cmilsor-deploy-script.sh`

## cmilsor-delete-script.sh
`sudo ./apache-tomcat-daweb/deploy-delete-scripts/cmilsor-delete-script.sh`