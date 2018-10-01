#coding:utf-8
#这个程序简单的调用这个脚本，https://github.com/Whale3070/ctf-coding/blob/master/convertTXT.py
#目的是灵活的选择参数。--width 90 --height 40这两个参数决定了最后输出的txt的长和宽，由于源视频不同，个人显示屏大小不同，所以需要根据情况动态选择参数。
#实验过适合的参数，确保txt刚好占满屏幕，就可以将全部png转换为txt。
import os

img = '/root/Desktop/images/'
for i in range(1,10): #10，这是png的数量，需要修改。
	cmd='python convertTXT.py -o /root/Desktop/txt/'+str(i)+'.txt --width 90 --height 40 '+'/root/Desktop/images/'+str(i)+'.png'
	#print cmd
	os.system(cmd)
