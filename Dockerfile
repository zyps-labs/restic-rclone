FROM restic/restic:0.9.5

ENV RCLONE_VERSION=1.49.5

RUN mkdir /tmp/rclone && cd /tmp/rclone \
  && wget https://github.com/rclone/rclone/releases/download/v$RCLONE_VERSION/rclone-v$RCLONE_VERSION-linux-amd64.zip \
  && apk add --no-cache zip \
  && unzip rclone-v$RCLONE_VERSION-linux-amd64.zip \
  && cd rclone-v$RCLONE_VERSION-linux-amd64 \
  && chmod +x rclone \
  && mv rclone /usr/bin/ \
  && rm -rf /tmp/rclone
