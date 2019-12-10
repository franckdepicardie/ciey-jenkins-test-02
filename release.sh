echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!!!!!!!!!!!!!!!!!!!!! Starting release.sh !!!!!!!!!!!!!!!!!!!!!"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "------------------"
echo "PART 0"
cd
ls -la .
echo "PART I"
jar -xvf jenkins.war
echo "PART II-a"
ls -la .jenkins/
echo "PART II-b"
chmod -R 777 .jenkins
echo "PART II-c"
ls -la .jenkins/jobs
echo "PART III"
echo "-->copying jobs..."
cp -rf ./eyspecial/jobs/. .jenkins/jobs/.
echo "-->copying users..."
cp -rf ./eyspecial/users/. .jenkins/users/.
echo "-->enabling security and credentials..."
cp -rf ./eyspecial/config.xml .jenkins/
echo "for info disableSignup set to false in global config.xml in order to unable public access"
echo "------------------"
java -jar jenkins-cli.jar -s https://ciey-jenkins-test-01.herokuapp.com/ -auth admin:admin reload-configuration
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"