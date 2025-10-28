import ZkLean
import Jolt.LookupTables

def ADD_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (RangeCheck_64_lookup_table : Vector f 128 -> f)
def ADDI_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (RangeCheck_64_lookup_table : Vector f 128 -> f)
def AND_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (And_64_lookup_table : Vector f 128 -> f)
def ANDI_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (And_64_lookup_table : Vector f 128 -> f)
def ANDN_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (Andn_64_lookup_table : Vector f 128 -> f)
def AUIPC_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (RangeCheck_64_lookup_table : Vector f 128 -> f)
def BEQ_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: 
  LookupTableMLE.mk Interleaving.Interleaved (Equal_64_lookup_table : Vector f 128 -> f)
def BGE_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: 
  LookupTableMLE.mk Interleaving.Interleaved (SignedGreaterThanEqual_64_lookup_table : Vector f 128 -> f)
def BGEU_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: 
  LookupTableMLE.mk Interleaving.Interleaved (UnsignedGreaterThanEqual_64_lookup_table : Vector f 128 -> f)
def BLT_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: 
  LookupTableMLE.mk Interleaving.Interleaved (SignedLessThan_64_lookup_table : Vector f 128 -> f)
def BLTU_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: 
  LookupTableMLE.mk Interleaving.Interleaved (UnsignedLessThan_64_lookup_table : Vector f 128 -> f)
def BNE_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: 
  LookupTableMLE.mk Interleaving.Interleaved (NotEqual_64_lookup_table : Vector f 128 -> f)
def ECALL_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: 
  LookupTableMLE.mk Interleaving.Interleaved (sorry /-No lookup table for this instruction-/)
def FENCE_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: 
  LookupTableMLE.mk Interleaving.Interleaved (sorry /-No lookup table for this instruction-/)
def JAL_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_Jump
  LookupTableMLE.mk Interleaving.Concatenated (RangeCheck_64_lookup_table : Vector f 128 -> f)
def JALR_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_Jump
  LookupTableMLE.mk Interleaving.Concatenated (RangeCheck_64_lookup_table : Vector f 128 -> f)
def LD_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_Load
  LookupTableMLE.mk Interleaving.Interleaved (sorry /-No lookup table for this instruction-/)
def LUI_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (RangeCheck_64_lookup_table : Vector f 128 -> f)
def MUL_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_MultiplyOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (RangeCheck_64_lookup_table : Vector f 128 -> f)
def MULHU_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_MultiplyOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (UpperWord_64_lookup_table : Vector f 128 -> f)
def OR_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (Or_64_lookup_table : Vector f 128 -> f)
def ORI_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (Or_64_lookup_table : Vector f 128 -> f)
def SD_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_Store
  LookupTableMLE.mk Interleaving.Interleaved (sorry /-No lookup table for this instruction-/)
def SLT_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (SignedLessThan_64_lookup_table : Vector f 128 -> f)
def SLTI_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (SignedLessThan_64_lookup_table : Vector f 128 -> f)
def SLTIU_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (UnsignedLessThan_64_lookup_table : Vector f 128 -> f)
def SLTU_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (UnsignedLessThan_64_lookup_table : Vector f 128 -> f)
def SUB_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_SubtractOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (RangeCheck_64_lookup_table : Vector f 128 -> f)
def XOR_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (Xor_64_lookup_table : Vector f 128 -> f)
def XORI_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (Xor_64_lookup_table : Vector f 128 -> f)
def VirtualAdvice_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD, OpFlags_Advice
  LookupTableMLE.mk Interleaving.Concatenated (RangeCheck_64_lookup_table : Vector f 128 -> f)
def VirtualAssertEQ_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_Assert
  LookupTableMLE.mk Interleaving.Interleaved (Equal_64_lookup_table : Vector f 128 -> f)
def VirtualAssertHalfwordAlignment_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_Assert
  LookupTableMLE.mk Interleaving.Concatenated (HalfwordAlignment_64_lookup_table : Vector f 128 -> f)
