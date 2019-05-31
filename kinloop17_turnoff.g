//genesis
// kkit Version 11 flat dumpfile
 
// Saved on Mon Jan 10 09:18:16 2011
 
include kkit {argv 1}
 
FASTDT = 0.01
SIMDT = 0.001
CONTROLDT = 0.1
PLOTDT = 0.1
MAXTIME = 2000
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
simundump geometry /kinetics/geometry 0 1.6667e-21 3 sphere "" white black 0 \
  0 0
simundump geometry /kinetics/geometry[1] 0 1e-18 3 sphere "" white black 0 0 \
  0
simundump geometry /kinetics/geometry[2] 0 1e-18 3 sphere "" white black 0 0 \
  0
simundump geometry /kinetics/geometry[3] 0 1e-18 3 sphere "" white black 0 0 \
  0
simundump geometry /kinetics/geometry[4] 0 1e-18 3 sphere "" white black 0 0 \
  0
simundump text /kinetics/notes 0 ""
call /kinetics/notes LOAD \
""
simundump text /kinetics/geometry/notes 0 ""
call /kinetics/geometry/notes LOAD \
""
simundump text /kinetics/geometry[1]/notes 0 ""
call /kinetics/geometry[1]/notes LOAD \
""
simundump text /kinetics/geometry[2]/notes 0 ""
call /kinetics/geometry[2]/notes LOAD \
""
simundump text /kinetics/geometry[3]/notes 0 ""
call /kinetics/geometry[3]/notes LOAD \
""
simundump text /kinetics/geometry[4]/notes 0 ""
call /kinetics/geometry[4]/notes LOAD \
""
simundump kreac /kinetics/degrade_Y 1 0.2 0.01 "" white black 3 -1 0
simundump text /kinetics/degrade_Y/notes 0 ""
call /kinetics/degrade_Y/notes LOAD \
""
simundump kpool /kinetics/phosphatase 0 1e-12 0.5 0.5 300 300 0 0 600 0 \
  /kinetics/geometry[1] 25 black 8 -2 0
simundump text /kinetics/phosphatase/notes 0 ""
call /kinetics/phosphatase/notes LOAD \
""
simundump kenz /kinetics/phosphatase/P 0 0 0 0 0 600 0.083333 0.4 0.1 0 0 "" \
  red 25 "" 8 -1 0
simundump text /kinetics/phosphatase/P/notes 0 ""
call /kinetics/phosphatase/P/notes LOAD \
""
simundump kpool /kinetics/P_MAPK 1 1e-12 0 0 0 0 0 0 599.99 0 \
  /kinetics/geometry red black 6 0 0
simundump text /kinetics/P_MAPK/notes 0 ""
call /kinetics/P_MAPK/notes LOAD \
""
simundump kenz /kinetics/P_MAPK/PLA2 1 0 0 0 0 599.99 0.041667 20 5 0 0 "" \
  red red "" 5 1 0
simundump text /kinetics/P_MAPK/PLA2/notes 0 ""
call /kinetics/P_MAPK/PLA2/notes LOAD \
""
simundump kenz /kinetics/P_MAPK/phosph_KA 0 0 0 0 0 599.99 0.0083335 40 10 0 \
  0 "" red red "" 3 -2 0
simundump text /kinetics/P_MAPK/phosph_KA/notes 0 ""
call /kinetics/P_MAPK/phosph_KA/notes LOAD \
""
simundump kpool /kinetics/MAPK 1 1e-12 1 1 599.99 599.99 0 0 599.99 0 \
  /kinetics/geometry red black 10 0 0
simundump text /kinetics/MAPK/notes 0 ""
call /kinetics/MAPK/notes LOAD \
""
simundump kreac /kinetics/Ca_activate_Raf 0 1.1111e-05 8 "" white black 5 6 0
simundump text /kinetics/Ca_activate_Raf/notes 0 ""
call /kinetics/Ca_activate_Raf/notes LOAD \
""
simundump kpool /kinetics/AA 1 1e-12 0 0 0 0 0 0 599.99 0 /kinetics/geometry \
  red black 2 0 0
