#!/bin/bash


## 20200420 - Don't know why they don't have a schell script to so this.
## https://discourse.pi-hole.net/t/commonly-whitelisted-domains/212

## Google (Maps, Youtube, etc)
## Google Maps and other Google services
pihole -w clients4.google.com 
pihole -w clients2.google.com
## YouTube history
pihole -w s.youtube.com 
pihole -w video-stats.l.google.com


## Google (Maps, Youtube, etc)
## Google Maps and other Google services
pihole -w clients4.google.com 
pihole -w clients2.google.com
## YouTube history
pihole -w s.youtube.com 
pihole -w video-stats.l.google.com
## Google Play


pihole -w android.clients.google.com
## Google Keep
## The Google Keep Chrome App requires these domains to be whitelisted in order to sync.
pihole -w reminders-pa.googleapis.com firestore.googleapis.com
## Gmail (Google Mail)
## iOS app requires this to be whitelisted for the app to connect.
pihole -w googleapis.l.google.com
## Microsoft (Windows, Office, Skype, etc)
## Windows uses this to verify connectivity to Internet
pihole -w www.msftncsi.com
## Microsoft Web Pages (Outlook, Office365, Live, Microsoft.com 453…)
pihole -w outlook.office365.com products.office.com c.s-microsoft.com i.s-microsoft.com login.live.com login.microsoftonline.com 
## Backup bitlocker recovery key to Microsoft account
pihole -w g.live.com
## Microsoft Store (Windows Store)
pihole -w dl.delivery.mp.microsoft.com geo-prod.do.dsp.mp.microsoft.com displaycatalog.mp.microsoft.com
## Xbox Live
## This domain is used for sign-ins, creating new accounts, and recovering existing Microsoft accounts on your (confirmed by Microsoft)

pihole -w clientconfig.passport.net 
## These domains are used for Xbox Live Achievements (confirmed by Microsoft)

pihole -w v10.events.data.microsoft.com
pihole -w v20.events.data.microsoft.com
## Used for Xbox Live Messaging (post)

pihole -w client-s.gateway.messenger.live.com
## There are several domains discovered initially on Reddit 349 and /r/xboxone 278, which were also confirmed by Microsoft as being required by Xbox Live for full functionality.

pihole -w xbox.ipv6.microsoft.com device.auth.xboxlive.com www.msftncsi.com title.mgt.xboxlive.com xsts.auth.xboxlive.com title.auth.xboxlive.com ctldl.windowsupdate.com attestation.xboxlive.com xboxexperiencesprod.experimentation.xboxlive.com xflight.xboxlive.com cert.mgt.xboxlive.com xkms.xboxlive.com def-vef.xboxlive.com notify.xboxlive.com help.ui.xboxlive.com licensing.xboxlive.com eds.xboxlive.com www.xboxlive.com v10.vortex-win.data.microsoft.com settings-win.data.microsoft.com
## Skype
## See the GitHub Topic 491 on these domains.

pihole -w s.gateway.messenger.live.com client-s.gateway.messenger.live.com ui.skype.com pricelist.skype.com apps.skype.com m.hotmail.com sa.symcb.com s{1..5}.symcb.com 
## Microsoft Office
## Reddit link - r/pihole - MS Office issues 363

pihole -w officeclient.microsoft.com
## Jackbox.tv
## Jackbox.tv 961 will not load unless you whitelist google-analytics

pihole -w www.google-analytics.com
pihole -w ssl.google-analytics.com
## Spotify
## The Spotify app for iOS will stop functioning unless it’s web service counterpart is whitelisted.

pihole -w spclient.wg.spotify.com apresolve.spotify.com
## Target's Weekly Ads
pihole -w weeklyad.target.com m.weeklyad.target.com weeklyad.target.com.edgesuite.net
## Facebook, Facebook Messenger
pihole -w upload.facebook.com creative.ak.fbcdn.net external-lhr0-1.xx.fbcdn.net external-lhr1-1.xx.fbcdn.net external-lhr10-1.xx.fbcdn.net external-lhr2-1.xx.fbcdn.net external-lhr3-1.xx.fbcdn.net external-lhr4-1.xx.fbcdn.net external-lhr5-1.xx.fbcdn.net external-lhr6-1.xx.fbcdn.net external-lhr7-1.xx.fbcdn.net external-lhr8-1.xx.fbcdn.net external-lhr9-1.xx.fbcdn.net fbcdn-creative-a.akamaihd.net scontent-lhr3-1.xx.fbcdn.net scontent.xx.fbcdn.net scontent.fgdl5-1.fna.fbcdn.net graph.facebook.com b-graph.facebook.com connect.facebook.com cdn.fbsbx.com api.facebook.com edge-mqtt.facebook.com mqtt.c10r.facebook.com portal.fb.com star.c10r.facebook.com star-mini.c10r.facebook.com b-api.facebook.com fb.me bigzipfiles.facebook.com
## DirectTV
## Sourced from here 241.

