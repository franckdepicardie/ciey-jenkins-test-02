# Only listen on http; disable ajp and https
web: cd /app/;jar -xvf jenkins.war;cp jenkins/init.groovy .jenkins/;java -jar -Djenkins.install.runSetupWizard=false jenkins.war --httpPort=$PORT --ajp13Port=-1 --httpsPort=-1
