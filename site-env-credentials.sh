#!/bin/bash
#export OSP_GUID="f4c8"
#export TOWER_GUID="8029"
#export OPENTLC_LOGIN="miguel.rubioroman-atos.net"
#export OPENTLC_PASSWORD="Op3n7LC.71"
#export OPENTLC_KEY_PATH="/root/.ssh/${TOWER_GUID}key.pem"
#export GITHUB_REPO="https://github.com/gitjmrubio/ansible_advance_homework"
#export JQ_REPO_BASE="http://www.opentlc.com/download/ansible_bootcamp"
#export REGION="us-east-1"
#export RH_MAIL_ID="miguel.rubioroman"
OSP_GUID="3fba"
TOWER_GUID="024c"
OPENTLC_LOGIN="miguel.rubioroman-atos.net"
OPENTLC_PASSWORD="Op3n7LC.71"
OPENTLC_KEY_PATH="/root/.ssh/${TOWER_GUID}key.pem"
GITHUB_REPO="https://github.com/gitjmrubio/ansible_advance_homework"
JQ_REPO_BASE="http://www.opentlc.com/download/ansible_bootcamp"
REGION="us-east-1"
RH_MAIL_ID="miguel.rubioroman"
#ANSIBLE_ADVANCE_GUID=""

# EXECUTE SITE-CONFIG-TOWER PLAYBOOK
#ansible-playbook site-config-tower.yml -e tower_GUID=${TOWER_GUID} -e osp_GUID=${OSP_GUID} -e opentlc_login=${OPENTLC_LOGIN} -e path_to_opentlc_key=${OPENTLC_KEY_PATH} -e param_repo_base=${JQ_REPO_BASE} -e opentlc_password=${OPENTLC_PASSWORD} -e REGION_NAME=${REGION} -e EMAIL=${RH_MAIL_ID} -e github_repo=${GITHUB_REPO}

# EXECUTE SITE-OSP-INSTANCES PLAYBOOK
ansible-playbook site-osp-instances.yml -e tower_GUID=${TOWER_GUID} -e osp_GUID=${OSP_GUID} -e opentlc_login=${OPENTLC_LOGIN} -e path_to_opentlc_key=${OPENTLC_KEY_PATH} -e param_repo_base=${JQ_REPO_BASE} -e opentlc_password=${OPENTLC_PASSWORD} -e REGION_NAME=${REGION} -e EMAIL=${RH_MAIL_ID} -e github_repo=${GITHUB_REPO}
