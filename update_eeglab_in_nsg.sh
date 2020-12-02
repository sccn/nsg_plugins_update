# Here write the eeglab path
EEGLABPATH="/Users/amon-ra/program_files/eeglab_nsgupdate/eeglab"
cd $EEGLABPATH
git pull
git submodule update --init --recursive
