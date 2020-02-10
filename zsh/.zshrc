# zsh
function loadlib(){
    lib=${1:?"You have to specify a library file"}          
    if [ -f "$lib" ];then #ファイルの存在を確認        
      . "$lib"
    fi       
}

loadlib ~/.zsh/zsh_alias
loadlib ~/.zsh/load_prezto