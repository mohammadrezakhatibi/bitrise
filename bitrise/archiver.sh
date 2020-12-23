# xcodebuild clean -project 'Top Change.xcodeproj' -scheme 'Top Change'

# xcodebuild -project 'Top Change.xcodeproj' -scheme 'Top Change' -allowProvisioningUpdates -allowProvisioningDeviceRegistration -archivePath 'Top Change.xcarchive' archive
# xcodebuild -exportArchive -archivePath 'Top Change.xcarchive' -exportPath '~/Desktop/Top Change' -exportOptionsPlist ExportOptions.plist | xcpretty 

# 1. Build project
#xcodebuild -project 'Top Change.xcodeproj' -scheme 'Top Change' -destination 'generic/platform=iOS' -allowProvisioningUpdates -configuration Automation CODE_SIGNING_ALLOWED=NO  build
# 2. Archive project
xcodebuild -project 'bitrise.xcodeproj' -scheme 'bitrise' -destination 'generic/platform=iOS' -allowProvisioningUpdates -archivePath 'bitrise.xcarchive' -configuration Release PROVISIONING_PROFILE="iOS Team Provisioning Profile: *" clean archive
# 3. Export project .ipa file
xcodebuild -exportArchive -archivePath 'bitrise.xcarchive' -exportPath Release -allowProvisioningUpdates -exportOptionsPlist 'ExportOptions.plist'


rm -rf 'bitrise.xcarchive'
