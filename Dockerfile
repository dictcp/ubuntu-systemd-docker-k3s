FROM ghcr.io/dictcp/ubuntu-focal-systemd-docker

ENV INSTALL_K3S_SKIP_ENABLE=true

RUN curl -sfL https://get.k3s.io | sh -s - --docker

## enable without systemd
RUN ln -s /etc/systemd/system/k3s.service /etc/systemd/system/multi-user.target.wants/k3s.service
