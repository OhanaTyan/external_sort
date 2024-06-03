
is_sorted:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8d 05 d1 02 00 00 	lea    0x2d1(%rip),%rax        # 12e0 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 62 2f 00 00    	push   0x2f62(%rip)        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 63 2f 00 00 	bnd jmp *0x2f63(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 4d 2f 00 00 	bnd jmp *0x2f4d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010b0 <__isoc99_fscanf@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3f98 <__isoc99_fscanf@GLIBC_2.7>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <puts@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 3fa0 <puts@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 3fa8 <__stack_chk_fail@GLIBC_2.4>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <__monstartup@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 3fb0 <__monstartup@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <__printf_chk@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 3fb8 <__printf_chk@GLIBC_2.3.4>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <fopen@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 3fc0 <fopen@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <__cxa_atexit@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 ad 2e 00 00 	bnd jmp *0x2ead(%rip)        # 3fc8 <__cxa_atexit@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001120 <main>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	55                   	push   %rbp
    1125:	48 89 e5             	mov    %rsp,%rbp
    1128:	41 57                	push   %r15
    112a:	41 56                	push   %r14
    112c:	41 55                	push   %r13
    112e:	41 54                	push   %r12
    1130:	53                   	push   %rbx
    1131:	48 83 ec 28          	sub    $0x28,%rsp
    1135:	ff 15 ad 2e 00 00    	call   *0x2ead(%rip)        # 3fe8 <mcount@GLIBC_2.2.5>
    113b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1142:	00 00 
    1144:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    1148:	31 c0                	xor    %eax,%eax
    114a:	49 89 f7             	mov    %rsi,%r15
    114d:	85 ff                	test   %edi,%edi
    114f:	0f 8e b1 00 00 00    	jle    1206 <main+0xe6>
    1155:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1159:	48 8d 35 bb 0e 00 00 	lea    0xebb(%rip),%rsi        # 201b <_IO_stdin_used+0x1b>
    1160:	e8 9b ff ff ff       	call   1100 <fopen@plt>
    1165:	48 89 c3             	mov    %rax,%rbx
    1168:	48 85 c0             	test   %rax,%rax
    116b:	0f 84 1f 01 00 00    	je     1290 <main+0x170>
    1171:	4c 8d 2d b8 0e 00 00 	lea    0xeb8(%rip),%r13        # 2030 <_IO_stdin_used+0x30>
    1178:	48 89 c7             	mov    %rax,%rdi
    117b:	31 c0                	xor    %eax,%eax
    117d:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%rbp)
    1184:	48 8d 55 bc          	lea    -0x44(%rbp),%rdx
    1188:	4c 89 ee             	mov    %r13,%rsi
    118b:	e8 20 ff ff ff       	call   10b0 <__isoc99_fscanf@plt>
    1190:	8b 55 bc             	mov    -0x44(%rbp),%edx
    1193:	bf 01 00 00 00       	mov    $0x1,%edi
    1198:	31 c0                	xor    %eax,%eax
    119a:	48 8d 35 92 0e 00 00 	lea    0xe92(%rip),%rsi        # 2033 <_IO_stdin_used+0x33>
    11a1:	e8 4a ff ff ff       	call   10f0 <__printf_chk@plt>
    11a6:	31 c0                	xor    %eax,%eax
    11a8:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    11ac:	4c 89 ee             	mov    %r13,%rsi
    11af:	48 89 df             	mov    %rbx,%rdi
    11b2:	e8 f9 fe ff ff       	call   10b0 <__isoc99_fscanf@plt>
    11b7:	83 7d bc 01          	cmpl   $0x1,-0x44(%rbp)
    11bb:	7e 7f                	jle    123c <main+0x11c>
    11bd:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    11c3:	4c 8d 75 c4          	lea    -0x3c(%rbp),%r14
    11c7:	eb 1c                	jmp    11e5 <main+0xc5>
    11c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11d0:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    11d3:	39 45 c0             	cmp    %eax,-0x40(%rbp)
    11d6:	7f 72                	jg     124a <main+0x12a>
    11d8:	89 45 c0             	mov    %eax,-0x40(%rbp)
    11db:	41 83 c4 01          	add    $0x1,%r12d
    11df:	44 39 65 bc          	cmp    %r12d,-0x44(%rbp)
    11e3:	7e 57                	jle    123c <main+0x11c>
    11e5:	31 c0                	xor    %eax,%eax
    11e7:	4c 89 f2             	mov    %r14,%rdx
    11ea:	4c 89 ee             	mov    %r13,%rsi
    11ed:	48 89 df             	mov    %rbx,%rdi
    11f0:	e8 bb fe ff ff       	call   10b0 <__isoc99_fscanf@plt>
    11f5:	83 f8 01             	cmp    $0x1,%eax
    11f8:	74 d6                	je     11d0 <main+0xb0>
    11fa:	48 8d 3d 3c 0e 00 00 	lea    0xe3c(%rip),%rdi        # 203d <_IO_stdin_used+0x3d>
    1201:	e8 ba fe ff ff       	call   10c0 <puts@plt>
    1206:	49 8b 17             	mov    (%r15),%rdx
    1209:	48 8d 35 f4 0d 00 00 	lea    0xdf4(%rip),%rsi        # 2004 <_IO_stdin_used+0x4>
    1210:	bf 01 00 00 00       	mov    $0x1,%edi
    1215:	31 c0                	xor    %eax,%eax
    1217:	e8 d4 fe ff ff       	call   10f0 <__printf_chk@plt>
    121c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1220:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1227:	00 00 
    1229:	75 60                	jne    128b <main+0x16b>
    122b:	48 83 c4 28          	add    $0x28,%rsp
    122f:	31 c0                	xor    %eax,%eax
    1231:	5b                   	pop    %rbx
    1232:	41 5c                	pop    %r12
    1234:	41 5d                	pop    %r13
    1236:	41 5e                	pop    %r14
    1238:	41 5f                	pop    %r15
    123a:	5d                   	pop    %rbp
    123b:	c3                   	ret    
    123c:	48 8d 3d 2d 0e 00 00 	lea    0xe2d(%rip),%rdi        # 2070 <_IO_stdin_used+0x70>
    1243:	e8 78 fe ff ff       	call   10c0 <puts@plt>
    1248:	eb d2                	jmp    121c <main+0xfc>
    124a:	48 8d 3d 0a 0e 00 00 	lea    0xe0a(%rip),%rdi        # 205b <_IO_stdin_used+0x5b>
    1251:	4c 8d 2d 0e 0e 00 00 	lea    0xe0e(%rip),%r13        # 2066 <_IO_stdin_used+0x66>
    1258:	e8 63 fe ff ff       	call   10c0 <puts@plt>
    125d:	8b 4d c0             	mov    -0x40(%rbp),%ecx
    1260:	41 8d 54 24 ff       	lea    -0x1(%r12),%edx
    1265:	4c 89 ee             	mov    %r13,%rsi
    1268:	bf 01 00 00 00       	mov    $0x1,%edi
    126d:	31 c0                	xor    %eax,%eax
    126f:	e8 7c fe ff ff       	call   10f0 <__printf_chk@plt>
    1274:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
    1277:	44 89 e2             	mov    %r12d,%edx
    127a:	4c 89 ee             	mov    %r13,%rsi
    127d:	bf 01 00 00 00       	mov    $0x1,%edi
    1282:	31 c0                	xor    %eax,%eax
    1284:	e8 67 fe ff ff       	call   10f0 <__printf_chk@plt>
    1289:	eb 91                	jmp    121c <main+0xfc>
    128b:	e8 40 fe ff ff       	call   10d0 <__stack_chk_fail@plt>
    1290:	49 8b 57 08          	mov    0x8(%r15),%rdx
    1294:	48 8d 35 82 0d 00 00 	lea    0xd82(%rip),%rsi        # 201d <_IO_stdin_used+0x1d>
    129b:	bf 01 00 00 00       	mov    $0x1,%edi
    12a0:	31 c0                	xor    %eax,%eax
    12a2:	e8 49 fe ff ff       	call   10f0 <__printf_chk@plt>
    12a7:	e9 5a ff ff ff       	jmp    1206 <main+0xe6>
    12ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012b0 <_start>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	31 ed                	xor    %ebp,%ebp
    12b6:	49 89 d1             	mov    %rdx,%r9
    12b9:	5e                   	pop    %rsi
    12ba:	48 89 e2             	mov    %rsp,%rdx
    12bd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    12c1:	50                   	push   %rax
    12c2:	54                   	push   %rsp
    12c3:	45 31 c0             	xor    %r8d,%r8d
    12c6:	31 c9                	xor    %ecx,%ecx
    12c8:	48 8d 3d 51 fe ff ff 	lea    -0x1af(%rip),%rdi        # 1120 <main>
    12cf:	ff 15 fb 2c 00 00    	call   *0x2cfb(%rip)        # 3fd0 <__libc_start_main@GLIBC_2.34>
    12d5:	f4                   	hlt    
    12d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12dd:	00 00 00 

