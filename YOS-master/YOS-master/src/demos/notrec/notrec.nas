[FORMAT "WCOFF"]
[INSTRSET "i486p"]
[OPTIMIZE 1]
[OPTION 1]
[BITS 32]
	EXTERN	__alloca
	EXTERN	_api_openwin
	EXTERN	_api_boxfilwin
	EXTERN	_api_getkey
	EXTERN	_api_end
[FILE "notrec.c"]
[SECTION .data]
LC0:
	DB	"notrec",0x00
[SECTION .text]
	GLOBAL	_HariMain
_HariMain:
	PUSH	EBP
	MOV	EAX,10512
	MOV	EBP,ESP
	PUSH	EBX
	CALL	__alloca
	PUSH	LC0
	PUSH	255
	LEA	EAX,DWORD [-10516+EBP]
	PUSH	70
	PUSH	150
	PUSH	EAX
	CALL	_api_openwin
	PUSH	255
	PUSH	69
	MOV	EBX,EAX
	PUSH	34
	PUSH	50
	PUSH	0
	PUSH	EAX
	CALL	_api_boxfilwin
	ADD	ESP,44
	PUSH	255
	PUSH	69
	PUSH	149
	PUSH	50
	PUSH	115
	PUSH	EBX
	CALL	_api_boxfilwin
	PUSH	255
	PUSH	49
	PUSH	99
	PUSH	30
	PUSH	50
	PUSH	EBX
	CALL	_api_boxfilwin
	ADD	ESP,48
L2:
	PUSH	1
	CALL	_api_getkey
	POP	EDX
	CMP	EAX,10
	JNE	L2
	CALL	_api_end
	MOV	EBX,DWORD [-4+EBP]
	LEAVE
	RET
