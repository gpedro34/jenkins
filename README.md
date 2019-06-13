# Jenkins Image

## Launch

`docker run -d -e JAVA_OPTS="-Djava.awt.headless=true" -e PLUGINS_FORCE_UPGRADE=true -e TRY_UPGRADE_IF_NO_MARKER=true -v jenkins_home:/var/jenkins_home -p 8080:8080 gpedro34/jenkins`

## Configuration

### Email (gmail)

- SMTP server: `smtp.gmail.com`
- Check SMTP Authentication
- SMTP Username: E-mail
- SMTP Password: E-mail password
- Check SSL Usage

### Theme

[Neo-light](https://tobix.github.io/jenkins-neo2-theme/dist/neo-light.css)
