# Centralized location for new virtual environments
export PIP_VIRTUALENV_BASE=$HOME/.virtualenvs
# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
# make changes to global packages
syspip(){
   PIP_REQUIRE_VIRTUALENV=false pip "$@"
}
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/local/bin/virtualenvwrapper.sh
