#!/bin/bash


#intro
#
cat << "EOF"
 .--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--.
/ .. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \
\ \/\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ \/ /
 \/ /`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'\/ / 
 / /\                                                                                                                / /\ 
/ /\ \ ██████╗ ██╗      ██████╗  █████╗ ████████╗    ██████╗  █████╗ ███╗   ██╗██╗███████╗██╗  ██╗███████╗██████╗   / /\ \
\ \/ / ██╔══██╗██║     ██╔═══██╗██╔══██╗╚══██╔══╝    ██╔══██╗██╔══██╗████╗  ██║██║██╔════╝██║  ██║██╔════╝██╔══██╗  \ \/ /
 \/ /  ██████╔╝██║     ██║   ██║███████║   ██║       ██████╔╝███████║██╔██╗ ██║██║███████╗███████║█████╗  ██████╔╝   \/ / 
 / /\  ██╔══██╗██║     ██║   ██║██╔══██║   ██║       ██╔══██╗██╔══██║██║╚██╗██║██║╚════██║██╔══██║██╔══╝  ██╔══██╗   / /\ 
/ /\ \ ██████╔╝███████╗╚██████╔╝██║  ██║   ██║       ██████╔╝██║  ██║██║ ╚████║██║███████║██║  ██║███████╗██║  ██║  / /\ \
\ \/ / ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝       ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝  \ \/ /
 \/ /                                                                                                                \/ / 
 / /\.--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--./ /\ 
/ /\ \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \/\ \
\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `' /
 `--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`

EOF



#Menu
#
while [[ "$OPTION" != 10 ]]; do



