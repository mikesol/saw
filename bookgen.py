# -*- coding: utf-8 -*-
import string
from constants import TITLES, MUSIC, RECORDINGS, MIDIS, NOTPRINTABLE

def lyTrans(x) :
  for c in range(len(x)) :
    if (x[c] == '-') and (x[c+1] in string.lowercase) :
      x = x[:c+1] + string.upper(x[c+1]) + x[c+2:]
  nums = {'1':'One','2':'Two','3':'Three','4':'Four','5':'Five','6':'Six'}
  for key in nums.keys() :
    x = x.replace(key, nums[key])
  x = x.replace('-','')
  return x
  

def fLyTrans(x) :
  return "\\"+lyTrans(x)

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
      out += '  \\markup \\oztitle {0}Title {0}Dedication\n'.format(fLyTrans(MUSIC[x]))
    out += '  \\include "{0}.ily"\n'.format(MUSIC[x])
  return out

print BOOK.format(genIncludes(), genContent())