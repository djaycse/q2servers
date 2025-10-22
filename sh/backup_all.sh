#!/bin/bash
zip -r backups/openffa-`date +%Y-%m-%d`.zip openffa/logs openffa/highscores openffa/save openffa/q2admin.log
zip -r backups/opentdm-`date +%Y-%m-%d`.zip opentdm/logs opentdm/highscores opentdm/save opentdm/q2admin.log
zip -r backups/tourney-insta-`date +%Y-%m-%d`.zip tourney-insta/qconsole.log tourney-insta/highscores tourney-insta/save tourney-insta/q2admin.log
zip -r backups/tourney-ffa-`date +%Y-%m-%d`.zip tourney-ffa/qconsole.log tourney-ffa/highscores tourney-ffa/save tourney-ffa/q2admin.log
