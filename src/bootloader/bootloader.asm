start: jmp boot

GDT_ADDR:
dq 0x0000000000000000 ; null descriptor
; kernel-code , kernel-data , user-code , user-data...
GDT_SPECS_ADDR:
dd GDT_ADDR                   ; pointer
dw GDT_SPECS_ADDR - GDT_ADDR  ; size


boot:
  ; set flags
  cli
  cld
  
  
  ; set up segmentation
  lgdt [GDT_SPECS_ADDR] ; load table
  
  mov es , 0x80 ; set registers
  jmp 0x10:change_cs 
  change_cs:
  
  
  ; 
