# -*- coding: utf-8 -*-
"""
Created on Wed Nov  6 11:26:04 2019

@author: yypho
"""

import csv, datetime, cobra
import numpy as np
from cobra import Model
import json
modelfile = 'iML1515.xml'
model = cobra.io.read_sbml_model(modelfile)  # 读SBML模型
pfba_solution = cobra.flux_analysis.pfba(model)  # pFBA分析
print(pfba_solution)