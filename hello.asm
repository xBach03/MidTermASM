.Model	Tiny
.Code
	ORG	100H
START: JMP CONTINUE
	CRLF	DB	13,10,’$’
	MSG	DB	‘Hello! $’
CONTINUE:
MAIN	Proc
	;về đầu dòng mới dùng hàm 9 của INT 21H
	MOV	AH,9
	LEA	DX, CRLF
	INT	21H
	;Hiển thị lời chào dùng hàm 9 của INT 21H
	MOV 	AH,9
	LEA	DX, MSG
	INT 	21H
	;về đầu dòng mới dùng hàm 9 của INT 21H
	MOV	AH,9
	LEA	DX, CRLF
	INT	21H
	;trở về DOS 
	INT	20H
MAIN	Endp
	END START