pihole -w directvnow.com directvapplications.hb.omtrdc.net s.zkcdn.net js.maxmind.com
## Bild DE
pihole -w ec-ns.sascdn.com
## Plex Domains
pihole -w plex.tv tvdb2.plex.tv pubsub.plex.bz proxy.plex.bz proxy02.pop.ord.plex.bz cpms.spop10.ams.plex.bz meta-db-worker02.pop.ric.plex.bz meta.plex.bz tvthemes.plexapp.com.cdn.cloudflare.net tvthemes.plexapp.com 106c06cd218b007d-b1e8a1331f68446599e96a4b46a050f5.ams.plex.services meta.plex.tv cpms35.spop10.ams.plex.bz proxy.plex.tv metrics.plex.tv pubsub.plex.tv status.plex.tv www.plex.tv node.plexapp.com nine.plugins.plexapp.com staging.plex.tv app.plex.tv o1.email.plex.tv  o2.sg0.plex.tv dashboard.plex.tv
## Domains used by Plex
pihole -w gravatar.com - custom login pictures
pihole -w thetvdb.com - metadata for tv series
pihole -w themoviedb.com - metadata for movies
## Sonarr
pihole -w services.sonarr.tv skyhook.sonarr.tv download.sonarr.tv apt.sonarr.tv forums.sonarr.tv
Placehold.it (Image placeholders often used during web design. Not sure why this is even blocked in the first place.)
pihole -w placehold.it placeholdit.imgix.net
## Dropbox
## As described here 846:

pihole -w dl.dropboxusercontent.com ns1.dropbox.com ns2.dropbox.com
## Fox News
## as described here 439.

pihole -w widget-cdn.rpxnow.com
## Images on Marketwatch.com 211
pihole -w s.marketwatch.com
## Apple Music
pihole -w itunes.apple.com
pihole -w s.mzstatic.com
## GoDaddy webmail buttons
pihole -w imagesak.secureserver.net
## Google Chrome (to update on ubuntu)
pihole -w dl.google.com
## Apple ID
pihole -w appleid.apple.com
## WatchESPN
## as described here 144.

pihole -w fpdownload.adobe.com entitlement.auth.adobe.com livepassdl.conviva.com
## NVIDIA GeForce Experience
## GFE requires this 166 to download driver updates (or events.gfe.nvidia.com 72, but that is also used for telemetry).

pihole -w gfwsl.geforce.com
## Videos not playing in times.com 52 and nydailynews.com 20

pihole -w delivery.vidible.tv img.vidible.tv videos.vidible.tv edge.api.brightcove.com cdn.vidible.tv
## Bing Maps Platform
## as described here 51.

pihole -w dev.virtualearth.net ecn.dev.virtualearth.net t0.ssl.ak.dynamic.tiles.virtualearth.net t0.ssl.ak.tiles.virtualearth.net
## Google Play Android updates
pihole -w android.clients.google.com
## Moto phones OS updates
pihole -w appspot-preview.l.google.com
## Captive-portal tests
## These domains are checked by the operating systems when connecting via wifi, and if they don’t get the response they expect, they may try to open a wifi login page or similar as they believe they are located behind a captive portal.

## Android/Chrome

pihole -w connectivitycheck.android.com android.clients.google.com clients3.google.com connectivitycheck.gstatic.com 
## Windows/Microsoft

pihole -w msftncsi.com www.msftncsi.com ipv6.msftncsi.com
## iOS/Apple
## (note that this does not cover all domains used older iOS versions)

pihole -w captive.apple.com gsp1.apple.com www.apple.com www.appleiphonecell.com
## Grand Theft Auto V Online PC
## Since March blocking Rockstar telemetry seems to crash GTAOnline.
## Unblocking the domain fixed crashing for people at GTA Forums 69.

pihole -w prod.telemetry.ros.rockstargames.com
## Chevrolet
## Couldn’t browse inventory w/o whitelisting

pihole -w chevrolet.com
## Epic Games Store
## The tracking domain is required to make a purchase on the website, otherwise the order modal will appear to be loading forever.
## It is also required when logging into the Epic Launcher when using two-factor authentication.

pihole -w tracking.epicgames.com
## Red Hat Online Learning (subscription required)
## embedded video player
## When blocked, video would play; however, not show progress (continually showing it was loading) and thus not record your progression through the video in the course progress tracker.

pihole -w 79423.analytics.edgekey.net


