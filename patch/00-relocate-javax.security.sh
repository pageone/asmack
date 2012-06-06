#!/bin/bash

SEDCMD=gsed
FINDCMD=gfind

mkdir -p org/apache/harmony/
mv javax org/apache/harmony/
$FINDCMD org/apache/harmony/ -name '*.java' -exec $SEDCMD -i 's:package javax:package org.apache.harmony.javax:g' '{}' ';'
$FINDCMD -name '*.java' -exec $SEDCMD -i 's:import javax.security.sasl:import org.apache.harmony.javax.security.sasl:g' '{}' ';'
$FINDCMD -name '*.java' -exec $SEDCMD -i 's:import javax.security.auth:import org.apache.harmony.javax.security.auth:g' '{}' ';'

