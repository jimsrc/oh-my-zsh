# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
#
#------------------------aplicaciones & programas
alias mendeley='$HOME/mendeleydesktop-1.10.1-linux-x86_64/bin/mendeleydesktop &'
alias matlab='/usr/local/MATLAB/R2010b/bin/matlab'
alias matlab_='/usr/local/MATLAB/R2010b/bin/matlab -nodesktop -nosplash'



#------------------------- terminal en gral
#alias cdd='cd -' # previous directory
alias mon_hdd='sudo iotop -o -d 0.3' # "-o" es para q muestre solo los activos, "-d" es segundos de actualizac
alias busca1='find -name'
alias pp='ping yahoo.com'
alias moni='ps -eo user,pcpu,pid,bsdstart,time,args --sort pcpu'
alias autoplot='cd $HOME/software; java -jar autoplot.jar &'
alias abre='nautilus ./'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias mp3='mpg123'
alias tot='totem'
export PAO=$HOME/ccin2p3/in2p3_data/
alias pao='cd $PAO'
alias pao_saber='cd $PAO/data_auger/procesamiento/data_SABER'
alias pao_histos='cd $PAO/data_auger/procesamiento/histos'
alias pao_long.term='cd $PAO/data_auger/procesamiento/long_trends'
alias tarr='tar --dereference' # para hacer hard links al comprimir symbolic links!
alias grepp='$HOME/bash/busca_caracter.sh'
alias greppp='$HOME/bash/busca_caracter_incluyendobinarios.sh'  # permite busquedas dentro de binarios 
alias grey='$HOME/bash/busca_caracter.sh "*py"'
alias utc2fecha='$HOME/bash/utc2fecha.sh'
alias fecha2utc='$HOME/bash/fecha2utc.sh'

alias png2eps='$HOME/bash/png2eps.sh'
#alias rsync_='g++ $HOME/bash/rsync_c.c -o $HOME/bash/rsync_.x; $HOME/bash/rsync_.x'
alias rsy='$HOME/python_scripts/rsync/my_rsync.py'

#
#alias q='find -ipath'
#q(){
#    pattern_grep=`echo $1 | sed "s/\\*/.\\*/g"`
#    echo $pattern_grep
#    find -ipath $1 | grep "${pattern_grep}"
#}

q(){
    pattern_grep=`echo $1 | sed "s/\\*/.\\*/g"`
    if [[ $pattern_grep = $'.\*'*$'.\*' ]]; then
        #echo " BOTH ENDS!! "
        pattern_grep="${pattern_grep[3,-3]}"
    elif [[ $pattern_grep = $'.\*'* ]]; then
        #echo "FOUND AT BEGINING!!"
        pattern_grep="${pattern_grep[3,-1]}" # extract 2 first characters
    elif [[ $pattern_grep = *$'.\*' ]]; then
        #echo "FOUND AT ENDING!!"
        pattern_grep="${pattern_grep[1,-3]}" # extract 2 last characters
    fi
    #echo " --> coloreando: " $pattern_grep
    find -ipath $1 | grep "${pattern_grep}"
}


alias duu='du -h --max-depth=1'
alias duu_ordered='du --max-depth=1 | sort -n -r'
alias dff='df -h'
alias qq='$HOME/bash/qq.sh'
alias ee='$HOME/bash/ee.sh'
alias coeficiente_correlacion='matlab -nodesktop -r coef_correlacion'
alias lss='ls -lthr' # ordena por tiempo de ultima modificacion y muestra los tamaños
                                # en formato 'human-friendly' (1K, 1M, etc)
alias lx='lss *tex'
alias todo='vim $DROP/cosas_trabajo/todo.txt'

