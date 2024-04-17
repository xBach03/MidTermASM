.Model	Small
.Stack	100
.Data
	CRLF	DB	13,10,’$’
	MSG	DB	‘Hello! $’
.Code
MAIN	Proc
        ;khới đầu cho DS
        MOV	AX, @data
        MOV	DS, AX
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
        ;trở về DOS dùng hàm 4CH của INT 21H
        MOV	AH, 4CH
        INT	21H

MAIN	Endp
	END MAIN
