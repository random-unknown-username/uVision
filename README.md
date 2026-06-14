# μVision
AI vision development kit based on the V851se, featuring a 0.5TOPS NPU

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


## how to build?

- grab the gerbers, upload to jlcpcb and order
- get the bom file and upload to lcsc.com and order the full parts list (some stuff can be out of stock, but lcsc is regularly stocked so you can wait)
- solder based on the design .epro3 file shared (to be opened in easyedaPro, its free!)