#++++++++++++++++++++++++++++ VIM CONFIG
export EXE_VIM='/usr/bin/vim'
export EXE_VIEW='/usr/bin/view'
alias vieww='$EXE_VIEW -u $HOME/.vimrc_normal.mio' 
alias vim_normal='$EXE_VIM -u $HOME/.vimrc_normal' 
alias vim='$HOME/bash/vimx.sh vim'
alias view='$HOME/bash/vimx.sh view'
alias vim_ReadOnly_fisa='$EXE_VIM -u $HOME/.vimrc_ii_ro'                    # read-only (with fisa-vim)
alias view_ReadOnly_fisa='$EXE_VIEW -u $HOME/.vimrc_ii_ro'                    # read-only (with fisa-vim)
alias vim_ReadOnly_simple='$EXE_VIM -u $HOME/.vimrc_normal.mio_ReadOnly'    # read-only (basic) 
alias view_ReadOnly_simple='$EXE_VIEW -u $HOME/.vimrc_normal.mio_ReadOnly'    # read-only (basic) 
alias view_=view_ReadOnly_fisa
#++++++++++++++++++++++++++++++++++++++
alias lnf='ln -sf'
alias lf='lss *pdf'
alias ly='lss *py'
alias lstex='lss *tex'
alias lssh='lss *sh'
alias lsd='lss -d */'
alias lsss='ls -l --time-style=full-iso'
alias lcc='ls -l | wc -l'
alias sync_google_drive='cd /home/jim/GoogleDrive; grive'
#alias gdrive='cd /home/jim/GoogleDrive; abre'
alias m='$HOME/bash/m.sh'
alias mm='$HOME/bash/mm.sh'
alias c='$HOME/bash/c.sh'
alias cc='$HOME/bash/cc.sh'
alias ok='$HOME/bash/ok.sh'
alias acr='$HOME/bash/acrobat.sh'
alias cp='cp -p'


#####################################################
# HERRAMIENTAS DE CALCULO RAPIDO
#####################################################
#
alias calc_Z='$HOME/ASOC_ICME-FD/programitas/calcula_z.out'
alias calc_variacion_energias='python $HOME/ccmc/python/numerico/variacion_energias.py'
alias calc_ciclotron='$HOME/simulacion/pla_stochastic/freq_ciclotron/wc.x'
alias calc_Bparker='$HOME/simulacion/fokker_planck/langevin_helios_euler_rejilla/test_calc_B/calc_B.x'
alias calc_perfil_shock='$HOME/simulacion/nube/pared_turb/massive_orbits/estudios_previos/perfiles_campo/ejecutar.sh'
alias calc_Vdrift='$HOME/simulacion/fokker_planck/langevin_helios_euler_rejilla/test_Vdrift/mostrar_perfiles_drift.sh'
alias calc_hdrift='$HOME/simulacion/fokker_planck/langevin_helios_euler_rejilla/test_hdrift/mostrar_perfiles_drift.sh'
# ettercap en modo grafico:
alias ettercap_g='sudo ettercap -G'
alias nmap_os_discovery='sudo nmap -O -PN -v'
alias nmap_hostnames='sudo nmap -sP'
#
alias python_http_server='python -m SimpleHTTPServer'





######################################################
#
# SERVIDORES/CLUSTERS PARA USAR:
#
######################################################
#
# Halley
#
alias tunnel_to_halley0='ssh -L 2228:192.168.20.123:22 GRNet@200.16.117.76'
alias halley0='ssh -p 2228 jmasias@localhost'

