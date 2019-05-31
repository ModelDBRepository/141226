//genesis
// kkit Version 11 flat dumpfile
 
// Saved on Fri Jan  7 15:56:07 2011
 
include kkit {argv 1}
 
FASTDT = 0.01
SIMDT = 0.001
CONTROLDT = 0.1
PLOTDT = 0.1
MAXTIME = 200
TRANSIENT_TIME = 2
VARIABLE_DT_FLAG = 0
DEFAULT_VOL = 1e-18
VERSION = 11.0
setfield /file/modpath value /home2/bhalla/scripts/modules
kparms
 
//genesis

initdump -version 3 -ignoreorphans 1
simobjdump doqcsinfo filename accessname accesstype transcriber developer \
  citation species tissue cellcompartment methodology sources \
  model_implementation model_validation x y z
simobjdump table input output alloced step_mode stepsize x y z
simobjdump xtree path script namemode sizescale
simobjdump xcoredraw xmin xmax ymin ymax
simobjdump xtext editable
simobjdump xgraph xmin xmax ymin ymax overlay
simobjdump xplot pixflags script fg ysquish do_slope wy
simobjdump group xtree_fg_req xtree_textfg_req plotfield expanded movealone \
  link savename file version md5sum mod_save_flag x y z
simobjdump geometry size dim shape outside xtree_fg_req xtree_textfg_req x y \
  z
simobjdump kpool DiffConst CoInit Co n nInit mwt nMin vol slave_enable \
  geomname xtree_fg_req xtree_textfg_req x y z
simobjdump kreac kf kb notes xtree_fg_req xtree_textfg_req x y z
simobjdump kenz CoComplexInit CoComplex nComplexInit nComplex vol k1 k2 k3 \
  keepconc usecomplex notes xtree_fg_req xtree_textfg_req link x y z
simobjdump stim level1 width1 delay1 level2 width2 delay2 baselevel trig_time \
  trig_mode notes xtree_fg_req xtree_textfg_req is_running x y z
simobjdump xtab input output alloced step_mode stepsize notes editfunc \
  xtree_fg_req xtree_textfg_req baselevel last_x last_y is_running x y z
simobjdump kchan perm gmax Vm is_active use_nernst notes xtree_fg_req \
  xtree_textfg_req x y z
simobjdump transport input output alloced step_mode stepsize dt delay clock \
  kf xtree_fg_req xtree_textfg_req x y z
simobjdump proto x y z
simobjdump text str
simundump geometry /kinetics/geometry 0 9.9998e-19 3 sphere "" white black 0 \
  0 0
simundump text /kinetics/notes 0 ""
call /kinetics/notes LOAD \
""
simundump kpool /kinetics/P_MAPK 1 1e-12 0 0 0 0 0 0 599.99 4 \
  /kinetics/geometry red black 6 0 0
simundump text /kinetics/P_MAPK/notes 0 ""
call /kinetics/P_MAPK/notes LOAD \
""
simundump kenz /kinetics/P_MAPK/phosph_KA 0 0 0 0 0 599.99 0.0083335 40 10 0 \
  0 "" red red "" 3 -2 0
simundump text /kinetics/P_MAPK/phosph_KA/notes 0 ""
call /kinetics/P_MAPK/phosph_KA/notes LOAD \
""
simundump kpool /kinetics/K_A 0 0 1 1 600 600 0 0 600 0 /kinetics/geometry 25 \
  black 1 -4 0
simundump text /kinetics/K_A/notes 0 \
  "This is the unphosphorylated K_A channel, which has the\nfull channel conductance."
call /kinetics/K_A/notes LOAD \
"This is the unphosphorylated K_A channel, which has the" \
"full channel conductance."
simundump kpool /kinetics/P_K_A 0 0 0 0 0 0 0 0 600 0 /kinetics/geometry 52 \
  black 5 -4 0
simundump text /kinetics/P_K_A/notes 0 ""
call /kinetics/P_K_A/notes LOAD \
""
simundump kreac /kinetics/dephosph 0 0.05 0 "" white black 3 -6 0
simundump text /kinetics/dephosph/notes 0 ""
call /kinetics/dephosph/notes LOAD \
""
simundump text /kinetics/geometry/notes 0 ""
call /kinetics/geometry/notes LOAD \
""
simundump xgraph /graphs/conc1 0 0 443 1e-06 0.92797 0
simundump xgraph /graphs/conc2 0 0 443 0 0.01528 0
simundump xplot /graphs/conc2/P_MAPK.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" red 0 0 1
simundump xplot /graphs/conc2/K_A.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" 25 0 0 1
simundump xgraph /moregraphs/conc3 0 0 443 0 4 0
simundump xgraph /moregraphs/conc4 0 0 443 0 4 0
simundump xcoredraw /edit/draw 0 -2 12 -8 9
simundump xtree /edit/draw/tree 0 \
  /kinetics/#[],/kinetics/#[]/#[],/kinetics/#[]/#[]/#[][TYPE!=proto],/kinetics/#[]/#[]/#[][TYPE!=linkinfo]/##[] \
  "edit_elm.D <v>; drag_from_edit.w <d> <S> <x> <y> <z>" auto 0.6
simundump xtext /file/notes 0 1
xtextload /file/notes \
"7 Jan 2011" \
"Skeleton model to test KA effect on electrica properties of model" \
"CA1 neuron."
addmsg /kinetics/P_MAPK/phosph_KA /kinetics/P_MAPK REAC eA B 
addmsg /kinetics/P_MAPK /kinetics/P_MAPK/phosph_KA ENZYME n 
addmsg /kinetics/K_A /kinetics/P_MAPK/phosph_KA SUBSTRATE n 
addmsg /kinetics/dephosph /kinetics/K_A REAC B A 
addmsg /kinetics/P_MAPK/phosph_KA /kinetics/K_A REAC sA B 
addmsg /kinetics/dephosph /kinetics/P_K_A REAC A B 
addmsg /kinetics/P_MAPK/phosph_KA /kinetics/P_K_A MM_PRD pA 
addmsg /kinetics/P_K_A /kinetics/dephosph SUBSTRATE n 
addmsg /kinetics/K_A /kinetics/dephosph PRODUCT n 
addmsg /kinetics/P_MAPK /graphs/conc2/P_MAPK.Co PLOT Co *P_MAPK.Co *red 
addmsg /kinetics/K_A /graphs/conc2/K_A.Co PLOT Co *K_A.Co *25 
enddump
// End of dump

call /kinetics/K_A/notes LOAD \
"This is the unphosphorylated K_A channel, which has the" \
"full channel conductance."
complete_loading
