#!/bin/bash
# GO TO ROOT
MYIP=$(wget -qO- ipv4.icanhazip.com);
myip=$(wget -qO- ipv4.icanhazip.com);

clear
fi
if [ ! -e /usr/local/bin/Reboot-Server ]; then
echo '#!/bin/bash' > /usr/local/bin/Reboot-Server 
echo 'tanggal=$(date +"%m-%d-%Y")' >> /usr/local/bin/Reboot-Server 
echo 'waktu=$(date +"%T")' >> /usr/local/bin/Reboot-Server 
echo 'echo "������������Ѻ��úٵ�������º����������ѹ��� $tanggal pukul $waktu." >> /root/log-reboot.txt' >> /usr/local/bin/Reboot-Server 
echo '/sbin/shutdown -r now' >> /usr/local/bin/Reboot-Server 
chmod +x /usr/local/bin/Reboot-Server
fi

echo "-------------------------------------------"
echo " �����к��պٵ�ѵ��ѵ� "
echo "-------------------------------------------"
echo "1.  ��駤�ҡ���պٵ�ѵ��ѵ� 1 �������"
echo "2.  ��駤�ҡ���պٵ�ѵ��ѵ� 6 �������"
echo "3.  ��駤�ҡ���պٵ�ѵ��ѵ� 12 �������"
echo "4.  ��駤�ҡ���պٵ�ѵ��ѵ� 1 �ѹ"
echo "5.  ��駤�ҡ���պٵ�ѵ��ѵ� 1 �ѻ����"
echo "6.  ��駤�ҡ���պٵ�ѵ��ѵ� 1 ��͹"
echo "7.  �Դ����պٵ�ѵ��ѵ�"
echo "8.  �ٻ���ѵԡ���պٵ"
echo "9.  ��ҧ����ѵԡ���պٵ"
echo "-------------------------------------------"
read -p "���͡����� (������Ţ): " x

if test $x -eq 1; then
echo "10 * * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "����պٵ�ѵ��ѵ����Ѻ��õ�駤��˹�觤����˹�觪������."
elif test $x -eq 2; then
echo "10 */6 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "����պٵ�ѵ��ѵ����Ѻ��õ�駤�����º�������� 6 �������."
elif test $x -eq 3; then
echo "10 */12 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "����պٵ�ѵ��ѵ����Ѻ��õ�駤�����º�������� 12 �������."
elif test $x -eq 4; then
echo "10 0 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "����պٵ�ѵ��ѵ����Ѻ��õ�駤���ѹ�Ф���."
elif test $x -eq 5; then
echo "10 0 */7 * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "�к��պٵ�ѵ��ѵ����Ѻ��õ�駤���ѻ�����Ф���."
elif test $x -eq 6; then
echo "10 0 1 * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "�к��պٵ�ѵ��ѵ����Ѻ��õ�駤����͹�Ф���."
elif test $x -eq 7; then
rm -f /etc/cron.d/Reboot-Server
echo "�Դ��ҹ����պٵ�ѵ��ѵ����º��������."
elif test $x -eq 8; then
if [ ! -e /root/log-reboot.txt ]; then
	echo "����ջ���ѵ��պٵ"
	else 
	echo 'LOG REBOOT'
	echo "-------"
	cat /root/log-reboot.txt
fi
elif test $x -eq 9; then
echo "" > /root/log-reboot.txt
echo "�ѹ�֡����պٵ�ѵ��ѵ����������!"
else
echo "��辺������͡�����."
exit
fi
