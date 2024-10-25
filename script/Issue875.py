import os.path
import random

# https://github.com/zufuliu/notepad4/issues/875

def GetFileExtList():
	extList = ['empty']
	path = 'assoc.log'
	os.system(f'assoc > {path}')
	if os.path.isfile(path):
		with open(path, 'r', encoding='utf-8') as fd:
			lines = fd.read().splitlines()
			for line in lines:
				index = line.find('=')
				if index > 0:
					extList.append(line[:index])
	return extList

def MakeTestDir(dirCount, fileCount):
	extList = GetFileExtList()
	print(f'dir: {dirCount}, file: {fileCount}, file ext: {len(extList)}')
	root = 'test'
	if not os.path.exists(root):
		os.makedirs(root)
	for i in range(dirCount):
		path = rf'{root}\{i}'
		if not os.path.exists(path):
			os.makedirs(path)
	for i in range(fileCount):
		ext = random.choice(extList)
		path = rf'{root}\{i}{ext}'
		if not os.path.exists(path):
			with open(path, 'wb') as fd:
				pass

# MakeTestDir(5000, 105_000)
