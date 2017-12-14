#!/usr/bin/env python3
import matplotlib
import sys
matplotlib.use('Agg')
import networkx as nx
import scipy.stats as stats
import itertools
import matplotlib.pyplot as plt
from itertools import groupby
import numpy
from collections import Counter

#Importing the network
G=nx.read_adjlist(sys.argv[1])


#Calculate average distance and output x, y lists holding histogram
def avedist (G):
	nnodes=G.number_of_nodes()
	nedges=G.number_of_edges()
	
	p = nx.shortest_path_length(G)
	dist_sequence=[]

	for x in p.keys():
		#del p[x][0]
		sum=0
		for y in p[x].keys():
			sum += p[x][y]
			
		dist_sequence.append(sum/len(p[x]))
	
	
	#Get a degree sequence
	#degree_sequence=sorted(nx.degree(G).values(),reverse=True) 
	
	#Get a distsequence rounded to the first decimal
	round_dist_seq = [ round(elem) for elem in dist_sequence ]
	
	#print("DISTSEQ")
	#print (round_dist_seq)
	x=[]
	y=[]
	
	#Group by path
	cou = dict(Counter(round_dist_seq))
	
	#Put average path as x and percentage of nodes having it on y
	for i in sorted(cou.keys()):
		x.append(i)
		y.append(cou[i]/nnodes)
		
	return (x, y)
	
	
#Plotting histogram
def drawit (x, y, name):
	plt.plot(x,y, label= name)
	plt.xlabel("Average Shortest Path")
	plt.ylabel("Percentage of nodes")
	plt.title("<D> for " + sys.argv[1])
	plt.axis([0,50 , 0, 0.2])
	plt.legend()

		
def top5(hash):
	t = sorted(hash.items(), key=lambda x:-x[1])[:5]
	for x in t:
		print(x)
def kendtau(x,y,name):
	tau, p_value = stats.kendalltau(x,y)
	print ("Kendall tau for", (name),(tau))


x, y=avedist(G)
drawit(x,y, "Original")

nx.double_edge_swap(G,nswap=5,max_tries=100)

x, y=avedist(G)
drawit(x,y, "DP_randomized")

Z=nx.gnm_random_graph(G.number_of_nodes(), G.number_of_edges())
x, y=avedist(Z)
drawit(x,y, "Fully_randomized")




plt.savefig(sys.argv[1] + ".png", dpi=1000)