#
# hydra (CIMA):
#
alias hydra='ssh jimmy.meza@hydra.cima.fcen.uba.ar'
#
# iafe ("caps"):
# - cluster del iafea
# - tunel para servidor 'soleil'
#   ---> soleil
#
alias iafe='ssh masiasmj@caps.iafe.uba.ar'
alias tunnel_to_soleil='ssh -L 2226:soleil:22 masiasmj@caps.iafe.uba.ar'
alias soleil='ssh -p 2226 masiasmj@localhost'
#
# in2p3:
# - aqui estan los histogramas
#
alias in2p3='ssh masiasmj@ccage.in2p3.fr'
#
# backdoor:
# -guardar webadas, html, etc...a
# - tunel para servidor 'hegea'
#   ---> ssh -X masiasmj@hegea.df.uba.ar
#
alias uba='ssh masiasmj@backdoor.df.uba.ar'
alias proxy_uba='ssh -D 9000 masiasmj@backdoor.df.uba.ar'
#
# sakura:
# - robustisima
# - matlab, gnuplot, etc
# - directorios disponibles en:
#   /export/data1
#   /export/data2
#   /export/data3
#
alias sakura='ssh masiasmj@sakura.df.uba.ar'
alias sakura_x='ssh -X masiasmj@sakura.df.uba.ar'
#
# hegea:
# - mucha memoria HD
#
#alias tunnel_to_hegea='ssh -L 2222:hegea:22 masiasmj@backdoor.df.uba.ar'
#alias hegea='ssh -p 2222 masiasmj@localhost'
alias hegea='ssh masiasmj@hegea'
#
# forbush:
#
alias tunnel_to_forbush='ssh -L 2224:forbush:22 masiasmj@backdoor.df.uba.ar'
alias forbush='ssh -t -p 2224 masiasmj@localhost'
alias forbush_copy_from_JIM='rsync -rvubt -e "ssh -p 2224" --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" "/home/jim/materias_uba/numerico_metodos_espectr/prts/enunciado_05/" masiasmj@localhost:/home/masiasmj/materias_uba/numerico_metodos_espectr/prts/enunciado_05/'
alias forbushh_copy_from_FORBUSH='rsync -rvubt -e "ssh -p 2224" --suffix="_bckp_`hostname`_`date +%d%b%Y_%H.%M.%S`" masiasmj@localhost:/home/masiasmj/materias_uba/numerico_metodos_espectr/prts/enunciado_05/ "/home/jim/materias_uba/numerico_metodos_espectr/prts/enunciado_05/"'
#
#########################################################


#########################################################
#
# JIMMY CONFIG
#
#########################################################
alias jim_git='view $HOME/ubuntu/github/COMENTARIOS.txt'
alias jim_cowsays.collection='vim $HOME/personal/cowsays/collection.txt'
alias jim_proxies='vim $HOME/personal/proxies.txt'
# python
alias jim_python.profile_scripts='cd $HOME/.ipython/profile_default/scripts_jimmy'
alias jim_python.profile.config.jim='vim $HOME/.ipython/profile_jim/ipython_config.py'
alias jim_python.profile.config.default='vim $HOME/.ipython/profile_default/ipython_config.py'
alias py_='$HOME/bash/py_qt_css_.sh &'
alias pyq='ipython qtconsole &' # --colors=linux &'
alias ipy='ipython --profile=jim'
alias ipy_normal='ipython'
alias py=ipy_normal


#################################################
#
# Abrir directorios y/o archivos:
#
#################################################
alias paper.sheaths='cd $HOME/papers_mios/sheaths/paper'
#
export SIM=$HOME/materias_uba/simulac_comp
alias sim_='cd $SIM/prts'
alias sim_p01='cd $SIM/prts/p01'
alias sim_pyc++='cd $SIM/prts/p01/pyc++'
alias sim_p02='cd $SIM/prts/p02'
alias mk='time make' # pa compilar
alias poster='cd $HOME/posters'
#alias charla='cd $HOME/charlas'

#export PAPERS=$HOME/actividad_solar/papers 
#export PAPERS=$HOME/Dropbox/shared_wcell/papers 
export PAPERS=$HOME/papers 

alias media='cd /media'

alias icrc='cd $HOME/papers_mios/auger/icrc_2015/icrc'
alias charlas='cd $HOME/charlas'
alias sheaths='cd $HOME/ASOC_ICME-FD/correlaciones/sheaths'
alias langevin_helios='cd $HOME/simulacion/fokker_planck/langevin.helios/src'
alias langevin_helios_euler='cd $HOME/simulacion/fokker_planck/langevin_helios_euler_rejilla'
alias langevin_helios_euler_INFORME='cd $HOME/informes/flujos_crs'
alias langevin_helios_euler_INFORME_PDF='ok $HOME/informes/flujos_crs/flujos.pdf'
alias nubes='cd $HOME/simulacion/nube/pared_turb/massive_orbits/sheath_family_mpi/'

alias nubes_seriestemporales_todas='ok $ASO/informes/nubes_todas/series_temporales/series_temporales_todas.pdf'
alias nubes_seriestemporales_especiales='ok $ASO/informes/nubes_especiales/series_temporales/series_temporales_especiales.pdf'

