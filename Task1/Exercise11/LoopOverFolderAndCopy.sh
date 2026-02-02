#!/bin/bash

source="SourceExercise"
target="Exercise"

for i in {1..3}
do
	ls "$source"$i
	cp "$source"$i/*.sh "$target"$i/
	ls "$target"$i
done

