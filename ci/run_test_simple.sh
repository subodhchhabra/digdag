#!/bin/bash -xe

DIGDAG_TEST_POSTGRESQL="${DIGDAG_TEST_POSTGRESQL}" \
TD_API_KEY="${TD_API_KEY}" \
TD_LOAD_IT_S3_BUCKET="${TD_LOAD_IT_S3_BUCKET}" \
TD_LOAD_IT_AWS_ACCESS_KEY_ID="${TD_LOAD_IT_AWS_ACCESS_KEY_ID}" \
TD_LOAD_IT_AWS_SECRET_ACCESS_KEY="${TD_LOAD_IT_AWS_SECRET_ACCESS_KEY}" \
GCP_CREDENTIAL="${GCP_CREDENTIAL}" \
GCS_TEST_BUCKET="${GCS_TEST_BUCKET}" \
EMR_IT_S3_TEMP_BUCKET="${EMR_IT_S3_TEMP_BUCKET}" \
EMR_IT_AWS_ACCESS_KEY_ID="${EMR_IT_AWS_ACCESS_KEY_ID}" \
EMR_IT_AWS_SECRET_ACCESS_KEY="${EMR_IT_AWS_SECRET_ACCESS_KEY}" \
EMR_IT_AWS_ROLE="${EMR_IT_AWS_ROLE}" \
EMR_IT_AWS_KMS_KEY_ID="${EMR_IT_AWS_KMS_KEY_ID}" \
REDSHIFT_IT_CONFIG="${REDSHIFT_IT_CONFIG}" \
CI_NODE_TOTAL="${CI_NODE_TOTAL}" \
CI_NODE_INDEX="${CI_NODE_INDEX}" \
CI_ACCEPTANCE_TEST=true \
TEST_S3_ENDPOINT=$TEST_S3_ENDPOINT \
TEST_S3_ACCESS_KEY_ID=$TEST_S3_ACCESS_KEY_ID \
TEST_S3_SECRET_ACCESS_KEY=$TEST_S3_SECRET_ACCESS_KEY \
TERM=dumb \
./gradlew clean cleanTest test --info --no-daemon "$@"
