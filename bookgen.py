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
    subtitle = \\markup \\normal-text \\italic \\wizardOneDedication
    composer = \\markup \\null
    poet = \\markup \\null
    arranger = \\markup \\null
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
      out += '  \\markup \\oztitle {0}Title {0}Dedication #\'{1}\n  \\label #\'{1} \\noPageBreak\n'.format(fLyTrans(MUSIC[x]), MUSIC[x])
    out += '  \\include "{0}.ily"\n'.format(MUSIC[x])
  return out

print BOOK.format(genIncludes(), genContent())