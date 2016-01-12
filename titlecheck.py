# -*- coding: utf-8 -*-
import string
from constants import TITLES, MUSIC, RECORDINGS, MIDIS, NOTPRINTABLE
from lilytools import fLyTrans

def genContent() :
  out = '\\include "defs-devel.ly" \\include "stylesheet.ly" \\include "titlehack.ly"\n'
  for x in range(len(MUSIC)) :
    out += '  \\include "{1}.iily"\n  \\markup \\oztitle {0}Title {0}Dedication\n'.format(fLyTrans(MUSIC[x]), MUSIC[x])
  return out

print genContent()