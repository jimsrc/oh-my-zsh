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
export ANACONDA=$HOME/anaconda
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
