#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��G ��dP }���~�߮����P[y�uGMe�i���I �d�cS�zhI�dO!2SOSjhdz�I�A6��SL�dC@4=G�5S�54�4��dL���&Ls	�4�F��&LM�d&%
I����SG����@���  k�!4������`�!Y��¨����jæ�Y/�N�<�D�?���ʍQ��Ø���􅦪��M�H�;<f%�U���X�A����4����y��$[�H�=w�I���,�M���        ��� ��{<�۝���"��|�d�q.�G	_�ėj�f	��·��O�d[V�9��d�]ߎ��D�"G���$K�p��p�e�&��)5*QR��t�[
c�H)�ȃE̩��|*� u��HDD���k]�Y�yQ	�eD*�vB�������`��"�D� @�+X%@�|U�熨���a�fT��@�"��i�wU����)����m5^���W�e}����*��\���,�#���@�;=̳�׻_�.IB��!��9}��W�TSg@��B�����^�&��]'j��/�U���vݤ�a���̌ĵ�E�#��c,G�v�n߭�TA�{{��ޓ�Ս�&/@���t�~�L��9�t�}<��U�T�Gq/h����y4.*�֏�*(P�Wh�w�<}}x
���k 3o���M��oщ��qr��hR�b��y/B}��(�[�$2�w��+~M6���(S���-�g��al�0:������si�ҙ�F�Uh_�
Չ
�z�V=�v]��QN:��˙�2�na	���
_�4pcl|Wx�.��X_3mȈ�P3:�5kGDB[>���C��!L��T��$T�2#,� Q7��tQ	2����^@��X��w��B4だ�2�6���(?ۀe��+�E�.A���ƉJ���;m�K�O`N�+�ʀ$s	CI�C�p�tw�Г�M�h�;��!@�qq}���o$�Ll�i�j��t���,@�a��K9�F�C\�:R���2o�=/�2�p�p$�o�EI"�ٌ��
`�hI!ˬ��J� �}f������I��M�.w���@�)2��

Ret��$��_�7�k

Dd�`U3nm^�BZ�-Z�-.��T��4Ș�r�K9
*^V����A�,�y#-J f�Րh�6�|j;���c�vP�V�ٵ�s���Bǝ$e�L�,��h�\��ê�UL�4��M��$e��"�5��a����3/#OD�R�Os�B�����	�dn�^���*N�ı�ܑN$?����