#menu
#
 echo
 echo
 echo "=========================================="
 echo "    > > > > >SELECT AN OPTION < < < < <"
 echo "=========================================="
 echo "1 - LIST DEVICE CONNECTED "
 echo "2 - LIST ALL THE APPS INSTALLES"
 echo "3 - UNINSTALL FACEBOOK BLOAT"
 echo "4 - UNINSTALL GOOGLE BLOAT"
 echo "5 - UNINSTALL MICROSOFT BLOAT"
 echo "6 - UNINSTALL MOTOROLA BLOAT"
 echo "7 - UNINSTALL SAMSUNG BLOAT"
 echo "==========================================="
 read -p "CHOOSE AN OPTION : " OPTION
 echo 
 echo "==========================================="

 case $OPTION in
    1)
     adb devices
     ;;

    2)
     echo "All apps installed : "
     adb shell cmd package list packages
     ;;

    3)
     echo "Uninstalling FACEBOOK Bloat"
     adb uninstall --user 0 com.facebook.katana #facebook app
     adb uninstall --user 0 com.facebook.appmanager #facebook related services
     adb uninstall --user 0 com.facebook.services #facebook related services
     adb uninstall --user 0 com.facebook.system  #facebook related services
     ;;

    4)
     echo "Uninstalling GOOGLE Bloat"
     adb uninstall --user 0 com.google.android.music  #google music
     adb uninstall --user 0 com.google.android.apps.youtube.music.setupwizard  #google youtube system music
     adb uninstall --user 0 com.google.android.apps.subscriptions.red    #google red AD
     adb uninstall --user 0 com.google.android.videos   #google play videos
     adb uninstall --user 0 com.google.android.apps.photos     #google photos
     adb uninstall --user 0 com.android.android.apps.maps   # google maps
     adb uninstall --user 0 com.google.android.apps.tachyon   #google duo / meets
     adb uninstall --user 0 com.google.android.apps.nbu.files  #google files
     adb uninstall --user 0 com.google.android.apps.docs    #google drive
     adb uninstall --user 0 com.google.android.apps.docs.editors.sheets #google sheets
     adb uninstall --user 0 com.google.android.apps.docs.editors.sheets  #google slides
     adb uninstall --user 0 com.google.chrome   #google chrome
     adb uninstall --user 0 com.google.android.gm    #google gmail
     adb uninstall --user 0 com.google.android.googlequicksearchbox   #google app
     adb uninstall --user 0 com.google.android.calendar    # google calendar
     #adb uninstall --user 0 com.google.android.apps.messaging   #google message
     adb uninstall --user 0 com.google.android.apps.wellbeing   # digital wellbeing
     adb uninstall --user 0 com.google.android.apps.podcasts    # google podcasts
     adb uninstall --user 0 com.google.android.apps.magazines    # google news
     adb uninstall --user 0 com.google.android.apps.walletnfcrel   #google wallet
     adb uninstall --user 0 com.google.ar.core   #play service for AR
     adb uninstall --user 0 com.google.android.projection.gearhead   # andoid auto
     adb uninstall --user 0 com.google.android.calculator  # google calculator
     adb uninstall --user 0 com.google.android.apps.photosgo  # google gallery
     adb uninstall --user 0 com.google.android.apps.chromecast.app  # google home
     adb uninstall --user 0 com.google.android.apps.fitness   # google fit
     adb uninstall --user 0 com.google.ar.lens  # google lens
     adb uninstall --user 0 com.google.android.keep  # google keeps
     adb uninstall --user 0 com.google.android.apps.nbu.paisa.user   # google pay
     adb uninstall --user 0 com.google.android.videos    # google TV
     adb uninstall --user 0 com.google.android.apps.safetyhub   # google safety
     adb uninstall --user 0 com.google.android.apps.recorder   # google recorder
     adb uninstall --user 0 com.google.android.youtube   # google youtube
     adb uninstall --user 0 com.google.android.wearable.weather # google weather
     adb uninstall --user 0 com.google.android.apps.youtube.kids  # youtube kids

     echo "IF YOU WANT ANY APPS THAT ARE DELETED YOU CAN FURTHER INSTALL IT FROM PLAYSTORE "
     echo "HERE IS THE LINK OF THE APPS >> https://play.google.com/store/apps/dev?id=5700313618786177705&hl=en_IN&gl=US&pli=1"
     echo "YOU CAN FURTHER DOWNLOAD ADVANCE YOUTUBE ALTERNATIVE LIKE YOUTUBE VANCED , RVX "
     echo "HERE IS THE LINK OF THE REPO OF THE APPS "
     echo "RVX : https://github.com/NoName-exe/revanced-extended"
     echo "MICROG : https://github.com/inotia00/VancedMicroG/releases"
     echo "if you are root user download zip file and flash in magisk"
     echo "if not install microg first then run youtube revanced extended"
     #rvx is the project of >>> https://github.com/NoName-exe
     #microg is the project of >>> https://github.com/inotia00
    ;;
    #MICROSOFT BLOAT
    5)
     echo "uninstalling MICROSOFT bloat"
     adb uninstall --user 0 com.microsoft.office.outlook   # microsoft outlook
     adb uninstall --user 0 com.microsoft.office.word   # microsoft word
     adb uninstall --user 0 com.microsoft.office.eccel   # microsoft excel
     adb uninstall --user 0 com.microsoft.office.powerpoint   #microsoft powerpoint
     adb uninstall --user 0 com.microsoft.skydrive    # microsoft onedrive
     adb uninstall --user 0 com.skype.raider  # microsoft onedrive
     adb uninstall --user 0 com.linkedin.android   #linkedin
     echo
     echo "IF YOU WANT ANY OF THE MICROSOFT APPS YOU CAN INSTALL IT FROM PLAYSTORE"
     ;;

    6)
     adb unintsall --user 0 com.motorola.brapps
     adb uninstall --user 0 com.motorola.ccc.notification    #hello apps
     adb uninstall --user 0 com.motorola.android.fmradio     #fm radio
     adb uninstall --user 0 com.motorola.fmplayer     #fm radio
     adb uninstall --user 0 com.motorola.genie  #moto help
     adb uninstall --user 0 com.motorola.moto   #moto
     adb uninstall --user 0 com.motorola.gamemode
     adb uninstall --user 0 com.motorola.help 
     ;;


    7)
     adb uninstall --user 0 com.osp.app.signin   #samsung accont
     adb uninstall --user 0 com.samsung.android.oneconnect   #smart things
     adb uninstall --user 0 com.samsung.android.ststub   #smart things
     adb uninstall --user 0 com.samsung.android.easysetup   #smart things
     adb uninstall --user 0 com.samsung.android.beaconmanager #smarthings
     adb uninstall --user 0 com.samsung.android.samsungpassautofill   #samsung pay auto fill
     adb uninstall --user 0 com.samsung.android.samsungpass  # samsung pass
     adb uninstall --user 0 com.samsung.android.scloud  # samsung cloud
     adb uninstall --user 0 com.samsung.android.kidsinstaller
     adb uninstall --user 0 com.samsung.android.spay    #samsung pay
     adb uninstall --user 0 com.samsung.android.authfw  # samsung linkedin
     adb uninstall --user 0 com.samsung.android.email.provider #samsung email
     adb uninstall --user 0 com.samsung.android.mobileservice
     adb uninstall --user 0 com.samsung.android.voc   #samsung member
     adb uninstall --user 0 com.samsung.android.smartmirroring #smart view
     #adb uninstall --user 0 com.samsung.android.rubin.app
     #adb uninstall --user 0 com.samsung.android.messaging
     adb uninstall --user 0 com.samsung.android.wellbeing   #samsung wellbeing
     adb uninstall --user 0 com.samsung.android.apps.notes  #samsung notes
     adb uninstall --user 0 com.sec.spp.push  #samsung push services
     adb uninstall --user 0 com.sec.android.app.sbrowser  #samsung browser
     adb uninstall --user 0 com.sec.android.app.billing  #samsung checkout
     adb uninstall --user 0 com.sec.android.app.samsungapps # galaxy store
     adb uninstall --user 0 com.sec.app.shealth #samsung health
     adb uninstall --user 0 com.sec.android.app.voicenote # samsung voice recorder
     adb uninstall --user 0 com.sec.android.app.myfiles   #my files
     adb uninstall --user 0 com.sec.android.usermanual  # usermanual
     adb uninstall --user 0 com.sec.android.dictionary  #dictonary
     adb uninstall --user 0 com.sec.android.easyMover.Agent
     adb uninstall --user 0 com.opera.max.oem   # samsung max vpn
     adb uninstall --user 0 com.samsung.android.game.gamehome   # game launcher
     adb unintsall --user 0 com.samsung.android.game.gametool    # game tools
     adb uninstall --user 0 br.org,sidi.appbrasil
     adb uninstall --user 0 de.axelspringer.yana.zeropage
     adb uninstall --user 0 com.samsung.android.uds

     echo
     echo "you can download mostly app from apkmirror or you can enable it via adb"
     echo
     ;;



 esac
done
