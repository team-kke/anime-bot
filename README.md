# anime-bot

![untan](https://cloud.githubusercontent.com/assets/1013641/18993328/9402395e-875d-11e6-9e5c-3bf34605c425.gif)

A [LINE](https://line.me) bot pushing [@alldne](https://github.com/alldne) to
work hard, written in Haskell :sparkles:

## Instruction

Use [Stack](https://www.haskellstack.org) to build:

```
$ git clone https://github.com/team-kke/anime-bot.git
$ cd anime-bot
$ stack build
```

Install:

```
$ stack install
```

Run:

```
$ export PERSONAL_ACCESS_TOKEN={SOME_TOKEN}
$ anime-bot
```

Please issue a personal access token from [LINE Notify](https://notify-bot.line.me).

## Todo

- [x] Basic GitHub query
- [ ] Specify the query using author and path
- [ ] Read a personal access token from env
- [ ] Generate random text and image
- [ ] Send LINE messages when *someone* is lazy(or possibly hard-working)
- [ ] Set crontab on a *free* server :pizza:

## License

[BSD3](LICENSE)
