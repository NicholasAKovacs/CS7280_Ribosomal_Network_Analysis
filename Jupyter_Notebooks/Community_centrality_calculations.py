
# coding: utf-8

# In[1]:

import pandas as pd
pd.set_option('display.max_rows', 10)
pd.set_option('display.max_columns', 100)

# To remove pandas copy warnings (may need to turn on if writing new functions):
import warnings
warnings.filterwarnings('ignore')

import numpy as np
from Bio.PDB import *
import community
import networkx as nx
import igraph as ig
from sklearn.metrics.cluster import normalized_mutual_info_score
import plotly.plotly as py
import plotly.graph_objs as go
from plotly.offline import download_plotlyjs, init_notebook_mode, plot, iplot
init_notebook_mode(connected=True)
get_ipython().magic(u'matplotlib inline')
from IPython.display import Image


# In[2]:

ThTh_edges = pd.read_csv('../Ring_output/1VY4/1VY4_LSU_rRNA+rProtein_edges.txt', sep='\t')
ThTh_edges


# In[3]:

ThTh_nodes = pd.read_csv('../Ring_output/1VY4/1VY4_LSU_rRNA+rProtein_nodes_xyz_modified.txt')
ThTh_nodes


# In[4]:

def plot_nodes(df):    
    
    data = []
    
    for rPro in set(df['rProtein']):
        
        rPro_df = df[df['rProtein'] == rPro]
        data.append(
        go.Scatter3d(
            x = rPro_df['x'],
            y = rPro_df['y'],
            z = rPro_df['z'],
            text = 
                rPro_df['Residue']
                +' '+rPro_df['Dssp'],
            mode = 'markers',
            name = rPro
            )
        )

    layout = go.Layout(
        title = 'Thermus thermophilus Nodes (Atoms) Colored by rProtein',
        showlegend = True
    )

    fig = go.Figure(data=data, layout=layout)
    iplot(fig)


# In[5]:

plot_nodes(ThTh_nodes)


# Unofortunately, I only modified the txt files that I use to make the plots, the xml file still does not have an updated x, y, z. However, I still try and use the dataframe as often as possible

# In[6]:

G_ThTh = nx.read_graphml('../Ring_output/1VY4/1VY4_LSU_rRNA+rProtein_network.xml')


# In[7]:

G_ThTh.nodes['n0']


# In[8]:

G_ThTh.edges[('n0', 'n118', 0)]


# In[9]:

def print_top_bottom_5(metric):
    top5 = {key: metric[key] for key in sorted(metric, key=metric.get, reverse=True)[:5]}
    bottom5 = {key: metric[key] for key in sorted(metric, key=metric.get, reverse=False)[:5]}
    print('top5:')
    for x in top5:
        print(x, '\t', top5[x])
    print('bottom5:')
    for x in bottom5:
        print(x, '\t', bottom5[x])


# In[10]:

def print_centrality(graph):
    degree = nx.degree_centrality(graph)
    #closeness = nx.closeness_centrality(graph) #takes a long time
    #harmonic = nx.harmonic_centrality(graph) #takes a long time
    #betweenness = nx.betweenness_centrality(graph) #takes a long time
    eigenvector = nx.eigenvector_centrality_numpy(graph)
    # pagerank_085 = nx.pagerank_numpy(graph, alpha=0.85) #takes a long time
    # Katz does not work on multigraph
    print('degree:')
    print_top_bottom_5(degree)
    #print('\ncloseness:')
    #print_top_bottom_5(closeness)
    #print('\nharmonic:')
    #print_top_bottom_5(harmonic)
    #print('\nbetweenness:')
    #print_top_bottom_5(betweenness)
    print('\neigenvector:')
    print_top_bottom_5(eigenvector)
    #print('\npagerank alpha=0.85:')
    #print_top_bottom_5(pagerank_085)


# ### Takes a while to run

# In[11]:

print_centrality(G_ThTh)


# In[12]:

