# preparación

1. en la máquina desde donde se ejecutarán los scripts, con el comando `git clone https://github.com/cmilsor245/apache-tomcat-daweb.git` se descarga el repositorio, donde están almacenados los scripts y el template del nuevo stack

2. entrar al script de deploy con el comando `sudo nano apache-tomcat-daweb/deploy-delete-scripts/cmilsor-deploy-script.sh` y especificar las credenciales de cada apartado: `aws_access_key_id=`, `aws_secret_access_key=` y `aws_session_token=`.

3. sin moverse de ruta en la máquina, ejecutar el comando `sudo chmod +x apache-tomcat-daweb/deploy-delete-scripts/cmilsor-deploy-script.sh apache-tomcat-daweb/deploy-delete-scripts/cmilsor-delete-script.sh` para otorgarles persmisos de ejecución

---

# ejecución

## cmilsor-deploy-script.sh
`sudo ./apache-tomcat-daweb/deploy-delete-scripts/cmilsor-deploy-script.sh`

## cmilsor-delete-script.sh
`sudo ./apache-tomcat-daweb/deploy-delete-scripts/cmilsor-delete-script.sh`