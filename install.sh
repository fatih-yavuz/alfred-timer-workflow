#!/bin/bash

is_brew_installed() {
  which brew >/dev/null
}

install_brew() {
  echo 'installing brew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

is_bitbar_installed() {
  ls /Applications/BitBar.app >/dev/null
}

is_bitbar_running() {
  pgrep BitBar >/dev/null
}

is_bitbar_plugin_folder_defined() {
  defaults read com.matryer.BitBar pluginsDirectory >/dev/null
}

kill_bitbar() {
  ps -ef | grep 'BitBar' | grep -v grep | awk '{print $2}' | xargs kill -9
}

define_bitbar_plugins_folder() {
  echo "Plugins dir is being set automatically to ~/Documents/Bitbar-Plugins"
  PLUGINS_DIR=${HOME}/Documents/Bitbar-Plugins
  mkdir ${PLUGINS_DIR}
  defaults write com.matryer.BitBar pluginsDirectory -string ${PLUGINS_DIR}
}

get_bitbar_plugins_folder() {
  defaults read com.matryer.BitBar pluginsDirectory
}

install_bitbar() {
  echo 'installing bitbar'
  brew cask install bitbar
}

launch_bitbar() {
  echo 'opening bitbar'
  open /Applications/BitBar.app
}

download_countdown_timer() {
  echo 'downloading countdown timer'
  curl https://raw.githubusercontent.com/kizzx2/bitbar-countdown-timer/a27f8b42e7d89c00bc0d04b4f8d2eca906e549c4/countdown_timer.1s.rb -o ${PLUGINS_DIR}/countdown_timer.1s.rb
  chmod +x ${PLUGINS_DIR}/countdown_timer.1s.rb
}

if ! is_brew_installed; then
  install_brew
fi

if ! is_bitbar_installed; then
  install_bitbar
fi

if ! is_bitbar_plugin_folder_defined; then
  define_bitbar_plugins_folder
fi

PLUGINS_DIR=$(get_bitbar_plugins_folder)

download_countdown_timer
kill_bitbar
launch_bitbar

exit
