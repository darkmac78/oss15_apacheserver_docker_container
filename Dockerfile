FROM opensuse/leap:15.2
MAINTAINER cosmin.tanczel@gmail.com

RUN zypper install -y dbus-1 systemd-sysvinit apache2
RUN cp /usr/lib/systemd/system/dbus.service /etc/systemd/system/; sed -i 's/OOMScoreAdjust=-900//' /etc/systemd/system/dbus.service

VOLUME ["/sys/fs/cgroup", "/run"]

CMD ["/sbin/init"]
