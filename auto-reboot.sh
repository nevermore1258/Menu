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
echo 'echo "เซิร์ฟเวอร์ได้รับการบูตใหม่เรียบร้อยแล้วในวันที่ $tanggal pukul $waktu." >> /root/log-reboot.txt' >> /usr/local/bin/Reboot-Server 
echo '/sbin/shutdown -r now' >> /usr/local/bin/Reboot-Server 
chmod +x /usr/local/bin/Reboot-Server
fi

echo "-------------------------------------------"
echo " เมนูระบบรีบูตอัตโนมัติ "
echo "-------------------------------------------"
echo "1.  ตั้งค่าการรีบูตอัตโนมัติ 1 ชั่วโมง"
echo "2.  ตั้งค่าการรีบูตอัตโนมัติ 6 ชั่วโมง"
echo "3.  ตั้งค่าการรีบูตอัตโนมัติ 12 ชั่วโมง"
echo "4.  ตั้งค่าการรีบูตอัตโนมัติ 1 วัน"
echo "5.  ตั้งค่าการรีบูตอัตโนมัติ 1 สัปดาห์"
echo "6.  ตั้งค่าการรีบูตอัตโนมัติ 1 เดือน"
echo "7.  ปิดการรีบูตอัตโนมัติ"
echo "8.  ดูประวัติการรีบูต"
echo "9.  ล้างประวัติการรีบูต"
echo "-------------------------------------------"
read -p "เลือกคำสั่ง (พิมพ์เลข): " x

if test $x -eq 1; then
echo "10 * * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "การรีบูตอัตโนมัติได้รับการตั้งค่าหนึ่งครั้งในหนึ่งชั่วโมง."
elif test $x -eq 2; then
echo "10 */6 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "การรีบูตอัตโนมัติได้รับการตั้งค่าเรียบร้อยแล้ว 6 ชั่วโมง."
elif test $x -eq 3; then
echo "10 */12 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "การรีบูตอัตโนมัติได้รับการตั้งค่าเรียบร้อยแล้ว 12 ชั่วโมง."
elif test $x -eq 4; then
echo "10 0 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "การรีบูตอัตโนมัติได้รับการตั้งค่าวันละครั้ง."
elif test $x -eq 5; then
echo "10 0 */7 * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "ระบบรีบูตอัตโนมัติได้รับการตั้งค่าสัปดาห์ละครั้ง."
elif test $x -eq 6; then
echo "10 0 1 * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo "ระบบรีบูตอัตโนมัติได้รับการตั้งค่าเดือนละครั้ง."
elif test $x -eq 7; then
rm -f /etc/cron.d/Reboot-Server
echo "ปิดใช้งานการรีบูตอัตโนมัติเรียบร้อยแล้ว."
elif test $x -eq 8; then
if [ ! -e /root/log-reboot.txt ]; then
	echo "ไม่มีประวัติรีบูต"
	else 
	echo 'LOG REBOOT'
	echo "-------"
	cat /root/log-reboot.txt
fi
elif test $x -eq 9; then
echo "" > /root/log-reboot.txt
echo "บันทึกการรีบูตอัตโนมัติสำเร็จแล้ว!"
else
echo "ไม่พบตัวเลือกในเมนู."
exit
fi
