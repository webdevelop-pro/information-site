if [ ! -f hugo_darwin ];
then
  mkdir tmp;
  cd tmp;
  wget -O hugo_darwin.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.129.0/hugo_extended_0.129.0_darwin-universal.tar.gz
  tar pxzf hugo_darwin.tar.gz
  mv hugo ../hugo_darwin
  cd ..
  rm -rf tmp
fi
if [ ! -f hugo_linux ];
then
  mkdir tmp;
  cd tmp;
  wget -O hugo_linux.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.129.0/hugo_extended_0.129.0_Linux-64bit.tar.gz
  tar pxzf hugo_linux.tar.gz
  mv hugo ../hugo_linux
  cd ..
  rm -rf tmp
fi

./hugo_darwin server --bind="0.0.0.0" --minify
