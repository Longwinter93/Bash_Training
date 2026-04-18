#!/bin/bash
echo "Running a bash exec.sh script by using exec and a terminal closes as the shell is shut down"
exec ./exec.sh
echo "We do not show this echo because bash shuts down"