def plot_nodes_partitions(df):  
    
    data = []
    
    for partition_count in range(df['partition'].max()):
        
        partition_df = df[df['partition'] == partition_count]
        data.append(
        go.Scatter3d(
            x = partition_df['x'],
            y = partition_df['y'],
            z = partition_df['z'],
            text = 
                partition_df['Residue']
                +' '+partition_df['Dssp']
                +' '+partition_df['Chain']
                +' '+partition_df['rProtein'],
            mode = 'markers',
            name = 'partition'+str(partition_count)
            )
        )
        
    layout = go.Layout(
        title = 'Coloring SaCe rProteins by Community',
        showlegend = True
    )

    fig = go.Figure(data=data, layout=layout)
    iplot(fig)


# In[13]:

def plot_louvain(res, G, make_plot=True):
    partition = community.best_partition(G, resolution=res, weight='Energy')
    partition_df = pd.DataFrame.from_dict(partition, orient='index').reset_index()
    partition_df.rename(columns={0:'partition'}, inplace=True)
    ThTh_partition = ThTh_nodes.join(partition_df)
    ThTh_partition = ThTh_partition.drop(['index'], axis=1)
    print('Resolution:', res)
    print('Number of partitions:',len(set(partition.values())))
    print('Modularity:', community.modularity(partition, G))
    if make_plot == True:
        plot_nodes_partitions(ThTh_partition)
    return(partition, ThTh_partition)


# In[14]:

louvain5, lv5_df = plot_louvain(5, G_ThTh)


# In[15]:

louvain10, lv10_df = plot_louvain(10, G_ThTh, False)


# In[16]:

lv10_df


# In[17]:

normalized_mutual_info_score(list(louvain5.values()), list(louvain10.values()))


# In[18]:

resolution = np.linspace(0.1, 10, num=49, endpoint=True, retstep=False, dtype=None)


# In[19]:

def make_prtn_mod_res_df(resolution_list, G):
    modularity_list = []
    partition_list = []
    
    for res in resolution:
        partition = community.best_partition(G, resolution=res, weight='Energy')
        num_partitions = len(set(partition.values()))
        modularity = community.modularity(partition, G)
        modularity_list.append(modularity)
        partition_list.append(num_partitions)
    
    df = pd.DataFrame(
        {'Resolution':resolution_list,
         'Num_Partitions':partition_list,
         'Modularity':modularity_list})
    
    return(df)


# ### This next cell takes a crazy long time to run, graph below may be an old version

# In[25]:

prtn_mod_res_df = make_prtn_mod_res_df(resolution, G_ThTh)

# Create traces
trace0 = go.Scatter(
    x = prtn_mod_res_df['Resolution'],
    y = prtn_mod_res_df['Num_Partitions'],
    mode = 'lines',
    name = 'Partitions'
)
trace1 = go.Scatter(
    x = prtn_mod_res_df['Resolution'],
    y = prtn_mod_res_df['Modularity'],
    mode = 'lines',
    name = 'Modularity',
    yaxis='y2'
)


layout = go.Layout(
    title='Modularity and Parition Number vs. Louvain Resoution',
    xaxis=dict(
        title='Louvain Resolution'
    ),
    yaxis=dict(
        title='Number of Partitions'
    ),
    yaxis2=dict(
        title='Modularity',
        titlefont=dict(
            color='rgb(148, 103, 189)'
        ),
        tickfont=dict(
            color='rgb(148, 103, 189)'
        ),
        overlaying='y',
        side='right'
    )
)

data = [trace0, trace1]
fig = go.Figure(data=data, layout=layout)
iplot(fig)


# ### Output makes no sense, all nodes are communities

# In[20]:

ig_G = ig.Graph.Read_GraphML('../Ring_output/1VY4/1VY4_LSU_rRNA+rProtein_network.xml')


# In[21]:

def walktrap_output(stps):
    walktrap = ig.Graph.community_walktrap(ig_G, weights='Energy', steps=stps)
    print('Steps:', stps)
    print('Optimal count:', walktrap.optimal_count)
    print('Modularity:', ig_G.modularity(membership=walktrap.as_clustering()))
    return([e for l in walktrap.merges for e in l])


# In[22]:

walktrap2 = walktrap_output(2)


# In[23]:

walktrap4 = walktrap_output(4)


# In[24]:

walktrap6 = walktrap_output(6)


# In[25]:

walktrap8 = walktrap_output(8)


# In[26]:

walktrap10 = walktrap_output(10)


# In[27]:

normalized_mutual_info_score(walktrap2, walktrap4)