simundump text /kinetics/AA/notes 0 ""
call /kinetics/AA/notes LOAD \
""
simundump kpool /kinetics/act_PKC 1 0 0 0 0 0 0 0 599.99 0 /kinetics/geometry \
  blue black 8 4 0
simundump text /kinetics/act_PKC/notes 0 ""
call /kinetics/act_PKC/notes LOAD \
""
simundump kenz /kinetics/act_PKC/MAPKK 1 0 0 0 0 599.99 0.0083335 4 1 0 0 "" \
  red blue "" 8 3 0
simundump text /kinetics/act_PKC/MAPKK/notes 0 ""
call /kinetics/act_PKC/MAPKK/notes LOAD \
""
simundump kpool /kinetics/PKC 1 1e-12 1 1 599.99 599.99 0 0 599.99 0 \
  /kinetics/geometry blue black 2 4 0
simundump text /kinetics/PKC/notes 0 ""
call /kinetics/PKC/notes LOAD \
""
simundump kpool /kinetics/APC 1 1e-12 1 1 599.99 599.99 0 0 599.99 4 \
  /kinetics/geometry red black 4 0 0
simundump text /kinetics/APC/notes 0 ""
call /kinetics/APC/notes LOAD \
""
simundump kpool /kinetics/Ca_dend 0 1e-12 0.08 0.08 48 48 0 0 600 4 \
  /kinetics/geometry[1] 54 black 2 7 0
simundump text /kinetics/Ca_dend/notes 0 ""
call /kinetics/Ca_dend/notes LOAD \
""
simundump kpool /kinetics/K_A 0 0 1 1 600 600 0 0 600 0 /kinetics/geometry[2] \
  25 black 1 -4 0
simundump text /kinetics/K_A/notes 0 \
  "This is the unphosphorylated K_A channel, which has the\nfull channel conductance."
call /kinetics/K_A/notes LOAD \
"This is the unphosphorylated K_A channel, which has the" \
"full channel conductance."
simundump kpool /kinetics/P_K_A 0 0 0 0 0 0 0 0 600 0 /kinetics/geometry[2] \
  52 black 5 -4 0
simundump text /kinetics/P_K_A/notes 0 ""
call /kinetics/P_K_A/notes LOAD \
""
simundump kreac /kinetics/dephosph 0 0.05 0 "" white black 3 -6 0
simundump text /kinetics/dephosph/notes 0 ""
call /kinetics/dephosph/notes LOAD \
""
simundump kpool /kinetics/Raf 0 0 1 1 600 600 0 0 600 0 /kinetics/geometry[3] \
  blue black 2 5 0
simundump text /kinetics/Raf/notes 0 ""
call /kinetics/Raf/notes LOAD \
""
simundump kpool /kinetics/act_Raf 0 0 0 0 0 0 0 0 600 0 /kinetics/geometry[3] \
  blue black 10 4 0
simundump text /kinetics/act_Raf/notes 0 ""
call /kinetics/act_Raf/notes LOAD \
""
simundump kenz /kinetics/act_Raf/MAPKKK 0 0 0 0 0 600 0.0041665 40 10 0 0 "" \
  red blue "" 10 3 0
simundump text /kinetics/act_Raf/MAPKKK/notes 0 ""
call /kinetics/act_Raf/MAPKKK/notes LOAD \
""
simundump kreac /kinetics/activate_PKC 1 2.7779e-06 2 "" white black 5 3 0
simundump text /kinetics/activate_PKC/notes 0 ""
call /kinetics/activate_PKC/notes LOAD \
""
simundump kpool /kinetics/AminoAcids 0 0 1 1 600 600 0 0 600 4 \
  /kinetics/geometry[4] 33 black 12 -2 0
