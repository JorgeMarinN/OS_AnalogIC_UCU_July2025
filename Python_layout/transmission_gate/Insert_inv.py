# ---------------------------------------------------------------------
#  SG13G2 macro – custom polygons + import of sg13g2_inv_1 from library
# ---------------------------------------------------------------------
import pya

# ---------- 1. Context ------------------------------------------------
app     = pya.Application.instance()
layout  = app.main_window().current_view().active_cellview().layout()
top     = layout.top_cell()
dbu     = layout.dbu                     # 1 nm with the open PDK

def um2dbu(v_um: float) -> int:
    return int(v_um / dbu)


# ---------- 5. Import the standard-cell GDS ---------------------------
stdcell_gds = "/opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/gds/sg13g2_stdcell.gds"

opt = pya.LoadLayoutOptions()
opt.keep_cells  = True     # merge instead of replacing
opt.dbu         = dbu      # force same database unit (usually 0.001 µm)

layout.read(stdcell_gds, opt)   # cells are now part of this layout

# ---------- 6. Place sg13g2_inv_1 instance ----------------------------
inv_cell = layout.cell("sg13g2_inv_1")
if inv_cell is None:
    raise RuntimeError("Cell 'sg13g2_inv_1' not found in the library GDS.")

# Choose insertion point (in µm) – change as needed
x_um, y_um = 8.0, 1.0
trans = pya.Trans(pya.Vector(um2dbu(x_um), um2dbu(y_um)))

# Add a single instance (no array) to the top cell
top.insert(pya.CellInstArray(inv_cell.cell_index(), trans))

# ---------- 7. (Optional) Save result --------------------------------
#layout.write("updated_with_inv.gds")
print("Layout updated – sg13g2_inv_1 placed at ({:.3f}, {:.3f}) µm".format(x_um, y_um))	
print(f"Database unit (dbu) = {dbu} µm per internal unit")



