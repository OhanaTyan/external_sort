
is_sorted:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 7a 2f 00 00    	push   0x2f7a(%rip)        # 3fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 7b 2f 00 00 	bnd jmp *0x2f7b(%rip)        # 3fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop

Disassembly of section .plt.got:

0000000000001080 <__cxa_finalize@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 6d 2f 00 00 	bnd jmp *0x2f6d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001090 <__isoc99_fscanf@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 15 2f 00 00 	bnd jmp *0x2f15(%rip)        # 3fb0 <__isoc99_fscanf@GLIBC_2.7>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010a0 <puts@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 0d 2f 00 00 	bnd jmp *0x2f0d(%rip)        # 3fb8 <puts@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <__stack_chk_fail@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 05 2f 00 00 	bnd jmp *0x2f05(%rip)        # 3fc0 <__stack_chk_fail@GLIBC_2.4>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <__printf_chk@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fc8 <__printf_chk@GLIBC_2.3.4>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <fopen@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 3fd0 <fopen@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010e0 <main>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	41 56                	push   %r14
    10e6:	49 89 f6             	mov    %rsi,%r14
    10e9:	41 55                	push   %r13
    10eb:	41 54                	push   %r12
    10ed:	55                   	push   %rbp
    10ee:	53                   	push   %rbx
    10ef:	48 83 ec 20          	sub    $0x20,%rsp
    10f3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    10fa:	00 00 
    10fc:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1101:	31 c0                	xor    %eax,%eax
    1103:	85 ff                	test   %edi,%edi
    1105:	0f 8e b7 00 00 00    	jle    11c2 <main+0xe2>
    110b:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    110f:	48 8d 35 05 0f 00 00 	lea    0xf05(%rip),%rsi        # 201b <_IO_stdin_used+0x1b>
    1116:	e8 b5 ff ff ff       	call   10d0 <fopen@plt>
    111b:	48 89 c3             	mov    %rax,%rbx
    111e:	48 85 c0             	test   %rax,%rax
    1121:	0f 84 26 01 00 00    	je     124d <main+0x16d>
    1127:	48 8d 2d 02 0f 00 00 	lea    0xf02(%rip),%rbp        # 2030 <_IO_stdin_used+0x30>
    112e:	48 89 c7             	mov    %rax,%rdi
    1131:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1136:	31 c0                	xor    %eax,%eax
    1138:	48 89 ee             	mov    %rbp,%rsi
    113b:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    1142:	00 
    1143:	e8 48 ff ff ff       	call   1090 <__isoc99_fscanf@plt>
    1148:	8b 54 24 0c          	mov    0xc(%rsp),%edx
    114c:	bf 01 00 00 00       	mov    $0x1,%edi
    1151:	31 c0                	xor    %eax,%eax
    1153:	48 8d 35 d9 0e 00 00 	lea    0xed9(%rip),%rsi        # 2033 <_IO_stdin_used+0x33>
    115a:	e8 61 ff ff ff       	call   10c0 <__printf_chk@plt>
    115f:	31 c0                	xor    %eax,%eax
    1161:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    1166:	48 89 ee             	mov    %rbp,%rsi
    1169:	48 89 df             	mov    %rbx,%rdi
    116c:	e8 1f ff ff ff       	call   1090 <__isoc99_fscanf@plt>
    1171:	83 7c 24 0c 01       	cmpl   $0x1,0xc(%rsp)
    1176:	7e 7f                	jle    11f7 <main+0x117>
    1178:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    117e:	4c 8d 6c 24 14       	lea    0x14(%rsp),%r13
    1183:	eb 1c                	jmp    11a1 <main+0xc1>
    1185:	0f 1f 00             	nopl   (%rax)
    1188:	8b 44 24 14          	mov    0x14(%rsp),%eax
    118c:	39 44 24 10          	cmp    %eax,0x10(%rsp)
    1190:	7f 73                	jg     1205 <main+0x125>
    1192:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1196:	41 83 c4 01          	add    $0x1,%r12d
    119a:	44 39 64 24 0c       	cmp    %r12d,0xc(%rsp)
    119f:	7e 56                	jle    11f7 <main+0x117>
    11a1:	31 c0                	xor    %eax,%eax
    11a3:	4c 89 ea             	mov    %r13,%rdx
    11a6:	48 89 ee             	mov    %rbp,%rsi
    11a9:	48 89 df             	mov    %rbx,%rdi
    11ac:	e8 df fe ff ff       	call   1090 <__isoc99_fscanf@plt>
    11b1:	83 f8 01             	cmp    $0x1,%eax
    11b4:	74 d2                	je     1188 <main+0xa8>
    11b6:	48 8d 3d 80 0e 00 00 	lea    0xe80(%rip),%rdi        # 203d <_IO_stdin_used+0x3d>
    11bd:	e8 de fe ff ff       	call   10a0 <puts@plt>
    11c2:	49 8b 16             	mov    (%r14),%rdx
    11c5:	48 8d 35 38 0e 00 00 	lea    0xe38(%rip),%rsi        # 2004 <_IO_stdin_used+0x4>
    11cc:	bf 01 00 00 00       	mov    $0x1,%edi
    11d1:	31 c0                	xor    %eax,%eax
    11d3:	e8 e8 fe ff ff       	call   10c0 <__printf_chk@plt>
    11d8:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    11dd:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    11e4:	00 00 
    11e6:	75 60                	jne    1248 <main+0x168>
    11e8:	48 83 c4 20          	add    $0x20,%rsp
    11ec:	31 c0                	xor    %eax,%eax
    11ee:	5b                   	pop    %rbx
    11ef:	5d                   	pop    %rbp
    11f0:	41 5c                	pop    %r12
    11f2:	41 5d                	pop    %r13
    11f4:	41 5e                	pop    %r14
    11f6:	c3                   	ret    
    11f7:	48 8d 3d 72 0e 00 00 	lea    0xe72(%rip),%rdi        # 2070 <_IO_stdin_used+0x70>
    11fe:	e8 9d fe ff ff       	call   10a0 <puts@plt>
    1203:	eb d3                	jmp    11d8 <main+0xf8>
    1205:	48 8d 3d 4f 0e 00 00 	lea    0xe4f(%rip),%rdi        # 205b <_IO_stdin_used+0x5b>
    120c:	48 8d 2d 53 0e 00 00 	lea    0xe53(%rip),%rbp        # 2066 <_IO_stdin_used+0x66>
    1213:	e8 88 fe ff ff       	call   10a0 <puts@plt>
    1218:	8b 4c 24 10          	mov    0x10(%rsp),%ecx
    121c:	41 8d 54 24 ff       	lea    -0x1(%r12),%edx
    1221:	31 c0                	xor    %eax,%eax
    1223:	48 89 ee             	mov    %rbp,%rsi
    1226:	bf 01 00 00 00       	mov    $0x1,%edi
    122b:	e8 90 fe ff ff       	call   10c0 <__printf_chk@plt>
    1230:	8b 4c 24 14          	mov    0x14(%rsp),%ecx
    1234:	44 89 e2             	mov    %r12d,%edx
    1237:	48 89 ee             	mov    %rbp,%rsi
    123a:	bf 01 00 00 00       	mov    $0x1,%edi
    123f:	31 c0                	xor    %eax,%eax
    1241:	e8 7a fe ff ff       	call   10c0 <__printf_chk@plt>
    1246:	eb 90                	jmp    11d8 <main+0xf8>
    1248:	e8 63 fe ff ff       	call   10b0 <__stack_chk_fail@plt>
    124d:	49 8b 56 08          	mov    0x8(%r14),%rdx
    1251:	48 8d 35 c5 0d 00 00 	lea    0xdc5(%rip),%rsi        # 201d <_IO_stdin_used+0x1d>
    1258:	bf 01 00 00 00       	mov    $0x1,%edi
    125d:	31 c0                	xor    %eax,%eax
    125f:	e8 5c fe ff ff       	call   10c0 <__printf_chk@plt>
    1264:	e9 59 ff ff ff       	jmp    11c2 <main+0xe2>
    1269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001270 <_start>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	31 ed                	xor    %ebp,%ebp
    1276:	49 89 d1             	mov    %rdx,%r9
    1279:	5e                   	pop    %rsi
    127a:	48 89 e2             	mov    %rsp,%rdx
    127d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1281:	50                   	push   %rax
    1282:	54                   	push   %rsp
    1283:	45 31 c0             	xor    %r8d,%r8d
    1286:	31 c9                	xor    %ecx,%ecx
    1288:	48 8d 3d 51 fe ff ff 	lea    -0x1af(%rip),%rdi        # 10e0 <main>
    128f:	ff 15 43 2d 00 00    	call   *0x2d43(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1295:	f4                   	hlt    
    1296:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    129d:	00 00 00 

00000000000012a0 <deregister_tm_clones>:
    12a0:	48 8d 3d 69 2d 00 00 	lea    0x2d69(%rip),%rdi        # 4010 <__TMC_END__>
    12a7:	48 8d 05 62 2d 00 00 	lea    0x2d62(%rip),%rax        # 4010 <__TMC_END__>
    12ae:	48 39 f8             	cmp    %rdi,%rax
    12b1:	74 15                	je     12c8 <deregister_tm_clones+0x28>
    12b3:	48 8b 05 26 2d 00 00 	mov    0x2d26(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    12ba:	48 85 c0             	test   %rax,%rax
    12bd:	74 09                	je     12c8 <deregister_tm_clones+0x28>
    12bf:	ff e0                	jmp    *%rax
    12c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12c8:	c3                   	ret    
    12c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012d0 <register_tm_clones>:
    12d0:	48 8d 3d 39 2d 00 00 	lea    0x2d39(%rip),%rdi        # 4010 <__TMC_END__>
    12d7:	48 8d 35 32 2d 00 00 	lea    0x2d32(%rip),%rsi        # 4010 <__TMC_END__>
    12de:	48 29 fe             	sub    %rdi,%rsi
    12e1:	48 89 f0             	mov    %rsi,%rax
    12e4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    12e8:	48 c1 f8 03          	sar    $0x3,%rax
    12ec:	48 01 c6             	add    %rax,%rsi
    12ef:	48 d1 fe             	sar    %rsi
    12f2:	74 14                	je     1308 <register_tm_clones+0x38>
    12f4:	48 8b 05 f5 2c 00 00 	mov    0x2cf5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    12fb:	48 85 c0             	test   %rax,%rax
    12fe:	74 08                	je     1308 <register_tm_clones+0x38>
    1300:	ff e0                	jmp    *%rax
    1302:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1308:	c3                   	ret    
    1309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001310 <__do_global_dtors_aux>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	80 3d f5 2c 00 00 00 	cmpb   $0x0,0x2cf5(%rip)        # 4010 <__TMC_END__>
    131b:	75 2b                	jne    1348 <__do_global_dtors_aux+0x38>
    131d:	55                   	push   %rbp
    131e:	48 83 3d d2 2c 00 00 	cmpq   $0x0,0x2cd2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1325:	00 
    1326:	48 89 e5             	mov    %rsp,%rbp
    1329:	74 0c                	je     1337 <__do_global_dtors_aux+0x27>
    132b:	48 8b 3d d6 2c 00 00 	mov    0x2cd6(%rip),%rdi        # 4008 <__dso_handle>
    1332:	e8 49 fd ff ff       	call   1080 <__cxa_finalize@plt>
    1337:	e8 64 ff ff ff       	call   12a0 <deregister_tm_clones>
    133c:	c6 05 cd 2c 00 00 01 	movb   $0x1,0x2ccd(%rip)        # 4010 <__TMC_END__>
    1343:	5d                   	pop    %rbp
    1344:	c3                   	ret    
    1345:	0f 1f 00             	nopl   (%rax)
    1348:	c3                   	ret    
    1349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001350 <frame_dummy>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	e9 77 ff ff ff       	jmp    12d0 <register_tm_clones>

Disassembly of section .fini:

000000000000135c <_fini>:
    135c:	f3 0f 1e fa          	endbr64 
    1360:	48 83 ec 08          	sub    $0x8,%rsp
    1364:	48 83 c4 08          	add    $0x8,%rsp
    1368:	c3                   	ret    
