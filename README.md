# Arcade scripts

## LEDBlinkyAHK
This is an AHK script to set the LEDBlinky profile by window focus rather than relying on LaunchBox to send the appropriate event on start/end. Works around issues where games open multiple executables, see https://forums.launchbox-app.com/topic/33689-ledblinky-launchbox-not-keeping-controls-lighted.

### Instructions
1. Open LEDBlinkyAHK.ini
2. Edit `LEDBlinkyExe` to set the appropriate location of your LEDBlinky.exe file
3. Add games under the `[Games]` section for applications you wish to monitor. The format is `{game}={emulator}`, where `{game}` is the name of a configured game in LEDBlinky and `{emulator}` is the name of a configured emulator.
`{game}` **MUST** by the title of the window that your application is running in with non-word characters replaced with underscores, for example the window "Sonic Mania" should be entered as `Sonic_Mania` and "Marvel Vs. Capcom: Infinite" as `Marvel_Vs__Capcom__Infinite`.
4. Run LEDBlinkyAHK.exe
