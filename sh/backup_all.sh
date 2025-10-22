#!/bin/bash
cd /home/quake2/aq2/quake2/action/ && tar -zcvf /home/quake2/backups/aq2-backup-`date +%Y-%m-%d`.tar.gz *.* &&
cd /home/quake2/ctf/quake2/ctf/ && tar -zcvf /home/quake2/backups/ctf-backup-`date +%Y-%m-%d`.tar.gz *.* &&
cd /home/quake2/gloom/quake2/gloom/ && tar -zcvf /home/quake2/backups/gloom-backup-`date +%Y-%m-%d`.tar.gz *.* logs/*.* &&
cd /home/quake2/opentdm/quake2/opentdm/ && tar -zcvf /home/quake2/backups/opentdm-backup-`date +%Y-%m-%d`.tar.gz *.* &&
cd /home/quake2/opentdm2/quake2/opentdm/ && tar -zcvf /home/quake2/backups/opentdm2-backup-`date +%Y-%m-%d`.tar.gz *.* &&
cd /home/quake2/osp/quake2/tourney/ && tar -zcvf /home/quake2/backups/osp-backup-`date +%Y-%m-%d`.tar.gz *.* &&
cd /home/quake2/quake2/quake2/tourney/ && tar -zcvf /home/quake2/backups/quake2-backup-`date +%Y-%m-%d`.tar.gz *.* &&
cd /home/quake2/ra2/quake2/arena/ && tar -zcvf /home/quake2/backups/ra2-backup-`date +%Y-%m-%d`.tar.gz *.*