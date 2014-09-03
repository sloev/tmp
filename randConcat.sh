#!/bin/bash
for i in *.wav; do mv -i "$i" ${RANDOM}.wav; done

ffmpeg -f concat -i <( for f in *.wav; do echo "file '$(pwd)/$f'"; done ) output.wav

