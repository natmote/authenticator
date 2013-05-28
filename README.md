Authenticator
=============

Forked off 'authenticator' by IEF, which was forked off 'twostep' by pokey9000, this is Authenticator for Pebble, with patches from rigel314 

generating multiple Time-based One-Time Passwords, much like Google Authenticator.

You can change the time zone with the select button.  Then hitting the back button, will resume the app.

To configure the application:

1. Let's say you have secret key AXIMZYJXITSIOIJVNXOE76PEJQ 
On most sites, when setting up choose 'show key' when presented with the QR code.

2. add it to the end of src/configuration.txt, in the format 
label:secret

3. Set your time zone (in src/configuration.h) - it's at the time under tz:

4. Build and install the application.

5. Done, you can find 'Authenticator' in your app menu for your Pebble.

The above is assuming you have the Pebble SDK installed and configured to compile watch apps.
If not, review: http://developer.getpebble.com/1/01_GetStarted/01_Step_2
