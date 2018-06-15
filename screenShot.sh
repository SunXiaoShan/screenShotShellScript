FOLDER_NAME=ScreenShot

# URL list
URLS="https://www.google.com/ \
https://tw.yahoo.com/ \
"

# remove all of screen shots
rm -rf $FOLDER_NAME

# create folder
mkdir $FOLDER_NAME

if test "x$(which npm)" = "x"; then
  # install foobar here
  sudo npm install -g npm
fi

if test "x$(which pageres)" = "x"; then
  # install foobar here
  sudo npm install -g pageres-cli
fi

pageres $URLS 800x600 --format=jpg --filename="$FOLDER_NAME/<%= date %>_<%= url %>"


