#CTF:http://www.wechall.net/challenge/can_you_readme/index.php
from PIL import Image
from pytesseract import image_to_string
import requests
import codecs

headers= {'Host': 'www.wechall.net',\
                'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101 Firefox/52.0',\
                'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',\
                #'Accept-Language': "en-US,en;q=0.5",\  
                #'Referer': Purl,\
                'Cookie':'WC=10816014-36365-FLWyPFms9Ah0uKl0',\
                'Upgrade-Insecure-Requests': '1'}
def GetPic():
	global Session
	url = "http://www.wechall.net/challenge/can_you_readme/gimme.php"
	Session = requests.Session()
	GetPic = Session.get(url,headers=headers)
	
	with open('pic.png','wb') as f:
		f.write(GetPic.content)	

	img=Image.open('pic.png')
	text=image_to_string(img,lang='eng')
	#print text
	return text
def postAns(answer):
	Purl="http://www.wechall.net/challenge/can_you_readme/index.php?solution="+ answer + "&cmd=Answer"

        post_url = Session.get(Purl,headers=headers)
	contents=post_url.text
	f = codecs.open('index.html','w','utf-8')

	#with open('index.html','w') as f:
	f.write(contents)
if __name__ == '__main__':
	text=GetPic()
	postAns(text)
	
