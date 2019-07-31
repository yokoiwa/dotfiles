FROM silex/emacs:master-alpine
MAINTAINER yokoiwa <yokoiwa@hayai.work>

ENV LANG=C.UTF-8 \
    TERM=xterm-256color
WORKDIR /root

RUN apk update && apk upgrade \
 && apk add --no-cache \
    --virtual .build-deps \
    git \
 && git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d \
 && apk del 

COPY ./base.spacemacs ./.spacemacs
RUN emacs --daemon \
 && emacsclient -e '(kill-emacs)'

COPY ./.spacemacs ./.spacemacs
RUN emacs --daemon \
 && emacsclient -e '(kill-emacs)'

WORKDIR /root/code
