# -*- coding: utf-8 -*-
import string
from constants import TITLES, MUSIC, RECORDINGS, MIDIS, NOTPRINTABLE
from lilytools import fLyTrans

BOOK = '''\\include "defs-devel.ly"
\\include "stylesheet_book.ly"

{0}

\\include "titlehack.ly"

\\book {{
{1}
  \\header {{
    title = \\wizardOneTitle
    subtitle = \\wizardOneDedication
    composer = "Harold Arlen"
    poet = "E.Y. Harburg"
    arranger = "arr. Mike Solomon"
  }}
}}
'''

def genIncludes() :
  out = ''
  for x in MUSIC :
    out += '\\include "{0}.iily"\n'.format(x)
  return out

def genContent() :
  out = ''
  for x in range(len(MUSIC)) :
    if x > 0 :
      out += '  \\markup \\oztitle {0}Title {0}Dedication\n  \\noPageBreak\n'.format(fLyTrans(MUSIC[x]))
    out += '  \\include "{0}.ily"\n'.format(MUSIC[x])
  return out

print BOOK.format(genIncludes(), genContent())