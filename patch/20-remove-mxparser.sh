#!/bin/bash

SEDCMD=gsed
FINDCMD=gfind

$FINDCMD org/jivesoftware -name '*.java' -exec $SEDCMD -i 's:import org.xmlpull.mxp1.MXParser:import org.xmlpull.v1.XmlPullParserFactory:' '{}' ';'
$FINDCMD org/jivesoftware -name '*.java' -exec $SEDCMD -i 's:new MXParser():XmlPullParserFactory.newInstance().newPullParser():g' '{}' ';'

