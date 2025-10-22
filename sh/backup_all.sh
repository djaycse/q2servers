#!/bin/bash
zip -r backups/openffa-`date +%Y-%m-%d`.zip openffa/*
zip -r backups/opentdm-`date +%Y-%m-%d`.zip opentdm/*
zip -r backups/tourney-insta-`date +%Y-%m-%d`.zip tourney-insta/*
zip -r backups/tourney-ffa-`date +%Y-%m-%d`.zip tourney-ffa/*
