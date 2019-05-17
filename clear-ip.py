f = open("IP-out.txt",'r')
all_ip = f.read().splitlines()
s_all = set(all_ip)	

f1=open("not-scan-ip.txt",'r')
out_ip = f1.read().splitlines()
s_out = set(out_ip)

new = s_all.difference(s_out)
newlist = sorted(new)

f.close()
f1.close()

f2 = open("IP-out.txt",'w')
for i in newlist:
	f2.write(i+'\n')
	print i
f2.close()
