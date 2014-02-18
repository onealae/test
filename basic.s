	#test ori
	ori	$8,$0,0x4567    #$r8 =  0x00004567
    ori    $9,$0,0x89ab    #$r9 =  0x000089ab
	#test add
	add     $10,$8,$9      #$r10 =  0x0000CF12
	
	#test sub
	sub     $11,$8,$9      #$r11 = 0xffffbbbc
	
	#test and
	and     $12,$8,$9     #$r12 = 0x00000123

    #test or
    or      $13,$8,$9     #$r12 = 0x0000cdef
	
	#test sltu
	sltu $14,$8,$9      #r14 = 1
	ori $15,$0,0x000a   #set r15 to 0x000a to trigger testbench
	#set $r14 back to 0 with reverse test
	sltu $14,$9,$8      #r14 = 0
	ori $15,$0,0x000b   #set r15 to 0x000b to trigger testbench
	
	
	#test addi
	addi $16,$0,-32768  #r16 = 0xffff8000, largest negative immed, sign extended
	addi $17,$0,32767   #r17 = 0x00007fff, largest positive immed, sign extended
	addi $18,$16,32767  #r18 = -1 = 0xffffffff  
	
	
	
	
	addi    $31,$0,-1    #test end, 31 = -1 = 0xffffffff
    nop
	nop
	