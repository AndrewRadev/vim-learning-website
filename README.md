This is a simple website that aims to be a web interface for a vim learning process. The goal is to use the [vimgolf](https://github.com/igrigorik/vimgolf) gem to perform the exercises and use this webapp to organize them

Setting up:

    $ gem install vimgolf
    $ bundle install

The way the app and tool can be connected right now:

    $ ruby app.rb
    $ GOLFHOST=http://localhost:4567 vimgolf put 55b18bbea9c2c30d04000001
