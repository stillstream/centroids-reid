# -*- coding: utf-8 -*-
# @Software: PyCharm
# @description: 
# @Author: KevinW
# @Time: Oct 11, 2022
import numpy as np
# npy
a = np.load('./output-dir/results.npy')
print(a.shape)
print(a)

# pkl
# import pickle as p
# f = open('./xsub/val_label.pkl', 'rb')
# b = p.load(f)
# b = list(b)  # 将b转换为list类型，才能转换成numpy类型
# b = np.array(b)
# print(b.shape)