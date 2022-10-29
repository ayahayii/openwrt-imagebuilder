FROM alpine:3.15

RUN echo "**** install dependencies ****" && \
    apk add --no-cache \
      argp-standalone \
      asciidoc \
      bash \
      bc \
      binutils \
      bzip2 \
      cdrkit \
      coreutils \
      diffutils \
      findutils \
      flex \
      fts-dev \
      g++ \
      gawk \
      gcc \
      gettext \
      git \
      grep \
      intltool \
      libxslt \
      linux-headers \
      make \
      musl-libintl \
      musl-obstack-dev \
      ncurses-dev \
      openssl-dev \
      patch \
      perl \
      python2-dev \
      python3-dev \
      rsync \
      tar \
      unzip \
      util-linux \
      wget \
      zlib-dev && \
    echo "**** install dependencies ****" && \
    ln -s /usr/lib/libncurses.so /usr/lib/libtinfo.so 

ENV PROFILE=
ENV PACKAGES=
ENV FILES=
ENV FILES_REMOVE=

WORKDIR /imagebuilder
CMD export SOURCE_DATE_EPOCH=1 && make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" FILES_REMOVE="$FILES_REMOVE"
