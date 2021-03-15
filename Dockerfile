# Use the android build image
FROM androidsdk/android-30

# Use the local helo script
COPY hello.sh /hello.sh

# Run it.
ENTRYPOINT ["/hello.sh"]
