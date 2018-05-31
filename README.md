### Afoundry Q500 | Mediatek MT7628AN evaluation board
* * *


#### Serial connection
```
Baud: 57600
Bits: 8
Stopbits: 1
Parity: none
Flowcontrol: none
 ```
* * *

#### Hardware

```
Flash: Macronix MX25L12835F 128M-BIT FLASH MEMORY
Ram: Winbond W9751G6KB-25 DDR2-800 512Mb @ 1.8V
```

* * *


**`uname -a`**:
```
Linux version 3.10.14 (dimmalex@cmp-server) (gcc version 4.8.3 (OpenWrt/Linaro GCC 4.8-2014.04 r9) ) #1 Tue Nov 8 17:27:31 CST 2016
```

**`cat /sys/devices/pci0000:00/0000:00:00.0/0000:01:00.0`**:
```
subsystem_vendor=  0x14c3
subsystem_device = 0x7662
```

**`cat /sys/devices/pci0000:00/0000:00:00.0/0000:01:00.0/uevent` :**

```
DRIVER=rt2860
PCI_CLASS=28000
PCI_ID=14C3:7662
PCI_SUBSYS_ID=14C3:7662
PCI_SLOT_NAME=0000:01:00.0
MODALIAS=pci:v000014C3d00007662sv000014C3sd00007662bc02sc80i00
```


**`cat /proc/cpuinfo `:**
```
system type		: MT7628
machine			: Unknown
processor		: 0
cpu model		: MIPS 24KEc V5.5
BogoMIPS		: 382.46
wait instruction	: yes
microsecond timers	: yes
tlb_entries		: 32
extra interrupt vector	: yes
hardware watchpoint	: yes, count: 4, address/irw mask: [0x0ffc, 0x0ffc, 0x0ffb, 0x0ffb]
isa			: mips1 mips2 mips32r1 mips32r2
ASEs implemented	: mips16 dsp
shadow register sets	: 1
kscratch registers	: 0
core			: 0
VCED exceptions		: not available
VCEI exceptions		: not available
```



**`cat /proc/mt7628/esw_cnt`:**

```
		  <<CPU>>			 
		    |				 
+-----------------------------------------------+
|		  <<PDMA>>		        |
+-----------------------------------------------+
                      ^                          
                      | Port6 Rx:00005806 Good Pkt   
                      | Port6 Tx:00013421 Good Pkt   
+---------------------v-------------------------+
|		      P6		        |
|  	     <<10/100 Embedded Switch>>	        |
|     P0    P1    P2     P3     P4     P5       |
+-----------------------------------------------+
       |     |     |     |       |      |        
Port0 Good Pkt Cnt: RX=00000000 Tx=00000000 (Bad Pkt Cnt: Rx=00000000 Tx=00000000)
Port1 Good Pkt Cnt: RX=00003626 Tx=00004085 (Bad Pkt Cnt: Rx=00000000 Tx=00000000)
Port2 Good Pkt Cnt: RX=00000000 Tx=00000000 (Bad Pkt Cnt: Rx=00000000 Tx=00000000)
Port3 Good Pkt Cnt: RX=00000000 Tx=00000000 (Bad Pkt Cnt: Rx=00000000 Tx=00000000)
Port4 Good Pkt Cnt: RX=00009795 Tx=00001701 (Bad Pkt Cnt: Rx=00000000 Tx=00000000)
Port5 Good Pkt Cnt: RX=00000000 Tx=00000000 (Bad Pkt Cnt: Rx=00000000 Tx=00000000)
```

**`dmesg`**:

