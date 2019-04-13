FROM jafonsor/nix:latest

COPY reflex-tutorial /reflex-tutorial
WORKDIR /reflex-tutorial/code/exercises
RUN nix-shell . && ./ex00.sh