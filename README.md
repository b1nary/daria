![Daria Temporary logo](https://i.imgur.com/s2jcKp4.png)

# daria
daria is a simple extendable home automation system based on voice (and text) developed in Ruby. It is designed for german language processing but will hopefully support english in the first release as well.

**Note: daria is work in progess, dont expect it to work**

## Depencies

* [Ruby](https://www.ruby-lang.org/) - programming language interpreter
* [pocketsphinx](https://github.com/cmusphinx/pocketsphinx) - for catch phrase detection
* [Wit.ai account](https://wit.ai) - for speech and language processing
* [Witd](https://github.com/wit-ai/witd) - as local service for recording and processing
* [espeak & mbrola](https://github.com/rhdunn/espeak) - speech output
* +Several ruby gems - additional functions and depencies

## About this project

When i tell people about daria i get mixed results. A lot of them imagined a lonely, somewhat creepy nerd building his own girlfriend. Others realized that speech based inputs, while basically available since years, are crucial for a comfortable way to interact with digital systems.

Home automation based on Apps, NFC tags and similar are always only half of the bread. It is not natural to get out your phone, open an App and type out some words to get things done.

I see a huge barrier for anyone else than nerds to adapt these technics in order to simplify their own lives.

Daria trys to be a drop in solution, like a personal slave that just takes your words as input and works with them. Naturally, nearly like a hidden helpful human being.

## Why "daria"

I dont know the exact reason any more. This idea was subtitled as daria in my code folder for some time now. I think it has something to do with me watching the daria series while getting the idea. Maybe i liked her voice, maybe i just wanted her to be as sarcastic as possible.

Another reason is that the word _daria_ sounds very distinct, so i figured it would be easier to distinguish from other words as trigger.

## How daria works

daria consists of multiple layers. Basically it is waiting for input, per default this is voice input but may be a chat message as well. Until it hears her catchphrase (default: "daria") trough [pocketsphinx](https://github.com/cmusphinx/pocketsphinx) speech detection it wont publish any data to the internet. As soon as it does hear it, it will record the next sentence and send it to [wit.ai](https://wit.ai) for further inspection.

[Wit.ai](https://wit.ai) is a crucial part of daria, it holds a few predefined sets of possible speech inputs and is able to detect new ones based on the existing ones. Wit.ai is used to map inputs to specific actions what will be processed locally by daria.

The locally installed plugins can do whatever you want, and results will be given back to the interface that got the request. Will will result in a spoken answer or a chat message.

It is designed to run on a single Raspberry PI model B+ as standalone system. But might also be used in other environments.

## Why wit.ai

Actually i would prefer a offline only system. But my tests made clear very fast that available options are not yet ready for a project like this. While things like CMU Sphinx sometimes produce good results, it clearly struggles when you dont talk directly into the microphone.

Also the language processing was a problem i did not face yet, and wit.ai does that for you directly. In a way so good i couldn't believe that there aren't much more such projects.

## Todo

- [x] Creating Github repo
- [x] Initialising README.md
- [ ] Build core system
- [ ] Implement wit.ai somewhat exchangeable
- [ ] Build plugin system
- [ ] Write installation instructions

#### Plugins to be created

- [ ] Time (Read back time)
- [ ] Timerange (Calculate time ranges)
- [ ] Twitter (notifications + posting & reading)
- [ ] Github (Notifications mostly)
- [ ] Weather (yeah...)
- [ ] WS2801 controller (Led stripe)
- [ ] Networking tools (ping, trace, latency...)
- [ ] Wolfram Alpha (answering all kind of questions)
- [ ] Smalltalk (no idea yet, but clearly needed)
- [ ] Alarm (next level wake-up alarms)

## Changelog

- 0.0.1
  - Init repo (multiple commits)
