"".test1 t=1 size=16 value=0 args=0x8 locals=0x0
	0x0000 00000 (zero.go:3)	TEXT	"".test1(SB), $0-8
	0x0000 00000 (zero.go:3)	NOP
	0x0000 00000 (zero.go:3)	NOP
	0x0000 00000 (zero.go:3)	FUNCDATA	$0, gclocals·5184031d3a32a42d85027f073f873668(SB)
	0x0000 00000 (zero.go:3)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (zero.go:4)	MOVQ	$0, "".~r0+8(FP)
	0x0009 00009 (zero.go:4)	RET
	0x0000 48 c7 44 24 08 00 00 00 00 c3                    H.D$......
"".main t=1 size=16 value=0 args=0x0 locals=0x0
	0x0000 00000 (zero.go:7)	TEXT	"".main(SB), $0-0
	0x0000 00000 (zero.go:7)	NOP
	0x0000 00000 (zero.go:7)	NOP
	0x0000 00000 (zero.go:7)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (zero.go:7)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (zero.go:9)	RET
	0x0000 c3                                               .
"".init t=1 size=80 value=0 args=0x0 locals=0x0
	0x0000 00000 (zero.go:9)	TEXT	"".init(SB), $0-0
	0x0000 00000 (zero.go:9)	MOVQ	(TLS), CX
	0x0009 00009 (zero.go:9)	CMPQ	SP, 16(CX)
	0x000d 00013 (zero.go:9)	JLS	62
	0x000f 00015 (zero.go:9)	NOP
	0x000f 00015 (zero.go:9)	NOP
	0x000f 00015 (zero.go:9)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (zero.go:9)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (zero.go:9)	MOVBQZX	"".initdone·(SB), BX
	0x0016 00022 (zero.go:9)	CMPB	BL, $0
	0x0019 00025 (zero.go:9)	JEQ	47
	0x001b 00027 (zero.go:9)	MOVBQZX	"".initdone·(SB), BX
	0x0022 00034 (zero.go:9)	CMPB	BL, $2
	0x0025 00037 (zero.go:9)	JNE	40
	0x0027 00039 (zero.go:9)	RET
	0x0028 00040 (zero.go:9)	PCDATA	$0, $0
	0x0028 00040 (zero.go:9)	CALL	runtime.throwinit(SB)
	0x002d 00045 (zero.go:9)	UNDEF
	0x002f 00047 (zero.go:9)	MOVB	$1, "".initdone·(SB)
	0x0036 00054 (zero.go:9)	MOVB	$2, "".initdone·(SB)
	0x003d 00061 (zero.go:9)	RET
	0x003e 00062 (zero.go:9)	CALL	runtime.morestack_noctxt(SB)
	0x0043 00067 (zero.go:9)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 2f 0f  dH..%....H;a.v/.
	0x0010 b6 1d 00 00 00 00 80 fb 00 74 14 0f b6 1d 00 00  .........t......
	0x0020 00 00 80 fb 02 75 01 c3 e8 00 00 00 00 0f 0b c6  .....u..........
	0x0030 05 00 00 00 00 01 c6 05 00 00 00 00 02 c3 e8 00  ................
	0x0040 00 00 00 eb bb                                   .....
	rel 5+4 t=13 +0
	rel 18+4 t=11 "".initdone·+0
	rel 30+4 t=11 "".initdone·+0
	rel 41+4 t=5 runtime.throwinit+0
	rel 49+4 t=11 "".initdone·+-1
	rel 56+4 t=11 "".initdone·+-1
	rel 63+4 t=5 runtime.morestack_noctxt+0
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=7 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·5184031d3a32a42d85027f073f873668 t=7 dupok size=12 value=0
	0x0000 01 00 00 00 01 00 00 00 00 00 00 00              ............
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=7 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=7 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=7 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=7 dupok size=8 value=0
	0x0000 01 00 00 00 00 00 00 00                          ........
"".initdone· t=23 size=1 value=0
"".test1·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".test1+0
runtime.throwreturn·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.throwreturn+0
"".main·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".main+0
"".init·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".init+0
runtime.throwinit·f t=7 dupok size=8 value=0
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.throwinit+0
go.string.hdr."runtime" t=7 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."runtime"+0
go.string."runtime" t=7 dupok size=8 value=0
	0x0000 72 75 6e 74 69 6d 65 00                          runtime.
go.importpath.runtime. t=7 dupok size=16 value=0
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."runtime"+0
runtime.zerovalue t=7 dupok size=0 value=0
