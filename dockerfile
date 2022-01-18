FROM jrottenberg/ffmpeg:4.1-alpine

COPY . .
EXPOSE 1935

ENTRYPOINT [ "./script.sh" ]