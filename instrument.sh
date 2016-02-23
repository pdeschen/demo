#!/bin/bash

instrument() {
  PROMPT=$1
  DTMFS=$2
  INSTRUMENTED=$PROMPT$DTMFS.ulaw
  echo "$PROMPT.ulaw => $INSTRUMENTED"
  cat $PROMPT.ulaw > $INSTRUMENTED
  for (( i=0; i<${#DTMFS}; i++ )); do
      DTMF=${DTMFS:$i:1}
      cat prompts/dtmfs/$DTMF.ulaw >> $INSTRUMENTED
  done
}

instrument prompts/music+welcome c00
instrument prompts/ask c10
instrument prompts/hold c20
instrument prompts/good+claps c30
instrument prompts/bad+wahwah c40
instrument prompts/thanks+music c50


