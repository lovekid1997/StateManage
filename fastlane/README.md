fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew install fastlane`

# Available Actions
### setup_build
```
fastlane setup_build
```


----

## Android
### android build_release_no_shrink
```
fastlane android build_release_no_shrink
```
Build Android apk --no-shrink
### android build_profilee
```
fastlane android build_profilee
```
Build Android apk --profile
### android upload_firebase
```
fastlane android upload_firebase
```
Upload apk available to Firebase App Distribution
### android deploy_firebase
```
fastlane android deploy_firebase
```
Deploy apk to Firebase App Distribution

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