```
[    0.000000] Linux version 3.10.14 (dimmalex@cmp-server) (gcc version 4.8.3 (OpenWrt/Linaro GCC 4.8-2014.04 r9) ) #1 Tue Nov 8 17:27:31 CST 2016
[    0.000000]
[    0.000000]  The CPU feqenuce set to 575 MHz
[    0.000000] CPU0 revision is: 00019655 (MIPS 24KEc)
[    0.000000] Software DMA cache coherency
[    0.000000] Determined physical RAM map:
[    0.000000]  memory: 04000000 @ 00000000 (usable)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x00000000-0x03ffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x00000000-0x03ffffff]
[    0.000000] On node 0 totalpages: 16384
[    0.000000] free_area_init_node: node 0, pgdat 803587b0, node_mem_map 81000000
[    0.000000]   Normal zone: 128 pages used for memmap
[    0.000000]   Normal zone: 0 pages reserved
[    0.000000]   Normal zone: 16384 pages, LIFO batch:3
[    0.000000] Primary instruction cache 64kB, 4-way, VIPT, linesize 32 bytes.
[    0.000000] Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 16256
[    0.000000] Kernel command line: console=ttyS1,57600n8 root=/dev/mtdblock5 rootfstype=squashfs,jffs2
[    0.000000] PID hash table entries: 256 (order: -2, 1024 bytes)
[    0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768 bytes)
[    0.000000] Inode-cache hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Writing ErrCtl register=0002f000
[    0.000000] Readback ErrCtl register=0002f000
[    0.000000] Memory: 61084k/65536k available (2718k kernel code, 4400k reserved, 709k data, 220k init, 0k highmem)
[    0.000000] NR_IRQS:128
[    0.000000] console [ttyS1] enabled
[    0.096000] Calibrating delay loop... 382.46 BogoMIPS (lpj=764928)
[    0.128000] pid_max: default: 32768 minimum: 301
[    0.132000] Mount-cache hash table entries: 512
[    0.136000] NET: Registered protocol family 16
[    0.140000] RALINK_GPIOMODE = 571504c4
[    0.144000] RALINK_GPIOMODE = 571404c4
[    0.244000] ***** Xtal 25MHz *****
[    0.248000] start PCIe register access
[    0.748000] RALINK_RSTCTRL = 2400000
[    0.752000] RALINK_CLKCFG1 = fdbfffc0
[    0.756000]
[    0.756000] *************** MT7628 PCIe RC mode *************
[    1.256000] PCIE0 enabled
[    1.260000] Port 0 N_FTS = 1b105000
[    1.264000] init_rt2880pci done
[    1.276000] bio: create slab <bio-0> at 0
[    1.280000] usbcore: registered new interface driver usbfs
[    1.284000] usbcore: registered new interface driver hub
[    1.288000] usbcore: registered new device driver usb
[    1.292000] PCI host bridge to bus 0000:00
[    1.296000] pci_bus 0000:00: root bus resource [mem 0x20000000-0x2fffffff]
[    1.300000] pci_bus 0000:00: root bus resource [io  0x10160000-0x1016ffff]
[    1.304000] pci_bus 0000:00: No busn resource found for root bus, will use [bus 00-ff]
[    1.308000] pci 0000:00:00.0: [14c3:0801] type 01 class 0x060400
[    1.308000] pci 0000:00:00.0: reg 10: [mem 0x00000000-0x7fffffff]
[    1.308000] pci 0000:00:00.0: reg 14: [mem 0x20200000-0x2020ffff]
[    1.308000] pci 0000:00:00.0: supports D1
[    1.308000] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
[    1.308000] pci 0000:01:00.0: [14c3:7662] type 00 class 0x028000
[    1.308000] pci 0000:01:00.0: reg 10: [mem 0x00000000-0x000fffff 64bit]
[    1.308000] pci 0000:01:00.0: reg 30: [mem 0x00000000-0x0000ffff pref]
[    1.308000] pci 0000:01:00.0: PME# supported from D0 D3hot D3cold
[    1.308000] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
[    1.308000] pci_bus 0000:00: busn_res: [bus 00-ff] end is updated to 01
[    1.308000] pci 0000:00:00.0: BAR 0: can't assign mem (size 0x80000000)
[    1.312000] pci 0000:00:00.0: BAR 8: assigned [mem 0x20000000-0x200fffff]
[    1.316000] pci 0000:00:00.0: BAR 9: assigned [mem 0x20100000-0x201fffff pref]
[    1.320000] pci 0000:00:00.0: BAR 1: assigned [mem 0x20200000-0x2020ffff]
[    1.324000] pci 0000:01:00.0: BAR 0: assigned [mem 0x20000000-0x200fffff 64bit]
[    1.328000] pci 0000:01:00.0: BAR 6: assigned [mem 0x20100000-0x2010ffff pref]
[    1.332000] pci 0000:00:00.0: PCI bridge to [bus 01]
[    1.336000] pci 0000:00:00.0:   bridge window [mem 0x20000000-0x200fffff]
[    1.340000] pci 0000:00:00.0:   bridge window [mem 0x20100000-0x201fffff pref]
[    1.344000] BAR0 at slot 0 = 0
[    1.348000] bus=0x0, slot = 0x0
[    1.352000] res[0]->start = 0
[    1.356000] res[0]->end = 0
[    1.360000] res[1]->start = 20200000
[    1.364000] res[1]->end = 2020ffff
[    1.368000] res[2]->start = 0
[    1.372000] res[2]->end = 0
[    1.376000] res[3]->start = 0
[    1.380000] res[3]->end = 0
[    1.384000] res[4]->start = 0
[    1.388000] res[4]->end = 0
[    1.392000] res[5]->start = 0
[    1.396000] res[5]->end = 0
[    1.400000] bus=0x1, slot = 0x0
[    1.404000] res[0]->start = 20000000
[    1.408000] res[0]->end = 200fffff
[    1.412000] res[1]->start = 0
[    1.416000] res[1]->end = 0
[    1.420000] res[2]->start = 0
[    1.424000] res[2]->end = 0
[    1.428000] res[3]->start = 0
[    1.432000] res[3]->end = 0
[    1.436000] res[4]->start = 0
[    1.440000] res[4]->end = 0
[    1.444000] res[5]->start = 0
[    1.448000] res[5]->end = 0
[    1.452000] Switching to clocksource MIPS
[    1.456000] NET: Registered protocol family 2
[    1.468000] TCP established hash table entries: 512 (order: 0, 4096 bytes)
[    1.480000] TCP bind hash table entries: 512 (order: -1, 2048 bytes)
[    1.492000] TCP: Hash tables configured (established 512 bind 512)
[    1.504000] TCP: reno registered
[    1.512000] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    1.524000] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    1.536000] NET: Registered protocol family 1
[    1.544000] PCI: CLS 80 bytes, default 32
[    1.544000] MTK/Ralink EHCI/OHCI init.
[    1.556000] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    1.568000] jffs2: version 2.2. (NAND) (SUMMARY)  (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    1.588000] msgmni has been set to 119
[    1.596000] io scheduler noop registered (default)
[    1.612000] Serial: 8250/16550 driver, 2 ports, IRQ sharing disabled
[    1.628000] serial8250: ttyS0 at MMIO 0x10000d00 (irq = 21) is a 16550A
[    1.640000] serial8250: ttyS1 at MMIO 0x10000c00 (irq = 20) is a 16550A
[    1.652000] Ralink gpio driver initialized(b0000060=571444d0)
[    1.668000] flash manufacture id: c2, device id 20 18
[    1.676000] MX25L12805D(c2 2018c220) (16384 Kbytes)
[    1.684000] mtd .name = raspi, .size = 0x01000000 (16M) .erasesize = 0x00010000 (64K) .numeraseregions = 0
[    1.704000] Creating 5 MTD partitions on "raspi":
[    1.716000] 0x000000000000-0x000001000000 : "ALL"
[    1.724000] 0x000000000000-0x000000030000 : "Bootloader"
[    1.736000] 0x000000030000-0x000000040000 : "Config"
[    1.748000] 0x000000040000-0x000000050000 : "Factory"
[    1.760000] 0x000000050000-0x000001000000 : "firmware"
[    1.772000] 0x00000018762b-0x000001000000 : "rootfs"
[    1.784000] mtd: partition "rootfs" must either start or end on erase block boundary or be smaller than an erase block -- forcing read-only
[    1.808000] mtd: partition "rootfs_data" created automatically, ofs=0x6e0000, len=0x920000
[    1.824000] 0x0000006e0000-0x000001000000 : "rootfs_data"
[    1.836000] GMAC1_MAC_ADRH -- : 0x0000703a
[    1.844000] GMAC1_MAC_ADRL -- : 0xd84ff836
[    1.852000] Ralink APSoC Ethernet Driver Initilization. v3.1  512 rx/tx descriptors allocated, mtu = 1500!
[    1.872000] GMAC1_MAC_ADRH -- : 0x0000703a
[    1.880000] GMAC1_MAC_ADRL -- : 0xd84ff836
[    1.892000] PROC INIT OK!
[    1.896000] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.908000] ehci-pci: EHCI PCI platform driver
[    1.916000] ehci-platform: EHCI generic platform driver
[    1.948000] ******MT7628 mtk phy
[    1.956000] *****run project phy.
[    1.968000] FM_OUT value: u4FmOut = 132(0x00000084)
[    1.976000] FM detection done! loop = 0
[    1.992000] SR calibration value u1SrCalVal = 6
[    2.000000] *********Execute mt7628_phy_init!!
[    2.008000] ehci-platform ehci-platform: EHCI Host Controller
[    2.020000] ehci-platform ehci-platform: new USB bus registered, assigned bus number 1
[    2.036000] ehci-platform ehci-platform: irq 18, io mem 0x101c0000
[    2.060000] ehci-platform ehci-platform: USB 2.0 started, EHCI 1.00
[    2.072000] hub 1-0:1.0: USB hub found
[    2.080000] hub 1-0:1.0: 1 port detected
[    2.088000] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    2.120000] *********Execute mt7628_phy_init!!
[    2.128000] ohci-platform ohci-platform: Generic Platform OHCI Controller
[    2.140000] ohci-platform ohci-platform: new USB bus registered, assigned bus number 2
[    2.156000] ohci-platform ohci-platform: irq 18, io mem 0x101c1000
[    2.228000] hub 2-0:1.0: USB hub found
[    2.236000] hub 2-0:1.0: 1 port detected
[    2.244000] gre: GRE over IPv4 demultiplexor driver
[    2.252000] TCP: cubic registered
[    2.260000] NET: Registered protocol family 10
[    2.268000] NET: Registered protocol family 17
[    2.280000] 8021q: 802.1Q VLAN Support v1.8
[    2.288000] registered taskstats version 1
[    2.304000] VFS: Mounted root (squashfs filesystem) readonly on device 31:5.
[    2.320000] Freeing unused kernel memory: 220K (80359000 - 80390000)
[    2.400000] usb 1-1: new high-speed USB device number 2 using ehci-platform
[    3.052000]
[    3.052000]
[    3.052000] Unsupported Device!
[    3.052000] Vendor=125f ProdID=312b
[    3.052000] Manufacturer=ADATA Product=ADATA USB Flash Drive
[    3.052000]
[    4.660000] SCSI subsystem initialized
[    4.672000] uhci_hcd: USB Universal Host Controller Interface driver
[    4.692000] usb-storage 1-1:1.0: USB Mass Storage device detected
[    4.704000] scsi0 : usb-storage 1-1:1.0
[    4.712000] usbcore: registered new interface driver usb-storage
[    5.912000] 70:3A:FFFFFFD8:4F:FFFFFFF8:36
[    5.920000] Raeth v3.1 (Tasklet,SkbRecycle)
[    5.928000]
[    5.928000] phy_tx_ring = 0x03070000, tx_ring = 0xa3070000
[    5.944000]
[    5.944000] phy_rx_ring0 = 0x03072000, rx_ring0 = 0xa3072000
[    5.976000] GMAC1_MAC_ADRH -- : 0x0000703a
[    5.984000] GMAC1_MAC_ADRL -- : 0xd84ff836
[    5.992000] RT305x_ESW: Link Status Changed
[    6.000000] scsi 0:0:0:0: Direct-Access     ADATA    USB Flash Drive  0.00 PQ: 0 ANSI: 6
[    6.020000] sd 0:0:0:0: [sda] 30924800 512-byte logical blocks: (15.8 GB/14.7 GiB)
[    6.048000] sd 0:0:0:0: [sda] Write Protect is off
[    6.056000] sd 0:0:0:0: [sda] Mode Sense: 23 00 00 00
[    6.064000] sd 0:0:0:0: [sda] Write cache: disabled, read cache: enabled, doesn't support DPO or FUA
[    6.100000]  sda: sda1 sda2 sda3
[    6.120000] sd 0:0:0:0: [sda] Attached SCSI removable disk
[    8.972000] RT305x_ESW: Link Status Changed
[    9.052000] RT305x_ESW: Link Status Changed
[    9.436000] jffs2: notice: (266) jffs2_build_xattr_subsystem: complete building xattr subsystem, 3 of xdatum (1 unchecked, 2 orphan) and 14 of xref (2 dead, 5 orphan) found.
[    9.484000] ra2880stop()...Done
[    9.492000] Free TX/RX Ring Memory!
[   11.540000] sd 0:0:0:0: Attached scsi generic sg0 type 0
[   11.564000] u32 classifier
[   11.568000]     input device check on
[   11.576000]     Actions configured
[   11.584000] Mirror/redirect action on
[   11.596000] Failed to load ipt action
[   11.632000] fuse init (API version 7.22)
[   12.328000] register rt2860
[   12.348000]
[   12.348000]
[   12.348000] === pAd = c0681000, size = 2021672 ===
[   12.348000]
[   12.364000] <-- RTMPAllocTxRxRingMemory, Status=0
[   12.376000] <-- RTMPAllocAdapterBlock, Status=0
[   12.384000] pAd->CSRBaseAddress =0xc0580000, csr_addr=0xc0580000!
[   12.396000] device_id =0x7662
[   12.404000] ==>rlt_wlan_chip_onoff(): OnOff:1, Reset= 1, pAd->WlanFunCtrl:0x0, Reg-WlanFunCtrl=0x20a
[   12.424000] E2pAccessMode=2
[   12.432000] cfg_mode=14
[   12.436000] cfg_mode=14
[   12.444000] wmode_band_equal(): Band Not Equal!
[   12.456000] APSDCapable[0]=0
[   12.464000] APSDCapable[1]=0
[   12.468000] APSDCapable[2]=0
[   12.476000] APSDCapable[3]=0
[   12.480000] APSDCapable[4]=0
[   12.484000] APSDCapable[5]=0
[   12.492000] APSDCapable[6]=0
[   12.496000] APSDCapable[7]=0
[   12.504000] APSDCapable[8]=0
[   12.508000] APSDCapable[9]=0
[   12.516000] APSDCapable[10]=0
[   12.520000] APSDCapable[11]=0
[   12.524000] APSDCapable[12]=0
[   12.532000] APSDCapable[13]=0
[   12.536000] APSDCapable[14]=0
[   12.544000] APSDCapable[15]=0
[   12.548000] default ApCliAPSDCapable[0]=0
[   13.396000] RtmpChipOpsEepromHook::e2p_type=2, inf_Type=5
[   13.408000] NVM is FLASH mode (pAd->flash_offset = 0x48000)
[   13.416000] get_dev_name_prefix(): dev_idx = 1, dev_name_prefix=rai
[   13.472000] ip_tables: (C) 2000-2006 Netfilter Core Team
[   13.484000] Type=Linux
[   13.500000] nf_conntrack version 0.5.0 (957 buckets, 3828 max)
[   13.524000] rdm_major = 253
[   13.536000] usbcore: registered new interface driver ums-alauda
[   13.552000] usbcore: registered new interface driver ums-cypress
[   13.564000] usbcore: registered new interface driver ums-datafab
[   13.580000] usbcore: registered new interface driver ums-freecom
[   13.592000] usbcore: registered new interface driver ums-isd200
[   13.608000] usbcore: registered new interface driver ums-jumpshot
[   13.624000] usbcore: registered new interface driver ums-karma
[   13.636000] usbcore: registered new interface driver ums-sddr09
[   13.652000] usbcore: registered new interface driver ums-sddr55
[   13.664000] usbcore: registered new interface driver ums-usbat
[   13.716000] xt_time: kernel timezone is -0000
[   13.732000] PPP generic driver version 2.4.2
[   13.744000] NET: Registered protocol family 24
[   17.384000] 70:3A:FFFFFFD8:4F:FFFFFFF8:36
[   17.392000] Raeth v3.1 (Tasklet,SkbRecycle)
[   17.400000]
[   17.400000] phy_tx_ring = 0x029ec000, tx_ring = 0xa29ec000
[   17.416000]
[   17.416000] phy_rx_ring0 = 0x029ee000, rx_ring0 = 0xa29ee000
[   17.444000] GMAC1_MAC_ADRH -- : 0x0000703a
[   17.452000] GMAC1_MAC_ADRL -- : 0xd84ff836
[   17.460000] RT305x_ESW: Link Status Changed
[   18.680000]
[   18.680000]
[   18.680000] === pAd = c0df4000, size = 1534328 ===
[   18.680000]
[   18.696000] <-- RTMPAllocTxRxRingMemory, Status=0, ErrorValue=0x
[   18.712000] <-- RTMPAllocAdapterBlock, Status=0
[   18.720000] RtmpChipOpsHook(492): Not support for HIF_MT yet!
[   18.732000] mt7628_init()-->
[   18.736000] mt7628_init(FW(8a00), HW(8a01), CHIPID(7628))
[   18.748000] e2.bin mt7628_init(1117)::(2), pChipCap->fw_len(63056)
[   18.760000] mt_bcn_buf_init(218): Not support for HIF_MT yet!
[   18.772000] <--mt7628_init()
[   19.108000] led=37, on=9, off=1, blinks,=4000, reset=1, time=4000
[   19.528000] device eth0.1 entered promiscuous mode
[   19.536000] device eth0 entered promiscuous mode
[   19.544000] lan: port 1(eth0.1) entered forwarding state
[   19.556000] lan: port 1(eth0.1) entered forwarding state
[   19.580000] TX_BCN DESC a2b74000 size = 320
[   19.588000] RX[0] DESC a2b76000 size = 2048
[   19.600000] RX[1] DESC a2b77000 size = 1024
[   19.620000] E2pAccessMode=2
[   19.624000] cfg_mode=9
[   19.628000] cfg_mode=9
[   19.636000] wmode_band_equal(): Band Equal!
[   19.648000] APSDCapable[0]=0
[   19.656000] lan: port 1(eth0.1) entered forwarding state
[   19.664000] APSDCapable[1]=0
[   19.672000] APSDCapable[2]=0
[   19.676000] APSDCapable[3]=0
[   19.680000] APSDCapable[4]=0
[   19.688000] APSDCapable[5]=0
[   19.692000] APSDCapable[6]=0
[   19.700000] APSDCapable[7]=0
[   19.704000] APSDCapable[8]=0
[   19.712000] APSDCapable[9]=0
[   19.716000] APSDCapable[10]=0
[   19.720000] APSDCapable[11]=0
[   19.728000] APSDCapable[12]=0
[   19.732000] APSDCapable[13]=0
[   19.740000] APSDCapable[14]=0
[   19.744000] APSDCapable[15]=0
[   19.752000] default ApCliAPSDCapable[0]=0
[   19.760000] default ApCliAPSDCapable[1]=0
[   20.564000] RT305x_ESW: Link Status Changed
[   20.588000] RT305x_ESW: Link Status Changed
[   20.640000] RTMPSetDefaultChannel() : default channel to 1
[   20.652000] load fw image from fw_header_image
[   20.660000] AndesMTLoadFwMethod1(2174)::pChipCap->fw_len(63056)
[   20.672000] FW Version:_e2_mp    
[   20.676000] FW Build Date:20150211175503 
[   20.684000] CmdAddressLenReq:(ret = 0)
[   20.696000] CmdFwStartReq: override = 1, address = 1048576
[   20.704000] CmdStartDLRsp: WiFI FW Download Success
[   20.716000] MtAsicDMASchedulerInit(): DMA Scheduler Mode=0(LMAC)
[   20.728000] efuse_probe: efuse = 10000002
[   20.736000] RtmpChipOpsEepromHook::e2p_type=2, inf_Type=4
[   20.744000] RtmpEepromGetDefault::e2p_dafault=2
[   20.756000] RtmpChipOpsEepromHook: E2P type(2), E2pAccessMode = 2, E2P default = 2
[   20.768000] NVM is FLASH mode
[   20.776000] 1. Phy Mode = 14
[   20.940000] Country Region from e2p = ffff
[   20.948000] tssi_1_target_pwr_g_band = 42
[   20.956000] 2. Phy Mode = 14
[   20.960000] 3. Phy Mode = 14
[   20.968000] NICInitPwrPinCfg(11): Not support for HIF_MT yet!
[   20.976000] NICInitializeAsic(651): Not support rtmp_mac_sys_reset () for HIF_MT yet!
[   20.992000] mt_mac_init()-->
[   21.000000] MtAsicInitMac()-->
[   21.004000] mt7628_init_mac_cr()-->
[   21.012000] MtAsicSetMacMaxLen(1241): Set the Max RxPktLen=1024!
[   21.024000] <--mt_mac_init()
[   21.032000] 	WTBL Segment 1 info:
[   21.036000] 		MemBaseAddr/FID:0x28000/0
[   21.044000] 		EntrySize/Cnt:32/128
[   21.052000] 	WTBL Segment 2 info:
[   21.056000] 		MemBaseAddr/FID:0x40000/0
[   21.064000] 		EntrySize/Cnt:64/128
[   21.072000] 	WTBL Segment 3 info:
[   21.080000] 		MemBaseAddr/FID:0x42000/64
[   21.088000] 		EntrySize/Cnt:64/128
[   21.092000] 	WTBL Segment 4 info:
[   21.100000] 		MemBaseAddr/FID:0x44000/128
[   21.108000] 		EntrySize/Cnt:32/128
[   21.116000] AntCfgInit(2876): Not support for HIF_MT yet!
[   21.124000] MCS Set = ff ff 00 00 01
[   21.132000] MtAsicSetChBusyStat(826): Not support for HIF_MT yet!
[   21.624000] CmdSlotTimeSet:(ret = 0)
[   23.348000] SYNC - BBP R4 to 20MHz.l
[   23.656000] SYNC - BBP R4 to 20MHz.l
[   23.960000] SYNC - BBP R4 to 20MHz.l
[   24.264000] SYNC - BBP R4 to 20MHz.l
[   24.568000] SYNC - BBP R4 to 20MHz.l
[   24.872000] SYNC - BBP R4 to 20MHz.l
[   25.180000] SYNC - BBP R4 to 20MHz.l
[   25.484000] SYNC - BBP R4 to 20MHz.l
[   25.788000] MtAsicSetRalinkBurstMode(2919): Not support for HIF_MT yet!
[   25.800000] MtAsicSetPiggyBack(763): Not support for HIF_MT yet!
[   25.828000] MtAsicSetTxPreamble(2898): Not support for HIF_MT yet!
[   25.844000] MtAsicAddSharedKeyEntry(1308): Not support for HIF_MT yet!
[   25.856000] MtAsicSetPreTbtt(): bss_idx=0, PreTBTT timeout = 0xf0
[   25.868000] Main bssid = 70:3a:d8:4f:f8:30
[   25.876000] <==== rt28xx_init, Status=0
[   25.916000] mt7628_set_ed_cca: TURN OFF EDCCA  mac 0x10618 = 0xd7083f0f
[   25.928000] WiFi Startup Cost (ra0): 6.348s
[   26.388000] MtAsicSetPreTbtt(): bss_idx=0, PreTBTT timeout = 0x0
[   26.400000] MtAsicSetPiggyBack(763): Not support for HIF_MT yet!
[   26.412000] MtAsicSetRalinkBurstMode(2919): Not support for HIF_MT yet!
[   26.424000] MtAsicSetPiggyBack(763): Not support for HIF_MT yet!
[   26.480000] MtAsicSetTxPreamble(2898): Not support for HIF_MT yet!
[   26.496000] MtAsicAddSharedKeyEntry(1308): Not support for HIF_MT yet!
[   26.508000] AddTxSType: already registered TxSType (PID = 32, Format = 0
[   26.520000] AddTxSType: already registered TxSType (PID = 6, Format = 0
[   26.532000] MtAsicSetPreTbtt(): bss_idx=0, PreTBTT timeout = 0xf0
[   26.544000] Main bssid = 70:3a:d8:4f:f8:30
[   26.888000] MtAsicSetPreTbtt(): bss_idx=0, PreTBTT timeout = 0x0
[   26.900000] MtAsicSetPiggyBack(763): Not support for HIF_MT yet!
[   26.912000] MtAsicSetRalinkBurstMode(2919): Not support for HIF_MT yet!
[   26.924000] MtAsicSetPiggyBack(763): Not support for HIF_MT yet!
[   26.952000] MtAsicSetTxPreamble(2898): Not support for HIF_MT yet!
[   26.968000] MtAsicAddSharedKeyEntry(1308): Not support for HIF_MT yet!
[   26.980000] AddTxSType: already registered TxSType (PID = 32, Format = 0
[   26.996000] AddTxSType: already registered TxSType (PID = 6, Format = 0
[   27.008000] MtAsicSetPreTbtt(): bss_idx=0, PreTBTT timeout = 0xf0
[   27.020000] Main bssid = 70:3a:d8:4f:f8:30
[   27.040000] device ra0 entered promiscuous mode
[   27.048000] lan: port 2(ra0) entered forwarding state
[   27.060000] lan: port 2(ra0) entered forwarding state
[   27.084000] device ra1 entered promiscuous mode
[   27.108000] device ra2 entered promiscuous mode
[   27.132000] device ra3 entered promiscuous mode
[   27.156000] build time =
[   27.160000] lan: port 2(ra0) entered forwarding state
[   27.172000] 20141115060606a
[   27.176000] rom patch for E3 IC
[   27.184000]
[   27.184000] platform =
[   27.192000] ALPS
[   27.192000] hw/sw version =
[   27.200000] ��
[   27.204000] patch version =
[   27.208000]    
[   27.224000] FW Version:0.0.00 Build:1
[   27.232000] Build Time:201410061140____
[   27.240000] fw for E3 IC
[   27.260000] RX[0] DESC a338c000 size = 4096
[   27.272000] RX[1] DESC a338d000 size = 4096
[   27.300000] E2pAccessMode=2
[   27.308000] cfg_mode=14
[   27.312000] cfg_mode=14
[   27.320000] wmode_band_equal(): Band Not Equal!
[   27.332000] APSDCapable[0]=0
[   27.340000] APSDCapable[1]=0
[   27.344000] APSDCapable[2]=0
[   27.352000] APSDCapable[3]=0
[   27.356000] APSDCapable[4]=0
[   27.360000] APSDCapable[5]=0
[   27.368000] APSDCapable[6]=0
[   27.372000] APSDCapable[7]=0
[   27.380000] APSDCapable[8]=0
[   27.384000] APSDCapable[9]=0
[   27.392000] APSDCapable[10]=0
[   27.396000] APSDCapable[11]=0
[   27.400000] APSDCapable[12]=0
[   27.408000] APSDCapable[13]=0
[   27.412000] APSDCapable[14]=0
[   27.420000] APSDCapable[15]=0
[   27.424000] default ApCliAPSDCapable[0]=0
[   28.272000] 1. Phy Mode = 49
[   28.280000] get_chl_grp:illegal channel (167)
[   28.288000] get_chl_grp:illegal channel (167)
[   28.296000] get_chl_grp:illegal channel (169)
[   28.304000] get_chl_grp:illegal channel (169)
[   28.312000] get_chl_grp:illegal channel (171)
[   28.324000] get_chl_grp:illegal channel (171)
[   28.332000] get_chl_grp:illegal channel (173)
[   28.340000] get_chl_grp:illegal channel (173)
[   28.348000] Country Region from e2p = ffff
[   28.356000] mt76x2_read_temp_info_from_eeprom:: is_temp_tx_alc=0, temp_tx_alc_enable=0
[   28.372000] mt76x2_read_tx_alc_info_from_eeprom:: is_ePA_mode=1, ePA_type=1
[   28.388000] mt76x2_read_tx_alc_info_from_eeprom:: [5G band] high_temp_slope=15, low_temp_slope=9
[   28.404000] mt76x2_read_tx_alc_info_from_eeprom:: [2G band] high_temp_slope=0, low_temp_slope=0
[   28.420000] mt76x2_read_tx_alc_info_from_eeprom:: [5G band] tc_lower_bound=-7, tc_upper_bound=4
[   28.440000] mt76x2_read_tx_alc_info_from_eeprom:: [2G band] tc_lower_bound=0, tc_upper_bound=0
[   28.456000] mt76x2_get_external_lna_gain::LNA type=0x1, BLNAGain=0xffffff8c, ALNAGain0=0xffffff8c, ALNAGain1=0xffffff8c, ALNAGain2=0xffffff8c
[   28.480000] 2. Phy Mode = 49
[   28.488000] 3. Phy Mode = 49
[   28.492000] andes_pci_fw_init
[   28.496000] 0x1300 = 00073200
[   28.528000] AntCfgInit: primary/secondary ant 0/1
[   28.540000] andes_load_cr:cr_type(2)
[   28.556000] ChipStructAssign(): MT76x2 hook !
[   28.564000] RTMPSetPhyMode: channel is out of range, use first channel=0
[   28.576000] MCS Set = ff ff 00 00 01
[   34.484000] get_chl_grp:illegal channel (169)
[   34.492000] get_chl_grp:illegal channel (169)
[   34.500000] get_low_mid_hi_index:illegal channel(169)
[   34.508000] get_chl_grp:illegal channel (169)
[   34.516000] get_chl_grp:illegal channel (169)
[   34.528000] get_low_mid_hi_index:illegal channel(169)
[   34.784000] get_chl_grp:illegal channel (173)
[   34.792000] get_chl_grp:illegal channel (173)
[   34.800000] get_low_mid_hi_index:illegal channel(173)
[   34.808000] get_chl_grp:illegal channel (173)
[   34.816000] get_chl_grp:illegal channel (173)
[   34.828000] get_low_mid_hi_index:illegal channel(173)
[   35.276000] mt76x2_bbp_adjust():rf_bw=1, ext_ch=1, PrimCh=36, HT-CentCh=38, VHT-CentCh=36
[   35.340000] APStartUp(): AP Set CentralFreq at 38(Prim=36, HT-CentCh=38, VHT-CentCh=36, BBP_BW=1)
[   35.372000] mt76x2_calibration(channel = 38)
[   35.748000] Main bssid = 70:3a:d8:4f:f8:38
[   35.756000] mt76x2_reinit_agc_gain:original agc_vga0 = 0x48, agc_vga1 = 0x48
[   35.768000] mt76x2_reinit_agc_gain:updated agc_vga0 = 0x48, agc_vga1 = 0x48
[   35.784000] mt76x2_reinit_hi_lna_gain:original hi_lna0 = 0x33, hi_lna1 = 0x33
[   35.796000] mt76x2_reinit_hi_lna_gain:updated hi_lna0 = 0x33, hi_lna1 = 0x33
[   35.812000] original vga value(chain0) = 48
[   35.820000] original vga value(chain1) = 48
[   35.828000] <==== rt28xx_init, Status=0
[   35.836000] get_dev_name_prefix(): dev_idx = 1, dev_name_prefix=rai
[   35.852000] get_dev_name_prefix(): dev_idx = 1, dev_name_prefix=rai
[   35.876000] get_dev_name_prefix(): dev_idx = 1, dev_name_prefix=rai
[   35.896000] get_dev_name_prefix(): dev_idx = 1, dev_name_prefix=wdsi
[   35.912000] get_dev_name_prefix(): dev_idx = 1, dev_name_prefix=wdsi
[   35.948000] get_dev_name_prefix(): dev_idx = 1, dev_name_prefix=wdsi
[   35.976000] get_dev_name_prefix(): dev_idx = 1, dev_name_prefix=wdsi
[   36.000000] get_dev_name_prefix(): dev_idx = 1, dev_name_prefix=apclii
[   36.032000] RTMPDrvOpen(1):Check if PDMA is idle!
[   36.040000] RTMPDrvOpen(2):Check if PDMA is idle!
[   36.588000] mt76x2_bbp_adjust():rf_bw=1, ext_ch=1, PrimCh=36, HT-CentCh=38, VHT-CentCh=36
[   36.648000] APStartUp(): AP Set CentralFreq at 38(Prim=36, HT-CentCh=38, VHT-CentCh=36, BBP_BW=1)
[   36.680000] mt76x2_calibration(channel = 38)
[   37.536000] mt76x2_bbp_adjust():rf_bw=1, ext_ch=1, PrimCh=36, HT-CentCh=38, VHT-CentCh=36
[   37.596000] APStartUp(): AP Set CentralFreq at 38(Prim=36, HT-CentCh=38, VHT-CentCh=36, BBP_BW=1)
[   37.628000] mt76x2_calibration(channel = 38)
[   38.016000] device rai0 entered promiscuous mode
[   38.028000] lan: port 6(rai0) entered forwarding state
[   38.036000] lan: port 6(rai0) entered forwarding state
[   38.060000] device rai1 entered promiscuous mode
[   38.084000] device rai2 entered promiscuous mode
[   38.120000] device rai3 entered promiscuous mode
[   38.136000] lan: port 6(rai0) entered forwarding state
[   38.164000] device wds0 entered promiscuous mode
[   38.204000] device wdsi0 entered promiscuous mode
[  778.092000] usb 1-1: USB disconnect, device number 2
[ 1440.820000] usb 1-1: new high-speed USB device number 3 using ehci-platform
[ 1442.300000] usb-storage 1-1:1.0: USB Mass Storage device detected
[ 1442.320000] scsi1 : usb-storage 1-1:1.0
[ 1446.248000] scsi 1:0:0:0: Direct-Access     ADATA    USB Flash Drive  0.00 PQ: 0 ANSI: 6
[ 1446.268000] sd 1:0:0:0: [sda] 30924800 512-byte logical blocks: (15.8 GB/14.7 GiB)
[ 1446.284000] sd 1:0:0:0: Attached scsi generic sg0 type 0
[ 1446.292000] sd 1:0:0:0: [sda] Write Protect is off
[ 1446.304000] sd 1:0:0:0: [sda] Mode Sense: 23 00 00 00
[ 1446.304000] sd 1:0:0:0: [sda] Write cache: disabled, read cache: enabled, doesn't support DPO or FUA
[ 1446.328000]  sda: sda1 sda2 sda3 sda4
[ 1446.344000] sd 1:0:0:0: [sda] Attached SCSI removable disk
```
