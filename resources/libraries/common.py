
import random


def GetRowSelector(table, query):
    selector = table+"//*["
    val=''
    for item in query:
        val +=".//*[text()='"+item+"'] and "
    selector += val[0:-4] +"]"
    return selector

def CheckRow(table, query):
    selector = GetRowSelector(query)
    return selector + "//input/following-sibling::span"


def GenerateRandom(text):
    return text+str(random.randint(1, 9999))
