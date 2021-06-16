start: jmp boot




boot:
  ; set flags
  cli
  cld
  
  ; set up segmentation
  lgdt [GDT_SPECS_ADDR]
  
  mov es, 0x80
  mov
  
  ; 
