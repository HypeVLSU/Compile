jmp forcab77b6d7bd64091a2e11ff98b8541c0
itercab77b6d7bd64091a2e11ff98b8541c0:
fld i
fld a27ef8f3db3a4466cb56a8ae93d2cd280
fadd
printf("%f\n", i)
jmp forcab77b6d7bd64091a2e11ff98b8541c0
conditioncab77b6d7bd64091a2e11ff98b8541c0:
finit
fld i
fcom fc741135488d40788114659e5d0415f6
fstsw ax
fwait
sahf
jb aftercab77b6d7bd64091a2e11ff98b8541c0
jmp outcab77b6d7bd64091a2e11ff98b8541c0
forcab77b6d7bd64091a2e11ff98b8541c0:
jmp conditioncab77b6d7bd64091a2e11ff98b8541c0
aftercab77b6d7bd64091a2e11ff98b8541c0:
fld i
fstp first
jmp itercab77b6d7bd64091a2e11ff98b8541c0
outcab77b6d7bd64091a2e11ff98b8541c0:
printf("%f\n", i)
exit
end start
