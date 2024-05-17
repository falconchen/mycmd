n1cmd(){ssh root@n1 "$@"}
yt(){n1cmd yt "$@"}
yt-mp4(){n1cmd yt-mp4 "$@"}
yta(){n1cmd yta "$@"}
ytc(){n1cmd ytc "$@"}
ytcc(){n1cmd ytcc "$@"}
ytai(){n1cmd ytai "$@"}
yta-mp3(){n1cmd yta-mp3 "$@"}
n1yt-ali(){n1cmd n1yt-ali "$@"}
n1yt(){n1cmd n1yt "$@" && n1cmd tail -f /root/arm64v8-youtube-dl/bin/nyt.log}
n1yta(){n1cmd n1yta "$@"}


