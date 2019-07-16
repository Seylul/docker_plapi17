#!/usr/local/bin/python
# -*- coding: utf-8 -*-
import sys
import packetlogic2
#sys.path.append('/usr/lib/python2.7/site-packages/plapi-17.2.0py1-py2.7-linux-x86_64.egg')
pl = packetlogic2.connect("<ROOTPATH>", "<USERNAME>", "<PASSWORD>")
s = pl.Statistics()
argd1 = sys.argv[1]
argd2 = sys.argv[2]
filename = "/output/report_result_" + argd1
f = open(filename,'w')
rootpath= "<ROOTPATH>"
category = s.list(argd1, argd2,rootpath)

for i in category:
        rootpath2 =rootpath + i['name'] + '<SECOND_PATH>'
	print >> f, 'REMOTE VHOSTS\n', rootpath2


