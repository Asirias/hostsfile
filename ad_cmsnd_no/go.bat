cd /d %~dp0
cd ..
adb disable-verity
echo �ċN�����܂�
pause
adb reboot
echo �ċN����҂�
pause
adb root
adb remount
echo �܂��J�����̉��������܂�
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
echo hosts�����������܂�
adb shell cp /sdcard/hosts /system/etc/hosts
echo �s�v�ȃt�@�C�����폜���܂�
adb shell rm -f /sdcard/hosts
adb shell rm -f /sdcard/camera_sirent.ogg
echo �ċN�����܂�
adb reboot
adb kill-server
pause
exit