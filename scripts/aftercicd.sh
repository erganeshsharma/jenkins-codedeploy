if [[ $BUILD_STATUS == "success" ]]
then
  export STATUS="success"
else
  export STATUS="failure"
fi

curl "https://api.github.com/repos/erganeshsharma/jenkins-codedeploy/statuses/$GIT_COMMIT?access_token=b59f4a5d92ec6d3175fb785734398d6b36fbf08d" \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"state\": \"pending\", \"description\": \"Jenkins\", \"target_url\": \"http://52.34.145.34:8080/job/jenkins-codedeploy/$BUILD_NUMBER/console\"}"
