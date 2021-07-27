GITHUB ACTIONS PATH CHECK

CheckList

## Triggers

- [ ] Pushing commits to the following branches will run workflow
  - [ ] develop
  - [ ] main
  - [ ] [PROJECT_PREFIX]-* 
  - [ ] NOTE : (It should run for any other branches as well)

- [ ] Creating a PR on the following branches should trigger the workflow
  - [ ] develop
  - [ ] main
  - [ ] PROJECT_PREFIX]-* 
  - [ ] NOTE : (It should run for any other branches as well)

## Actions/Steps

- [ ] Build is performed if the workflow is triggered

- [ ] Deployment actions should be performed on the following
  - [ ] push to `develop`
  - [ ] tag push `v*.*.*`

- [ ] Slack Notifications
  - [ ] On success
  - [ ] On Failure
