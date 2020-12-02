% Author: Ramon Martinez-Cancino, SCCN, 2020
cd '/Users/amon-ra/program_files/eeglab_nsgupdate/code/testupdate/'; % MODIFY THIS LINE

[ALLEEG EEG CURRENTSET ALLCOM] = eeglab('nogui');
myplugins = PLUGINLIST;
nochecklist = {'iclabel', 'clean_rawdata', 'dipfit', 'firfilt'};

allplugin = plugin_getweb('',myplugins);
for i = 1:length(allplugin)
    if ~ismember(lower(allplugin(i).name),nochecklist)
        if allplugin(i).installed && allplugin(i).installorupdate
            plugin_remove(allplugin(i).foldername);
            plugin_askinstall(allplugin(i).name, [], true);
        end
    end
end

exit;
                