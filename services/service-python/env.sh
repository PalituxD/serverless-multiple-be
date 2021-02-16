#! /bin/bash
export APP_STAGE=dev
export APP_REGION=us-east-1
export APP_PROFILE=deploy

function multiple-be-package() {
  echo "PARENT DIR_WORK_PATH-> $DIR_WORK_PATH"
  "$DIR_WORK_PATH"/node_modules/.bin/sls package --package ./target/$APP_STAGE --stage $APP_STAGE -v -r $APP_REGION --aws-profile $APP_PROFILE
}

function multiple-be-deploy() {
  echo "PARENT DIR_WORK_PATH-> $DIR_WORK_PATH"
  "$DIR_WORK_PATH"/node_modules/.bin/sls deploy --package ./target/$APP_STAGE --stage $APP_STAGE -v -r $APP_REGION --aws-profile $APP_PROFILE
}

function multiple-be-remove() {
  echo "PARENT DIR_WORK_PATH-> $DIR_WORK_PATH"
  "$DIR_WORK_PATH"/node_modules/.bin/sls remove --package ./target/$APP_STAGE --stage $APP_STAGE -v -r $APP_REGION --aws-profile $APP_PROFILE
}
