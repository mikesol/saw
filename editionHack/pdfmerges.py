from pyPdf import PdfFileWriter, PdfFileReader

INPUT = 'toc2-1 toc2-2 sowArtPageOne sowArtPageTwo sowNoteOne sowNoteTwo'.split(' ')
OFFSET = 7

for x in range(len(INPUT)) :
  hackfile = 'hack{0}.pdf'.format(x+OFFSET)
  goodfile = INPUT[x]+".pdf"
  output = PdfFileWriter()
  input1 = PdfFileReader(file(goodfile, "rb"))
  page1 = input1.getPage(0)
  watermark = PdfFileReader(file(hackfile, "rb"))
  page1.mergePage(watermark.getPage(0))
  output.addPage(page1)
  outputStream = file("finalPage{0}.pdf".format(x+OFFSET), "wb")
  print "finalPage{0}.pdf".format(x+OFFSET)
  output.write(outputStream)
  outputStream.close()
