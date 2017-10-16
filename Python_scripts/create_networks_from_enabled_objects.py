import networkx as nx
import json

def create_networks_from_enabled_objects(PyMOL_object):
	centroid = {}
	cmd.iterate_state(-1, '1ubq', "centroid[model+'_'+resi] = (cmd.centerofmass(model+' and resi '+resi))")
	with open('file.txt', 'w') as file: 
		file.write(json.dumps(centroid))
