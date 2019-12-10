# Only listen on http; disable ajp and https
release: "cd /app/;ls -la"
web: java -jar -Djenkins.install.runSetupWizard=false jenkins.war --httpPort=$PORT --ajp13Port=-1 --httpsPort=-1
