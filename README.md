# Launch

`docker run -d -e JAVA_OPTS="-Djava.awt.headless=true" -e PLUGINS_FORCE_UPGRADE=true -e TRY_UPGRADE_IF_NO_MARKER=true -v jenkins_home:/var/jenkins_home -p 8080:8080 jenkins_jenkins`

# Configuration

## Email (gmail)

smtp.gmail.com
use SMTP Authentication
user: email
pass: password
use SSL

## Theme

https://tobix.github.io/jenkins-neo2-theme/dist/neo-light.css
