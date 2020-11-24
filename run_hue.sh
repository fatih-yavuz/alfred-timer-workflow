get_blinker() {
  if [ ! -f "${HOME}/.timer-workflow" ]; then
    echo "groups:0"
  else
    cat "${HOME}/.timer-workflow"
  fi
}

query=$@
processed_query=$(php process.php ${query})
TARGET=$(get_blinker)
command="${TARGET}:reminder:${processed_query}"
cd hue-alfred-workflow
/usr/bin/python -m logic.action "${command}"
