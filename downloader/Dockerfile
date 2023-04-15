FROM ubuntu:jammy

WORKDIR /opt

# Downloader link from https://github.com/nomic-ai/gpt4all
ADD https://gpt4all.io/installers/gpt4all-0.1.0-Linux.run /
RUN chmod +x /gpt4all-0.1.0-Linux.run
RUN apt update
RUN apt-get install -y libfontconfig
RUN apt-get install -y \
    libdbus-1-3 \
    libxcb-glx0 libx11-xcb1  libxcb-icccm4  libxcb-image0 libxcb-keysyms1 \
    libxcb-randr0 libxcb-render-util0 libxcb-shape0 libxcb-sync1
RUN apt-get install -y libxcb-xfixes0
RUN apt-get install -y libxcb-xinerama0
RUN apt-get install -y libxcb-xkb1
RUN apt-get install -y libxext6
RUN apt-get install -y libxkbcommon-x11-0
RUN apt-get install -y libgl1
RUN apt-get install -y ca-certificates
ENV QT_DEBUG_PLUGINS=1
CMD /gpt4all-0.1.0-Linux.run
