# anime-bot

![untan](https://cloud.githubusercontent.com/assets/1013641/18993328/9402395e-875d-11e6-9e5c-3bf34605c425.gif)

A [LINE Notify](https://notify-bot.line.me) bot pushing [@alldne](https://github.com/alldne) to
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

## Features

- Check if there's any update on [team-kke/anime](https://github.com/team-kke/anime) today
- Send a LINE message when *someone* is lazy(or possibly hard-working)
  - The message may be chosen at [random](src/Messages.hs)
  - The message may vary for *someone*'s diligence
  - The message may include a cute pic to encourage *the one*
- It's running on *the free server* :pizza:

## License

[BSD3](LICENSE)
