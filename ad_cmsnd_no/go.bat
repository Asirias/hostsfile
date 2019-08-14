cd /d %~dp0
cd ..
adb disable-verity
echo 再起動します
pause
adb reboot
echo 再起動を待つ
pause
adb root
adb remount
echo まずカメラの音を消します
pause
adb shell cp /sdcard/camera_sirent.ogg /system/media/audio/ui_jp/camera_click.ogg
adb shell cp /sdcard/camera_sirent.ogg /system/media/audio/ui_jp/camera_focus.ogg
adb shell cp /sdcard/camera_sirent.ogg /system/media/audio/ui_jp/VideoRecord.ogg
adb shell cp /sdcard/camera_sirent.ogg /system/media/audio/ui_jp/VideoStop.ogg
adb shell cp /sdcard/camera_sirent.ogg /system/media/audio/ui/BurstFast.ogg
adb shell cp /sdcard/camera_sirent.ogg /system/media/audio/ui/BurstSlow.ogg
adb shell cp /sdcard/camera_sirent.ogg /system/media/audio/ui/BurstSlow_OneSec.ogg
adb shell cp /sdcard/camera_sirent.ogg /system/media/audio/ui/camera_click.ogg
adb shell cp /sdcard/camera_sirent.ogg /system/media/audio/ui/camera_focus.ogg
adb shell cp /sdcard/camera_sirent.ogg /system/media/audio/ui/camerafocusfail.ogg
adb shell cp /sdcard/camera_sirent.ogg /system/media/audio/ui/cameraclickslow.ogg
echo hostsを書き換えます
adb shell cp /sdcard/hosts /system/etc/hosts
echo 不要なファイルを削除します
adb shell rm -f /sdcard/hosts
adb shell rm -f /sdcard/camera_sirent.ogg
echo 再起動します
adb reboot
adb kill-server
pause
exit