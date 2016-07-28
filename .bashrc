#export PS1="\u \[\e[01;36m\]\W\$ \[\e[00m\]"
export PS1="\u \[\e[01;36m\]\W\$(__git_ps1)\$ \[\e[00m\]"

findPort() {                                                                                                                                                              
  lsof -n -i4TCP:$1 | grep LISTEN                                                                                                                                         
}                                                                                                                                                                         
                                                                                                                                                                          
alias findport=findPort                                                                                                                                                   
alias nom='npm cache clean && rm -rf node_modules && mkdir node_modules && touch node_modules/.metadata_never_index && npm install'                                       
alias bom='bower cache clean && rm -rf bower_components && mkdir bower_components && touch bower_components/.metadata_never_index && bower install'                       
alias flushdns='sudo dscacheutil -flushcache'                                                                                                                             
alias startdocker='docker-machine start default && eval "$(docker-machine env default)"'                                                                                  
alias weather='curl -4 wttr.in/Traverse%20City,MI'  
