FROM jafonso/nix:latest

COPY nix.conf .
RUN cat nix.conf >> /etc/nix/nix.conf && rm nix.conf

COPY reflex-tutorial /reflex-tutorial
WORKDIR /reflex-tutorial/code/exercises
RUN nix-shell .
WORKDIR /
RUN rm -rf reflex-tutorial