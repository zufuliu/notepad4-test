import json

path = r'D:\Program Files\Microsoft Visual Studio\Packages\_Instances\953ef33b\catalog.json'
with open(path, encoding='utf-8') as fd:
	doc = fd.read()
catalog = json.loads(doc)

with open('catalog.json', 'w', encoding='utf-8') as fd:
	fd.write(doc)

pretty = json.dumps(catalog, ensure_ascii=False, indent='\t')
pretty = '\n' + pretty + '\n'
with open('pretty.json', 'w', encoding='utf-8') as fd:
	fd.write(pretty)

with open('catalog2.json', 'w', encoding='utf-8') as fd:
	fd.write(doc)
	fd.write(pretty)

big = {}
for i in range(51):
	big[i] = catalog
pretty = json.dumps(big, ensure_ascii=False, indent='\t')
pretty = '\n[\n(\n<\n' + pretty + '\n>\n)\n]\n'
with open('big.json', 'w', encoding='utf-8') as fd:
	fd.write(pretty)

pretty = pretty.encode('gbk', 'backslashreplace')
with open('big-gbk.json', 'wb') as fd:
	fd.write(pretty)
