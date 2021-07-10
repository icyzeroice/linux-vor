# https://jiayaoo3o.github.io/2020/06/23/%E8%AE%B0%E5%BD%95%E4%B8%80%E6%AC%A1WSL2%E7%9A%84%E7%BD%91%E7%BB%9C%E4%BB%A3%E7%90%86%E9%85%8D%E7%BD%AE/

export window_host=`cat /etc/resolv.conf | grep nameserver | awk '{print $2}'`
export ALL_PROXY=socks5://$window_host:10808
export HTTP_PROXY=$ALL_PROXY
export http_proxy=$ALL_PROXY
export HTTPS_PROXY=$ALL_PROXY
export https_proxy=$ALL_PROXY


# WSL Open Windows Executors
export EDITOR=vim
export BROWSER=wslview


if [ "`git config --global --get proxy.https`" != "socks5://$windows_host:10808" ]
then
  git config --global proxy.https socks5://$windows_host:10808
fi
