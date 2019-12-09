echo "!!!!!!!!!!!!!!!!!!!!! Starting release.sh"
echo "PART I"
jar -xvf jenkins.war
echo "PART II"
ls -la .jenkins/jobs/
echo "PART III"
echo "-->copying jobs..."
chmod -R 766 .jenkins/jobs/
cp -rf ./eyspecial/jobs/. .jenkins/jobs/.
echo "!!!!!!!!!!!!!!!!!!!!! Finished release.sh"