simundump text /kinetics/AminoAcids/notes 0 ""
call /kinetics/AminoAcids/notes LOAD \
""
simundump kreac /kinetics/turnover 0 0.001 0.00046 "" white black 10 -1 0
simundump text /kinetics/turnover/notes 0 ""
call /kinetics/turnover/notes LOAD \
""
simundump xgraph /graphs/conc1 0 0 2200.6 0 5.3954 0
simundump xgraph /graphs/conc2 0 0 2200.6 0 1 0
simundump xplot /graphs/conc1/act_PKC.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" blue 0 0 1
simundump xplot /graphs/conc1/AA.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" red 0 0 1
simundump xplot /graphs/conc2/P_MAPK.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" red 0 0 1
simundump xplot /graphs/conc2/K_A.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" 25 0 0 1
simundump xgraph /moregraphs/conc3 0 0 2200.6 0 4 0
simundump xgraph /moregraphs/conc4 0 0 2200.6 0 4 0
simundump xcoredraw /edit/draw 0 -2 14 -8 9
simundump xtree /edit/draw/tree 0 \
  /kinetics/#[],/kinetics/#[]/#[],/kinetics/#[]/#[]/#[][TYPE!=proto],/kinetics/#[]/#[]/#[][TYPE!=linkinfo]/##[] \
  "edit_elm.D <v>; drag_from_edit.w <d> <S> <x> <y> <z>" auto 0.6
