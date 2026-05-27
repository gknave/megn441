# ROS2 Humble (Ubuntu 24.04 LTS) — change to 'humble' for Ubuntu 22.04
FROM osrf/ros:humble-desktop-full

# ── System dependencies ────────────────────────────────────────────────────────
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
    # Build tools
    build-essential \
    cmake \
    git \
    # Python dev
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    python3-vcstool \
    # ROS packages
    ros-humble-joint-state-publisher \
    ros-humble-joint-state-publisher-gui \
    # Handy utilities
    bash-completion \
    curl \
    nano \
    vim \
    wget \
    && rm -rf /var/lib/apt/lists/*

# ── rosdep init (skip if already done in base image) ──────────────────────────
RUN rosdep update

# ── Create a non-root user matching your host UID/GID (avoids permission issues)
ARG USERNAME=garynave
ARG USER_UID=1000
ARG USER_GID=1000

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update && apt-get install -y sudo \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME \
    && rm -rf /var/lib/apt/lists/*

USER $USERNAME

# ── Auto-source ROS and the local workspace on every shell ────────────────────
RUN echo "source /opt/ros/humble/setup.bash" >> /home/$USERNAME/.bashrc \
    && echo "export ROS_DOMAIN_ID=0" >> /home/$USERNAME/.bashrc \
    && echo 'export LIDAR_TYPE="A1"' >> /home/$USERNAME/.bashrc

# ── Default shell entrypoint ──────────────────────────────────────────────────
CMD ["/bin/bash"]
