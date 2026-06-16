# μVision
μVision is a tiny AI vision development board designed for running computer vision models directly on-device. It is built around the Allwinner V851SE/V851s3 processor, which includes a 0.5 TOPS NPU for accelerating neural network inference.

The goal of this project is to make a small, low-cost board that can take camera input, process images locally, and run machine learning tasks without needing a powerful external computer. This makes it useful for embedded vision projects such as object detection, image classification, smart cameras, robotics, edge AI experiments, and other projects where a camera needs to understand what it is seeing.

The board includes camera input support, onboard storage, USB, Ethernet, GPIO, UART, SPI, I2C, PWM, and other interfaces, making it suitable as a compact development kit for experimenting with AI-powered hardware. Instead of sending images to the cloud for processing, μVision is intended to run models locally using its built-in NPU.

In simple terms, μVision is a small board that lets you plug in a camera, run AI vision models, and use the results in real-world electronics projects.

<img width="822" height="627" alt="image" src="https://github.com/user-attachments/assets/fa266abc-9c43-440f-a09d-29426eba7ca6" />
<img width="694" height="581" alt="image" src="https://github.com/user-attachments/assets/6c980e86-5f17-4475-8c9d-abbc6684bf53" />

* Processor – Allwinner V851SE / V851s3 with
* Cortex-A7 core @ 1200MHz and RISC-V E907GC core @ 600MHz
* NPU: 0.5TOPS (tera operations per second) @ INT8 precision
* Memory – 64MB DDR2 (V851se), 128MB DDR3L (V851s3)
* Storage – MicroSD card slot (supports UHS-SDR104), onboard SD NAND via SPI
* Video Input
* ISP with a maximum resolution of 2560 x 1440, up to 4Mbps @ 30fps
* 10-bit Parallel CSI interface up to 4x 720p30
* 4-lane MIPI CSI input at 4Mbps @ 30 fps
* Video Codec
* Online video encoding support
* H.264/H.265 decoding @ 4096 x 4096 resolution
* H.264/H.265 encoding @ 3840×2160 @ 20fps
* USB – USB 2.0 DRD (Dual Role Device), combo USB and UART interface
* Network – 10M/100M Ethernet MAC
* Other Peripherals – 5x TWI/I2C, 4x UART, 4x SPI, 6x GPIO, 1-ch general-purpose analog-to-digital converter(GPADC), 11-channel PWM
* Security – TrustZone, Secure Boot, Crypto Engine, Security ID
* Real-Time – RTOS Support, based on RT-Thread + RTOS-HAL
* Dimensions – 30 x 30mm

For machine learning tasks, the μVision board offers a powerful computational accelerator in the form of a 0.5Tops NPU (Neural Processing Unit). This NPU supports over 140 operators, making it suitable for a wide range of machine learning algorithms and models.

#### Here are some of the supported operators:

- Mathematical operations: abs, add, subtract, multiply, divide, sqrt, pow, exp, log, round, ceil, floor, mod, sin, cos, tan, erf, rsqrt, square, sign, non-zero
- Activation functions: relu, sigmoid, tanh, elu, leakyrelu, softrelu, hard_sigmoid, mish
- Pooling operations: pooling, poolwithargmax, pool3d, l2pooling
-  Convolution and deconvolution: convolution, deconvolution, depthwise_convolution, conv1d, conv3d, conv2d_lstm
- Normalization: batchnormalize, instancenormalize, l2normalize, localresponsenormalization_tf, localresponsenormalization, l2normalizescale
- LSTM and GRU operations: lstm, gru, lstm_cell, gru_cell, lstmunit, keras_rnn_lstm, lstm_keras
- Tensor manipulation: reshape, transpose, permute, squeeze, expanddims, flatten, stack, unstack, gather, scatternd, scatter_nd_update
- Other operations: argmin, argmax, clipbyvalue, concat, slice, split, tile, where, einsum, unique, reduceany, reducemax, reducemean, reducesum, reduceprod, reducemin, moments

## cost to make-

| Item                 |      Source |      Qty | Total | 
| -------------------- | ----------: | -------: | ---------: | 
| PCB fabrication      |      JLCPCB | 5 boards |         $2 | 
| Components from LCSC |        LCSC | full BOM |         $38 |  
| Shipping             | JLCPCB/LCSC |        1 |         $19 |   
| Total project cost   |             |          |         $60 |  



## BOM-

