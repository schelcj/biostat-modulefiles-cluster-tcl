prepend-path PATH            $modroot/bin:$modroot/sbin
prepend-path C_INCLUDE_PATH  $modroot/include
prepend-path LD_LIBRARY_PATH $modroot/lib
prepend-path MANPATH         $modroot/share/man
prepend-path PERL5LIB        $modroot/lib/perl

set-alias sstate          $modroot/../utils/utils/cluster_status.pl
set-alias sarray          $modroot/../utils/sarray/sarray
set-alias srunall         $modroot/../utils/srunall/srunall
set-alias sdown           'sinfo --states=down,drain,fail,no_respond,maint,unk --format="%13n %20f %20H %12u %32E"'
set-alias squeue_priority 'squeue -S -p -t pd -l -o "%9Q %.7i %.9P %.8j %.8u %.8T %.10M %.9l %.6D %R" --sort=-p,i'
set-alias show_qos        'sacctmgr show qos format=name,priority,preemptmode,maxcpusperuser,maxsubmit,maxwall'

