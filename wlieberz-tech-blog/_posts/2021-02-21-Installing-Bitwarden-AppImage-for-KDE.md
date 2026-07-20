---
layout: post
title:  "Installing Bitwarden AppImage (for KDE) - 2026 Update"
date:   2021-02-21
categories: bitwarden
---
## 2026 Update

When I originally wrote this post back in early 2021, I believe Bitwarden (the company) was providing generic `.deb` and `.rpm` packages for Bitwarden (the desktop application) and an AppImage pakage. If memory serves, at that time they were not publishing the app as either snap or Flatpak packages. Additionally, the AppImage package was self-updating, unlike the `.deb` / `.rpm` packages.

As of 2026, I would reccomend skipping the AppImage installation method and either installing via flatpak or snap, since both are available.

[https://flathub.org/en/apps/com.bitwarden.desktop](https://flathub.org/en/apps/com.bitwarden.desktop)

[https://snapcraft.io/bitwarden](https://snapcraft.io/bitwarden)

The original AppImage and rpm and deb packages [continue to be available](https://bitwarden.com/download/), which is nice.

If you really want to proceed with the AppImage installation method, then maybe the original 2021 post, below, could still have some helpful hints for you.

## Original 2021 Post

I've been wanting to try the password manager [Bitwarden](https://bitwarden.com/) for some time now. The recently announced [changes](http://blog.lastpass.com/2021/02/changes-to-lastpass-free/) to the free edition of LastPass was just the push I needed to give Bitwarden an [earnest](https://upload.wikimedia.org/wikipedia/en/0/08/Ernest_P._Worrell.jpg) try.

I can report that the process of exporting my data from the LastPass browser extension to csv, then importing it into Bitwarden was easy and painless. While the steps were self-explanatory, I do appreciate that Bitwarden has a [reference document](https://bitwarden.com/help/article/import-from-lastpass/) available. To be clear, I exported from the LastPass browser extension and then imported into the Bitwarden web interface.

I really appreciate that while Bitwarden provides the usual iOS, Android, Windows, and macOS binaries, they also provide a cross-distro compatible Linux package in the form of an [AppImage](https://appimage.org/). While the [Snap](https://snapcraft.io/) vs [Flatpak](https://flatpak.org/) debate seems to get the most attention, it is nice to see AppImage getting some love.

### Installation

Disclaimer: this is not the only way to handle installation, and may not be the best method, depending on your needs, but this is how I like to do it.

This method installs the AppImage binary into your home directory, so we assume that no other users on your system will need access to Bitwarden.

{% highlight shell %}
# Create a bin directory in your home:
mkdir ~/bin
cd ~/bin

# Get the latest available AppImage Bitwarden package: 
wget "https://vault.bitwarden.com/download/?app=desktop&platform=linux" -O Bitwarden.AppImage

# Make the AppImage executable:
chmod 775 Bitwarden*.AppImage

# Since the Bitwarden AppImage binary will change its name whenever it
# it auto-updates, I like to create a wrapper-script to call it:
cat << EOF > ./bitwarden.sh
#!/bin/bash

$HOME/bin/Bitwarden*.AppImage &> $HOME/bin/bitwarden.log &

EOF

# Don't forget to make the wrapper script executable:
chmod 770 bitwarden.sh
{% endhighlight %}

### Integrating with KDE menu

Next, I like to integrate the application into my KDE menu. This should work regardless of the underlying distro, as long as your desktop environment is KDE (and why wouldn't it be?). 

Right-click on the KDE menu, click "New Item", type the name "Bitwarden", and click "ok". On the left hand side, drag the Bitwarden menu item into the category that makes the most sense to you - I usually put it in the "Office" category. On the right-hand side: Optionally add a description and comment, but definitely modify the "Command" field to: `/bin/bash -c "/home/<YOUR USER NAME>/bin/bitwarden.sh"`. You can also add an icon by clicking the empty square in the KDE Menu Editor (right-hand side). Usually I search within system icons for "lock" and just use a generic padlock icon. When done, click "save" to close out of the Menu Editor. Note: if you do not set a custom icon, the menu entry will just use a default "empty page" icon - but when it is running in the task manager you will actually see the correct Bitwarden logo.

I have heard there is an AppImage daemon [appimaged](https://github.com/probonopd/go-appimage) as well as a Launcher project [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher), either of which would probably help with the automation of integrating AppImage apps into GUI menus, and also might add some automation around updating the AppImages themselves. I should probably look into these if I start using AppImages on a larger scale. If I do, I'll try to come back and edit this post.

It doesn't much matter where you put the AppImage and whether or not you integrate it into the menu of your desktop environment of choice. As far as I can tell, Bitwarden will store local data in your home directory, as a well-behaved desktop application should, in `~/.config/Bitwarden`.

Finally, just a friendly reminder to ensure you have [configured two factor authentication](https://bitwarden.com/help/article/setup-two-step-login/).

Happy password managing!