def VirtualAssertWordAlignment_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_Assert
  LookupTableMLE.mk Interleaving.Concatenated (WordAlignment_64_lookup_table : Vector f 128 -> f)
def VirtualAssertLTE_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_Assert
  LookupTableMLE.mk Interleaving.Interleaved (LessThanEqual_64_lookup_table : Vector f 128 -> f)
def VirtualAssertValidDiv0_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_Assert
  LookupTableMLE.mk Interleaving.Interleaved (ValidDiv0_64_lookup_table : Vector f 128 -> f)
def VirtualAssertValidUnsignedRemainder_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_Assert
  LookupTableMLE.mk Interleaving.Interleaved (ValidUnsignedRemainder_64_lookup_table : Vector f 128 -> f)
def VirtualAssertMulUNoOverflow_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_MultiplyOperands, OpFlags_Assert
  LookupTableMLE.mk Interleaving.Concatenated (MulUNoOverflow_64_lookup_table : Vector f 128 -> f)
def VirtualChangeDivisor_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualChangeDivisor_64_lookup_table : Vector f 128 -> f)
def VirtualChangeDivisorW_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualChangeDivisorW_64_lookup_table : Vector f 128 -> f)
def VirtualZeroExtendWord_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (LowerHalfWord_64_lookup_table : Vector f 128 -> f)
def VirtualSignExtendWord_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (SignExtendHalfWord_64_lookup_table : Vector f 128 -> f)
def VirtualPow2W_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (Pow2W_64_lookup_table : Vector f 128 -> f)
def VirtualPow2IW_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (Pow2W_64_lookup_table : Vector f 128 -> f)
def VirtualMove_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (RangeCheck_64_lookup_table : Vector f 128 -> f)
def VirtualMovsign_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (Movsign_64_lookup_table : Vector f 128 -> f)
def VirtualMULI_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_MultiplyOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (RangeCheck_64_lookup_table : Vector f 128 -> f)
def VirtualPow2_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (Pow2_64_lookup_table : Vector f 128 -> f)
def VirtualPow2I_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (Pow2_64_lookup_table : Vector f 128 -> f)
def VirtualRev8W_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (VirtualRev8W_64_lookup_table : Vector f 128 -> f)
def VirtualROTRI_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualROTR_64_lookup_table : Vector f 128 -> f)
def VirtualROTRIW_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualROTRW_64_lookup_table : Vector f 128 -> f)
def VirtualShiftRightBitmask_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (ShiftRightBitmask_64_lookup_table : Vector f 128 -> f)
def VirtualShiftRightBitmaskI_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_AddOperands, OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Concatenated (ShiftRightBitmask_64_lookup_table : Vector f 128 -> f)
def VirtualSRA_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualSRA_64_lookup_table : Vector f 128 -> f)
def VirtualSRAI_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualSRA_64_lookup_table : Vector f 128 -> f)
def VirtualSRL_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualSRL_64_lookup_table : Vector f 128 -> f)
def VirtualSRLI_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualSRL_64_lookup_table : Vector f 128 -> f)
def VirtualXORROT32_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualXORROT32_64_lookup_table : Vector f 128 -> f)
def VirtualXORROT24_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualXORROT24_64_lookup_table : Vector f 128 -> f)
def VirtualXORROT16_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualXORROT16_64_lookup_table : Vector f 128 -> f)
def VirtualXORROT63_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualXORROT63_64_lookup_table : Vector f 128 -> f)
def VirtualXORROTW16_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualXORROTW16_64_lookup_table : Vector f 128 -> f)
def VirtualXORROTW12_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualXORROTW12_64_lookup_table : Vector f 128 -> f)
def VirtualXORROTW8_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualXORROTW8_64_lookup_table : Vector f 128 -> f)
def VirtualXORROTW7_64 [Field f] : LookupTableMLE f 128 :=
  -- Circuit flags: OpFlags_WriteLookupOutputToRD
  LookupTableMLE.mk Interleaving.Interleaved (VirtualXORROTW7_64_lookup_table : Vector f 128 -> f)
