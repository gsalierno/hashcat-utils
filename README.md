# hashcat/utils
wl_hashcat.sh -  performs a wordlist attack on a hccapx file trying a set of wordlists files contained in the wordlist_path given as input:      
USAGE: ./wl_hashcat.sh "wordlists_path" ".hccapx_filepath"  

wl_hashcat_rb.sh - performs a combined wordlist + rules based attack  

USAGE: ./wl_hashcat.sh "wordlists_path ".hccapx_filepath" "rule_path"  

ex. ./wl_hashcat.sh /myfolder/wordlists_folder /myfolder/myfile.hccapx
