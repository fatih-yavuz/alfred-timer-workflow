# Information
An Alfred workflow letting you set a timer on your MAC's menubar. When the time is up, your Hue lights blink.

## Preview
![N|Demo](https://raw.githubusercontent.com/siyahmadde/timer-workflow/master/demo.gif)

# Thanks
This workflow is built on top of 2 other repositories.

  - [hue-alfred-workflow] by Benjamin Knight
  - [bitbar-countdown-timer] by Chris Yuen
  - inspired by [Yiğit Konur]
 
Thanks all!

# Requirements
  - Make sure that you have a [BitBar] extension.
  - BitBar plugin folder must be installed ~/Documents/Bitbar-Plugins/
  - You need [Alfred] to run the workflow

# Usage
First run the install command
```sh
-timer install
```
Click the button on your Hue Bridge then run the command
```sh
-timer connect
```
Enjoy the workflow
```sh
timer 10s do stuff
```
```sh
timer 1m 1 do stuff
```
```sh
timer 1h do stuff
```


   [hue-alfred-workflow]: https://github.com/benknight/hue-alfred-workflow
   [bitbar-countdown-timer]: https://github.com/kizzx2/bitbar-countdown-timer
   [Yiğit Konur]: https://github.com/yigitkonur
   [BitBar]: https://getbitbar.com/
   [Alfred]: https://www.alfredapp.com/
