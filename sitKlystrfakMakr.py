import subprocess
import re
import sys
import string
from constants import TITLES, MUSIC, RECORDINGS, MIDIS, NOTPRINTABLE

subprocess.call('python bookgen.py > sitOzfarsWysr.ly', shell=True)
subprocess.call('lilypond -dno-point-and-click -ositOzfarsWysr_a4 sitOzfarsWysr > pagenumbers.txt', shell=True)
infi = file('pagenumbers.txt','r')
PN = infi.read()
infi.close()
PN = filter(lambda x : x[:6] == '@@@@@@', PN.split('\n'))
PN = [P.split('@@@@@@')[1].split('::::::') for P in PN]
PN = [(int(P[0]), P[1]) for P in PN]
PN = [(15,'wizard1')] + PN
infi = file('toc/toc2proto.lytex', 'r')
LYTEX = infi.read()
infi.close()
for M in PN :
  LYTEX = LYTEX.replace(string.upper(M[1].replace('-','')),str(M[0]))

outfi = file('toc/toc2.lytex', 'w')
LYTEX = outfi.write(LYTEX)
outfi.close()

subprocess.call('lilypond-book --output=out --pdf toc2.lytex', shell=True, cwd='toc')
subprocess.call('lualatex toc2.tex', shell=True, cwd='toc/out')

from pyPdf import PdfFileWriter, PdfFileReader

for x in [1,2] :
  output = PdfFileWriter()
  input1 = PdfFileReader(file('toc/out/toc2.pdf', "rb"))
  outputStream = file("editionHack/toc2-{0}.pdf".format(x), "wb")
  output.addPage(input1.getPage(x-1))
  output.write(outputStream)
  outputStream.close()

INPUT = 'toc2-1 toc2-2 sowArtPageOne sowArtPageTwo sowNoteOneRealFont sowNoteTwoRealFont'.split(' ')
OFFSET = 7

for x in range(len(INPUT)) :
  hackfile = 'editionHack/hack{0}.pdf'.format(x+OFFSET)
  goodfile = 'editionHack/'+INPUT[x]+".pdf"
  output = PdfFileWriter()
  input1 = PdfFileReader(file(goodfile, "rb"))
  page1 = input1.getPage(0)
  watermark = PdfFileReader(file(hackfile, "rb"))
  page1.mergePage(watermark.getPage(0))
  output.addPage(page1)
  outputStream = file("editionHack/finalPage{0}.pdf".format(x+OFFSET), "wb")
  print "finalPage{0}.pdf".format(x+OFFSET)
  output.write(outputStream)
  outputStream.close()

output = PdfFileWriter()
for x in range(3,15) :
  input1 = PdfFileReader(file('editionHack/finalPage{0}.pdf'.format(x), "rb"))
  output.addPage(input1.getPage(0))

input1 = PdfFileReader(file('sitOzfarsWysr_a4.pdf', "rb"))
for x in range(input1.getNumPages()) :
  output.addPage(input1.getPage(x))

if output.getNumPages() % 2 == 1 :
  input1 = PdfFileReader(file('editionHack/blankPage.pdf', "rb"))
  output.addPage(input1.getPage(0))

outputStream = file("editionHack/sowInterior.pdf".format(x), "wb")
output.write(outputStream)
outputStream.close()
