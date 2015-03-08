infi = file('heart_talea_words.txt','r')
TXT = infi.read()
infi.close()

#TXT = filter(lambda y : y =! ';', filter(lambda x : ';' in x, TXT.split('\n')))
TXT = [y.replace(';', '') for y in filter(lambda x : ';' in x, TXT.split('\n'))]
for x in TXT : print x