00000000000012e0 <__gmon_start__>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	8b 05 26 2d 00 00    	mov    0x2d26(%rip),%eax        # 4010 <__TMC_END__>
    12ea:	85 c0                	test   %eax,%eax
    12ec:	74 02                	je     12f0 <__gmon_start__+0x10>
    12ee:	c3                   	ret    
    12ef:	90                   	nop
    12f0:	48 83 ec 08          	sub    $0x8,%rsp
    12f4:	48 8d 35 42 01 00 00 	lea    0x142(%rip),%rsi        # 143d <etext>
    12fb:	48 8d 3d fe ec ff ff 	lea    -0x1302(%rip),%rdi        # 0 <__executable_start>
    1302:	c7 05 04 2d 00 00 01 	movl   $0x1,0x2d04(%rip)        # 4010 <__TMC_END__>
    1309:	00 00 00 
    130c:	e8 cf fd ff ff       	call   10e0 <__monstartup@plt>
    1311:	48 8b 3d c8 2c 00 00 	mov    0x2cc8(%rip),%rdi        # 3fe0 <_mcleanup@GLIBC_2.2.5>
    1318:	48 83 c4 08          	add    $0x8,%rsp
    131c:	e9 df 00 00 00       	jmp    1400 <atexit>
    1321:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1328:	00 00 00 
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <_dl_relocate_static_pie>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	c3                   	ret    
    1335:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    133c:	00 00 00 
    133f:	90                   	nop

