#!/bin/bash

audio_bucket=gs://audio-for-transcription-orm
transcript_bucket=gs://transcripts-orm

for fpid_dir in `gsutil ls $audio_bucket/`; do
  fpid=$(basename $fpid_dir)
  echo $fpid
  for audio_file_url in `gsutil ls $audio_bucket/$fpid/*.wav`; do
#    audio_file=$audio_bucket/$fpid/*.wav
    echo "transcribing $audio_file_url"
    #outputfile=`basename -s ".wav" $audio_file`
    #time ./transcribe.py $audio_file > $to/${outputfile}.txt
    #echo $to/${outputfile}.txt
  done
done