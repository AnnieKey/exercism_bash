#!/usr/bin/env bash

#Task:
#Bob is a lackadaisical teenager. In conversation, his responses are very limited.
#Bob answers 'Sure.' if you ask him a question.
#He answers 'Whoa, chill out!' if you yell at him.
#He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
#He says 'Fine. Be that way!' if you address him without actually saying anything.
#He answers 'Whatever.' to anything else.
#Bob's conversational partner is a purist when it comes to written communication
# and always follows normal rules regarding sentence punctuation in English.


echo -n "Say something:) "
read sentence

position=$((${#sentence}-1))
symbol=${sentence:$position:1}

case $symbol in
    '?')
        echo "Sure."
        ;;
    '!')
        if [[ ${sentence:$position-1:1} ==  "?" ]]
        then
            echo -n "Calm down, I know what I'm doing!"
        else
            echo -n "Whoa, chill out!"
        fi
        ;;
    ' ')
        echo -n "Fine. Be that way!"
        ;;
    *)
        echo -n "Fine. Be that way!"
        ;;
esac