0000000000001340 <deregister_tm_clones>:
    1340:	48 8d 3d c9 2c 00 00 	lea    0x2cc9(%rip),%rdi        # 4010 <__TMC_END__>
    1347:	48 8d 05 c2 2c 00 00 	lea    0x2cc2(%rip),%rax        # 4010 <__TMC_END__>
    134e:	48 39 f8             	cmp    %rdi,%rax
    1351:	74 15                	je     1368 <deregister_tm_clones+0x28>
    1353:	48 8b 05 7e 2c 00 00 	mov    0x2c7e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    135a:	48 85 c0             	test   %rax,%rax
    135d:	74 09                	je     1368 <deregister_tm_clones+0x28>
    135f:	ff e0                	jmp    *%rax
    1361:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1368:	c3                   	ret    
    1369:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001370 <register_tm_clones>:
    1370:	48 8d 3d 99 2c 00 00 	lea    0x2c99(%rip),%rdi        # 4010 <__TMC_END__>
    1377:	48 8d 35 92 2c 00 00 	lea    0x2c92(%rip),%rsi        # 4010 <__TMC_END__>
    137e:	48 29 fe             	sub    %rdi,%rsi
    1381:	48 89 f0             	mov    %rsi,%rax
    1384:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1388:	48 c1 f8 03          	sar    $0x3,%rax
    138c:	48 01 c6             	add    %rax,%rsi
    138f:	48 d1 fe             	sar    %rsi
    1392:	74 14                	je     13a8 <register_tm_clones+0x38>
    1394:	48 8b 05 55 2c 00 00 	mov    0x2c55(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    139b:	48 85 c0             	test   %rax,%rax
    139e:	74 08                	je     13a8 <register_tm_clones+0x38>
    13a0:	ff e0                	jmp    *%rax
    13a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    13a8:	c3                   	ret    
    13a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013b0 <__do_global_dtors_aux>:
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	80 3d 59 2c 00 00 00 	cmpb   $0x0,0x2c59(%rip)        # 4014 <completed.0>
    13bb:	75 2b                	jne    13e8 <__do_global_dtors_aux+0x38>
    13bd:	55                   	push   %rbp
    13be:	48 83 3d 32 2c 00 00 	cmpq   $0x0,0x2c32(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    13c5:	00 
    13c6:	48 89 e5             	mov    %rsp,%rbp
    13c9:	74 0c                	je     13d7 <__do_global_dtors_aux+0x27>
    13cb:	48 8b 3d 36 2c 00 00 	mov    0x2c36(%rip),%rdi        # 4008 <__dso_handle>
    13d2:	e8 c9 fc ff ff       	call   10a0 <__cxa_finalize@plt>
    13d7:	e8 64 ff ff ff       	call   1340 <deregister_tm_clones>
    13dc:	c6 05 31 2c 00 00 01 	movb   $0x1,0x2c31(%rip)        # 4014 <completed.0>
    13e3:	5d                   	pop    %rbp
    13e4:	c3                   	ret    
    13e5:	0f 1f 00             	nopl   (%rax)
    13e8:	c3                   	ret    
    13e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013f0 <frame_dummy>:
    13f0:	f3 0f 1e fa          	endbr64 
    13f4:	e9 77 ff ff ff       	jmp    1370 <register_tm_clones>
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <atexit>:
    1400:	f3 0f 1e fa          	endbr64 
    1404:	48 8b 15 fd 2b 00 00 	mov    0x2bfd(%rip),%rdx        # 4008 <__dso_handle>
    140b:	31 f6                	xor    %esi,%esi
    140d:	e9 fe fc ff ff       	jmp    1110 <__cxa_atexit@plt>
    1412:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1419:	00 00 00 
    141c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001420 <__stack_chk_fail_local>:
    1420:	f3 0f 1e fa          	endbr64 
    1424:	50                   	push   %rax
    1425:	58                   	pop    %rax
    1426:	48 83 ec 08          	sub    $0x8,%rsp
    142a:	e8 a1 fc ff ff       	call   10d0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001430 <_fini>:
    1430:	f3 0f 1e fa          	endbr64 
    1434:	48 83 ec 08          	sub    $0x8,%rsp
    1438:	48 83 c4 08          	add    $0x8,%rsp
    143c:	c3                   	ret    
