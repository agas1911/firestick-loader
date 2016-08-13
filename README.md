#Amazon FireTV Stick Loader

###FREE YOUR FIRESTICK!!!


####Scripting To Root, Downgrade, Load Apps and Settings Onto Amazon FireTV and FireStick
<br/><br/>

![Menu Preview 1](https://github.com/esc0rtd3w/firestick-loader/blob/master/misc/preview/options-main.png)
![Menu Preview 2](https://github.com/esc0rtd3w/firestick-loader/blob/master/misc/preview/options-tweaks.png)

***Known Issues:***

- If KingRoot is left installed, Kodi will have playback issues (Unknown Reason. Use "unroot" option to remove KingRoot after all root required actions are taken.)
<br/><br/>

	
***Current Project Testing Status:***

- 300MB+ Available Free Memory Running From HOME Screen

- Blue Stock FireTV Stick Boot Animation

- FireStopper Installed Into "/system/app/FireStopper/" (Factory Reset Leaves Launcher In Tact)

- Amazon HOME Menu Completely Stripped Functionality* (Apps, Search, and Settings Still Show Items)

    * During a Factory Reset, You Will Be Brought To The Amazon HOME Menu Briefly, Then FireStopper Will Load

    * Running The Disable Amazon Bloat Script After Factory Reset Will Also Stop Amazon HOME Menu From Loading Completely

- Amazon Settings Menu Available (Parental Controls, Help, and My Account DISABLED)

- Hold HOME Button Function To Sleep Available
<br/><br/>


***Menu Options:***

- **Automatic Mode**

    - Automatically Continues To The Next Step (some intervention required)
	- Has a Menu Option To Add Downgrade To The Task List

- **Rooting Options**

    - Install KingRoot
	- Root Device (Automatically Does All The Steps To Get Full Root)
	- Issue "su" Request To Device (Useful for triggering Deny/Allow prompt)

- **Downgrade Firmware** \****ROOT REQUIRED***\*

    - Currently 5.0.5 Is The Only Downgrade Version Available
	- Automatically Extracts, Pushes, Moves, Creates Recovery Config File and Reboots To Install

- **Install Busybox** \****ROOT REQUIRED***\*

    - GUI Install (Automatically Does All The Work To Click Everything, Install, and Remove APK After)
	- Has a Terminal Version That Uses a Shell Script

- **Disable Amazon Bloat** \****ROOT REQUIRED***\*

    - Disable Only Menu Option
    - Disable and Safe Remove Menu Option
    - Disable, Safe Remove, and Ad Block Menu Option

- **Clear All Caches** \****ROOT REQUIRED***\*

    - /cache/
    - /cache/dalvik-cache/
    - /data/dalvik-cache/

- **Factory Reset**

    - User Mode Factory Reset (Automatically Loads The Activity and Clicks OK)
    - Root Mode Factory Reset (Removes Everything In /data/ That Is Safe and Saves Configuration Files)

- **Unroot** \****ROOT REQUIRED***\*

    - Removes KingRoot (Has a Bluetooth Mouse Option and TeamViewer Option)
	- Bluetooth Mouse Option Lets You Use a Mouse To Navigate
	- TeamViewer Option Launches TeamViewer on PC and Android To Give Mouse Control

- **Fixes, Tweaks, and Misc**

    - Contains Boot Animation, Disable Ads, Launch Apps, Allow SU Requests, and Other Misc Fixes and Tweaks

- **Directly Invoke Amazon Settings Menu Items**

    - Open Common Amazon Settings Menus Directly Through ADB Shell
	
<br/><br/>
	
	
- **List of Amazon Bloat Removed (Tested Safe and With No Errors or Issues Using Scripting)**
	
    - /system/app/DeviceControlService/
    - /system/app/DocumentsUI/
    - /system/app/fdrw/
    - /system/app/PicoTts/
    - /system/app/UnifiedSettingsProvider/
    - /system/app/WebCryptoTZService/
    - /system/app/WhiteListedUrlProvider/
	
    - /system/priv-app/amazon.jackson-19/
    - /system/priv-app/AmazonKKWebViewLib/
    - /system/priv-app/AmazonNetworkMonitor/
    - /system/priv-app/BackupRestoreConfirmation/
    - /system/priv-app/com.amazon.ags.app/
    - /system/priv-app/com.amazon.avod/
    - /system/priv-app/com.amazon.bueller.music/
    - /system/priv-app/com.amazon.communication/
    - /system/priv-app/com.amazon.communication.discovery/
    - /system/priv-app/com.amazon.device.sync/
    - /system/priv-app/com.amazon.device.sync.sdk.internal/
    - /system/priv-app/com.amazon.identity.auth.device.authorization/
    - /system/priv-app/com.amazon.imp/
    - /system/priv-app/com.amazon.kindle.cms-service/
    - /system/priv-app/com.amazon.kindle.devicecontrols/
    - /system/priv-app/com.amazon.kso.blackbird/
    - /system/priv-app/com.amazon.ods.kindleconnect/
    - /system/priv-app/com.amazon.parentalcontrols/
    - /system/priv-app/com.amazon.precog/
    - /system/priv-app/com.amazon.securitysyncclient/
    - /system/priv-app/com.amazon.sharingservice.android.client.proxy.release/
    - /system/priv-app/com.amazon.shoptv.client/
    - /system/priv-app/com.amazon.tcomm/
    - /system/priv-app/com.amazon.tmm.tutorial/
    - /system/priv-app/com.amazon.tv.aiv.support/
    - /system/priv-app/com.amazon.tv.csapp/
    - /system/priv-app/com.amazon.tv.legal.notices/
    - /system/priv-app/com.amazon.tv.oobe/
    - /system/priv-app/com.amazon.tv.parentalcontrols/
    - /system/priv-app/com.amazon.venezia/
    - /system/priv-app/com.amazon.videoads.app/
    - /system/priv-app/com.amazon.visualonawv/
    - /system/priv-app/ContentSupportProvider/
    - /system/priv-app/CrashManager/
    - /system/priv-app/DeviceClientPlatformContractsFramework/
    - /system/priv-app/DeviceMessagingAndroid/
    - /system/priv-app/DeviceMessagingAndroidInternalSDK/
    - /system/priv-app/DeviceMessagingAndroidSDK/
    - /system/priv-app/DeviceSoftwareOTA/
    - /system/priv-app/DeviceSoftwareOTAIdleOverride/
    - /system/priv-app/DownloadProvider/
    - /system/priv-app/FireApplicationCompatibilityEnforcer/
    - /system/priv-app/FireApplicationCompatibilityEnforcerSDK/
    - /system/priv-app/FireOsMiddlewareDebugApp/
    - /system/priv-app/FireRecessProxy/
    - /system/priv-app/FireTVDefaultMediaReceiver/
    - /system/priv-app/FireTvNotificationService/
    - /system/priv-app/FireTVSystemUI/
    - /system/priv-app/FusedLocation/
    - /system/priv-app/LogManager/
    - /system/priv-app/ManagedProvisioning/
    - /system/priv-app/marketplace_service_receiver/
    - /system/priv-app/shipmode/
    - /system/priv-app/sync-provider_ipc-release/
    - /system/priv-app/sync-service-fireos-release/
    - /system/priv-app/SystemStatusMonitor/
    - /system/priv-app/SystemUpdatesUI/
    - /system/priv-app/UnifiedShareActivityChooser/
    - /system/priv-app/WallpaperCropper/
    - /system/priv-app/WhisperCastConnect/
    
	- /system/framework/android.amazon.perm/
	
<br/><br/>	
	
**List of Amazon Bloat Left Alone**

- Screensaver Config
    - /system/priv-app/com.amazon.bueller.photos/

- Amazon Remote Android App
    - /system/priv-app/com.amazon.storm.lightning.services/
    - /system/priv-app/com.amazon.storm.lightning.tutorial/
    - /system/priv-app/WhisperlinkSdk/
    - /system/priv-app/WhisperplayCore/
    - /system/priv-app/WhisperplayInstall/


- Captive Portal Launcher
    - /system/priv-app/CaptivePortalLauncher/
    - /system/app/CaptivePortalLogin/


- Amazon Voice Support
    - /system/priv-app/com.amazon.vizzini/


- Needed For Amazon Settings UI (Removal Will Break Stock Settings)
    - /system/priv-app/DeviceSoftwareOTAContracts/
    - /system/priv-app/RemoteSettingsAndroid/
    - /system/priv-app/RemoteSettingsInternalSDK/

<br/><br/>

**TO-DO List**

- Hook a System Shell Script To Run "pm disable" Commands On Boot or First Boot

- Get Google Play Store Working Properly

- Get SuperSU Working Properly After Reboot

- Replace Amazon Settings With Stock Lollipop 5.1 Settings APK

- Remove The Rest of Amazon Bloat (TV Launcher, Amazon Settings, etc)

    * Stock Lollipop or Equivalent Settings APK Required To Remove "com.amazon.tv.*" Packages
	
- Disable Opera Mini Update (Newer Versions Do Not Support FireStick Remote For Mouse Anymore)
