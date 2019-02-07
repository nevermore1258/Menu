INTERFACE=`ifconfig | head -n1 | awk '{print $1}' | cut -d ':' -f 1`
TODAY=$(vnstat -i $INTERFACE | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')
YESTERDAY=$(vnstat -i $INTERFACE | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')
WEEK=$(vnstat -i $INTERFACE -w | grep "current week" | awk '{print $9" "substr ($10, 1, 1)}')
RXWEEK=$(vnstat -i $INTERFACE -w | grep "current week" | awk '{print $3" "substr ($10, 1, 1)}')
TXWEEK=$(vnstat -i $INTERFACE -w | grep "current week" | awk '{print $6" "substr ($10, 1, 1)}')
MOUNT=$(vnstat -i $INTERFACE | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')
RXMOUNT=$(vnstat -i $INTERFACE | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($10, 1, 1)}')
TXMOUNT=$(vnstat -i $INTERFACE | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($10, 1, 1)}')
TOTAL=$(vnstat -i $INTERFACE | grep "total:" | awk '{print $8" "substr ($9, 1, 1)}')
RXTOTAL=$(vnstat -i $INTERFACE | grep "rx:" | awk '{print $2" "substr ($9, 1, 1)}')
TXTOTAL=$(vnstat -i $INTERFACE | grep "tx:" | awk '{print $5" "substr ($9, 1, 1)}')

clear
echo ""
if [[ -e /usr/local/bin/Check-Thai ]]; then
	echo -e "แบนด์วิดท์ ${GRAY}✿.｡.:* *.:｡✿*ﾟ’ﾟ･✿.｡.:*${NC}"
	echo ""
	echo -e "วันนี้ ${GRAY}$TODAY${NC}"
	echo -e "เมื่อวานนี้ ${GRAY}$YESTERDAY${NC}"
	echo ""
	echo -e "รับข้อมูล (rx) ${GRAY}$RXWEEK${NC} ส่งข้อมูล (tx) ${GRAY}$TXWEEK${NC}"
	echo -e "สัปดาห์นี้ ${GRAY}$WEEK${NC}"
	echo ""
	echo -e "รับข้อมูล (rx) ${GRAY}$RXMOUNT${NC} ส่งข้อมูล (tx) ${GRAY}$TXMOUNT${NC}"
	echo -e "รวมทั้งหมดเฉพาะเดือนนี้ ${GRAY}$MOUNT${NC}"
	echo ""
	echo -e "รับข้อมูล (rx) ${GRAY}$RXTOTAL${NC} ส่งข้อมูล (tx) ${GRAY}$TXTOTAL${NC}"
	echo -e "รวมทั้งหมด ${GRAY}$TOTAL${NC}"
	echo ""
	exit

elif [[ ! -e /usr/local/bin/Check-Thai ]]; then
	echo -e "BANDWIDTH ${GRAY}✿.｡.:* *.:｡✿*ﾟ’ﾟ･✿.｡.:*${NC}"
	echo ""
	echo -e "TODAY ${GRAY}$TODAY${NC}"
	echo -e "YESTERDAY ${GRAY}$YESTERDAY${NC}"
	echo ""
	echo -e "RECEIVE (rx) ${GRAY}$RXWEEK${NC} TRANSMIT (tx) ${GRAY}$TXWEEK${NC}"
	echo -e "CURRENT WEEK ${GRAY}$WEEK${NC}"
	echo ""
	echo -e "RECEIVE (rx) ${GRAY}$RXMOUNT${NC} TRANSMIT (tx) ${GRAY}$TXMOUNT${NC}"
	echo -e "THIS MOUNT TOTAL ${GRAY}$MOUNT${NC}"
	echo ""
	echo -e "RECEIVE (rx) ${GRAY}$RXTOTAL${NC} TRANSMIT (tx) ${GRAY}$TXTOTAL${NC}"
	echo -e "TOTAL ${GRAY}$TOTAL${NC}"
	echo ""
	exit
fi