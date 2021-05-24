# guix profile
GUIX_PROFILE=$HOME/.guix-profile
. $GUIX_PROFILE/etc/profile

# flatpak directories
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/home/merazi/.local/share/flatpak/exports/share
