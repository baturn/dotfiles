#!/usr/bin/env bash
#
# install.sh installs things.

SCRIPT_NAME=${1:-"install.sh"}

# Send all our -x output to this file for later debugging
LOG_DIR="$HOME/install.sh.logs"
mkdir -p "${LOG_DIR}"
exec 1>"${LOG_DIR}/stdout"
exec 2>"${LOG_DIR}/stderr"
exec 19>"${LOG_DIR}/trace"
BASH_XTRACEFD=19

set -x
set -e

echo "${SCRIPT_NAME} start: $(date)"
echo ''

# find the installers and run them iteratively
echo "👟 Running installers 👟"
shopt -s globstar nullglob
for installer in **/*install-tool.sh
do
  sh -c "$installer"
done

if $CODESPACES
then
  echo "Running Codespaces post start"
  script/post-start
fi

echo ''
echo '🏁 All installed! 🏁'
