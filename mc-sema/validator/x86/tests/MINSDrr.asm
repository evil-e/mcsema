BITS 32
;TEST_FILE_META_BEGIN
;TEST_TYPE=TEST_F
;TEST_IGNOREFLAGS=
;TEST_FILE_META_END

mov ecx, 0x20F
cvtsi2sd xmm0, ecx
mov ecx, 0xFFFFFF
cvtsi2sd xmm1, ecx

;TEST_BEGIN_RECORDING
minsd xmm0, xmm1
;TEST_END_RECORDING

xor ecx, ecx
cvtsi2sd xmm0, ecx
cvtsi2sd xmm1, ecx
