.386
.model flat, stdcall
option casemap : none
include /masm32/include/kernel32.inc
include /masm32/macros/macros.asm
include /masm32/include/msvcrt.inc
include /masm32/include/masm32.inc
includelib /masm32/lib/kernel32
includelib /masm32/lib/msvcrt
includelib /masm32/lib/masm32
.data
a2310bd4a3924426f89f4c7f84fd736cf real8 21.0
first real8 ?
f3dffed87cbb49429ac69c9ca035fe14 real8 ?
f06f163055244294852f701bf9517d86 real8 21.0
globalDouble real8 ?
a597bd231549477593de3cf318dcd6ce real8 0.0
i real8 ?
cf05a376291d4e53bce32873e881b337 real8 0.0
j real8 ?
fa5421decead414c9b10adba44475225 real8 ?
a027a447a756f4ac38a993af1cfb4d952 real8 1.0
a4b7c32875612473b82d255f3e97ee959 real8 ?
a87d4db18e4344d36ab3b47cb8e8fbe50 real8 1.0
c15ff88ee0f04f64af05a8289a6e5be7 real8 ?
a104fba6d4c6b47c6aafb5273ac133c82 real8 5.0
a1852ce2a8e6d4b988811dfcce70322a1 real8 0.0
b55b738aa5744921bd42b15f1601d898 real8 ?
a939d96e0895a4e57a5295cbe0c3bd7b1 real8 1.0
e0985c3b544a43c28c3dca0774307d57 real8 ?
a310228ff88e643538fd625d3d35588a1 real8 10.0

.code

start:

fld a2310bd4a3924426f89f4c7f84fd736cf
fstp first

fld f06f163055244294852f701bf9517d86

fld first
fdiv
fstp globalDouble

fld a597bd231549477593de3cf318dcd6ce
fstp i

fld cf05a376291d4e53bce32873e881b337
fstp j
a5d4307adad9e48c69483bcc32e27f819:

whilea71b4f78a5669466892a5e33ed6d8ba35:
jmp conditiona71b4f78a5669466892a5e33ed6d8ba35
aftera71b4f78a5669466892a5e33ed6d8ba35:

fld i

fld a027a447a756f4ac38a993af1cfb4d952
fadd
fstp i

fld a1852ce2a8e6d4b988811dfcce70322a1
fstp j

jmp ford38d84b2b59f41a69ba05204f9c8f33d
iterd38d84b2b59f41a69ba05204f9c8f33d:

fld j

fld a939d96e0895a4e57a5295cbe0c3bd7b1
fadd
fstp j

jmp ford38d84b2b59f41a69ba05204f9c8f33d
conditiond38d84b2b59f41a69ba05204f9c8f33d:
finit

jmp startboolc15ff88ee0f04f64af05a8289a6e5be7
startboolc15ff88ee0f04f64af05a8289a6e5be7:

fld j

fcom a104fba6d4c6b47c6aafb5273ac133c82
fstsw ax
fwait
sahf
jb outboolc15ff88ee0f04f64af05a8289a6e5be7
jmp outfalsec15ff88ee0f04f64af05a8289a6e5be7
outboolc15ff88ee0f04f64af05a8289a6e5be7:
jmp afterd38d84b2b59f41a69ba05204f9c8f33d

outfalsec15ff88ee0f04f64af05a8289a6e5be7:
jmp outd38d84b2b59f41a69ba05204f9c8f33d


ford38d84b2b59f41a69ba05204f9c8f33d:
jmp conditiond38d84b2b59f41a69ba05204f9c8f33d
afterd38d84b2b59f41a69ba05204f9c8f33d:

fld i

fld a87d4db18e4344d36ab3b47cb8e8fbe50
fadd
fstp i
jmp iterd38d84b2b59f41a69ba05204f9c8f33d
outd38d84b2b59f41a69ba05204f9c8f33d:

jmp endwhilea71b4f78a5669466892a5e33ed6d8ba35

jmp whilea71b4f78a5669466892a5e33ed6d8ba35
conditiona71b4f78a5669466892a5e33ed6d8ba35:
finit
jmp startboole0985c3b544a43c28c3dca0774307d57

startboole0985c3b544a43c28c3dca0774307d57:

fld i

fcom a310228ff88e643538fd625d3d35588a1
fstsw ax
fwait
sahf
jb outboole0985c3b544a43c28c3dca0774307d57
jmp outfalsee0985c3b544a43c28c3dca0774307d57
outboole0985c3b544a43c28c3dca0774307d57:
jmp aftera71b4f78a5669466892a5e33ed6d8ba35

outfalsee0985c3b544a43c28c3dca0774307d57:
jmp endwhilea71b4f78a5669466892a5e33ed6d8ba35


endwhilea71b4f78a5669466892a5e33ed6d8ba35:
printf("i = %f\n",i)exit
end start
