# Information
An Alfred workflow letting you set a timer on your MAC's menubar. When the time is up, your Hue lights blink. You can download it from [packal]

## Preview
![N|Demo](https://raw.githubusercontent.com/siyahmadde/timer-workflow/master/demo.gif)
![N|Demo1](https://raw.githubusercontent.com/siyahmadde/timer-workflow/master/preview.png)
![N|Demo2](https://raw.githubusercontent.com/siyahmadde/timer-workflow/master/preview2.png)

# Thanks
This workflow is built on top of 2 other repositories.

  - [hue-alfred-workflow] by Benjamin Knight
  - [bitbar-countdown-timer] by Chris Yuen
  - inspired by [Yiğit Konur]
 
Thanks all!

# Installation
  - Import the workflow
  - run `-timer setup` on Alfred
  - run `-timer` then select `Link with Hue Bridge`

# Usage
## Select which lights/groups to blink
- run `-timer` on Alfred
- Select the light or group to set as blinker
## Set up timer
```sh
timer 10s do stuff #Sets up for 10 seconds
timer 1m 1 doing stuff #Sets up for 1 minute
timer 1h something #Sets up for 1 hour
```

# Support
If you need any support or have any question, please feel free to open an issue or contact me.
- fatihjy@gmail.com
- https://twitter.com/fatih24yavuz

# Contribution
Any contribution is welcomed and will be credited. You can contact me if you would like to contribute 

   [hue-alfred-workflow]: https://github.com/benknight/hue-alfred-workflow
   [bitbar-countdown-timer]: https://github.com/kizzx2/bitbar-countdown-timer
   [Yiğit Konur]: https://github.com/yigitkonur
   [BitBar]: https://getbitbar.com/
   [Alfred]: https://www.alfredapp.com/
   [packal]: http://www.packal.org/workflow/alfred-timer-workflow
