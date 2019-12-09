echo "!!!!!!!!!!!!!!!!!!!!! Starting release.sh"
echo "PART I"
jar -xvf jenkins.war
echo "PART II-a"
ls -la .jenkins
echo "PART II-b"
chmod -R 775 .jenkins
echo "PART II-c"
ls -la .jenkins/jobs
echo "PART III"
echo "-->copying jobs..."
cp -rf ./eyspecial/jobs/. .jenkins/jobs/.
echo "!!!!!!!!!!!!!!!!!!!!! Finished release.sh"