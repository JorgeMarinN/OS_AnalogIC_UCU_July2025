
# Enter your Python code here

# Ejecutar dentro de KLayout con la consola de Python
# o guardarlo como .lym macro y correrlo

import pya

# Configurar
layout = pya.Application.instance().main_window().current_view().active_cellview().layout()
top_cell = layout.top_cell()
tech = layout.technology_name

# Define la capa de Metal3 (verifica tu PDK)
metal3_layer = layout.layer(pya.LayerInfo(67, 20))  # Ajusta si tu layer es diferente

# Área donde quieres agregar dummy fill (ajustar según lo necesario)
x_start = -100
x_end = 500
y_start = -100
y_end = 100

# Tamaño de los "tiles" de dummy metal
tile_w = 5
tile_h = 5

# Separación entre los tiles
spacing_x = 5
spacing_y = 5

# Crear fill
for x in range(x_start, x_end, tile_w + spacing_x):
    for y in range(y_start, y_end, tile_h + spacing_y):
        box = pya.Box(x, y, x + tile_w, y + tile_h)
        top_cell.shapes(metal3_layer).insert(box)

print("✅ Dummy fill M3 generado.")
