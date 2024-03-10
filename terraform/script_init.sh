export GITLAB_ACCESS_TOKEN=glpat-TN6UrDD2VjW1z2KHc-zW
export TF_STATE_NAME=lab14
terraform init \
    -backend-config="address=https://git-formation.adlere.fr/api/v4/projects/102/terraform/state/$TF_STATE_NAME" \
    -backend-config="lock_address=https://git-formation.adlere.fr/api/v4/projects/102/terraform/state/$TF_STATE_NAME/lock" \
    -backend-config="unlock_address=https://git-formation.adlere.fr/api/v4/projects/102/terraform/state/$TF_STATE_NAME/lock" \
    -backend-config="username=lab7" \
    -backend-config="password=$GITLAB_ACCESS_TOKEN" \
    -backend-config="lock_method=POST" \
    -backend-config="unlock_method=DELETE" \
    -backend-config="retry_wait_min=5" \
    -upgrade