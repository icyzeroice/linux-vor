# https://jiayaoo3o.github.io/2020/06/23/记录一次WSL2的网络代理配置/

# NOTE: socks   -> 10808
#       http(s) -> 10809
export windows_host=`cat /etc/resolv.conf | grep nameserver | awk '{print $2}'`
# export ALL_PROXY=socks5://$windows_host:10808
export ALL_PROXY=http://$windows_host:10809
export HTTP_PROXY=$ALL_PROXY
export http_proxy=$ALL_PROXY
export HTTPS_PROXY=$ALL_PROXY
export https_proxy=$ALL_PROXY


# WSL Open Windows Executors
export EDITOR=vim
export BROWSER=wslview


# if [ "`git config --global --get proxy.https`" != "socks5://$windows_host:10808" ]
# then
#   git config --global proxy.https socks5://$windows_host:10808
# fi

git config --global proxy.https socks5://$windows_host:10808

