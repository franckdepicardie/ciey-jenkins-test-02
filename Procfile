# Only listen on http; disable ajp and https
web: java -jar -Djenkins.install.runSetupWizard=false jenkins.war --httpPort=$PORT --ajp13Port=-1 --httpsPort=-1 && ./release.sh
