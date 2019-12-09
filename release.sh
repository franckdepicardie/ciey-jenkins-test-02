echo "!!!!!!!!!!!!!!!!!!!!! Starting release.sh"
jar -xvf jenkins.war
cp -rf ./jenkins/eyspecial/. .jenkins/
echo "!!!!!!!!!!!!!!!!!!!!! Finished release.sh"