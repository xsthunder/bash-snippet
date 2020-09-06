# convert to txt by directory

[Official Literature - Touhou Wiki - Characters, games, locations, and more](https://en.touhouwiki.net/wiki/Official_Literature#Artbooks)

## known resources

```bash
$ find -maxdepth 1 -mindepth 1
./build-all.sh // iterate over all subdir
./build.sh //for one subdir
./Bunbunmaru Newspaper-Articles and Interviews
./Bunbunmaru Newspaper-Articles and Interviews.txt
./Bunbunmaru Newspaper-Guide to Notable Locales in Gensokyo
./Bunbunmaru Newspaper-Guide to Notable Locales in Gensokyo.txt
./Bunbunmaru Newspaper-Memoranda of Feature Articles
./Bunbunmaru Newspaper-Memoranda of Feature Articles.txt
./Perfect Memento in Strict Sense
./Perfect Memento in Strict Sense.txt
./README.md
./strip-useless.js // strip useless information using regex
./東方紫香花　～ Seasonal Dream Vision
./東方紫香花　～ Seasonal Dream Vision.txt
```

## requires

- bash
- pandoc
- node>12

## setup

1. download html from [Official Literature - Touhou Wiki - Characters, games, locations, and more](https://en.touhouwiki.net/wiki/Official_Literature#Artbooks) , you may use downthemall for firefox.
1. save to one folder for one final text file. for example save to `text/test*.html`, then will generate `./test.txt`, using folder name for finally text output name.

## input

all sub folder

`*/`

## run

`bash build-all.sh`

## output

`./*.txt`