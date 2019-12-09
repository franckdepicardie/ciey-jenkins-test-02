echo "!!!!!!!!!!!!!!!!!!!!! Starting release.sh"
echo "PART 0"
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
echo "!!!!!!!!!!!!!!!!!!!!! Finished release.sh"