| No. | Quantity | Comment | Designator | Footprint | Value | Manufacturer Part | Manufacturer | Supplier Part | Supplier |
|---:|---:|---|---|---|---|---|---|---|---|
| 1 | 2 | 2.2uF | C1,C9 | C0402-NSK | 2.2uF | CL05A225MQ5NSNC | SAMSUNG(三星) | C12530 | LCSC |
| 2 | 1 | 470nF | C2 | C0402-NSK | 470nF | CL05A474KP5NNNC | SAMSUNG(三星) | C47339 | LCSC |
| 3 | 3 | 22pF | C3,C4,C18 | C0402-NSK | 22pF | 0402CG220J500NT | FH(风华) | C1555 | LCSC |
| 4 | 22 | 100nF | C5,C6,C7,C8,C11,C12,C16,C24,C25,C26,C27,C28,C29,C30,C31,C32,C33,C34,C36,C37,C43,C44 | C0402-NSK | 100nF | CL05B104KB54PNC | SAMSUNG(三星) | C307331 | LCSC |
| 5 | 1 | 100nF | C10 | C0402-NSK | 100nF | GRM155R71H104KE14D | muRata(村田) | C77020 | LCSC |
| 6 | 12 | 22uF | C13,C14,C17,C19,C20,C21,C35,C38,C39,C40,C41,C42 | C0603-NSK | 22uF | CL10A226MP8NUNE | SAMSUNG(三星) | C86295 | LCSC |
| 7 | 2 | 1uF | C15,C23 | C0402-NSK | 1uF | CL05A105KA5NQNC | SAMSUNG(三星) | C52923 | LCSC |
| 8 | 1 | POGOPin_2x04_P2.54_M | CN1 | CONN-SMD_6P-P2.54_POGOPIN_2-04_P2.54MM |  | POGOPin_2x04_P2.54_M |  | C9900006391 | LCSC |
| 9 | 1 | SIDE-1X2PR-2.54MM | CONN3 | SIDE-1X2PR-2.54MM |  |  |  |  |  |
| 10 | 1 | SIDE-2X8P-2.54MM | CONN4 | SIDE-2X8P-2.54MM |  |  |  |  |  |
| 11 | 9 | 0402ESDA-05N | D1,D2,D3,D4,D5,D6,D7,D8,D9 | D0402 |  | 0402ESDA-05N | BORN伯恩半导体 | C316049 | LCSC |
| 12 | 2 | CC2012A-801 | FIL1,FIL2 | FILTER-SMD_4P-L2.0-W1.2-TL_SMW2012 |  | CC2012A-801 | Mentech(铭普光磁) | C2904723 | LCSC |
| 13 | 1 | AFC24-S24FIC-00 | FPC2 | FPC-SMD_P0.50-24P_QCHF-SM-H2.0 |  | AFC24-S24FIC-00 | JS(钜硕电子) | C262292 | LCSC |
| 14 | 2 | 1.5uH | L1,L3 | IND-SMD_L2.0-W1.6_1 | 1.5uH | DFE252012F-1R5M=P2 | muRata(村田) | C909806 | LCSC |
| 15 | 1 | 2.2uH | L2 | IND-SMD_L2.0-W1.6_1 | 2.2uH | CKCS201610-2.2uH/M | CENKER(岑科) | C354533 | LCSC |
| 16 | 2 | KT-0603R | LED1,LED2 | LED0603 NSK |  | KT-0603R | KENTO | C2286 | LCSC |
| 17 | 1 | XL-0807RGB-MS | LED3 | RGBLED_0807 |  | XL-0807RGB-MS | XINGLIGHT(成兴光) | C965895 | LCSC |
| 18 | 1 | TYPEC-304-BCP16 | OTG1 | USB-C-SMD_TYPEC-304-BCP16-1 |  | TYPEC-304-BCP16 | XUNPU | C720629 | LCSC |
| 19 | 7 | 10kΩ | R1,R2,R5,R6,R18,R19,R20 | R0402-NSK | 10kΩ | 0402WGF1002TCE | UNI-ROYAL(厚声) | C25744 | LCSC |
| 20 | 3 | 33Ω | R3,R7,R9 | R0402-NSK | 33Ω | 0402WGF330JTCE | UNI-ROYAL(厚声) | C25105 | LCSC |
| 21 | 1 | 6.04kΩ | R4 | R0402-NSK | 6.04kΩ | 0402WGF6041TCE | UNI-ROYAL(厚声) | C25913 | LCSC |
| 22 | 1 | 1kΩ | R8 | R0402-NSK | 1kΩ | 0402WGF1001TCE | UNI-ROYAL(厚声) | C11702 | LCSC |
| 23 | 3 | 150kΩ | R10,R14,R15 | R0402-NSK | 150kΩ | 0402WGF1503TCE | UNI-ROYAL(厚声) | C25755 | LCSC |
| 24 | 3 | 100kΩ | R11,R23,R24 | R0402-NSK | 100kΩ | RC0402FR-07100KL | YAGEO(国巨) | C60491 | LCSC |
| 25 | 1 | 680kΩ | R12 | R0402-NSK | 680kΩ | RC0402FR-07680KL | YAGEO(国巨) | C163456 | LCSC |
| 26 | 1 | 75kΩ | R13 | R0402-NSK | 75kΩ | AECR0402F75K0K9 | RESI(开步睿思） | C328330 | LCSC |
| 27 | 3 | 5.1k | R16,R17,R25 | R0402-NSK | 5.1k | TR0402D10K0Q1025Z | EVER OHMS(天二科技) | C149898 | LCSC |
| 28 | 2 | 330Ω | R21,R22 | R0402-NSK | 330Ω | 0402WGF3300TCE | UNI-ROYAL(厚声) | C25104 | LCSC |
| 29 | 1 | 1.25-4PWB | SCP049 | CONN-SMD_1.25-4PWB |  | 1.25-4PWB | DEALON(德艺隆) | C2905011 | LCSC |
| 30 | 1 | V851SE | U1 | QFN-88_L9.0-W9.0-P0.35-BL-EP5.26 |  |  |  |  |  |
| 31 | 1 | CSNP1GCR01-BOW | U2 | LGA-8_L6.0-W8.0-P1.27-TL |  | CSNP1GCR01-BOW | CS(创世) | C2691593 | LCSC |
| 32 | 2 | 3416 | U4,U5 | FILTER-SMD_4P-L3.4-W1.6-TL |  | 3416 | PROD(谱罗德) | C3011570 | LCSC |
| 33 | 1 | MP2122 | U6 | TSOT23-8_L2.9-W1.6-P0.65-LS2.8-TL |  |  |  |  |  |
| 34 | 1 | CJ6211B12F | U7 | UDFN-4_L1.0-W1.0-P0.65-BL-EP |  | CJ6211B12F | CJ(江苏长电/长晶) | C2992031 | LCSC |
| 35 | 1 | MT3520B | U8 | SOT-23-5_L3.0-W1.7-P0.95-LS2.8-BR |  | MT3520B | 西安航天民芯 | C2684933 | LCSC |
| 36 | 1 | CJ6211B28F | U9 | UDFN-4_L1.0-W1.0-P0.65-BL-EP |  | CJ6211B28F | CJ(江苏长电/长晶) | C2992030 | LCSC |
| 37 | 1 | MUP-M617-2 | U10 | TF-SMD_MUP-M617-2 |  | MUP-M617-2 | MUP(德海威) | C5205359 | LCSC |
| 38 | 1 | 24MHz | X1 | osc-smd_4p-l2.0-w1.6-bl | 24MHz | Q22FA12800489 | EPSON(爱普生) | C255882 | LCSC |

# how to build?

- grab the gerbers, upload to jlcpcb and order
- get the bom file and upload to lcsc.com and order the full parts list (some stuff can be out of stock, but lcsc is regularly stocked so you can wait)
- solder based on the design .epro3 file shared (to be opened in easyedaPro, its free!)

## pcb-

<img width="560" height="540" alt="image" src="https://github.com/user-attachments/assets/5456300e-2fb3-4be5-b080-fc7678d882b1" />
<img width="437" height="433" alt="image" src="https://github.com/user-attachments/assets/88b28071-1fc9-4c99-8e0c-2e916bb9d738" />
<img width="462" height="424" alt="image" src="https://github.com/user-attachments/assets/9e8571ea-162b-4836-a0ac-6d8350889447" />
<img width="437" height="432" alt="image" src="https://github.com/user-attachments/assets/be8d1137-b5c8-48ca-b71d-bb194c11cde7" />

## schematic- 

<img width="776" height="419" alt="image" src="https://github.com/user-attachments/assets/9b2a1011-d14b-4e10-936e-21cfb73a87bf" />
<img width="990" height="489" alt="image" src="https://github.com/user-attachments/assets/05af3746-5793-45bf-b481-3a7d4e72941c" />
<img width="586" height="539" alt="image" src="https://github.com/user-attachments/assets/feba7938-d568-4e0f-b3ba-97bf7f3e8730" />
<img width="900" height="558" alt="image" src="https://github.com/user-attachments/assets/79e41e72-6905-40ca-a478-b7526f7d3213" />


## order-

<img width="1493" height="701" alt="image" src="https://github.com/user-attachments/assets/9df525a1-a430-4405-a2b8-b3816b29b643" />
<img width="1443" height="781" alt="image" src="https://github.com/user-attachments/assets/46506bef-f516-4c43-a380-8721c05b3784" />


