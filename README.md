OSS CAD Suite⦘ india@india-Lenovo-ideapad-320-15IKB:~/Downloads/yosys/axil$ sby -f xlnxdemo.sby prove
SBY 13:08:26 [xlnxdemo_prove] Removing directory '/home/india/Downloads/yosys/axil/xlnxdemo_prove'.
SBY 13:08:26 [xlnxdemo_prove] Copy '/home/india/Downloads/yosys/axil/xlnxdemo.sv' to '/home/india/Downloads/yosys/axil/xlnxdemo_prove/src/xlnxdemo.sv'.
SBY 13:08:26 [xlnxdemo_prove] Copy '/home/india/Downloads/yosys/axil/faxil_slave.sv' to '/home/india/Downloads/yosys/axil/xlnxdemo_prove/src/faxil_slave.sv'.
SBY 13:08:26 [xlnxdemo_prove] engine_0: abc pdr -c "pdr -v"
SBY 13:08:26 [xlnxdemo_prove] base: starting process "cd xlnxdemo_prove/src; yosys -ql ../model/design.log ../model/design.ys"
SBY 13:08:26 [xlnxdemo_prove] base: Warning: Replacing memory \sv_reg with list of registers. See xlnxdemo.sv:773
SBY 13:08:27 [xlnxdemo_prove] base: finished (returncode=0)
SBY 13:08:27 [xlnxdemo_prove] prep: starting process "cd xlnxdemo_prove/model; yosys -ql design_prep.log design_prep.ys"
SBY 13:08:27 [xlnxdemo_prove] prep: finished (returncode=0)
SBY 13:08:27 [xlnxdemo_prove] aig: starting process "cd xlnxdemo_prove/model; yosys -ql design_aiger.log design_aiger.ys"
SBY 13:08:29 [xlnxdemo_prove] aig: finished (returncode=0)
SBY 13:08:29 [xlnxdemo_prove] engine_0: starting process "cd xlnxdemo_prove; yosys-abc -c 'read_aiger model/design_aiger.aig; fold; strash; pdr -v -l -c "pdr -v"; write_cex -a engine_0/trace.aiw'"
SBY 13:08:29 [xlnxdemo_prove] engine_0: ======== ABC command line "read_aiger model/design_aiger.aig; fold; strash; pdr -v -l -c "pdr -v"; write_cex -a engine_0/trace.aiw"
SBY 13:08:29 [xlnxdemo_prove] engine_0: Warning: The last 12 outputs are interpreted as constraints.
SBY 13:08:29 [xlnxdemo_prove] engine_0: VarMax = 300. FrameMax = 10000. QueMax = 0. TimeMax = 1699. MonoCNF = no. SkipGen = no. SolveAll = no.
SBY 13:08:29 [xlnxdemo_prove] engine_0: Proved output 0 in frame 0 (trivial).
SBY 13:08:29 [xlnxdemo_prove] engine_0: Frame Clauses                                                     Max Queue Flops Time
SBY 13:08:29 [xlnxdemo_prove] engine_0: 1 : 0 71                                                                1    71      0.08 sec  T/O =  0  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 73 164                                                            3   185      0.37 sec  T/O =  0  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 73 229                                                            2   237      0.46 sec  T/O =  0  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 85 273                                                            2   267      0.51 sec  T/O =  0  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 99 316                                                            2   280      0.55 sec  T/O =  0  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 117 357                                                           2   280      0.59 sec  T/O =  0  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 126 367                                                           2   280      0.59 sec  T/O =  0  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: Timing out on output 49 in frame 2 (retrying in next anytime pass).
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 132 413                                                           2   335      0.64 sec  T/O =  1  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 150 454                                                           2   357      0.68 sec  T/O =  1  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 167 496                                                           2   358      0.73 sec  T/O =  1  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 198 565                                                           2   409      0.79 sec  T/O =  1  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 201 614                                                           2   433      0.83 sec  T/O =  1  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 227 651                                                           2   433      0.87 sec  T/O =  1  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 268 727                                                           2   478      0.94 sec  T/O =  1  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 275 774                                                           2   505      0.99 sec  T/O =  1  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 302 810                                                           2   505      1.04 sec  T/O =  1  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 329 874                                                           2   555      1.11 sec  T/O =  1  PRV =  1
SBY 13:08:30 [xlnxdemo_prove] engine_0: 2 : 0 332 922                                                           2   576      1.16 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 357 960                                                           2   576      1.21 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 389 1032                                                          2   623      1.29 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 392 1080                                                          2   646      1.35 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 413 1120                                                          2   647      1.40 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 445 1154                                                          2   647      1.44 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 464 1196                                                          2   688      1.49 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 468 1244                                                          2   718      1.53 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 488 1284                                                          2   718      1.58 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 517 1364                                                          2   759      1.67 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 525 1410                                                          2   789      1.71 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 540 1452                                                          2   789      1.76 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 564 1490                                                          2   789      1.81 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 570 1496                                                          2   789      1.83 sec  T/O =  1  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: Timing out on output 56 in frame 2 (retrying in next anytime pass).
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 594 1533                                                          2   824      1.88 sec  T/O =  2  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 602 1579                                                          2   859      1.94 sec  T/O =  2  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 620 1620                                                          2   859      2.00 sec  T/O =  2  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 634 1685                                                          2   909      2.06 sec  T/O =  2  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 653 1726                                                          2   930      2.12 sec  T/O =  2  PRV =  1
SBY 13:08:31 [xlnxdemo_prove] engine_0: 2 : 0 661 1772                                                          2   930      2.18 sec  T/O =  2  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 662 1798                                                          2   930      2.22 sec  T/O =  2  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: Timing out on output 58 in frame 2 (retrying in next anytime pass).
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 669 1844                                                          2   976      2.29 sec  T/O =  3  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 672 1892                                                          2   997      2.33 sec  T/O =  3  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 689 1934                                                          2  1000      2.39 sec  T/O =  3  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 699 1959                                                          2  1000      2.42 sec  T/O =  3  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: Timing out on output 59 in frame 2 (retrying in next anytime pass).
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 699 2008                                                          2  1054      2.49 sec  T/O =  4  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 702 2057                                                          2  1070      2.56 sec  T/O =  4  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 727 2094                                                          2  1070      2.62 sec  T/O =  4  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 727 2095                                                          2  1070      2.62 sec  T/O =  4  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: Timing out on output 60 in frame 2 (retrying in next anytime pass).
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 733 2141                                                          2  1112      2.68 sec  T/O =  5  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 734 2191                                                          2  1136      2.75 sec  T/O =  5  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 753 2231                                                          2  1140      2.82 sec  T/O =  5  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 756 2234                                                          2  1140      2.82 sec  T/O =  5  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: Timing out on output 61 in frame 2 (retrying in next anytime pass).
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 759 2282                                                          2  1188      2.89 sec  T/O =  6  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 761 2331                                                          2  1210      2.96 sec  T/O =  6  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 761 2381                                                          2  1210      3.01 sec  T/O =  6  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 764 2392                                                          2  1210      3.02 sec  T/O =  6  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: Timing out on output 62 in frame 2 (retrying in next anytime pass).
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 780 2433                                                          2  1250      3.09 sec  T/O =  7  PRV =  1
SBY 13:08:32 [xlnxdemo_prove] engine_0: 2 : 0 787 2480                                                          2  1280      3.16 sec  T/O =  7  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 805 2514                                                          2  1280      3.22 sec  T/O =  7  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: Timing out on output 63 in frame 2 (retrying in next anytime pass).
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 807 2562                                                          2  1339      3.30 sec  T/O =  8  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 808 2612                                                          2  1350      3.37 sec  T/O =  8  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 831 2638                                                          2  1350      3.42 sec  T/O =  8  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: Timing out on output 64 in frame 2 (retrying in next anytime pass).
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 833 2686                                                          2  1401      3.49 sec  T/O =  9  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 836 2735                                                          2  1420      3.56 sec  T/O =  9  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 855 2769                                                          2  1420      3.62 sec  T/O =  9  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: Timing out on output 65 in frame 2 (retrying in next anytime pass).
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 859 2816                                                          2  1477      3.70 sec  T/O = 10  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 874 2859                                                          2  1490      3.77 sec  T/O = 10  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 882 2884                                                          2  1490      3.82 sec  T/O = 10  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: Timing out on output 66 in frame 2 (retrying in next anytime pass).
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 899 2925                                                          2  1531      3.89 sec  T/O = 11  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 908 2970                                                          2  1560      3.96 sec  T/O = 11  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 923 3007                                                          2  1560      4.02 sec  T/O = 11  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: Timing out on output 67 in frame 2 (retrying in next anytime pass).
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 937 3049                                                          2  1608      4.10 sec  T/O = 12  PRV =  1
SBY 13:08:33 [xlnxdemo_prove] engine_0: 2 : 0 945 3095                                                          2  1628      4.16 sec  T/O = 12  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 964 3126                                                          2  1630      4.22 sec  T/O = 12  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: Timing out on output 68 in frame 2 (retrying in next anytime pass).
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 972 3171                                                          2  1673      4.29 sec  T/O = 13  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 972 3221                                                          2  1700      4.36 sec  T/O = 13  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 987 3258                                                          2  1700      4.42 sec  T/O = 13  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: Timing out on output 69 in frame 2 (retrying in next anytime pass).
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 988 3307                                                          2  1759      4.50 sec  T/O = 14  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1005 3348                                                         2  1770      4.57 sec  T/O = 14  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1029 3372                                                         2  1770      4.62 sec  T/O = 14  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: Timing out on output 70 in frame 2 (retrying in next anytime pass).
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1030 3421                                                         2  1817      4.69 sec  T/O = 15  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1033 3469                                                         2  1840      4.74 sec  T/O = 15  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1040 3516                                                         2  1840      4.81 sec  T/O = 15  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1040 3523                                                         2  1840      4.82 sec  T/O = 15  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: Timing out on output 71 in frame 2 (retrying in next anytime pass).
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1042 3571                                                         2  1892      4.87 sec  T/O = 16  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1050 3617                                                         2  1910      4.94 sec  T/O = 16  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1057 3664                                                         2  1910      5.02 sec  T/O = 16  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1057 3668                                                         2  1910      5.02 sec  T/O = 16  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: Timing out on output 72 in frame 2 (retrying in next anytime pass).
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1057 3717                                                         2  1972      5.10 sec  T/O = 17  PRV =  1
SBY 13:08:34 [xlnxdemo_prove] engine_0: 2 : 0 1059 3766                                                         2  1980      5.18 sec  T/O = 17  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1073 3782                                                         2  1980      5.22 sec  T/O = 17  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: Timing out on output 73 in frame 2 (retrying in next anytime pass).
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1074 3831                                                         2  2029      5.30 sec  T/O = 18  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1074 3881                                                         2  2050      5.38 sec  T/O = 18  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1085 3902                                                         2  2050      5.42 sec  T/O = 18  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: Timing out on output 74 in frame 2 (retrying in next anytime pass).
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1087 3950                                                         2  2110      5.50 sec  T/O = 19  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1093 3997                                                         2  2120      5.58 sec  T/O = 19  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1093 4043                                                         2  2120      5.62 sec  T/O = 19  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: Timing out on output 75 in frame 2 (retrying in next anytime pass).
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1111 4083                                                         2  2165      5.70 sec  T/O = 20  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1116 4131                                                         2  2190      5.77 sec  T/O = 20  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1126 4156                                                         2  2190      5.82 sec  T/O = 20  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: Timing out on output 76 in frame 2 (retrying in next anytime pass).
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1130 4203                                                         2  2243      5.89 sec  T/O = 21  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1136 4250                                                         2  2260      5.94 sec  T/O = 21  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1158 4289                                                         2  2260      6.02 sec  T/O = 21  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1159 4291                                                         2  2260      6.02 sec  T/O = 21  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: Timing out on output 77 in frame 2 (retrying in next anytime pass).
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1166 4337                                                         2  2310      6.10 sec  T/O = 22  PRV =  1
SBY 13:08:35 [xlnxdemo_prove] engine_0: 2 : 0 1171 4384                                                         2  2330      6.18 sec  T/O = 22  PRV =  1
SBY 13:08:36 [xlnxdemo_prove] engine_0: 2 : 0 1178 4402                                                         2  2330      6.22 sec  T/O = 22  PRV =  1
SBY 13:08:36 [xlnxdemo_prove] engine_0: Timing out on output 78 in frame 2 (retrying in next anytime pass).
SBY 13:08:36 [xlnxdemo_prove] engine_0: 2 : 0 1179 4451                                                         2  2383      6.30 sec  T/O = 23  PRV =  1
SBY 13:08:36 [xlnxdemo_prove] engine_0: 2 : 0 1180 4500                                                         2  2398      6.39 sec  T/O = 23  PRV =  1
SBY 13:08:36 [xlnxdemo_prove] engine_0: 2 : 0 1186 4516                                                         2  2400      6.42 sec  T/O = 23  PRV =  1
SBY 13:08:36 [xlnxdemo_prove] engine_0: Timing out on output 79 in frame 2 (retrying in next anytime pass).
SBY 13:08:36 [xlnxdemo_prove] engine_0: 2 : 0 1186 4516                                                         0  2400      6.42 sec  T/O = 24  PRV =  1
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 1 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 2 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 3 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 4 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 5 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 6 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 7 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 8 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 9 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 41 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 42 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 43 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 45 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 47 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: Proved output 48 in frame 2.
SBY 13:08:38 [xlnxdemo_prove] engine_0: 3 : 0 1186 1095 29 ~3446                                                 5  2408      8.24 sec  T/O = 24  PRV = 16
SBY 13:08:38 [xlnxdemo_prove] engine_0: 3 : 0 1186 1114 51 ~3446                                                 7  2415      8.34 sec  T/O = 24  PRV = 16
SBY 13:08:38 [xlnxdemo_prove] engine_0: Timing out on output 10 in frame 3 (retrying in next anytime pass).
SBY 13:08:38 [xlnxdemo_prove] engine_0: 3 : 0 1186 1135 83 ~3446                                                 5  2428      8.45 sec  T/O = 25  PRV = 16
SBY 13:08:38 [xlnxdemo_prove] engine_0: 3 : 0 1186 1148 105 ~3446                                                4  2431      8.54 sec  T/O = 25  PRV = 16
SBY 13:08:38 [xlnxdemo_prove] engine_0: Timing out on output 11 in frame 3 (retrying in next anytime pass).
SBY 13:08:38 [xlnxdemo_prove] engine_0: 3 : 0 1186 1171 136 ~3446                                                7  2445      8.65 sec  T/O = 26  PRV = 16
SBY 13:08:38 [xlnxdemo_prove] engine_0: 3 : 0 1186 1188 155 ~3446                                                5  2448      8.73 sec  T/O = 26  PRV = 16
SBY 13:08:38 [xlnxdemo_prove] engine_0: Timing out on output 12 in frame 3 (retrying in next anytime pass).
SBY 13:08:38 [xlnxdemo_prove] engine_0: 3 : 0 1186 1208 187 ~3446                                                5  2462      8.85 sec  T/O = 27  PRV = 16
SBY 13:08:38 [xlnxdemo_prove] engine_0: 3 : 0 1186 1221 207 ~3446                                                5  2467      8.93 sec  T/O = 27  PRV = 16
SBY 13:08:38 [xlnxdemo_prove] engine_0: Timing out on output 13 in frame 3 (retrying in next anytime pass).
SBY 13:08:38 [xlnxdemo_prove] engine_0: 3 : 0 1186 1244 239 ~3446                                                5  2478      9.05 sec  T/O = 28  PRV = 16
SBY 13:08:38 [xlnxdemo_prove] engine_0: 3 : 0 1186 1262 263 ~3446                                                6  2481      9.13 sec  T/O = 28  PRV = 16
SBY 13:08:39 [xlnxdemo_prove] engine_0: Timing out on output 14 in frame 3 (retrying in next anytime pass).
SBY 13:08:39 [xlnxdemo_prove] engine_0: 3 : 0 1186 1286 295 ~3446                                                5  2494      9.27 sec  T/O = 29  PRV = 16
SBY 13:08:39 [xlnxdemo_prove] engine_0: 3 : 0 1186 1295 309 ~3446                                                5  2495      9.33 sec  T/O = 29  PRV = 16
SBY 13:08:39 [xlnxdemo_prove] engine_0: Timing out on output 15 in frame 3 (retrying in next anytime pass).
SBY 13:08:39 [xlnxdemo_prove] engine_0: 3 : 0 1186 1319 338 ~3446                                                5  2507      9.46 sec  T/O = 30  PRV = 16
SBY 13:08:39 [xlnxdemo_prove] engine_0: 3 : 0 1186 1332 355 ~3446                                                5  2509      9.53 sec  T/O = 30  PRV = 16
SBY 13:08:39 [xlnxdemo_prove] engine_0: Timing out on output 16 in frame 3 (retrying in next anytime pass).
SBY 13:08:39 [xlnxdemo_prove] engine_0: 3 : 0 1186 1354 384 ~3446                                                5  2523      9.66 sec  T/O = 31  PRV = 16
SBY 13:08:39 [xlnxdemo_prove] engine_0: 3 : 0 1186 1369 404 ~3446                                                6  2525      9.73 sec  T/O = 31  PRV = 16
SBY 13:08:39 [xlnxdemo_prove] engine_0: Timing out on output 17 in frame 3 (retrying in next anytime pass).
SBY 13:08:39 [xlnxdemo_prove] engine_0: 3 : 0 1186 1390 438 ~3446                                                6  2540      9.86 sec  T/O = 32  PRV = 16
SBY 13:08:39 [xlnxdemo_prove] engine_0: 3 : 0 1186 1402 450 ~3446                                                5  2541      9.93 sec  T/O = 32  PRV = 16
SBY 13:08:40 [xlnxdemo_prove] engine_0: Timing out on output 18 in frame 3 (retrying in next anytime pass).
SBY 13:08:40 [xlnxdemo_prove] engine_0: 3 : 0 1195 1484 561 ~3446                                                6  2606     10.33 sec  T/O = 33  PRV = 16
SBY 13:08:40 [xlnxdemo_prove] engine_0: 3 : 0 1196 1511 594 ~3446                                                6  2623     10.47 sec  T/O = 33  PRV = 16
SBY 13:08:40 [xlnxdemo_prove] engine_0: 3 : 0 1205 1579 745 ~3446                                                6  2709     10.93 sec  T/O = 33  PRV = 16
SBY 13:08:40 [xlnxdemo_prove] engine_0: Timing out on output 51 in frame 3 (retrying in next anytime pass).
SBY 13:08:40 [xlnxdemo_prove] engine_0: 3 : 0 1205 1579 757 ~3446                                                2  2709     10.97 sec  T/O = 34  PRV = 16
SBY 13:08:40 [xlnxdemo_prove] engine_0: Timing out on output 53 in frame 3 (retrying in next anytime pass).
SBY 13:08:40 [xlnxdemo_prove] engine_0: 3 : 0 1205 1579 757 ~3446                                                2  2709     10.97 sec  T/O = 35  PRV = 16
SBY 13:08:40 [xlnxdemo_prove] engine_0: Timing out on output 54 in frame 3 (retrying in next anytime pass).
SBY 13:08:40 [xlnxdemo_prove] engine_0: 3 : 0 1205 1579 761 ~3446                                                2  2709     10.98 sec  T/O = 36  PRV = 16
SBY 13:08:40 [xlnxdemo_prove] engine_0: Timing out on output 55 in frame 3 (retrying in next anytime pass).
SBY 13:08:40 [xlnxdemo_prove] engine_0: 3 : 0 1205 1579 761 ~3446                                                2  2709     10.99 sec  T/O = 37  PRV = 16
SBY 13:08:40 [xlnxdemo_prove] engine_0: Timing out on output 57 in frame 3 (retrying in next anytime pass).
SBY 13:08:40 [xlnxdemo_prove] engine_0: 3 : 0 1205 1579 761 ~3446                                                0  2709     10.99 sec  T/O = 38  PRV = 16
SBY 13:08:42 [xlnxdemo_prove] engine_0: Proved output 44 in frame 3.
SBY 13:08:42 [xlnxdemo_prove] engine_0: Proved output 46 in frame 3.
SBY 13:08:42 [xlnxdemo_prove] engine_0: 4 : 0 1208 1477 280 55 ~3921                                             6  2717     12.37 sec  T/O = 38  PRV = 18
SBY 13:08:42 [xlnxdemo_prove] engine_0: Timing out on output 19 in frame 4 (retrying in next anytime pass).
SBY 13:08:42 [xlnxdemo_prove] engine_0: 4 : 0 1210 1480 298 87 ~3921                                             7  2727     12.52 sec  T/O = 39  PRV = 18
SBY 13:08:42 [xlnxdemo_prove] engine_0: 4 : 0 1210 1480 298 89 ~3921                                             4  2727     12.53 sec  T/O = 39  PRV = 18
SBY 13:08:42 [xlnxdemo_prove] engine_0: Timing out on output 20 in frame 4 (retrying in next anytime pass).
SBY 13:08:42 [xlnxdemo_prove] engine_0: 4 : 0 1210 1485 321 117 ~3921                                            6  2733     12.64 sec  T/O = 40  PRV = 18
SBY 13:08:42 [xlnxdemo_prove] engine_0: 4 : 0 1210 1487 334 132 ~3921                                            7  2735     12.71 sec  T/O = 40  PRV = 18
SBY 13:08:42 [xlnxdemo_prove] engine_0: Timing out on output 21 in frame 4 (retrying in next anytime pass).
SBY 13:08:42 [xlnxdemo_prove] engine_0: 4 : 0 1210 1500 349 147 ~3921                                            8  2737     12.81 sec  T/O = 41  PRV = 18
SBY 13:08:42 [xlnxdemo_prove] engine_0: Timing out on output 22 in frame 4 (retrying in next anytime pass).
SBY 13:08:42 [xlnxdemo_prove] engine_0: 4 : 0 1210 1506 370 170 ~3921                                            6  2747     12.94 sec  T/O = 42  PRV = 18
SBY 13:08:42 [xlnxdemo_prove] engine_0: 4 : 0 1210 1509 382 180 ~3921                                            7  2748     13.00 sec  T/O = 42  PRV = 18
SBY 13:08:42 [xlnxdemo_prove] engine_0: Timing out on output 23 in frame 4 (retrying in next anytime pass).
SBY 13:08:42 [xlnxdemo_prove] engine_0: 4 : 0 1217 1516 390 205 ~3921                                            6  2759     13.13 sec  T/O = 43  PRV = 18
SBY 13:08:42 [xlnxdemo_prove] engine_0: 4 : 0 1220 1519 393 217 ~3921                                            4  2763     13.20 sec  T/O = 43  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: Timing out on output 24 in frame 4 (retrying in next anytime pass).
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1220 1528 411 235 ~3921                                            4  2771     13.34 sec  T/O = 44  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1220 1529 418 244 ~3921                                            7  2771     13.39 sec  T/O = 44  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: Timing out on output 25 in frame 4 (retrying in next anytime pass).
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1220 1539 434 267 ~3921                                            6  2779     13.51 sec  T/O = 45  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1220 1542 439 277 ~3921                                            4  2781     13.57 sec  T/O = 45  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: Timing out on output 26 in frame 4 (retrying in next anytime pass).
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1220 1552 459 302 ~3921                                            4  2789     13.71 sec  T/O = 46  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1220 1553 467 310 ~3921                                            5  2790     13.76 sec  T/O = 46  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: Timing out on output 27 in frame 4 (retrying in next anytime pass).
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1220 1556 476 322 ~3921                                            4  2791     13.82 sec  T/O = 47  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: Timing out on output 28 in frame 4 (retrying in next anytime pass).
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1220 1558 479 328 ~3921                                            4  2791     13.86 sec  T/O = 48  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: Timing out on output 29 in frame 4 (retrying in next anytime pass).
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1220 1563 505 352 ~3921                                            7  2797     13.97 sec  T/O = 49  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1220 1566 517 363 ~3921                                            5  2799     14.03 sec  T/O = 49  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: Timing out on output 30 in frame 4 (retrying in next anytime pass).
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1221 1579 529 386 ~3921                                           10  2802     14.16 sec  T/O = 50  PRV = 18
SBY 13:08:43 [xlnxdemo_prove] engine_0: 4 : 0 1221 1579 529 387 ~3921                                            3  2802     14.16 sec  T/O = 50  PRV = 18
SBY 13:08:44 [xlnxdemo_prove] engine_0: Timing out on output 31 in frame 4 (retrying in next anytime pass).
SBY 13:08:44 [xlnxdemo_prove] engine_0: 4 : 0 1221 1588 547 411 ~3921                                            7  2808     14.29 sec  T/O = 51  PRV = 18
SBY 13:08:44 [xlnxdemo_prove] engine_0: 4 : 0 1221 1590 557 419 ~3921                                            6  2809     14.35 sec  T/O = 51  PRV = 18
SBY 13:08:44 [xlnxdemo_prove] engine_0: Timing out on output 32 in frame 4 (retrying in next anytime pass).
SBY 13:08:44 [xlnxdemo_prove] engine_0: 4 : 0 1221 1599 572 448 ~3921                                            5  2813     14.48 sec  T/O = 52  PRV = 18
SBY 13:08:44 [xlnxdemo_prove] engine_0: 4 : 0 1221 1603 578 456 ~3921                                            4  2815     14.54 sec  T/O = 52  PRV = 18
SBY 13:08:44 [xlnxdemo_prove] engine_0: Timing out on output 33 in frame 4 (retrying in next anytime pass).
SBY 13:08:44 [xlnxdemo_prove] engine_0: 4 : 0 1221 1611 591 486 ~3921                                            4  2818     14.65 sec  T/O = 53  PRV = 18
SBY 13:08:44 [xlnxdemo_prove] engine_0: 4 : 0 1221 1617 597 498 ~3921                                            4  2822     14.72 sec  T/O = 53  PRV = 18
SBY 13:08:44 [xlnxdemo_prove] engine_0: Timing out on output 34 in frame 4 (retrying in next anytime pass).
SBY 13:08:44 [xlnxdemo_prove] engine_0: 4 : 0 1223 1629 609 520 ~3921                                            7  2826     14.85 sec  T/O = 54  PRV = 18
SBY 13:08:44 [xlnxdemo_prove] engine_0: 4 : 0 1223 1632 613 528 ~3921                                            4  2830     14.90 sec  T/O = 54  PRV = 18
SBY 13:08:44 [xlnxdemo_prove] engine_0: Timing out on output 35 in frame 4 (retrying in next anytime pass).
SBY 13:08:44 [xlnxdemo_prove] engine_0: 4 : 0 1223 1639 635 545 ~3921                                            6  2832     15.01 sec  T/O = 55  PRV = 18
SBY 13:08:44 [xlnxdemo_prove] engine_0: 4 : 0 1223 1640 643 553 ~3921                                            5  2833     15.07 sec  T/O = 55  PRV = 18
SBY 13:08:44 [xlnxdemo_prove] engine_0: Timing out on output 36 in frame 4 (retrying in next anytime pass).
SBY 13:08:44 [xlnxdemo_prove] engine_0: 4 : 0 1223 1651 664 580 ~3921                                            4  2836     15.21 sec  T/O = 56  PRV = 18
SBY 13:08:45 [xlnxdemo_prove] engine_0: Timing out on output 37 in frame 4 (retrying in next anytime pass).
SBY 13:08:45 [xlnxdemo_prove] engine_0: 4 : 0 1223 1658 687 605 ~3921                                            5  2839     15.35 sec  T/O = 57  PRV = 18
SBY 13:08:45 [xlnxdemo_prove] engine_0: 4 : 0 1223 1659 690 605 ~3921                                            5  2839     15.36 sec  T/O = 57  PRV = 18
SBY 13:08:45 [xlnxdemo_prove] engine_0: Timing out on output 38 in frame 4 (retrying in next anytime pass).
SBY 13:08:45 [xlnxdemo_prove] engine_0: 4 : 0 1223 1666 707 631 ~3921                                            6  2843     15.50 sec  T/O = 58  PRV = 18
SBY 13:08:45 [xlnxdemo_prove] engine_0: 4 : 0 1223 1668 714 637 ~3921                                            5  2844     15.54 sec  T/O = 58  PRV = 18
SBY 13:08:45 [xlnxdemo_prove] engine_0: Timing out on output 39 in frame 4 (retrying in next anytime pass).
SBY 13:08:45 [xlnxdemo_prove] engine_0: 4 : 0 1223 1673 741 657 ~3921                                            7  2851     15.67 sec  T/O = 59  PRV = 18
SBY 13:08:45 [xlnxdemo_prove] engine_0: 4 : 0 1223 1675 748 670 ~3921                                            7  2852     15.73 sec  T/O = 59  PRV = 18
SBY 13:08:45 [xlnxdemo_prove] engine_0: Timing out on output 40 in frame 4 (retrying in next anytime pass).
SBY 13:08:45 [xlnxdemo_prove] engine_0: 4 : 0 1223 1675 749 670 ~3921                                            4  2852     15.74 sec  T/O = 60  PRV = 18
SBY 13:08:45 [xlnxdemo_prove] engine_0: Timing out on output 50 in frame 4 (retrying in next anytime pass).
SBY 13:08:45 [xlnxdemo_prove] engine_0: 4 : 0 1223 1675 752 673 ~3921                                            2  2852     15.76 sec  T/O = 61  PRV = 18
SBY 13:08:45 [xlnxdemo_prove] engine_0: Timing out on output 52 in frame 4 (retrying in next anytime pass).
SBY 13:08:45 [xlnxdemo_prove] engine_0: 4 : 0 1223 1675 752 673 ~3921                                            0  2852     15.76 sec  T/O = 62  PRV = 18
SBY 13:08:47 [xlnxdemo_prove] engine_0: 5 : 0 268 1396 1285 163 34 ~4408                                         0  2852     17.26 sec  T/O = 62  PRV = 18
SBY 13:08:49 [xlnxdemo_prove] engine_0: All outputs solved or timed out in frame 5.
SBY 13:08:49 [xlnxdemo_prove] engine_0: Starting new anytime pass, reusing clauses.
SBY 13:08:49 [xlnxdemo_prove] engine_0: Frame Clauses                                                     Max Queue Flops Time
SBY 13:08:49 [xlnxdemo_prove] engine_0: 1 : 0 2822 ~4404                                                         0     0      2.87 sec  T/O =  0  PRV = 18
SBY 13:08:50 [xlnxdemo_prove] engine_0: 2 : 0 286 2631 ~4404                                                     2    60      3.25 sec  T/O =  0  PRV = 18
SBY 13:08:51 [xlnxdemo_prove] engine_0: 2 : 0 307 3337 ~4404                                                     2   789      4.58 sec  T/O =  0  PRV = 18
SBY 13:08:55 [xlnxdemo_prove] engine_0: 3 : 0 307 1932 1456 ~4409                                                6   840      8.27 sec  T/O =  0  PRV = 18
SBY 13:08:55 [xlnxdemo_prove] engine_0: 3 : 0 307 1942 1468 ~4409                                                6   849      8.34 sec  T/O =  0  PRV = 18
SBY 13:08:55 [xlnxdemo_prove] engine_0: Timing out on output 10 in frame 3 (retrying in next anytime pass).
SBY 13:08:55 [xlnxdemo_prove] engine_0: 3 : 0 307 1972 1510 ~4409                                                6   895      8.51 sec  T/O =  1  PRV = 18
SBY 13:08:55 [xlnxdemo_prove] engine_0: 3 : 0 307 1985 1521 ~4409                                                5   905      8.58 sec  T/O =  1  PRV = 18
SBY 13:08:55 [xlnxdemo_prove] engine_0: Timing out on output 17 in frame 3 (retrying in next anytime pass).
SBY 13:08:55 [xlnxdemo_prove] engine_0: 3 : 0 307 1986 1576 ~4409                                                2   981      8.74 sec  T/O =  2  PRV = 18
SBY 13:08:58 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1317 223 ~4500                                            6  1015     11.71 sec  T/O =  2  PRV = 18
SBY 13:08:58 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1327 229 ~4500                                            6  1020     11.76 sec  T/O =  2  PRV = 18
SBY 13:08:58 [xlnxdemo_prove] engine_0: Timing out on output 11 in frame 4 (retrying in next anytime pass).
SBY 13:08:58 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1356 258 ~4500                                            6  1043     11.91 sec  T/O =  3  PRV = 18
SBY 13:08:59 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1363 264 ~4500                                            4  1050     11.95 sec  T/O =  3  PRV = 18
SBY 13:08:59 [xlnxdemo_prove] engine_0: Timing out on output 12 in frame 4 (retrying in next anytime pass).
SBY 13:08:59 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1392 292 ~4500                                            4  1078     12.10 sec  T/O =  4  PRV = 18
SBY 13:08:59 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1398 299 ~4500                                            4  1084     12.15 sec  T/O =  4  PRV = 18
SBY 13:08:59 [xlnxdemo_prove] engine_0: Timing out on output 13 in frame 4 (retrying in next anytime pass).
SBY 13:08:59 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1427 327 ~4500                                            5  1111     12.31 sec  T/O =  5  PRV = 18
SBY 13:08:59 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1429 333 ~4500                                            4  1115     12.34 sec  T/O =  5  PRV = 18
SBY 13:08:59 [xlnxdemo_prove] engine_0: Timing out on output 14 in frame 4 (retrying in next anytime pass).
SBY 13:08:59 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1456 359 ~4500                                            6  1138     12.49 sec  T/O =  6  PRV = 18
SBY 13:08:59 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1462 366 ~4500                                            4  1142     12.54 sec  T/O =  6  PRV = 18
SBY 13:08:59 [xlnxdemo_prove] engine_0: Timing out on output 15 in frame 4 (retrying in next anytime pass).
SBY 13:08:59 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1490 393 ~4500                                            5  1172     12.71 sec  T/O =  7  PRV = 18
SBY 13:08:59 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1493 397 ~4500                                            5  1172     12.72 sec  T/O =  7  PRV = 18
SBY 13:08:59 [xlnxdemo_prove] engine_0: Timing out on output 16 in frame 4 (retrying in next anytime pass).
SBY 13:08:59 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1520 422 ~4500                                            6  1198     12.88 sec  T/O =  8  PRV = 18
SBY 13:09:00 [xlnxdemo_prove] engine_0: 4 : 0 307 1968 1526 429 ~4500                                            5  1200     12.92 sec  T/O =  8  PRV = 18
SBY 13:09:00 [xlnxdemo_prove] engine_0: Timing out on output 18 in frame 4 (retrying in next anytime pass).
SBY 13:09:00 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1539 467 ~4500                                            7  1225     13.12 sec  T/O =  9  PRV = 18
SBY 13:09:00 [xlnxdemo_prove] engine_0: Timing out on output 19 in frame 4 (retrying in next anytime pass).
SBY 13:09:00 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1565 495 ~4500                                            6  1246     13.26 sec  T/O = 10  PRV = 18
SBY 13:09:00 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1575 506 ~4500                                            7  1248     13.32 sec  T/O = 10  PRV = 18
SBY 13:09:00 [xlnxdemo_prove] engine_0: Timing out on output 20 in frame 4 (retrying in next anytime pass).
SBY 13:09:00 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1601 537 ~4500                                            6  1262     13.47 sec  T/O = 11  PRV = 18
SBY 13:09:00 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1607 547 ~4500                                            5  1265     13.52 sec  T/O = 11  PRV = 18
SBY 13:09:00 [xlnxdemo_prove] engine_0: Timing out on output 21 in frame 4 (retrying in next anytime pass).
SBY 13:09:00 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1636 573 ~4500                                            5  1284     13.67 sec  T/O = 12  PRV = 18
SBY 13:09:00 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1642 581 ~4500                                            6  1286     13.72 sec  T/O = 12  PRV = 18
SBY 13:09:00 [xlnxdemo_prove] engine_0: Timing out on output 22 in frame 4 (retrying in next anytime pass).
SBY 13:09:00 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1670 606 ~4500                                            6  1300     13.88 sec  T/O = 13  PRV = 18
SBY 13:09:01 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1676 614 ~4500                                            5  1301     13.92 sec  T/O = 13  PRV = 18
SBY 13:09:01 [xlnxdemo_prove] engine_0: Timing out on output 23 in frame 4 (retrying in next anytime pass).
SBY 13:09:01 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1704 643 ~4500                                            6  1323     14.08 sec  T/O = 14  PRV = 18
SBY 13:09:01 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1708 652 ~4500                                            5  1325     14.12 sec  T/O = 14  PRV = 18
SBY 13:09:01 [xlnxdemo_prove] engine_0: Timing out on output 24 in frame 4 (retrying in next anytime pass).
SBY 13:09:01 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1736 678 ~4500                                            6  1344     14.27 sec  T/O = 15  PRV = 18
SBY 13:09:01 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1743 686 ~4500                                            5  1344     14.32 sec  T/O = 15  PRV = 18
SBY 13:09:01 [xlnxdemo_prove] engine_0: Timing out on output 25 in frame 4 (retrying in next anytime pass).
SBY 13:09:01 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1769 715 ~4500                                            5  1362     14.47 sec  T/O = 16  PRV = 18
SBY 13:09:01 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1775 724 ~4500                                            6  1363     14.52 sec  T/O = 16  PRV = 18
SBY 13:09:01 [xlnxdemo_prove] engine_0: Timing out on output 26 in frame 4 (retrying in next anytime pass).
SBY 13:09:01 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1801 751 ~4500                                            6  1379     14.69 sec  T/O = 17  PRV = 18
SBY 13:09:01 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1806 755 ~4500                                            5  1379     14.72 sec  T/O = 17  PRV = 18
SBY 13:09:01 [xlnxdemo_prove] engine_0: Timing out on output 27 in frame 4 (retrying in next anytime pass).
SBY 13:09:01 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1832 781 ~4500                                            7  1397     14.86 sec  T/O = 18  PRV = 18
SBY 13:09:02 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1841 788 ~4500                                            5  1402     14.92 sec  T/O = 18  PRV = 18
SBY 13:09:02 [xlnxdemo_prove] engine_0: Timing out on output 28 in frame 4 (retrying in next anytime pass).
SBY 13:09:02 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1869 816 ~4500                                            4  1431     15.09 sec  T/O = 19  PRV = 18
SBY 13:09:02 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1873 820 ~4500                                            4  1435     15.12 sec  T/O = 19  PRV = 18
SBY 13:09:02 [xlnxdemo_prove] engine_0: Timing out on output 29 in frame 4 (retrying in next anytime pass).
SBY 13:09:02 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1900 846 ~4500                                            6  1451     15.28 sec  T/O = 20  PRV = 18
SBY 13:09:02 [xlnxdemo_prove] engine_0: 4 : 0 307 1972 1905 854 ~4500                                            5  1451     15.32 sec  T/O = 20  PRV = 18
SBY 13:09:02 [xlnxdemo_prove] engine_0: Timing out on output 30 in frame 4 (retrying in next anytime pass).
SBY 13:09:02 [xlnxdemo_prove] engine_0: 4 : 0 307 1990 1922 866 ~4500                                            9  1472     15.47 sec  T/O = 21  PRV = 18
SBY 13:09:02 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 1927 873 ~4500                                            7  1473     15.52 sec  T/O = 21  PRV = 18
SBY 13:09:02 [xlnxdemo_prove] engine_0: Timing out on output 31 in frame 4 (retrying in next anytime pass).
SBY 13:09:02 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 1954 901 ~4500                                            6  1488     15.67 sec  T/O = 22  PRV = 18
SBY 13:09:02 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 1961 909 ~4500                                            4  1491     15.72 sec  T/O = 22  PRV = 18
SBY 13:09:02 [xlnxdemo_prove] engine_0: Timing out on output 32 in frame 4 (retrying in next anytime pass).
SBY 13:09:02 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 1990 937 ~4500                                            7  1501     15.86 sec  T/O = 23  PRV = 18
SBY 13:09:03 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 1997 948 ~4500                                            4  1506     15.92 sec  T/O = 23  PRV = 18
SBY 13:09:03 [xlnxdemo_prove] engine_0: Timing out on output 33 in frame 4 (retrying in next anytime pass).
SBY 13:09:03 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2023 975 ~4500                                            6  1519     16.08 sec  T/O = 24  PRV = 18
SBY 13:09:03 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2029 981 ~4500                                            6  1521     16.12 sec  T/O = 24  PRV = 18
SBY 13:09:03 [xlnxdemo_prove] engine_0: Timing out on output 34 in frame 4 (retrying in next anytime pass).
SBY 13:09:03 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2057 1003 ~4500                                           6  1539     16.27 sec  T/O = 25  PRV = 18
SBY 13:09:03 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2067 1010 ~4500                                           5  1541     16.32 sec  T/O = 25  PRV = 18
SBY 13:09:03 [xlnxdemo_prove] engine_0: Timing out on output 35 in frame 4 (retrying in next anytime pass).
SBY 13:09:03 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2096 1035 ~4500                                           7  1554     16.49 sec  T/O = 26  PRV = 18
SBY 13:09:03 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2101 1042 ~4500                                           5  1555     16.52 sec  T/O = 26  PRV = 18
SBY 13:09:03 [xlnxdemo_prove] engine_0: Timing out on output 36 in frame 4 (retrying in next anytime pass).
SBY 13:09:03 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2127 1066 ~4500                                           7  1569     16.67 sec  T/O = 27  PRV = 18
SBY 13:09:03 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2135 1072 ~4500                                           5  1572     16.72 sec  T/O = 27  PRV = 18
SBY 13:09:03 [xlnxdemo_prove] engine_0: Timing out on output 37 in frame 4 (retrying in next anytime pass).
SBY 13:09:03 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2161 1097 ~4500                                           5  1589     16.87 sec  T/O = 28  PRV = 18
SBY 13:09:04 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2168 1104 ~4500                                           4  1590     16.92 sec  T/O = 28  PRV = 18
SBY 13:09:04 [xlnxdemo_prove] engine_0: Timing out on output 38 in frame 4 (retrying in next anytime pass).
SBY 13:09:04 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2192 1132 ~4500                                           6  1604     17.07 sec  T/O = 29  PRV = 18
SBY 13:09:04 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2199 1141 ~4500                                           5  1606     17.12 sec  T/O = 29  PRV = 18
SBY 13:09:04 [xlnxdemo_prove] engine_0: Timing out on output 39 in frame 4 (retrying in next anytime pass).
SBY 13:09:04 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2225 1168 ~4500                                           6  1621     17.28 sec  T/O = 30  PRV = 18
SBY 13:09:04 [xlnxdemo_prove] engine_0: 4 : 0 307 1992 2233 1172 ~4500                                           5  1621     17.33 sec  T/O = 30  PRV = 18
SBY 13:09:04 [xlnxdemo_prove] engine_0: Timing out on output 40 in frame 4 (retrying in next anytime pass).
SBY 13:09:04 [xlnxdemo_prove] engine_0: 4 : 0 307 2001 2241 1184 ~4500                                           6  1625     17.43 sec  T/O = 31  PRV = 18
SBY 13:09:04 [xlnxdemo_prove] engine_0: Timing out on output 49 in frame 4 (retrying in next anytime pass).
SBY 13:09:04 [xlnxdemo_prove] engine_0: 4 : 0 307 2008 2255 1306 ~4500                                           6  1825     17.84 sec  T/O = 32  PRV = 18
SBY 13:09:04 [xlnxdemo_prove] engine_0: 4 : 0 307 2010 2258 1310 ~4500                                           5  1830     17.87 sec  T/O = 32  PRV = 18
SBY 13:09:05 [xlnxdemo_prove] engine_0: Timing out on output 56 in frame 4 (retrying in next anytime pass).
SBY 13:09:05 [xlnxdemo_prove] engine_0: 4 : 0 307 2010 2267 1365 ~4500                                           2  1878     18.06 sec  T/O = 33  PRV = 18
SBY 13:09:05 [xlnxdemo_prove] engine_0: Timing out on output 58 in frame 4 (retrying in next anytime pass).
SBY 13:09:05 [xlnxdemo_prove] engine_0: 4 : 0 307 2010 2269 1410 ~4500                                           2  1910     18.21 sec  T/O = 34  PRV = 18
SBY 13:09:05 [xlnxdemo_prove] engine_0: Timing out on output 59 in frame 4 (retrying in next anytime pass).
SBY 13:09:05 [xlnxdemo_prove] engine_0: 4 : 0 307 2010 2269 1522 ~4500                                           2  1946     18.50 sec  T/O = 35  PRV = 18
SBY 13:09:06 [xlnxdemo_prove] engine_0: Timing out on output 62 in frame 4 (retrying in next anytime pass).
SBY 13:09:06 [xlnxdemo_prove] engine_0: 4 : 0 307 2017 2280 1774 ~4500                                           6  2109     19.23 sec  T/O = 36  PRV = 18
SBY 13:09:06 [xlnxdemo_prove] engine_0: 4 : 0 307 2019 2283 1776 ~4500                                           5  2111     19.25 sec  T/O = 36  PRV = 18
SBY 13:09:06 [xlnxdemo_prove] engine_0: Timing out on output 70 in frame 4 (retrying in next anytime pass).
SBY 13:09:06 [xlnxdemo_prove] engine_0: 4 : 0 307 2019 2284 1815 ~4500                                           2  2123     19.38 sec  T/O = 37  PRV = 18
SBY 13:09:06 [xlnxdemo_prove] engine_0: Timing out on output 71 in frame 4 (retrying in next anytime pass).
SBY 13:09:06 [xlnxdemo_prove] engine_0: 4 : 0 307 2019 2307 1913 ~4500                                           2  2156     19.71 sec  T/O = 38  PRV = 18
SBY 13:09:06 [xlnxdemo_prove] engine_0: Timing out on output 74 in frame 4 (retrying in next anytime pass).
SBY 13:09:06 [xlnxdemo_prove] engine_0: 4 : 0 307 2019 2315 1932 ~4500                                           2  2163     19.80 sec  T/O = 39  PRV = 18
SBY 13:09:07 [xlnxdemo_prove] engine_0: Timing out on output 75 in frame 4 (retrying in next anytime pass).
SBY 13:09:07 [xlnxdemo_prove] engine_0: 4 : 0 307 2019 2315 2092 ~4500                                           2  2225     20.23 sec  T/O = 40  PRV = 18
SBY 13:09:07 [xlnxdemo_prove] engine_0: Timing out on output 79 in frame 4 (retrying in next anytime pass).
SBY 13:09:07 [xlnxdemo_prove] engine_0: 4 : 0 307 2019 2315 2092 ~4500                                           0  2225     20.23 sec  T/O = 41  PRV = 18
SBY 13:09:10 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2266 550 69 ~5993                                         8  2236     23.77 sec  T/O = 41  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: Timing out on output 50 in frame 5 (retrying in next anytime pass).
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2269 571 94 ~5993                                         5  2259     23.98 sec  T/O = 42  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2271 573 98 ~5993                                         5  2259     24.02 sec  T/O = 42  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: Timing out on output 52 in frame 5 (retrying in next anytime pass).
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2277 585 110 ~5993                                        5  2269     24.16 sec  T/O = 43  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2277 585 111 ~5993                                        4  2269     24.17 sec  T/O = 43  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: Timing out on output 53 in frame 5 (retrying in next anytime pass).
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2277 596 129 ~5993                                        4  2275     24.32 sec  T/O = 44  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: Timing out on output 54 in frame 5 (retrying in next anytime pass).
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2281 613 148 ~5993                                        5  2287     24.49 sec  T/O = 45  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: Timing out on output 57 in frame 5 (retrying in next anytime pass).
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2282 615 151 ~5993                                        5  2291     24.52 sec  T/O = 46  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: Timing out on output 60 in frame 5 (retrying in next anytime pass).
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2284 624 166 ~5993                                        5  2304     24.65 sec  T/O = 47  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: Timing out on output 63 in frame 5 (retrying in next anytime pass).
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2286 627 169 ~5993                                        6  2306     24.70 sec  T/O = 48  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: Timing out on output 64 in frame 5 (retrying in next anytime pass).
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2291 634 175 ~5993                                        6  2312     24.77 sec  T/O = 49  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: Timing out on output 65 in frame 5 (retrying in next anytime pass).
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2293 637 181 ~5993                                        5  2318     24.83 sec  T/O = 50  PRV = 18
SBY 13:09:11 [xlnxdemo_prove] engine_0: Timing out on output 66 in frame 5 (retrying in next anytime pass).
SBY 13:09:11 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2295 642 186 ~5993                                        5  2324     24.91 sec  T/O = 51  PRV = 18
SBY 13:09:12 [xlnxdemo_prove] engine_0: Timing out on output 67 in frame 5 (retrying in next anytime pass).
SBY 13:09:12 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2296 648 193 ~5993                                        5  2330     24.98 sec  T/O = 52  PRV = 18
SBY 13:09:12 [xlnxdemo_prove] engine_0: Timing out on output 68 in frame 5 (retrying in next anytime pass).
SBY 13:09:12 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2299 651 198 ~5993                                        6  2335     25.02 sec  T/O = 53  PRV = 18
SBY 13:09:12 [xlnxdemo_prove] engine_0: Timing out on output 69 in frame 5 (retrying in next anytime pass).
SBY 13:09:12 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2300 652 199 ~5993                                        5  2340     25.03 sec  T/O = 54  PRV = 18
SBY 13:09:12 [xlnxdemo_prove] engine_0: Timing out on output 72 in frame 5 (retrying in next anytime pass).
SBY 13:09:12 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2303 657 207 ~5993                                        5  2345     25.10 sec  T/O = 55  PRV = 18
SBY 13:09:12 [xlnxdemo_prove] engine_0: Timing out on output 73 in frame 5 (retrying in next anytime pass).
SBY 13:09:12 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2304 658 211 ~5993                                        5  2348     25.13 sec  T/O = 56  PRV = 18
SBY 13:09:12 [xlnxdemo_prove] engine_0: Timing out on output 76 in frame 5 (retrying in next anytime pass).
SBY 13:09:12 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2305 662 215 ~5993                                        5  2353     25.17 sec  T/O = 57  PRV = 18
SBY 13:09:12 [xlnxdemo_prove] engine_0: Timing out on output 77 in frame 5 (retrying in next anytime pass).
SBY 13:09:12 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2305 662 216 ~5993                                        2  2356     25.18 sec  T/O = 58  PRV = 18
SBY 13:09:12 [xlnxdemo_prove] engine_0: Timing out on output 78 in frame 5 (retrying in next anytime pass).
SBY 13:09:12 [xlnxdemo_prove] engine_0: 5 : 0 307 2019 2305 662 216 ~5993                                        0  2356     25.18 sec  T/O = 59  PRV = 18
SBY 13:09:14 [xlnxdemo_prove] engine_0: 6 : 0 307 2019 2303 630 66 2 ~6134                                       4  2356     27.80 sec  T/O = 59  PRV = 18
SBY 13:09:14 [xlnxdemo_prove] engine_0: Timing out on output 61 in frame 6 (retrying in next anytime pass).
SBY 13:09:14 [xlnxdemo_prove] engine_0: 6 : 0 307 2019 2303 630 66 2 ~6134                                       0  2356     27.80 sec  T/O = 60  PRV = 18
SBY 13:09:17 [xlnxdemo_prove] engine_0: Proved output 51 in frame 6.
SBY 13:09:17 [xlnxdemo_prove] engine_0: Proved output 55 in frame 6.
SBY 13:09:17 [xlnxdemo_prove] engine_0: Proved output 72 in frame 6.
SBY 13:09:17 [xlnxdemo_prove] engine_0: 7 : 0 307 2019 2303 629 64 14 -23 ~6144                           0  2356     30.79 sec  T/O = 59  PRV = 21
SBY 13:09:19 [xlnxdemo_prove] engine_0: 8 : 0 307 2019 2303 629 64 14 0 -23 ~6144                         0  2356     32.38 sec  T/O = 59  PRV = 21
SBY 13:09:25 [xlnxdemo_prove] engine_0: All outputs solved or timed out in frame 8.
SBY 13:09:25 [xlnxdemo_prove] engine_0: Starting new anytime pass, reusing clauses.
SBY 13:09:25 [xlnxdemo_prove] engine_0: Frame Clauses                                                     Max Queue Flops Time
SBY 13:09:25 [xlnxdemo_prove] engine_0: 1 : 0 5313 ~6144                                                         0     0      5.74 sec  T/O =  0  PRV = 21
SBY 13:09:25 [xlnxdemo_prove] engine_0: 2 : 0 307 5006 ~6144                                                     0     0      6.37 sec  T/O =  0  PRV = 21
SBY 13:09:26 [xlnxdemo_prove] engine_0: 3 : 0 307 2043 3019 ~6144                                                4    58      7.48 sec  T/O =  0  PRV = 21
SBY 13:09:27 [xlnxdemo_prove] engine_0: 3 : 0 307 2067 3047 ~6144                                                4    95      7.64 sec  T/O =  0  PRV = 21
SBY 13:09:33 [xlnxdemo_prove] engine_0: 4 : 0 307 2068 2334 700 ~6182                                            6   120     14.11 sec  T/O =  0  PRV = 21
SBY 13:09:33 [xlnxdemo_prove] engine_0: Timing out on output 10 in frame 4 (retrying in next anytime pass).
SBY 13:09:33 [xlnxdemo_prove] engine_0: 4 : 0 307 2068 2362 730 ~6182                                            5   160     14.36 sec  T/O =  1  PRV = 21
SBY 13:09:33 [xlnxdemo_prove] engine_0: 4 : 0 307 2068 2378 746 ~6182                                            4   166     14.51 sec  T/O =  1  PRV = 21
SBY 13:09:34 [xlnxdemo_prove] engine_0: Timing out on output 11 in frame 4 (retrying in next anytime pass).
SBY 13:09:34 [xlnxdemo_prove] engine_0: 4 : 0 307 2068 2411 779 ~6182                                            2   195     14.83 sec  T/O =  2  PRV = 21
SBY 13:09:34 [xlnxdemo_prove] engine_0: 4 : 0 307 2068 2473 844 ~6182                                            7   251     15.36 sec  T/O =  2  PRV = 21
SBY 13:09:35 [xlnxdemo_prove] engine_0: 4 : 0 307 2068 2514 890 ~6182                                            5   293     15.70 sec  T/O =  2  PRV = 21
SBY 13:09:35 [xlnxdemo_prove] engine_0: 4 : 0 307 2068 2566 943 ~6182                                            4   329     16.09 sec  T/O =  2  PRV = 21
SBY 13:09:35 [xlnxdemo_prove] engine_0: 4 : 0 307 2070 2583 986 ~6182                                            5   359     16.37 sec  T/O =  2  PRV = 21
SBY 13:09:35 [xlnxdemo_prove] engine_0: 4 : 0 307 2070 2586 990 ~6182                                            3   361     16.41 sec  T/O =  2  PRV = 21
SBY 13:09:36 [xlnxdemo_prove] engine_0: Timing out on output 17 in frame 4 (retrying in next anytime pass).
SBY 13:09:36 [xlnxdemo_prove] engine_0: 4 : 0 307 2070 2618 1021 ~6182                                           5   387     16.64 sec  T/O =  3  PRV = 21
SBY 13:09:36 [xlnxdemo_prove] engine_0: 4 : 0 307 2072 2645 1075 ~6182                                           6   440     16.98 sec  T/O =  3  PRV = 21
SBY 13:09:36 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 2679 1119 ~6182                                           6   477     17.27 sec  T/O =  3  PRV = 21
SBY 13:09:36 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 2710 1149 ~6182                                           5   496     17.49 sec  T/O =  3  PRV = 21
SBY 13:09:37 [xlnxdemo_prove] engine_0: Timing out on output 20 in frame 4 (retrying in next anytime pass).
SBY 13:09:37 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 2739 1178 ~6182                                           5   522     17.70 sec  T/O =  4  PRV = 21
SBY 13:09:37 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 2766 1207 ~6182                                           6   537     17.89 sec  T/O =  4  PRV = 21
SBY 13:09:37 [xlnxdemo_prove] engine_0: Timing out on output 21 in frame 4 (retrying in next anytime pass).
SBY 13:09:37 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 2798 1238 ~6182                                           4   564     18.12 sec  T/O =  5  PRV = 21
SBY 13:09:37 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 2839 1281 ~6182                                           2   595     18.45 sec  T/O =  5  PRV = 21
SBY 13:09:38 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 2876 1318 ~6182                                           5   625     18.73 sec  T/O =  5  PRV = 21
SBY 13:09:38 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 2919 1361 ~6182                                           6   666     19.06 sec  T/O =  5  PRV = 21
SBY 13:09:38 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 2940 1382 ~6182                                           4   678     19.24 sec  T/O =  5  PRV = 21
SBY 13:09:38 [xlnxdemo_prove] engine_0: Timing out on output 25 in frame 4 (retrying in next anytime pass).
SBY 13:09:38 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 2972 1413 ~6182                                           5   704     19.48 sec  T/O =  6  PRV = 21
SBY 13:09:39 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 3022 1466 ~6182                                           4   750     19.87 sec  T/O =  6  PRV = 21
SBY 13:09:39 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 3062 1507 ~6182                                           4   782     20.19 sec  T/O =  6  PRV = 21
SBY 13:09:40 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 3107 1554 ~6182                                           4   817     20.55 sec  T/O =  6  PRV = 21
SBY 13:09:40 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 3144 1588 ~6182                                           6   849     20.83 sec  T/O =  6  PRV = 21
SBY 13:09:40 [xlnxdemo_prove] engine_0: 4 : 0 307 2075 3164 1610 ~6182                                           4   861     21.01 sec  T/O =  6  PRV = 21
SBY 13:09:40 [xlnxdemo_prove] engine_0: Timing out on output 30 in frame 4 (retrying in next anytime pass).
SBY 13:09:40 [xlnxdemo_prove] engine_0: 4 : 0 307 2079 3176 1645 ~6182                                           7   906     21.24 sec  T/O =  7  PRV = 21
SBY 13:09:40 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3193 1660 ~6182                                           9   915     21.41 sec  T/O =  7  PRV = 21
SBY 13:09:41 [xlnxdemo_prove] engine_0: Timing out on output 31 in frame 4 (retrying in next anytime pass).
SBY 13:09:41 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3223 1690 ~6182                                           4   943     21.64 sec  T/O =  8  PRV = 21
SBY 13:09:41 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3273 1741 ~6182                                           2   980     22.04 sec  T/O =  8  PRV = 21
SBY 13:09:41 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3310 1779 ~6182                                           4  1010     22.35 sec  T/O =  8  PRV = 21
SBY 13:09:42 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3347 1812 ~6182                                           6  1046     22.62 sec  T/O =  8  PRV = 21
SBY 13:09:42 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3369 1842 ~6182                                           6  1064     22.83 sec  T/O =  8  PRV = 21
SBY 13:09:42 [xlnxdemo_prove] engine_0: Timing out on output 35 in frame 4 (retrying in next anytime pass).
SBY 13:09:42 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3398 1871 ~6182                                           6  1096     23.04 sec  T/O =  9  PRV = 21
SBY 13:09:42 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3420 1894 ~6182                                           4  1110     23.23 sec  T/O =  9  PRV = 21
SBY 13:09:42 [xlnxdemo_prove] engine_0: Timing out on output 36 in frame 4 (retrying in next anytime pass).
SBY 13:09:42 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3451 1924 ~6182                                           5  1135     23.47 sec  T/O = 10  PRV = 21
SBY 13:09:43 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3500 1974 ~6182                                           4  1174     23.89 sec  T/O = 10  PRV = 21
SBY 13:09:43 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3538 2014 ~6182                                           4  1208     24.23 sec  T/O = 10  PRV = 21
SBY 13:09:43 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3552 2025 ~6182                                           4  1211     24.37 sec  T/O = 10  PRV = 21
SBY 13:09:44 [xlnxdemo_prove] engine_0: Timing out on output 39 in frame 4 (retrying in next anytime pass).
SBY 13:09:44 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3584 2052 ~6182                                           6  1238     24.62 sec  T/O = 11  PRV = 21
SBY 13:09:44 [xlnxdemo_prove] engine_0: 4 : 0 307 2088 3601 2074 ~6182                                           4  1251     24.77 sec  T/O = 11  PRV = 21
SBY 13:09:44 [xlnxdemo_prove] engine_0: Timing out on output 40 in frame 4 (retrying in next anytime pass).
SBY 13:09:44 [xlnxdemo_prove] engine_0: 4 : 0 307 2094 3615 2119 ~6182                                           5  1333     25.05 sec  T/O = 12  PRV = 21
SBY 13:09:50 [xlnxdemo_prove] engine_0: Proved output 19 in frame 4.
SBY 13:09:50 [xlnxdemo_prove] engine_0: Proved output 56 in frame 4.
SBY 13:09:50 [xlnxdemo_prove] engine_0: Proved output 58 in frame 4.
SBY 13:09:50 [xlnxdemo_prove] engine_0: Proved output 61 in frame 4.
SBY 13:09:50 [xlnxdemo_prove] engine_0: Proved output 63 in frame 4.
SBY 13:09:50 [xlnxdemo_prove] engine_0: Proved output 66 in frame 4.
SBY 13:09:50 [xlnxdemo_prove] engine_0: Proved output 71 in frame 4.
SBY 13:09:50 [xlnxdemo_prove] engine_0: Proved output 76 in frame 4.
SBY 13:09:50 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 74 ~7396                                         2  1335     30.80 sec  T/O = 12  PRV = 29
SBY 13:09:50 [xlnxdemo_prove] engine_0: Timing out on output 12 in frame 5 (retrying in next anytime pass).
SBY 13:09:50 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 86 ~7396                                         3  1342     30.91 sec  T/O = 13  PRV = 29
SBY 13:09:50 [xlnxdemo_prove] engine_0: Timing out on output 13 in frame 5 (retrying in next anytime pass).
SBY 13:09:50 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 92 ~7396                                         3  1344     30.96 sec  T/O = 14  PRV = 29
SBY 13:09:50 [xlnxdemo_prove] engine_0: Timing out on output 14 in frame 5 (retrying in next anytime pass).
SBY 13:09:50 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 100 ~7396                                        3  1351     31.01 sec  T/O = 15  PRV = 29
SBY 13:09:50 [xlnxdemo_prove] engine_0: Timing out on output 15 in frame 5 (retrying in next anytime pass).
SBY 13:09:50 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 116 ~7396                                        2  1363     31.15 sec  T/O = 16  PRV = 29
SBY 13:09:50 [xlnxdemo_prove] engine_0: Timing out on output 18 in frame 5 (retrying in next anytime pass).
SBY 13:09:50 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 126 ~7396                                        2  1370     31.23 sec  T/O = 17  PRV = 29
SBY 13:09:50 [xlnxdemo_prove] engine_0: Timing out on output 22 in frame 5 (retrying in next anytime pass).
SBY 13:09:50 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 140 ~7396                                        3  1382     31.34 sec  T/O = 18  PRV = 29
SBY 13:09:50 [xlnxdemo_prove] engine_0: Timing out on output 23 in frame 5 (retrying in next anytime pass).
SBY 13:09:50 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 147 ~7396                                        2  1387     31.40 sec  T/O = 19  PRV = 29
SBY 13:09:50 [xlnxdemo_prove] engine_0: Timing out on output 24 in frame 5 (retrying in next anytime pass).
SBY 13:09:50 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 148 ~7396                                        2  1387     31.41 sec  T/O = 20  PRV = 29
SBY 13:09:50 [xlnxdemo_prove] engine_0: Timing out on output 26 in frame 5 (retrying in next anytime pass).
SBY 13:09:50 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 157 ~7396                                        2  1392     31.49 sec  T/O = 21  PRV = 29
SBY 13:09:51 [xlnxdemo_prove] engine_0: Timing out on output 27 in frame 5 (retrying in next anytime pass).
SBY 13:09:51 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 160 ~7396                                        2  1393     31.53 sec  T/O = 22  PRV = 29
SBY 13:09:51 [xlnxdemo_prove] engine_0: Timing out on output 28 in frame 5 (retrying in next anytime pass).
SBY 13:09:51 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 173 ~7396                                        3  1405     31.63 sec  T/O = 23  PRV = 29
SBY 13:09:51 [xlnxdemo_prove] engine_0: Timing out on output 29 in frame 5 (retrying in next anytime pass).
SBY 13:09:51 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 176 ~7396                                        2  1405     31.65 sec  T/O = 24  PRV = 29
SBY 13:09:51 [xlnxdemo_prove] engine_0: Timing out on output 32 in frame 5 (retrying in next anytime pass).
SBY 13:09:51 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 194 ~7396                                        2  1414     31.81 sec  T/O = 25  PRV = 29
SBY 13:09:51 [xlnxdemo_prove] engine_0: Timing out on output 34 in frame 5 (retrying in next anytime pass).
SBY 13:09:51 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 194 ~7396                                        2  1414     31.82 sec  T/O = 26  PRV = 29
SBY 13:09:51 [xlnxdemo_prove] engine_0: Timing out on output 37 in frame 5 (retrying in next anytime pass).
SBY 13:09:51 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3590 826 199 ~7396                                        2  1416     31.87 sec  T/O = 27  PRV = 29
SBY 13:09:51 [xlnxdemo_prove] engine_0: Timing out on output 38 in frame 5 (retrying in next anytime pass).
SBY 13:09:51 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3594 848 267 ~7396                                        5  1503     32.44 sec  T/O = 28  PRV = 29
SBY 13:09:57 [xlnxdemo_prove] engine_0: Proved output 16 in frame 5.
SBY 13:09:57 [xlnxdemo_prove] engine_0: Proved output 33 in frame 5.
SBY 13:09:57 [xlnxdemo_prove] engine_0: Proved output 49 in frame 5.
SBY 13:09:57 [xlnxdemo_prove] engine_0: Proved output 53 in frame 5.
SBY 13:09:57 [xlnxdemo_prove] engine_0: Proved output 60 in frame 5.
SBY 13:09:57 [xlnxdemo_prove] engine_0: Proved output 62 in frame 5.
SBY 13:09:57 [xlnxdemo_prove] engine_0: Proved output 70 in frame 5.
SBY 13:09:57 [xlnxdemo_prove] engine_0: 6 : 0 307 2094 3592 828 99 47 ~7570                                      4  1564     37.79 sec  T/O = 28  PRV = 36
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 50 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 52 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 54 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 57 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 59 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 64 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 65 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 67 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 68 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 69 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 73 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 74 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 75 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 77 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 78 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: Proved output 79 in frame 6.
SBY 13:10:00 [xlnxdemo_prove] engine_0: 7 : 0 307 2094 3592 823 83 15 -38 ~7638                           0  1564     41.47 sec  T/O = 28  PRV = 52
SBY 13:10:03 [xlnxdemo_prove] engine_0: 8 : 0 307 2094 3592 823 83 15 0 -38 ~7638                         0  1564     43.72 sec  T/O = 28  PRV = 52
SBY 13:10:10 [xlnxdemo_prove] engine_0: All outputs solved or timed out in frame 8.
SBY 13:10:10 [xlnxdemo_prove] engine_0: Starting new anytime pass, reusing clauses.
SBY 13:10:10 [xlnxdemo_prove] engine_0: Frame Clauses                                                     Max Queue Flops Time
SBY 13:10:10 [xlnxdemo_prove] engine_0: 1 : 0 6876 ~7637                                                         0     0      6.91 sec  T/O =  0  PRV = 52
SBY 13:10:11 [xlnxdemo_prove] engine_0: 2 : 0 307 6569 ~7637                                                     0     0      7.96 sec  T/O =  0  PRV = 52
SBY 13:10:12 [xlnxdemo_prove] engine_0: 3 : 0 307 2094 4475 ~7637                                                0     0      9.27 sec  T/O =  0  PRV = 52
SBY 13:10:15 [xlnxdemo_prove] engine_0: 4 : 0 307 2094 3707 1022 ~7637                                           2   213     12.40 sec  T/O =  0  PRV = 52
SBY 13:10:23 [xlnxdemo_prove] engine_0: 5 : 0 307 2094 3705 835 396 ~7764                                        2   619     20.19 sec  T/O =  0  PRV = 52
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 10 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 11 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 12 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 13 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 14 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 15 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 17 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 18 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 20 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 21 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 22 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 23 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 24 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 25 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 26 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 27 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 28 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 29 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 30 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 31 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 32 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 34 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 35 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 36 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 37 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 38 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 39 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: Proved output 40 in frame 5.
SBY 13:10:28 [xlnxdemo_prove] engine_0: 6 : 0 307 2094 3705 807 83 -23 ~8100                              0   619     25.19 sec  T/O =  0  PRV = 80
SBY 13:10:31 [xlnxdemo_prove] engine_0: 7 : 0 307 2094 3705 807 83 15 -38 ~8100                           0   619     27.91 sec  T/O =  0  PRV = 80
SBY 13:10:31 [xlnxdemo_prove] engine_0: All outputs solved or timed out in frame 7.
SBY 13:10:31 [xlnxdemo_prove] engine_0: Block =  468  Oblig = 30698  Clause = 16470  Call =239033 (sat=81.2%)  Cex =   0  Start = 776
SBY 13:10:31 [xlnxdemo_prove] engine_0: SAT solving =    52.59 sec ( 43.34 %)
SBY 13:10:31 [xlnxdemo_prove] engine_0: unsat     =     2.13 sec (  1.75 %)
SBY 13:10:31 [xlnxdemo_prove] engine_0: sat       =    50.46 sec ( 41.59 %)
SBY 13:10:31 [xlnxdemo_prove] engine_0: Generalize  =    27.52 sec ( 22.68 %)
SBY 13:10:31 [xlnxdemo_prove] engine_0: Push clause =    39.36 sec ( 32.44 %)
SBY 13:10:31 [xlnxdemo_prove] engine_0: Ternary sim =     4.86 sec (  4.00 %)
SBY 13:10:31 [xlnxdemo_prove] engine_0: Containment =     4.32 sec (  3.56 %)
SBY 13:10:31 [xlnxdemo_prove] engine_0: CNF compute =     3.07 sec (  2.53 %)
SBY 13:10:31 [xlnxdemo_prove] engine_0: Refinement  =     0.00 sec (  0.00 %)
SBY 13:10:31 [xlnxdemo_prove] engine_0: TOTAL       =   121.33 sec (100.00 %)
SBY 13:10:31 [xlnxdemo_prove] engine_0: Property proved.  Time =   121.36 sec
SBY 13:10:31 [xlnxdemo_prove] engine_0: Counter-example is not available.
SBY 13:10:31 [xlnxdemo_prove] engine_0: finished (returncode=0)
SBY 13:10:31 [xlnxdemo_prove] engine_0: Status returned by engine: PASS
SBY 13:10:31 [xlnxdemo_prove] summary: Elapsed clock time [H:MM:SS (secs)]: 0:02:04 (124)
SBY 13:10:31 [xlnxdemo_prove] summary: Elapsed process time [H:MM:SS (secs)]: 0:02:05 (125)
SBY 13:10:31 [xlnxdemo_prove] summary: engine_0 (abc pdr -c "pdr -v") returned PASS
SBY 13:10:31 [xlnxdemo_prove] summary: engine_0 did not produce any traces
SBY 13:10:31 [xlnxdemo_prove] DONE (PASS, rc=0)
⦗OSS CAD Suite⦘ india@india-Lenovo-ideapad-320-15IKB:~/Downloads/yosys/axil$ 

