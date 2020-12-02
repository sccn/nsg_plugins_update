# Getting a clean copy of EEGLAB from the GitHub Repo
CURRENTFOLDER= pwd
#echo $CURRENTFOLDER

# Define here path to MATLAB in your system
MATLAB_ROOT_PATH="/Applications/MATLAB_R2018b.app/bin/matlab -nodesktop"

# Define here folder to install EEGLAB. The folder will be created.
EEGLAB_INSTALL_FOLDER="/Users/amon-ra/program_files/eeglab_nsgupdate/code/testupdate/"

# Here clone EEGLAB repo
git clone --recursive https://github.com/sccn/eeglab.git $EEGLAB_INSTALL_FOLDER
cd "$EEGLAB_INSTALL_FOLDER"
git checkout develop

# Here we set to use the latest release. This line may be changed when a new release is available.
git checkout tags/2020.0
cd  "$CURRENTFOLDER"

# Execute MATLAB and run script to install plugins
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SCRIPT_TO_RUN="'$DIR/eeglab_install_plugins.m'"
#echo $SCRIPT_TO_RUN
$MATLAB_ROOT_PATH -nodisplay -r "run($SCRIPT_TO_RUN)"
