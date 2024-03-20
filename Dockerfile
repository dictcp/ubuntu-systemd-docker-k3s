FROM ghcr.io/dictcp/ubuntu-systemd-docker

ENV INSTALL_K3S_SKIP_ENABLE=true

RUN curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.28.8-rc1+k3s1 sh -s - --docker

## enable without systemd
RUN ln -s /etc/systemd/system/k3s.service /etc/systemd/system/multi-user.target.wants/k3s.service
