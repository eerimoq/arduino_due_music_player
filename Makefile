#
# @file Makefile
# @version 1.0
#
# @section License
# Copyright (C) 2015, Erik Moqvist
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# This file is part of the Simba project.
#

NAME = music_player
BOARD = arduino_due
VERSION = 1.0.0
SRC += music_player.c

SIMBA = ../simba
include $(SIMBA)/make/app.mk

PHONY: convert
convert:
	for song in songs/*.mp3 ; do \
	    tools/music_player.py $$song ; \
	done
