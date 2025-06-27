

#NECESARIO PARA KLAYOUT Y PYTHON
import pya


# CONFIGURAR

# pya.Application.instance() – Accede a la instancia principal de la aplicación KLayout.
#.main_window() – Obtiene la ventana principal.
#.current_view() – Consigue la vista actual del layout (el panel donde ves el diseño).
#.active_cellview() – Retorna la celda activa (puede haber varias abiertas).
#.layout() – Devuelve el objeto Layout, que representa todo el diseño cargado.
layout = pya.Application.instance().main_window().current_view().active_cellview().layout()

#Define la top cell del layout
top_cell = layout.top_cell()

#Define la tecnologia con la que se trabaja
tech = layout.technology_name


#Define la unidad minima del layout, aqui es 0.001um o 1nm
#Al crear objetos directamente con las unidades minimas, esto será en nm
#Es util esta variable para las conversiones de unidades
#Por ejemmplo es mas comodo das las coordenadas en um, asi que
#Se puede por ejemplo    ANCHO = int(ANCHO_um / dbu)
dbu = layout.dbu  # e.g., 0.001 um por unidad interna




#Define una capa para trabajar, en este caso es la del metal5_drawing
#para ver el numero se puede ver en las propiedades de las capas
layer1 = layout.layer(pya.LayerInfo(67, 0))  # Cambiar para otras capas




#ENTONCES, PARA UNA CAJA

# Definir dimensiones en micrones
# Se trabaja en coordenadas, asi que se define x1 e y1 el vertice donde inicia la caja
# y luego x2 e y2 el vertice donde termina la caja
x1_um, y1_um = 0, 0    
x2_um, y2_um = 5.0, 2.0  # Caja de 5 µm x 2 µm

# Convertir a unidades internas (int)
x1 = int(x1_um / dbu)
y1 = int(y1_um / dbu)
x2 = int(x2_um / dbu)
y2 = int(y2_um / dbu)

# Crear la caja con las coordenadas
box = pya.Box(x1, y1, x2, y2)

# Inserta la caja con la capa seleccionada
top_cell.shapes(layer1).insert(box)
