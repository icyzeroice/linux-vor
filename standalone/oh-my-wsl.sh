# https://jiayaoo3o.github.io/2020/06/23/记录一次WSL2的网络代理配置/

# NOTE: socks   -> 10808
#       http(s) -> 10809
#       clash for windows -> 7890
#
export GREAT_PROXY_PROTOCOL=socks
export GREAT_PROXY_PORT=10808

# export GREAT_PROXY_PROTOCOL=http
# export GREAT_PROXY_PORT=7890

export windows_host=`cat /etc/resolv.conf | grep nameserver | awk '{print $2}'`
export ALL_PROXY=$GREAT_PROXY_PROTOCOL://$windows_host:$GREAT_PROXY_PORT
export HTTP_PROXY=$ALL_PROXY
export http_proxy=$ALL_PROXY
export HTTPS_PROXY=$ALL_PROXY
export https_proxy=$ALL_PROXY


# WSL Open Windows Executors
export EDITOR=vim
export BROWSER=wslview


if [ "`git config --global --get proxy.https`" != $ALL_PROXY ]
then
  git config --global proxy.https $ALL_PROXY
fi

# ubuntu snap
# https://www.v2ex.com/t/646650
# snap set system http.proxy=socks5://$windows_host:10808
# end file

