#!/bin/bash

SEDCMD=gsed
FINDCMD=gfind

$FINDCMD -name '*.java' -exec $SEDCMD -i 's:import org.apache.harmony.javax.security.sasl.Sasl;:import de.measite.smack.Sasl;:g' '{}' ';'

