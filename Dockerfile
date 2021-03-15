# Use the android build image
FROM androidsdk/android-30

WORKDIR /docker_workdir

# Use the local helo script
COPY ./entrypoint.sh ./
COPY . .

# Run it.
ENTRYPOINT ["./entrypoint.sh"]
