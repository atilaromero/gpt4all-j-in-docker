FROM ubuntu:jammy

RUN apt update
RUN apt-get install -y \
    libglib2.0-0 \
    libbrotli1 \
    libdrm2 \
    libgbm1 \
    libjpeg-turbo8 \
    libxcb-glx0 \
    libdbus-1-3 \
    libegl1 \
    libpcre2-16-0 \
    libglx0 \
    libopengl0 \
    libpng16-16 \
    libharfbuzz0b \
    libfontconfig1 \
    libxkbcommon0 \
    libxkbcommon-x11-0 \
    libxcb-cursor0 \
    libxcb-icccm4 \
    libxcb-keysyms1 \
    libxcb-randr0 \
    libxcb-shape0 \
    libsm6
COPY /opt /opt
WORKDIR /opt/gpt4all 0.1.0/bin
ENV LC_ALL C.UTF-8
ENV QT_GRAPHICSSYSTEM="raster"
ENV QT_X11_NO_MITSHM=1
CMD ./chat
