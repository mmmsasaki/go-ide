FROM saturnism/go-ide

RUN apt-get -q update && \
  apt-get install --no-install-recommends -y --force-yes -q \
  locales \
  task-japanese && \
  echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen && \
  locale-gen

ENV LANG=ja_JP.UTF-8