##
## PLAS directorios
## 
export PLAS_STOCHASTIC=$HOME/simulacion/pla_stochastic
alias plas='cd $PLAS_STOCHASTIC/composite_turbulence/massive_orbits'
alias plas_validations='cd $PLAS_STOCHASTIC/composite_turbulence/massive_orbits/plots/validations/src'

alias numerico='cd $HOME/materias_uba/numerico_metodos_espectr/prts/'
alias musica='cd $HOME/Música; abre'
alias musicahdd='cd /media/JIMMY\ MASIAS/JIMMY/otros/MUSICA/'
alias pap='cd $PAPERS'
alias cara='soffice /home/jim/ASOC_ICME-FD/CARACTERIZACION.ods &'
alias bashrc='vim $HOME/.bashrc'
alias mcmurdo='cd $HOME/actividad_solar/neutron_monitors/mcmurdo/; ./plot_MCMURDO.sh'
alias oulu='cd $HOME/actividad_solar/neutron_monitors/mcmurdo/; gnuplot -persist plot_OULU.gp'
alias auger_scalers='cd $HOME/ccin2p3/in2p3_data/; ./auger_scalers.sh'
alias auger_data_final='cd $HOME/ccin2p3/in2p3_data/data_auger/estudios_AoP/data/unir_con_presion; ./auger_data_final.sh'
alias libro_parks='djview "$HOME/actividad_solar/libros/books/Dasso/SD_parks_space_plasmas_2nd_ed.djvu" &'
alias libro_jackson='djview "/media/34D8CFD1D8CF8F92/Ciencia/ELECTROMAGNETISMO/Jackson J.D. - Classical electrodynamics - 1ed.djvu" &'
alias libro_risken='djview "$HOME/actividad_solar/libros/risken84_the fokker planck equation.djvu" &'
alias tesis='ok "$HOME/tesis/tesis/tesis.pdf" &'
alias tesis_qin='ok $PAPERS/tesis/qin.gang-thesis.pdf &'
alias tesis_hernan_mag='ok "$PAPERS/tesis/tesis-hga.pdf" &'
alias tesis_hernan_doc='ok "$PAPERS/tesis/tesis_hernan_doc_gap_version.pdf" &'
alias tesis_dasso='ok "$PAPERS/tesis/Tesis_3268_Dasso.pdf" &'
alias tesis_nakwacki='ok "$PAPERS/tesis/Tesis_4553_Nakwacki.pdf" &'
alias tesis_adri='ok "$PAPERS/tesis/Tesis_4918_Gulisano.pdf" &'
alias tesis_memilia='ok "$PAPERS/tesis/tesis_ruiz_version_final.pdf" &'
alias iau='ok "$HOME/iau_proceeding/masias-1 (4ta iter)/masias-1.pdf" &'
alias gap_1='ok "$HOME/gap/gap_corregido/gap.pdf" &'
alias gap_2='ok "$HOME/papers_mios/auger/version_sergio_16nov2014/long_term_tecnico.pdf" &'
alias iswi.p='ok "$HOME/charla_iswi/charla_iswi.pdf" &'
alias iswi.t='vim "$HOME/charla_iswi/charla_iswi.tex"'
alias iswi='cd $HOME/charla_iswi'
alias aso='cd $HOME/ASOC_ICME-FD/'
alias correl='cd $HOME/ASOC_ICME-FD/correlaciones/ploteos/uno_a_uno/images/; less var.sh'
alias ploteos_correl='ok $HOME/ASOC_ICME-FD/correlaciones/ploteos/uno_a_uno/reporte/reporte_resumido/ploteos_correlaciones.pdf &'
alias catalogo_icmes_richardson='ok "$HOME/actividad_solar/papers/icmes/catalogo_icmes/richardson_cane10_solarphys_near earth interplanetary coronal mass ejections during solar cycle 23(1996-2009) catalog and summary of properties.pdf"'
alias catalogo_icmes_exec_tabla='py $HOME/simulacion/utiles/read_table.py'
alias catalogo_sir_stereo='ok $HOME/actividad_solar/catalogos/ip/STEREO_Level3_SIR.pdf &'
alias catalogo_shocks='ok $HOME/actividad_solar/catalogos/ip/STEREO_Level3_Shock.pdf &'
alias catalogo_icmes_stereo='ok $HOME/actividad_solar/catalogos/ip/STEREO_Level3_ICME.pdf &'
alias catalogo_icmes_ace='ok $HOME/actividad_solar/catalogos/ip/ICME_List_from_Lan_Jian.pdf &'
alias catalogo_sir_ace='ok $HOME/actividad_solar/catalogos/ip/SIR_List_from_Lan_Jian.pdf &'
alias icmes='view "$HOME/actividad_solar/papers/icmes/catalogo_icmes/lista_richardson_and_cane_1996-2007.txt"'
alias heliophysics_ii='ok "$HOME/actividad_solar/libros/Heliophysics/heliophysics_ii_space storms and radiation causes and effects.pdf" &'
alias heliophysics_iii='ok "$HOME/actividad_solar/libros/Heliophysics/heliophysics_iii_evolving solar activity climates space earth.pdf" &'
alias heliophysics_figures_i='ok $HOME/actividad_solar/libros/Heliophysics/HeliophysicsIfigures.pdf'
alias heliophysics_figures_ii='ok $HOME/actividad_solar/libros/Heliophysics/HeliophysicsIIfigures.pdf'
alias heliophysics_figures_iii='ok $HOME/actividad_solar/libros/Heliophysics/HeliophysicsIIIfigures.pdf'
alias libro_krall='ok "$HOME/actividad_solar/libros/./krall_principles of plasma physics.pdf"'
alias libro_schlickeiser='djview "$HOME/actividad_solar/libros/schlickeiser02_cosmic ray astrophysics.djvu" &'
alias libro_shalchi='ok "$HOME/actividad_solar/libros/shalchi09_nonlinear cosmic ray diffusion theories.pdf"'
alias libro_randall_atmosph='ok "$HOME/materias_uba/numerico_metodos_espectr/randall_colorado/LIBRO_COMPLETO.pdf"'
alias nrl_formulary='ok "/home/jim/actividad_solar/libros/./NRL_FORMULARY_11.pdf" &'
alias ciencia='cd /media/JIMMY\ MASIAS/JIMMY_BACKUP/windows_18aug/Ciencia'


