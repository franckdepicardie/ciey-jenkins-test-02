echo "!!!!!!!!!!!!!!!!!!!!! Starting release.sh"
echo "PART I"
jar -xvf jenkins.war
echo "PART II"
ls -la
echo "PART III"
cp -rf ./eyspecial/. .jenkins/
echo "PART IV"
ls -la .jenkins/
echo "PART V"
echo "!!!!!!!!!!!!!!!!!!!!! Finished release.sh"