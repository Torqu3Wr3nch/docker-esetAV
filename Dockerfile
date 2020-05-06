FROM lsiobase/rdesktop-web:amd64-bionic

RUN \
    apt-get update && \
    apt-get install -y \
        libgtk2.0-0 \
        libc6-i386 \
        cpio \
        tint2 \
        inotify-tools \
        nano

COPY /root /

ADD https://download.eset.com/com/eset/apps/home/eav/linux/latest/eset_nod32av_64bit_en.linux /eset/

COPY /eset/ /eset/

RUN \
    cd /eset && \
    chmod +x eset_nod32av_64bit_en.linux esetInstall esetgui