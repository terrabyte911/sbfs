# Start a simple file server
#
# By Terrabyte911 18/2/2018
#


FileServer() {
 if [ -z "$1" ]; then
    PORT=8000
 else
    PORT="$1"
 fi
    IP=$(wget -qO- ipv4.icanhazip.com)
    echo ""
    echo ""
    echo "Server started - http://$IP:$PORT"
    echo ""
    echo "Ctrl-C to stop"
    echo ""
    echo ""
    echo ""
    python -m SimpleHTTPServer $PORT > /dev/null
}

