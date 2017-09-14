curl "https://api.github.com/repos/erganeshsharma/jenkins-codedeploy/statuses/$GIT_COMMIT?access_token=abc123" \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"state\": \"pending\", \"description\": \"Jenkins\", \"target_url\": \"http://52.34.145.34:8080/job/jenkins-codedeploy/$BUILD_NUMBER/console\"
}"
