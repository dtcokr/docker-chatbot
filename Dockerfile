FROM python:3-alpine

RUN apk add --no-cache --update --virtual .build-deps python3-dev gcc git curl libc-dev libffi-dev openssl-dev \
  && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
  && python get-pip.py \
  && pip install --no-cache-dir python-telegram-bot \
  && git clone https://github.com/Netrvin/telegram-pm-chat-bot.git /pmbot \
  && cd /pmbot \
  && rm -rf .git* \
  && apk del .build-deps

VOLUME /pmbot

ENTRYPOINT ["python", "/pmbot/main.py"]
