#!/bin/bash
defPath=$HOME/.config/ibus/rime/build/default.yaml
if [ -d $defPath ]
then
	rm $defPath && ibus-daemon -drx
else
	ibus-daemon -drx
fi
