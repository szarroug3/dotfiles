URL='https://www.google.com/search?q='
QUERY=$(echo '' | rofi -dmenu -p "Search:")
if [ -n "$QUERY" ]; then
    xdg-open "${URL}${QUERY}" 2> /dev/null
    exec i3-msg '[class="^vivaldi-stable"] focus'
fi
