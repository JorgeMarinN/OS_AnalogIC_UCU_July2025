
import pya

# Obtener layout, celda activa y dbu (database unit = microns por unidad interna)
layout = pya.Application.instance().main_window().current_view().active_cellview().layout()
top_cell = layout.cell("Metal3_dummy")
dbu = layout.dbu  # e.g., 0.001 um por unidad interna

# Capa de Metal3 Drawing: Layer 30 / Datatype 0
metal3_layer = layout.layer(pya.LayerInfo(30, 0))

# ----- Definición del área en micrómetros -----
x_start_um = 130
x_end_um = 220
y_start_um = -130
y_end_um = 130
# Tamaño de los tiles (en micrómetros)
tile_w_um = 5
tile_h_um = 5
spacing_x_um = 2
spacing_y_um = 2

# ----- Conversión a database units (entero) -----
x_start = int(x_start_um / dbu)
x_end = int(x_end_um / dbu)
y_start = int(y_start_um / dbu)
y_end = int(y_end_um / dbu)

tile_w = int(tile_w_um / dbu)
tile_h = int(tile_h_um / dbu)
spacing_x = int(spacing_x_um / dbu)
spacing_y = int(spacing_y_um / dbu)

# ----- Crear dummy fill -----
for x in range(x_start, x_end, tile_w + spacing_x):
    for y in range(y_start, y_end, tile_h + spacing_y):
        box = pya.Box(x, y, x + tile_w, y + tile_h)
        top_cell.shapes(metal3_layer).insert(box)

# Zoom automático al área generada
mw = pya.Application.instance().main_window()
cv = mw.current_view()
cv.zoom_box(pya.Box(x_start, y_start, x_end, y_end))

print("✅ Dummy fill M3 generado correctamente en capa 30/0.")