simundump xtext /file/notes 0 1
xtextload /file/notes \
"kinase_loop.g: crude approx to PKC-MAPK loop." \
"kinloop2.g: Put in names, to make the crudeness of the model even" \
"more apparent." \
"26 Aug 2010. kinloop9.g: Slightly reduced Ca binding to PKC for" \
"turnon." \
"kinloop10: Major change to old kinloop: put in a separate Ca-binding" \
"process. Does not turn on with regular stim, though it is " \
"bistable." \
"kinloop11.g: based on kinloop10, fine-tuned numbers so it" \
"turns on with regular stim but does not turn on with steady" \
"0.2 uM Ca." \
"kinloop12.g: Reduced Kd for Ca from 2 to 1.4." \
"kinloop12a.g: Fix for kinloop12.g: The basal level of Ca_dend is" \
"was fixed to 0.08 (was 0.15 uM in kinlooop 12)." \
"kinloop17_turnoff.g: Added a turnover reaction to the phosphatase." \
"This turns it into a system which spontaneously switches off after" \
"a while, in this case about 1000 sec." \
""
addmsg /kinetics/AA /kinetics/degrade_Y SUBSTRATE n 
addmsg /kinetics/APC /kinetics/degrade_Y PRODUCT n 
addmsg /kinetics/phosphatase/P /kinetics/phosphatase REAC eA B 
addmsg /kinetics/turnover /kinetics/phosphatase REAC A B 
addmsg /kinetics/phosphatase /kinetics/phosphatase/P ENZYME n 
addmsg /kinetics/P_MAPK /kinetics/phosphatase/P SUBSTRATE n 
addmsg /kinetics/P_MAPK/PLA2 /kinetics/P_MAPK REAC eA B 
addmsg /kinetics/act_PKC/MAPKK /kinetics/P_MAPK MM_PRD pA 
addmsg /kinetics/phosphatase/P /kinetics/P_MAPK REAC sA B 
addmsg /kinetics/P_MAPK/phosph_KA /kinetics/P_MAPK REAC eA B 
addmsg /kinetics/act_Raf/MAPKKK /kinetics/P_MAPK MM_PRD pA 
addmsg /kinetics/P_MAPK /kinetics/P_MAPK/PLA2 ENZYME n 
addmsg /kinetics/APC /kinetics/P_MAPK/PLA2 SUBSTRATE n 
addmsg /kinetics/P_MAPK /kinetics/P_MAPK/phosph_KA ENZYME n 
addmsg /kinetics/K_A /kinetics/P_MAPK/phosph_KA SUBSTRATE n 
addmsg /kinetics/act_PKC/MAPKK /kinetics/MAPK REAC sA B 
addmsg /kinetics/phosphatase/P /kinetics/MAPK MM_PRD pA 
addmsg /kinetics/act_Raf/MAPKKK /kinetics/MAPK REAC sA B 
addmsg /kinetics/Ca_dend /kinetics/Ca_activate_Raf SUBSTRATE n 
addmsg /kinetics/Ca_dend /kinetics/Ca_activate_Raf SUBSTRATE n 
addmsg /kinetics/Raf /kinetics/Ca_activate_Raf SUBSTRATE n 
addmsg /kinetics/act_Raf /kinetics/Ca_activate_Raf PRODUCT n 
addmsg /kinetics/P_MAPK/PLA2 /kinetics/AA MM_PRD pA 
addmsg /kinetics/degrade_Y /kinetics/AA REAC A B 
addmsg /kinetics/activate_PKC /kinetics/AA REAC A B 
addmsg /kinetics/activate_PKC /kinetics/AA REAC A B 
addmsg /kinetics/act_PKC/MAPKK /kinetics/act_PKC REAC eA B 
addmsg /kinetics/activate_PKC /kinetics/act_PKC REAC B A 
addmsg /kinetics/act_PKC /kinetics/act_PKC/MAPKK ENZYME n 
addmsg /kinetics/MAPK /kinetics/act_PKC/MAPKK SUBSTRATE n 
addmsg /kinetics/activate_PKC /kinetics/PKC REAC A B 
addmsg /kinetics/P_MAPK/PLA2 /kinetics/APC REAC sA B 
addmsg /kinetics/degrade_Y /kinetics/APC REAC B A 
addmsg /kinetics/Ca_activate_Raf /kinetics/Ca_dend REAC A B 
addmsg /kinetics/Ca_activate_Raf /kinetics/Ca_dend REAC A B 
addmsg /kinetics/dephosph /kinetics/K_A REAC B A 
addmsg /kinetics/P_MAPK/phosph_KA /kinetics/K_A REAC sA B 
addmsg /kinetics/dephosph /kinetics/P_K_A REAC A B 
addmsg /kinetics/P_MAPK/phosph_KA /kinetics/P_K_A MM_PRD pA 
addmsg /kinetics/P_K_A /kinetics/dephosph SUBSTRATE n 
addmsg /kinetics/K_A /kinetics/dephosph PRODUCT n 
addmsg /kinetics/Ca_activate_Raf /kinetics/Raf REAC A B 
addmsg /kinetics/Ca_activate_Raf /kinetics/act_Raf REAC B A 
addmsg /kinetics/act_Raf/MAPKKK /kinetics/act_Raf REAC eA B 
addmsg /kinetics/act_Raf /kinetics/act_Raf/MAPKKK ENZYME n 
addmsg /kinetics/MAPK /kinetics/act_Raf/MAPKKK SUBSTRATE n 
addmsg /kinetics/act_PKC /kinetics/activate_PKC PRODUCT n 
addmsg /kinetics/AA /kinetics/activate_PKC SUBSTRATE n 
addmsg /kinetics/AA /kinetics/activate_PKC SUBSTRATE n 
addmsg /kinetics/PKC /kinetics/activate_PKC SUBSTRATE n 
addmsg /kinetics/turnover /kinetics/AminoAcids REAC B A 
addmsg /kinetics/phosphatase /kinetics/turnover SUBSTRATE n 
addmsg /kinetics/AminoAcids /kinetics/turnover PRODUCT n 
addmsg /kinetics/act_PKC /graphs/conc1/act_PKC.Co PLOT Co *act_PKC.Co *blue 
addmsg /kinetics/AA /graphs/conc1/AA.Co PLOT Co *AA.Co *red 
addmsg /kinetics/P_MAPK /graphs/conc2/P_MAPK.Co PLOT Co *P_MAPK.Co *red 
addmsg /kinetics/K_A /graphs/conc2/K_A.Co PLOT Co *K_A.Co *25 
enddump
// End of dump

call /kinetics/K_A/notes LOAD \
"This is the unphosphorylated K_A channel, which has the" \
"full channel conductance."
complete_loading
