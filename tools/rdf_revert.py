import rdflib
import collections

def revert(a):
    g = rdflib.Graph()
    g.parse("../data/company/"+a+".rdf", format="xml")
    qres = g.query(
        """SELECT ?s ?p ?o 
           WHERE {
              ?s ?p ?o .
           }""")
    dict = {}
    orderdict = {}
    list = []
    for row in qres:
        str = row[0][32:] + '-' + row[1][40:]
        char = '的'
        pos = str.find(char) + 1
        str = str[pos:]
        if 'ns#type' not in str:
            dict[str] = row[2].replace('\n', '')
    for i in dict:
        list.append(i)
    list.sort()
    n=len(list)
    for i in range(n):
        if '主营业务产品及变化-公司名称' in list[i]:
            list[0], list[i] = list[i], list[0]
        if '主营业务产品及变化-主营业务' in list[i]:
            list[1],list[i]=list[i],list[1]
        if '主营业务产品及变化-主营产品' in list[i]:
            list[2], list[i] = list[i], list[2]
        if '主营业务产品及变化-主要变化' in list[i]:
            list[3], list[i] = list[i], list[3]
        if '主营业务产品及变化-行业分类' in list[i]:
            list[4], list[i] = list[i], list[4]
    for j in list:
        orderdict[j] = dict[j]
        if orderdict[j] == '':
            orderdict.pop(j)
    return orderdict