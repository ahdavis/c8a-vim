" Vim syntax file
" Language: Chip-8 assembly for ch8asm
" Created by Andrew Davis
" Created on 12/23/2019
" Licensed under the MIT License

" ensure no syntax duplicates
if exists("b:current_syntax")
	finish
endif

" define the period
syn match period '.' nextgroup=skiptype 

" define instruction keywords
syn keyword instruction cls ret jmp call mov add or and xor 
syn keyword instruction sub shr subn shl jpc rand draw gdl key 
syn keyword instruction sdl snd sch bcd rdp rld

" define skip condition keywords
syn keyword skiptype eq ne kd ku
syn keyword skipinstr skip nextgroup=period 

" define registers
syn match register '[vV]\x'
syn match register '[iI]' 

" define labels and label definitions
syn match label '_[a-zA-Z]\+'
syn match labelDef '_[a-zA-Z]\+:'

" define comments
syn keyword todo contained TODO FIXME NOTE
syn match comment ';.*$' contains=todo

" define literals
syn match decLit '#\d\+'
syn match hexLit '\$\x\+'
syn match binLit '%[01]\{8}'

" set the current syntax
let b:current_syntax = "c8a"

" link the highlighting
hi def link instruction Statement
hi def link skipinstr Statement
hi def link skiptype Type 
hi def link todo Todo
hi def link comment Comment
hi def link labelDef Type
hi def link label Constant
hi def link register Type
hi def link decLit Constant 
hi def link hexLit Constant
hi def link binLit Constant

" end of file
