#coding:utf-8
import ftplib

host = '10.10.10.116'
username = 'anonymous'
password = ''

f = ftplib.FTP(host)  # 实例化FTP对象
f.login(username, password)  # 登录

# 获取当前路径
pwd_path = f.pwd()
print("FTP path:", pwd_path)

entries = []
f.dir(entries.append)
print "%d entries:" % len(entries)
for entry in entries:
	print entry

def ftp_upload():
    '''以二进制形式上传文件'''
    file_remote = '1.png'
    file_local = '/root/Documents/upload-test/1.png'
    bufsize = 1024  
    fp = open(file_local, 'rb')
    f.storbinary('STOR ' + file_remote, fp, bufsize)
    fp.close()

ftp_upload()
f.quit()
