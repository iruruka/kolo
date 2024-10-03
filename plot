import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from mpl_toolkits.mplot3d import Axes3D

# CSVファイルからデータを読み込む
data = pd.read_csv('/mnt/u0.csv', header=None)
x = data.iloc[:, 0].values
y = data.iloc[:, 1].values
z = data.iloc[:, 2].values

# 3Dプロットの設定
fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# 三次元散布図としてプロット
ax.plot_trisurf(x, y, z, cmap='viridis', edgecolor='none')

# 軸ラベルの設定
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('$u_h^{(0)}$')

# 画像ファイルとして保存 (例えばPNG形式)
plt.savefig('/mnt/u0_plot.png', format='png', dpi=300)

# グラフの表示
plt.show()
