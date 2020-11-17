import sys
from os.path import expanduser

home = expanduser("~")
try:
    if 'blinker' in sys.argv[1]:
        _id = sys.argv[1].split(':blinker')[0]
        with open(home + '/.timer-workflow', 'w') as config_file:
            if 'group' in _id and 'groups' not in _id:
                _id = _id.replace('group', 'groups')
            config_file.write(_id)
except Exception as e:
    with open(home + '.timer-workflow-errors', 'a') as config_file:
        config_file.write(e)
