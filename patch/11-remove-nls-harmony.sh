#!/bin/bash

SEDCMD=gsed
FINDCMD=gfind

$FINDCMD org/apache/harmony -name '*.java' -exec $SEDCMD -i 's:import org.apache.harmony.auth.internal.nls.Messages;::' '{}' ';'
$FINDCMD org/apache/harmony -name '*.java' -exec $SEDCMD -i 's:Messages.getString(\("[^"]*"\)):\1:g' '{}' ';'

