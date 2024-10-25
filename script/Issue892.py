import sys
import os.path
import csv

# https://github.com/zufuliu/notepad4/issues/892

def naive_sniff(doc):
	table = [0]*128*2 # only first two rows
	preferred = ';|\t,'
	offset = 0
	chPrev = '\0'
	for ch in doc:
		if ch in preferred:
			table[offset + ord(ch)] += 1
		elif ch == '\r' or (ch == '\n' and chPrev != '\r'):
			offset += 128
			if offset == 256:
				break
		chPrev = ch

	offset = 128
	delimiter = ','
	max_column = 0
	for ch in preferred:
		index = ord(ch)
		first = table[index]
		second = table[offset + index]
		if first | second:
			delta = abs(first - second)
			column = min(first, second)
			if column >= 4*delta: # 75%
				if column > max_column:
					max_column = column
					delimiter = ch
	return delimiter

def test_file(path, verbose):
	with open(path, 'rb') as fd:
		content = fd.read()
	try:
		doc = content.decode('utf-8')
	except UnicodeDecodeError:
		doc = content.decode('cp1252')
	dialect = csv.Sniffer().sniff(doc)
	delimiter = naive_sniff(doc)
	if verbose or delimiter != dialect.delimiter:
		print(path)
		print(f'naive: delimiter=[{delimiter}]')
		print(f'python: delimiter=[{dialect.delimiter}], quote={dialect.quotechar}/{dialect.doublequote}, escape={dialect.escapechar}')

def test_folder(root):
	with os.scandir(root) as it:
		for entry in it:
			if entry.name.endswith('.csv') and entry.is_file():
				try:
					test_file(entry.path, False)
				except Exception:
					print(entry.path)

if __name__ == '__main__':
	path = sys.argv[1] if len(sys.argv) > 1 else ''
	if os.path.isfile(path):
		test_file(path, True)
	elif os.path.isdir(path):
		test_folder(path)
	else:
		print(f'Usage: {sys.argv[0]} CSV file or folder')