##
## ICMEs, sheaths, MCs, etc...
##
export ASO=$HOME/ASOC_ICME-FD
alias icmes_case.studies='cd $ASO/icmes_richardson/data/case_studies'
alias icmes_nCR='cd $ASO/icmes_richardson/data/mean_profiles/ace/etc/n_CR'
alias icmes_histos='cd $ASO/icmes_richardson/data/histogramas/figs'
alias icmes_correls='cd $ASO/correlaciones/contrastes/especiales/png'
alias icmes_correls.src='cd $ASO/correlaciones/contrastes/src'
#alias icmes_correlaciones='cd $HOME/ASOC_ICME-FD/correlaciones/contrastes/_all_.vs._all_/png/.'
#alias icmes_histograms='cd $HOME/ASOC_ICME-FD/icmes_richardson/data/histogramas/figs/sub_selections/.'
alias icmes_GCR_profiles='cd $ASO/icmes_richardson/data/calc_A_and_tau/figs/.'
alias icmes_GCR_profiles.ii='cd $ASO/icmes_richardson/data/GCR_profiles/.'
alias icmes_mean_profiles='cd $ASO/icmes_richardson/data/mean_profiles/.'
alias icmes_params.nc_code.ace='cd $ASO/icmes_richardson/data/codes/ace; lss *py'
alias icmes_params.nc_code.omni='cd $ASO/icmes_richardson/data/codes/omni; lss *py'
alias icmes_sheaths.groups='cd $HOME/informes/sheaths.jul2015'
alias icmes_correls_figs.omni='cd $ASO/correlaciones/contrastes/_all_.vs._all_/png/omni'
alias icmes_correls_figs.ace='cd $ASO/correlaciones/contrastes/_all_.vs._all_/png/ace'
alias icmes_densities.surf='cd $ASO/icmes_richardson/data/mean_profiles/ace/sheaths/plots/MCflag2/wShiftCorr/_test_Vmc_'


