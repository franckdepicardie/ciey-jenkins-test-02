echo "!!!!!!!!!!!!!!!!!!!!! Starting release.sh"
echo "PART I"
jar -xvf jenkins.war
echo "PART II"
ls -la
echo "PART III"
echo "-->copying jobs..."
cp -rf ./eyspecial/jobs/. .jenkins/jobs/.
echo "PART IV"
ls -la .jenkins/jobs/
echo "PART V"
echo "!!!!!!!!!!!!!!!!!!!!! Finished release.sh"