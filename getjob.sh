echo ">> STARTING GETTING JOB CONF AND LOGS *****************************************************************"
whoami

URL=https://ciey-jenkins-test-01.herokuapp.com/
#URL=https://localhost:8080/

tmpPath=/app/
#tmpPath=/Users/eyhuellou/


rm -rf ${tmpPath}.jenkins/getBackupJobconfAndLogs
echo $?
echo "***"
cd ${tmpPath}.jenkins/
echo $?
echo "***"
mkdir getBackupJobconfAndLogs
echo $?
echo "***"
cd getBackupJobconfAndLogs
echo $?
echo "***"
git clone https://github.com/franckdepicardie/JenkinsJobConf.git
echo $?
echo "***"
cd JenkinsJobConf
echo $?
echo "***"
rsync -r ./jobs/ ${tmpPath}.jenkins/jobs
echo $?
echo "***"
#rsync -r ./users/ ${tmpPath}.jenkins/users
#echo $?
#echo "***"
cp -Rf ./config.xml ${tmpPath}.jenkins
echo $?
echo "***"
echo ${URL}
java -jar ${tmpPath}.jenkins/war/WEB-INF/jenkins-cli.jar -s ${URL} -auth admin:admin reload-configuration
echo $?
echo ">> FINISHED GETTING JOB CONF AND LOGS *****************************************************************"