alias cv_english='cd $HOME/application/cv_general/english/'
alias cv_espaniol='cd $HOME/application/cv_general/espaniol/'
alias icrc_asorey='ok $HOME/actividad_solar/papers/asorey_etal11_icrc_measurement_low_energy_cosmic_radiation_water_cherenkov_detector_array_pierre_auger_observatory.pdf &'
alias libro_greider='ok "$HOME/actividad_solar/libros/greider_cosmic rays at earth.pdf"'
alias poster_cospar='ok $HOME/posters/poster_cospar/poster_cospar.pdf &'
alias oficina='cd /media/Elements/oficina/'
alias RSYNC='$HOME/bash/RSYNC.sh'
alias sincronizar_TODO_='/home/masiasmj/bash/sincronizar_TODO_at_forbush.sh'
alias scr='$HOME/bash/screenlist.sh'
alias snd='$HOME/bash/snd.sh'
alias taill='tail -f'
alias mkdirr='mkdir -p'
alias t='time'
alias libro_oksendal92='ok $HOME/actividad_solar/libros/oksendal92_stochastic_differential_equations_applications.pdf'
alias libro_caceres02='ok $HOME/actividad_solar/libros/caceres02_elementos_estadistica_de_no_equilibrio_aplicaciones.pdf'
alias libro_gardiner04='djview "$HOME/actividad_solar/libros/gardiner04_handbook of stochastic methods.djvu" &'
alias libro_kampen='ok $HOME/actividad_solar/libros/kampen_stochastic_processes_in_physics_and_chemistry.pdf'
alias libro_karatzas96='ok $HOME/actividad_solar/libros/karatzas96_brownian_motion_and_stochastic_calculus.pdf'




#
#--------------------PAPERS
#
alias paper_mitsakou.etal14='ok "$PAPERS/shocks/mitsakou_moussas14_statistical study icmes sheaths during soar cycle 23 1996 2008.pdf"'
alias paper_guo.etal10='ok "$PAPERS/sheaths/guo_etal10_statistical_properties_icmes_and_sheaths_during_intense_geom_storms.pdf"'
alias paper_shalchi04='ok "$PAPERS/ecuaciones/shalchi_bieber_matthaeus_qin04_apj_nonlinear parallel perpendicular diffusion crs weak turbulence.pdf"'
alias paper_tautz13='ok "$PAPERS/simulaciones/tautz_lerche13_modification cosmic ray energy spectra stochastic acceleration.pdf"'
alias paper_jokipii99='ok "$PAPERS/simulaciones/giacalone_jokipii99_apj_transport cosmic rays across turbulent magnetic field.pdf"'
alias paper_parker65='ok "$PAPERS/parker65_passage_of_energetic_charged_particles_through_interplanetary_space.pdf"'
alias paper_asorey_dasso12='ok "$PAPERS/auger/dasso_asorey12_asr_scalers_heliospheric_modulation_cosmic_rays.pdf"'
alias paper_icrc_asorey11='ok "$PAPERS/asorey_etal11_icrc_measurement_low_energy_cosmic_radiation_water_cherenkov_detector_array_pierre_auger_observatory.pdf"'
alias paper_icrc_sato11='ok "$PAPERS/auger/pierre_auger_operation_and_monitoring_icrc11.pdf"'
alias paper_jordan11='ok "$PAPERS/jordan_spence_blake_shaul11_revisiting_two_step_forbush_decrease.pdf"'
alias paper_richardson11='ok "$PAPERS/cme/richardson_cane11_solphys_galactic cosmic ray response to interplanetary cme 1995 2009.pdf"'
alias paper_ruffolo09='ok "$PAPERS/reuniones/krittinatham_ruffolo09_drifts orbits of energetic particles in interplanetary magnetic flux rope.pdf"'
alias paper_wibberenz98='ok "$PAPERS/muy_relacionado/wibberenz_roux_potgieter_bieber98_transient effects and disturbed conditions.pdf"'
alias paper_zhang99='ok "$PAPERS/estocasticos/zhang99_markov stochastic process theory of cosmic modulation.pdf"'
alias paper_sturrock67='ok "$PAPERS/mfi_irregularities/hall_sturrock67_diffusion scattering acceleration of particles by stochastic electromagnetic fields.pdf"'
alias paper_guo_giacalone13='ok "$PAPERS/simulaciones/guo_giacalone13_small scale gradients charged particles heliospheric magnetic field.pdf"'
alias paper_richardson94='ok "$PAPERS/dasso_1/cane_richardson_wibberenz94_cosmic ray decreases and shock structure multispacecraft study.pdf"'



