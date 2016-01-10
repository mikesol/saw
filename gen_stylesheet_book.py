import subprocess

SSB = '''\\paper {{
  ragged-right = ##f
  two-sided = ##t
  inner-margin = {0}\\in
  outer-margin = {1}\\in
  ragged-last-bottom = ##f
  footnote-separator-markup = \\markup {{ \\column {{ " "\\override #`(span-factor . 1/5) {{ \\draw-hline }} }}}}
  footnote-padding = 5\\mm
  top-system-spacing = #'((basic-distance . {2}) (minimum-distance . {2}) (padding . {2}) (stretchability . {2}))
  bottom-system-spacing = #'((basic-distance . {2}) (minimum-distance . {2}) (padding . {2}) (stretchability . {2}))
}}
\\header {{
  tagline=""
}}

#(set-global-staff-size {3})

#(set! paper-alist (cons '("oz" . (cons (* 200 mm) (* 250 mm))) paper-alist))
#(set-default-paper-size "oz")

myred = {{}}
'''

INNERMARGIN = [1.0,1.2,1.25,1.3,1.4]
TOPBOTTOM = [10,15,20]
PSIZE = [15.87, 15.525, 15.178, 14.832, 14.486, 14.14]

def rr(n) :
  return str(n).replace('.','_')

for x in INNERMARGIN :
  for y in TOPBOTTOM :
    for z in PSIZE :
      outfile = file('stylesheet_book.ly','w')
      outfile.write(SSB.format(x, 2-x, y, z))
      outfile.close()
      subprocess.call('lilypond -dpoint-and-click=#f -operrine/sitOzfarsWysr-{0}-{1}-{2} sitOzfarsWysr.ly'.format(rr(x),rr(y),rr(z)), shell=True)