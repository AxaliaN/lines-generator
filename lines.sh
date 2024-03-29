#!/bin/bash

ASCII_LINES=(
    "=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+="
    "=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
    "=v=v=v=v=v=v=v=v=v=v=v=v=v=v=v="
    "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#="
    "=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~="
    "^-_-_-^-_-_-^-_-_-^-_-_-^-_-_-^"
    "~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~"
    "x-x-x-x-x-x-x-!-x-x-x-x-x-x-x"
    ">-<>-<>-<>-<>-<>-<>-<>-<>-<>-<"
    "()xxxx()=====================>" # sword, yeah!
    "─────────── ⋆⋅☆⋅⋆ ───────────"
    "︵‿︵︵‿︵‿୨♡୧‿︵‿︵︵‿︵"
    "•──────────•°•❀•°•───────────•"
    "•⋅⋅•⊰⋅•⋅⋅•⋅⋅∙∘☽༓☾∘∙⋅⋅•⋅⊰⋅•⋅⋅•⋅⋅•"
    "✏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏"
    "---------/\.|).|\|./\.|\|---------"
);

EMOJI_LINES=(
    "👽👽👽👽👽👽👽👽👽👽👽👽👽" # The truth is out there
    "🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕🍕" # Mama mia!
    "🌝🌚🌝🌚🌝🌚🌝🌚🌝🌚🌝🌚🌝"
    "♠️♥️♣️♦️♠️♥️♣️♦️♠️♥️♣️♦️♠️" # Ma ma ma pokerface
    "🃏🃏🃏🃏🃏🃏🃏🃏🃏🃏🃏🃏🃏"
    "🎲🎲🎲🎲🎲🎲🎲🎲🎲🎲🎲🎲🎲"
    "🫡🫡🫡🫡🫡🫡🫡🫡🫡🫡🫡🫡🫡"
    "🎃💀👻🧛🦇😱😈🕸️⚰️🖤🤡🧟🐈‍⬛" # Spooky season
    "🧙🧝🧞🧜🧚🐲🧚‍♀️🧌🧝‍♂️🧝‍♀️🧙‍♂️🧙‍♀️🪄" # Dungeons & Dragons
    "🔔🎁🕯️🎅👼🎶🤶❄️☃️🌟🎄🍷🦌" # Jingle jangle all the way
    "💎💎💎💎💎💎💎💎💎💎💎💎" # Shine bright
    "🤞i-t---i-s---w-h-a-t---i-t---i-s🤞"
    "🧙‍♂️💍🧒🧭⛰️🧌🏔️🧗🧝🏻‍♂️🏰📜🏞️🌋" # Lord of the rings
    "🧙🏻‍♂️🧒🏼🐴🐴🐴🐴🐴🐴🐴🐴🐴🐴🐴" # Lord of the rings, helms deep
    "🧝🧒🐴🐴🐴🐴🐴🤴🏼🐴🐴🐴🐴🐴" # Lord of the rings, minas tirith
);

if [ "$1" = "--ascii" ]; then
    LINES=("${ASCII_LINES[@]}")
elif [ "$1" = "--emoji" ]; then
    LINES=("${EMOJI_LINES[@]}")
else
    LINES=("${ASCII_LINES[@]}" "${EMOJI_LINES[@]}")
fi

LINE=${LINES[RANDOM%${#LINES[@]}]}

echo -n $LINE | xclip && echo "Copied $LINE to the clipboard"
