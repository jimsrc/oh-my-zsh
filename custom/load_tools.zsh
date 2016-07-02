HDF5DIR='$HOME/hdf5-1.8.12-linux-x86_64-shared'

# sourceamos el ROOT //// NO FUNCIONA CON ZSH :'(
# NOTA: para q funciona con el ZSH, le agregue los "cd ..."
dir_pwd=$PWD
cd $HOME/root
source $HOME/root/bin/thisroot.sh
cd $dir_pwd
#
##
#
# sourceamos el CDAS (17/mar/2014)
#
export WORK=$HOME
export CDAS=$WORK/CDAS
CDASVERSION=$(basename $CDAS/version_cdas-*.tgz .tgz | sed -e 's/version_cdas-//' | sed -e 's/p[0-9]//')
export CMTVERSION=$(basename $CDAS/CMT/*)
export CMTROOT=$CDAS/CMT/$CMTVERSION
export CMTINSTALLAREA=$CDAS/
source ${CMTROOT}/mgr/setup.sh
source $CDAS/Work/$CDASVERSION/cmt/cdas.sh
export CMTPATH=$CDAS/:$CDAS/IoFd:$CMTPATH:$WORK

# for Anaconda (python packages):
#export ANACONDA=$HOME/anaconda
export ANACONDA=$HOME/anaconda2
export PATH=$ANACONDA/bin:$PATH
#export PATH=${HOME}/.local/bin${PATH:+:$PATH}
#export DYLD_LIBRARY_PATH=/usr/local/lib:$ROOTSYS/lib:$ANACONDA/lib
#ulimit -n 2048

#------- hdf5 (12.jul.2015)
export PATH=/usr/local/hdf5/bin:$PATH

source $HOME/magnetocosmics/setupMAGNETOCOSMICS.sh
export DROP=$HOME/Dropbox

#------- CDF utilities (11.jul.2015, JIMMY :P)
#source /usr/local/cdf/bin/definitions.B  # esto es para leer .cdf (para "forbush" aun no lo configure (22.sep.2015)

#alias zzz='ls $HOME/*py'

#++++++ charlas ++++++++
charla(){
    name=$*
    cd "$HOME/charlas/$name"
    return
}

function _charla () {
    # might be possible to improve this using glob, without the basename trick
    typeset -a charlas_dir
    charlas_dir=($HOME/charlas/*)
    charlas_dir=$charlas_dir:t
    _arguments "*:name:($charlas_dir)"
}

compdef _charla charla
#++++++++++++++++++++++++
#
#
#+++++++++++ other tools +++++++++++++++
# author: jimmy
#
# cdd: Enter to directory of a full-path-filename
cdd(){
    fname_full=$1
    fname=`basename ${fname_full}`
    dir_of_file=`echo ${fname_full} | sed "s/\\/$fname//g"`
    cd ${dir_of_file}
    unset fname_full  fname  dir_of_file
}

#------ directorios de trabajo
#export AUGER_HISTOS_DATA="$HOME/AUGER_RAW_DATA/data"
#--- directorios de trabajo
#export AUGER_HISTOS_DATA="$HOME/auger_ascii/histogramas/root"
export AUGER_REPO=$HOME/ccin2p3/in2p3_data/data_auger/procesamiento/histos.aop_all
export AUGER_LOCAL_HISTOS="$HOME/auger_ascii/histogramas/root"
export AUGER_RAWDATA="/media/Elements/AUGER_RAWDATA"
export AUGER_RAWDATA_HSTS="$AUGER_RAWDATA/data"
export AUGER_RAWDATA_MON="$AUGER_RAWDATA/monit"
export MoIO="$HOME/CDAS/MoIO/v5r6" # aqui esta el src/, Linux../, cmt/
export PAO_PROCESS=$PAO/data_auger/procesamiento
export AUGER_LOCAL_INTERMEDIATE="$HOME/_tmp_/intermediate"


#--- otros paths
export MEAN_PROFILES_ACE=$HOME/ASOC_ICME-FD/icmes_richardson/data/mean_profiles/ace


#--- otros
export PLA1=$HOME/simulacion/pla_stochastic/composite_turbulence/single_orbits


#EOF
