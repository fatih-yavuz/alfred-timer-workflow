is_bitbar_installed() {
  ls /Applications/BitBar.app >/dev/null
}

is_bitbar_running() {
  pgrep BitBar >/dev/null
}

is_bitbar_plugin_folder_defined() {
  defaults read com.matryer.BitBar pluginsDirectory >/dev/null
}

get_bitbar_plugins_folder() {
  defaults read com.matryer.BitBar pluginsDirectory
}

launch_bitbar() {
  open /Applications/BitBar.app
}

define_bitbar_plugins_folder() {
  PLUGINS_DIR=${HOME}/Documents/Bitbar-Plugins
  mkdir ${PLUGINS_DIR}
  defaults write com.matryer.BitBar pluginsDirectory -string ${PLUGINS_DIR}
}

download_countdown_timer() {
  curl https://raw.githubusercontent.com/kizzx2/bitbar-countdown-timer/a27f8b42e7d89c00bc0d04b4f8d2eca906e549c4/countdown_timer.1s.rb -o ${PLUGINS_DIR}/countdown_timer.1s.rb
  chmod +x ${PLUGINS_DIR}/countdown_timer.1s.rb
}

is_countdown_timer_installed() {
  PLUGINS_DIR=${HOME}/Documents/Bitbar-Plugins
  ls ${PLUGINS_DIR}/countdown_timer.1s.rb >/dev/null
}

kill_bitbar() {
  ps -ef | grep 'BitBar' | grep -v grep | awk '{print $2}' | xargs kill -9
}

launch_bitbar() {
  open /Applications/BitBar.app
}

if ! is_bitbar_installed; then
  echo "Error: BitBar is not installed. You can run -timer setup"
  exit
fi

if ! is_bitbar_running; then
  launch_bitbar
fi

if ! is_bitbar_running; then
  echo "Error: BitBar cannot be launched"
  exit
fi

defaults delete com.matryer.BitBar pluginsDirectory
if ! is_bitbar_plugin_folder_defined; then
  define_bitbar_plugins_folder
fi

if ! is_countdown_timer_installed; then
  exit
  download_countdown_timer
  kill_bitbar
  launch_bitbar
fi

query=$@

$(get_bitbar_plugins_folder)/countdown_timer.1s.rb ${query}