#
#-------------------- MUSICA
#
alias playlist_jimi.hendrix='audacious $HOME/Música/pls_jimi.hendrix.pls &'
alias playlist_retro='audacious $HOME/Música/pls_retro.pls &'
alias playlist_xxx='audacious $HOME/Música/pls_xxx.pls &'
alias playlist_the.cure='audacious $HOME/Música/pls_the.cure.pls &'
alias playlist_rollings='audacious $HOME/Música/pls_rollingstones.pls &'
alias playlist_pod='audacious $HOME/Música/pls_pod.pls &'
alias playlist_tricky='audacious $HOME/Música/playlist_tricky.pls &'
alias playlist_rubenstein='audacious $HOME/Música/pls_rubenstein.pls &'
alias playlist_shostakovich='audacious $HOME/Música/pls_shostakovich.pls &'
alias playlist_deftones='audacious $HOME/Música/pls_deftones.pls &'
alias playlist_acdc='audacious $HOME/Música/pls_acdc.pls &'
alias playlist_chopin='audacious /home/jim/Música/pls_chopin.pls &'
alias playlist_aggggg_csmr='audacious /home/jim/Música/aggggg_csmr.pls &'
alias playlist_hours='audacious /home/jim/Música/pls_hours.pls &'
alias playlist_sndtrck_underworld='audacious /home/jim/Música/pls_sndtrck_underworld.pls &'
alias playlist_alan_parson='audacious /home/jim/Música/pls_alan_parson.pls &'
alias playlist_deep_forest='audacious /home/jim/Música/pls_deep_forest.pls &'
alias playlist_sndtrck_blade='audacious /home/jim/Música/pls_blade.pls &'
alias playlist_schumann='audacious /home/jim/Música/pls_schumann.pls &'
alias playlist_stenhammar='audacious /home/jim/Música/pls_stenhammar.pls &'
alias playlist_dvorak='audacious /home/jim/Música/dvorak.pls &'
alias playlist_violin='audacious /home/jim/Música/violin_01.pls &'
alias playlist_rock='audacious /home/jim/Música/rock.pls &'
alias playlist_scarlatti='audacious /home/jim/Música/scarlatti.pls &'
alias playlist_creedence='audacious /home/jim/Música/pls_creedence.pls &'
alias playlist_creed='audacious $HOME/Música/pls_creed.pls &'
alias playlist_smashing_pumpkins='audacious $HOME/Música/playlist_smashing_pumpkins.pls &'
alias playlist_u2='audacious $HOME/Música/playlist_u2.pls &'
alias playlist_rachmaninov='audacious $HOME/Música/pls_rachmaninov.pls &'
alias playlist_salsa='audacious $HOME/Música/pls_salsa.pls &'
alias playlist_metallica='audacious $HOME/Música/pls_metallica.pls &'
alias playlist_sndtrck_dragon='audacious $HOME/Música/pls_dragon_tatoo.pls &'
alias playlist_slipknot='audacious $HOME/Música/pls_slipknot.pls &'
alias cancion_class_stenhamar_01='totem "/media/JIMMY MASIAS/JIMMY/otros/MUSICA/Stenhammar - Symphonies, Piano Concertos, Orchestral Music/CD 4/05 - Serenade for Orchestra - Canzonetta. Tempo di valse, un poco tranquillo.flac" &'
alias cancion_class_beethoven_02='mp3 "/home/jim/Música/clasica/beethoven - symphony no.7 in a, op. 92, 2nd movement allegretto.mp3"'
alias cancion_class_rachmaninov='mp3 "/media/JIMMY MASIAS/JIMMY/otros/MUSICA/Jimmy-Dvorak1/rachmaninov - piano concerto 3.mp3"'


