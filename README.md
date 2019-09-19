# docker-chatbot
![Docker Pulls](https://img.shields.io/docker/pulls/dtcokr/chatbot)
[![](https://images.microbadger.com/badges/image/dtcokr/chatbot.svg)](https://microbadger.com/images/dtcokr/chatbot "Get your own image badge on microbadger.com")
![GitHub last commit](https://img.shields.io/github/last-commit/dtcokr/docker-chatbot)

Using telegram-chat-bot in docker.

Source code from [Netrvin(GitHub)](https://github.com/Netrvin/telegram-pm-chat-bot).

## configuration
* create a telegram bot with the help of [Bot Father](https://t.me/BotFather)
* get the bot api
* download and modify the `config.json`
* run this container and mount the `config.json` to the container

download the `config.json` [**HERE**](https://github.com/Netrvin/telegram-pm-chat-bot/raw/master/config.json), then modify the `config.json`. add your token(bot api as above) to the file.

```sh
{
    "Admin": 0,
    "Token": "",
    "Lang": "zh",
}
```

send `/setadmin` to the bot in Telegram to set yourself as administrator.

## usage


```sh
$ docker run -d \
    -v /path/to/your/config.json:/pmbot/config.json \
    dtcokr/chatbot
```
