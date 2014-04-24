# -*- coding: utf-8 -*-

import re
import codecs

def transliterate(string):

    capital_letters = {u'А': u'A',
                       u'Б': u'B',
                       u'В': u'V',
                       u'Г': u'G',
                       u'Д': u'D',
                       u'Е': u'E',
                       u'Ё': u'E',
                       u'З': u'Z',
                       u'И': u'I',
                       u'Й': u'Y',
                       u'К': u'K',
                       u'Л': u'L',
                       u'М': u'M',
                       u'Н': u'N',
                       u'О': u'O',
                       u'П': u'P',
                       u'Р': u'R',
                       u'С': u'S',
                       u'Т': u'T',
                       u'У': u'U',
                       u'Ф': u'F',
                       u'Х': u'H',
                       u'Ъ': u'',
                       u'Ы': u'Y',
                       u'Ь': u'',
                       u'Э': u'E',}

    capital_letters_transliterated_to_multiple_letters = {u'Ж': u'Zh',
                                                          u'Ц': u'Ts',
                                                          u'Ч': u'Ch',
                                                          u'Ш': u'Sh',
                                                          u'Щ': u'Sch',
                                                          u'Ю': u'Yu',
                                                          u'Я': u'Ya',}


    lower_case_letters = {u'а': u'a',
                       u'б': u'b',
                       u'в': u'v',
                       u'г': u'g',
                       u'д': u'd',
                       u'е': u'e',
                       u'ё': u'e',
                       u'ж': u'zh',
                       u'з': u'z',
                       u'и': u'i',
                       u'й': u'y',
                       u'к': u'k',
                       u'л': u'l',
                       u'м': u'm',
                       u'н': u'n',
                       u'о': u'o',
                       u'п': u'p',
                       u'р': u'r',
                       u'с': u's',
                       u'т': u't',
                       u'у': u'u',
                       u'ф': u'f',
                       u'х': u'h',
                       u'ц': u'ts',
                       u'ч': u'ch',
                       u'ш': u'sh',
                       u'щ': u'sch',
                       u'ъ': u'',
                       u'ы': u'y',
                       u'ь': u'',
                       u'э': u'e',
                       u'ю': u'yu',
                       u'я': u'ya',}

    for cyrillic_string, latin_string in capital_letters_transliterated_to_multiple_letters.iteritems():
        string = re.sub(ur"%s([а-я])" % cyrillic_string, ur'%s\1' % latin_string, string)

    for dictionary in (capital_letters, lower_case_letters):

        for cyrillic_string, latin_string in dictionary.iteritems():
            string = string.replace(cyrillic_string, latin_string)

    for cyrillic_string, latin_string in capital_letters_transliterated_to_multiple_letters.iteritems():
        string = string.replace(cyrillic_string, latin_string.upper())

    return string

def klava(s):
    lower_case_letters = {u'а': u'f',
                   u'б': u',',
                   u'в': u'd',
                   u'г': u'u',
                   u'д': u'l',
                   u'е': u't',
                   u'ё': u'`',
                   u'ж': u';',
                   u'з': u'p',
                   u'и': u'b',
                   u'й': u'q',
                   u'к': u'r',
                   u'л': u'k',
                   u'м': u'v',
                   u'н': u'y',
                   u'о': u'j',
                   u'п': u'g',
                   u'р': u'h',
                   u'с': u'c',
                   u'т': u'n',
                   u'у': u'e',
                   u'ф': u'a',
                   u'х': u'[',
                   u'ц': u'w',
                   u'ч': u'x',
                   u'ш': u'i',
                   u'щ': u'o',
                   u'ъ': u']',
                   u'ы': u's',
                   u'ь': u'm',
                   u'э': u'\'',
                   u'ю': u'.',
                   u'я': u'z',}
    for c in s:
        s = s.replace(c, lower_case_letters[c])
    return s
        
    


path = 'D:\\gdic\\lang\\Russian.dic'
#out = 'D:\\gdic\\lang\\RuTrans.dic'
out = 'D:\\gdic\\lang\\RuKlava.dic'
infile = codecs.open(path,'r',encoding='cp1251')
outfile = open(out, 'w')
num = 10
for line in infile:
    line = line.strip().lower()
##    tr = transliterate(line)
    tr = klava(line)
    outfile.write(tr.lower()+'\n')
##    num -=1
##    if num==0:
##        break
    

infile.close()
outfile.close()
