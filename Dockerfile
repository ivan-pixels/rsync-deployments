# ghcr.io/ivan-pixels/rsync-docker (supports amd64 and arm64)
FROM ghcr.io/ivan-pixels/rsync-docker:latest

# always force-upgrade rsync to get the latest security fixes
RUN apk update && apk add --no-cache --upgrade rsync
RUN rm -rf /var/cache/apk/*

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