#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
##
## CONFIGURACION DEL ZSH SOBRE LA MARCHA
## 
# 
alias zshrc='vim $HOME/.zshrc'
alias zshrc_load_tools.zsh='vim $ZSH_CUSTOM/load_tools.zsh'
alias zshrc_history='vim $ZSH/lib/history.zsh'
alias zshrc_alias='vim $ZSH_CUSTOM/alias.zsh'
alias alias_=zshrc_alias
# para cambiar el tema
#alias zshrc_theme_change='ZSH_THEME="aussiegeek"; source $ZSH/oh-my-zsh.sh'
alias zshrc_theme_change='ZSH_THEME="af-magic"; source $ZSH/oh-my-zsh.sh'
alias change_theme=zshrc_theme_change
# ver todos los temas aqui:
# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# cheveres:
# - aussiegeek
# - af-magic
# - cypher 
# - darkblood 
# - dieter 
#


#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#
# COMANDOS HACK
#
alias habilitar_ip_forward='sudo sysctl -w net.ipv4.ip_forward=1'
alias mitm_ip_4_to_9='sudo ettercap -Tq -M arp:remote -i wlan0 /192.168.1.2-9/ /192.168.1.1/'   # man in the middle en quiet mode (-q)
# hack stuff...
alias hack_mitm_4_to_9='habilitar_ip_forward; mitm_ip_4_to_9'
alias hack_grafico_de_wlan0='sudo etherape -i wlan0'
alias hack_wireshark='sudo tshark -f "tcp port http and not host 192.168.1.3" -i wlan0 -w' # hay q dar como argumento la ubicacion del .cap en donde guardo el trafico
alias hack_watch_alive_hosts='watch -n 15 "sudo nmap -sP 192.168.1.1-24"'
alias hack_os_detect='sudo nmap -O --max-os-tries 50' # detecta OS en modo muy agresivo

# hack stuff...
# alias hack_mitm_4_to_9=
# alias hack_grafico_de_wlan0=
# alias hack_wireshark=
# alias hack_watch_alive_hosts=
# alias hack_os_detect=

## OTROS
alias hist=history

## FUNCIONES GIT
git.commit(){
    # dos argumentos:
    # $1: archivo a submitir (puede ser "." tambien)
    # $2: comentario para el commit
    git add $1
    git commit -m "$2"
    #git push -u origin master
}
git.add(){
    git add $1
    git status
}
alias git.config='vim $HOME/.gitconfig'
alias git.push='git push -u origin master'
alias git.pull='git pull origin master'
alias git.show_info='git remote show origin'
alias git.list-branches='git branch -a --color'
#alias git.logs-nice='git log --pretty=format:"%h - %an, %ar : %s" | cat'
alias git.logs-nice='git lg1'  # esto usa un alias definido en ~/.gitconfig
alias git.url='git config --get remote.origin.url'
git.report(){
    echo " |"
    echo " |"
    echo " |"
    echo " v"
    git.list-branches;      # list of branches
    echo 
    git.logs-nice;          # show logs (commits & others)
    echo "\n"
    git status              # status (s'thing to commit??)
    echo
}

#+++++ MPI
alias mpirun_sys=/usr/local/bin/mpirun      # to not to confuse with Anaconda's

#+++++++++ TMUX
export TMUX=$HOME/local/bin/tmux
alias tmux="$TMUX -2 "  # assumes the terminal supports 256 colours
alias tmux.conf='vim $HOME/.tmux.conf'
alias tl='$TMUX -2 list-sessions'
alias tc='$TMUX -2 new -s'
alias ta='$TMUX -2 attach -t'
# ### other tricks ###
# <Prefix> & for killing a window
# <Prefix> x for killing a pane

##
