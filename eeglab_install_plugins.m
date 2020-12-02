% Author: Ramon Martinez-Cancino, SCCN, 2020

% Installing plug-ins to import data (by default ALL plug-ins)
eeglabpath = '/Users/amon-ra/program_files/eeglab_nsgupdate/code/testupdate/eeglab'; % MODIFY THIS LINE
run(eeglabpath);


allpluginllist =   {'AAR'                   	1;
                    'Adjust'               	    1;
                    'ANTeepimport'          	1;
                    'ARfitStudio'           	1;
                    'automagic'             	1;
                    'batch_context'         	1;
                    'BCI2000import'         	1;
                    'bci2000legacy'         	1;
                    'BDFimport'             	1;
                    'BERGEN'                	1;
                    'bids-matlab-tools'     	1;
                    'bids-validator'        	1;
                    'bioelectromag'         	1;
                    'biopac'                	1;
                    'Biosig'                	1;
                    'bva-io'                	1;
                    'CIAC'                  	1;
                    'Cleanline'             	1;
                    'Cogniscan'             	1;
                    'corrmap'               	1;
                    'countBlinks'           	1;
                    'crossFreqPowerSpec'    	1;
                    'CSP'                   	1;
                    'ctfimport'             	1;
                    'cwleegfmri'            	1;
                    'Darbeliai'             	1;
                    'detect_spindles'       	1;
                    'EEG-Beats'             	1;
                    'eeg_toolbox'           	1;
                    'egilegacy'             	1;
                    'EMDLAB'                	1;
                    'envtopoForContinuous'  	1;
                    'erppeakinterval'       	1;
                    'erpsource'            	    1;
                    'erpssimport'         	    1;
                    'EYE-EEG'               	1;
                    'Eyesubtract'           	1;
                    'FAA'                   	1;
                    'Fieldtrip-lite'        	1;
                    'Fileio'                	1;
                    'fullRankAveRef'        	1;
                    'GEVD'                  	1;
                    'gtecimport'            	1;
                    'headModel'             	1;
                    'HEDTools'              	1;
                    'HEPLAB'                	1;
                    'icablinkmetrics'       	1;
                    'INSTEPascimport'       	1;
                    'interpolateSpike'      	1;
                    'loadcurry'             	1;
                    'loadhdf5'              	1;
                    'loreta'                	1;
                    'LR'                    	1;
                    'lsl_app_matlabviewer'  	1;
                    'MARA'                  	1;
                    'MarkEvents'            	1;
                    'mass_univ'             	1;
                    'MEF_import'            	1;
                    'MFFimport'             	1;
                    'MFFMatlabIO'           	1;
                    'MicrostateAnalysis'    	1;
                    'Mobilab'               	1;
                    'mp_clustering'         	1;
                    'MST'                   	1;
                    'musedirect'            	1;
                    'musemonitor'           	1;
                    'Mutual_Info_Clustering'	1;
                    'Neuroelectrics'        	1;
                    'neuroimaging4d'        	1;
                    'NeurOne'               	1;
                    'NEUROPRAXimport'       	1;
                    'neuroscanio'           	1;
                    'neurosky'              	1;
                    'NFT'                   	1;
                    'NihonKoden'            	1;
                    'NIMA'                  	1;
                    'nsgportal'             	1;
                    'OEP Runica'            	0;
                    'PACT'                  	1;
                    'Peakfit'               	1;
                    'Period-Amplitude-Ana'  	1;
                    'PICARD'                	1;
                    'postAmicaUtility'      	1;
                    'PowPowCAT'             	1;
                    'PrepPipeline'          	1;
                    'ProcomInfinity'        	1;
                    'pvaftopo'              	1;
                    'REGICA'                	1;
                    'remove_event_data'     	1;
                    'reorder19Channels'     	1;
                    'rERP'                  	1;
                    'REST'                  	1;
                    'ReSync'                	1;
                    'SASICA'                	1;
                    'SEREEGA'               	1;
                    'sevenSegmentica'       	1;
                    'SIFT'                  	1;
                    'snapmaster'            	1;
                    'std_backproj'          	1;
                    'std_clust2ch'          	1;
                    'std_dipoleDensity'     	1;
                    'std_dipplotWithDensity'	1;
                    'std_envtopo'           	1;
                    'std_ErpCalc'           	1;
                    'std_erpStudio'         	1;
                    'TBT'                   	1;
                    'TESA'                  	1;
                    'trimOutlier'           	1;
                    'Viewprops'             	1;
                    'VisEd'                	    0;
                    'WearableSensing'       	1;
                    'winPACT'               	1;
                    'xdfimport'             	1;
                    'AMICA'                 	0;
                    'clean_rawdata'         	0;
                    'dipfit'                	0;
                    'EEGBrowser'            	0;
                    'eegplot_w'             	0;
                    'ERPLAB'                	1;
                    'firfilt'               	0;
                    'fitTwoDipoles'         	0;
                    'fMRIb'                 	0;
                    'get_chanlocs'          	0;
                    'ICLabel'               	0;
                    'iirfilt'               	1;
                    'LIMO'                  	0;
                    'runica_nsg'            	0;
                    'std_infocluster'       	0};



% Installing all plugins indicated with 1
eeglab nogui;
for i =1:length(allpluginllist)
    if allpluginllist{i,2}
        plugin_askinstall(allpluginllist{i,1}, [], true);
    end
end
exit;