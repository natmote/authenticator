Authenticator
=============

Forked off 'authenticator' by IEF, which was forked off 'twostep' by pokey9000, this is Authenticator for Pebble,
generating multiple Time-based One-Time Passwords, much like Google Authenticator.

My changes include:
* A runtime modifiable time zone, so you don't have to recompile the app on vacation.  I wish there was a way to make this change persist.
* Making the screen immediatly change which account is displayed on the button press, rather than waiting until the next second tick.

You can change the time zone with the select button.  Then hitting the back button, will resume the app.

The same restrictions apply, you will have to recompile the application to include your
TOTP secrets, name them, and include your timezone offset from GMT.

To configure the application:
This is easily done using oathtool on linux. For example:

1. Let's say you have secret key AXIMZYJXITSIOIJVNXOE76PEJQ 
On most sites, when setting up choose 'show key' when presented with the QR code.

2. Run: ./generate.sh AXIMZYJXITSIOIJVNXOE76PEJQ

3. Enter the new expanded string into configuration.h under the otpkeys variable.

4. Label the secret under otplabels.

5. Enter the size of the secret (usually 10 for Google, 16 for others) under otpsizes.

6. Build and install the application.

7. Done, you can find 'Authenticator' in your app menu for your Pebble.

8. Don't forget to set your time zone.

8. Build and install the application.

9. Done, you can find 'Authenticator' in your app menu for your Pebble.

The above is assuming you have the Pebble SDK installed and configured to compile watch apps.
If not, review: http://developer.getpebble.com/1/01_GetStarted/01_Step_2
