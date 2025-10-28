import ZkLean

structure JoltR1CSInputs (f : Type) : Type where
  LeftInstructionInput : ZKExpr f
  RightInstructionInput : ZKExpr f
  Product : ZKExpr f
  WriteLookupOutputToRD : ZKExpr f
  WritePCtoRD : ZKExpr f
  ShouldBranch : ZKExpr f
  PC : ZKExpr f
  UnexpandedPC : ZKExpr f
  Imm : ZKExpr f
  RamAddress : ZKExpr f
  Rs1Value : ZKExpr f
  Rs2Value : ZKExpr f
  RdWriteValue : ZKExpr f
  RamReadValue : ZKExpr f
  RamWriteValue : ZKExpr f
  LeftLookupOperand : ZKExpr f
  RightLookupOperand : ZKExpr f
  NextUnexpandedPC : ZKExpr f
  NextPC : ZKExpr f
  LookupOutput : ZKExpr f
  ShouldJump : ZKExpr f
  OpFlags_AddOperands : ZKExpr f
  OpFlags_SubtractOperands : ZKExpr f
  OpFlags_MultiplyOperands : ZKExpr f
  OpFlags_Load : ZKExpr f
  OpFlags_Store : ZKExpr f
  OpFlags_Jump : ZKExpr f
  OpFlags_WriteLookupOutputToRD : ZKExpr f
  OpFlags_InlineSequenceInstruction : ZKExpr f
  OpFlags_Assert : ZKExpr f
  OpFlags_DoNotUpdateUnexpandedPC : ZKExpr f
  OpFlags_Advice : ZKExpr f
  OpFlags_IsCompressed : ZKExpr f

instance: Witnessable f (JoltR1CSInputs f) where
  witness := do
    let LeftInstructionInput <- Witnessable.witness
    let RightInstructionInput <- Witnessable.witness
    let Product <- Witnessable.witness
    let WriteLookupOutputToRD <- Witnessable.witness
    let WritePCtoRD <- Witnessable.witness
    let ShouldBranch <- Witnessable.witness
    let PC <- Witnessable.witness
    let UnexpandedPC <- Witnessable.witness
    let Imm <- Witnessable.witness
    let RamAddress <- Witnessable.witness
    let Rs1Value <- Witnessable.witness
    let Rs2Value <- Witnessable.witness
    let RdWriteValue <- Witnessable.witness
    let RamReadValue <- Witnessable.witness
    let RamWriteValue <- Witnessable.witness
    let LeftLookupOperand <- Witnessable.witness
    let RightLookupOperand <- Witnessable.witness
    let NextUnexpandedPC <- Witnessable.witness
    let NextPC <- Witnessable.witness
    let LookupOutput <- Witnessable.witness
    let ShouldJump <- Witnessable.witness
    let OpFlags_AddOperands <- Witnessable.witness
    let OpFlags_SubtractOperands <- Witnessable.witness
    let OpFlags_MultiplyOperands <- Witnessable.witness
    let OpFlags_Load <- Witnessable.witness
    let OpFlags_Store <- Witnessable.witness
    let OpFlags_Jump <- Witnessable.witness
    let OpFlags_WriteLookupOutputToRD <- Witnessable.witness
    let OpFlags_InlineSequenceInstruction <- Witnessable.witness
    let OpFlags_Assert <- Witnessable.witness
    let OpFlags_DoNotUpdateUnexpandedPC <- Witnessable.witness
    let OpFlags_Advice <- Witnessable.witness
    let OpFlags_IsCompressed <- Witnessable.witness

    pure {
      LeftInstructionInput := LeftInstructionInput
      RightInstructionInput := RightInstructionInput
      Product := Product
      WriteLookupOutputToRD := WriteLookupOutputToRD
      WritePCtoRD := WritePCtoRD
      ShouldBranch := ShouldBranch
      PC := PC
      UnexpandedPC := UnexpandedPC
      Imm := Imm
      RamAddress := RamAddress
      Rs1Value := Rs1Value
      Rs2Value := Rs2Value
      RdWriteValue := RdWriteValue
      RamReadValue := RamReadValue
      RamWriteValue := RamWriteValue
      LeftLookupOperand := LeftLookupOperand
      RightLookupOperand := RightLookupOperand
      NextUnexpandedPC := NextUnexpandedPC
      NextPC := NextPC
      LookupOutput := LookupOutput
      ShouldJump := ShouldJump
      OpFlags_AddOperands := OpFlags_AddOperands
      OpFlags_SubtractOperands := OpFlags_SubtractOperands
      OpFlags_MultiplyOperands := OpFlags_MultiplyOperands
      OpFlags_Load := OpFlags_Load
      OpFlags_Store := OpFlags_Store
      OpFlags_Jump := OpFlags_Jump
      OpFlags_WriteLookupOutputToRD := OpFlags_WriteLookupOutputToRD
      OpFlags_InlineSequenceInstruction := OpFlags_InlineSequenceInstruction
      OpFlags_Assert := OpFlags_Assert
      OpFlags_DoNotUpdateUnexpandedPC := OpFlags_DoNotUpdateUnexpandedPC
      OpFlags_Advice := OpFlags_Advice
      OpFlags_IsCompressed := OpFlags_IsCompressed
    }

def uniform_jolt_constraints [ZKField f] (jolt_inputs : JoltR1CSInputs f) : ZKBuilder f PUnit := do
  -- RamAddrEqRs1PlusImmIfLoadStore
  ZKBuilder.constrainR1CS
    (jolt_inputs.OpFlags_Load + jolt_inputs.OpFlags_Store)
    (jolt_inputs.Rs1Value + jolt_inputs.Imm)
    jolt_inputs.RamAddress
  -- RamReadEqRamWriteIfLoad
  ZKBuilder.constrainR1CS
    jolt_inputs.OpFlags_Load
    (jolt_inputs.RamReadValue + (-1*jolt_inputs.RamWriteValue))
    0
  -- RamReadEqRdWriteIfLoad
  ZKBuilder.constrainR1CS
    jolt_inputs.OpFlags_Load
    (jolt_inputs.RamReadValue + (-1*jolt_inputs.RdWriteValue))
    0
  -- Rs2EqRamWriteIfStore
  ZKBuilder.constrainR1CS
    jolt_inputs.OpFlags_Store
    (jolt_inputs.Rs2Value + (-1*jolt_inputs.RamWriteValue))
    0
  -- LeftLookupZeroUnlessAddSubMul
  ZKBuilder.constrainR1CS
    (jolt_inputs.OpFlags_AddOperands + jolt_inputs.OpFlags_SubtractOperands + jolt_inputs.OpFlags_MultiplyOperands)
    (-1*jolt_inputs.LeftInstructionInput)
    (jolt_inputs.LeftLookupOperand + (-1*jolt_inputs.LeftInstructionInput))
  -- RightLookupAdd
  ZKBuilder.constrainR1CS
    jolt_inputs.OpFlags_AddOperands
    (jolt_inputs.RightLookupOperand + (-1*jolt_inputs.LeftInstructionInput) + (-1*jolt_inputs.RightInstructionInput))
    0
  -- RightLookupSub
  ZKBuilder.constrainR1CS
    jolt_inputs.OpFlags_SubtractOperands
    (-18446744073709551616 + jolt_inputs.RightLookupOperand + (-1*jolt_inputs.LeftInstructionInput) + jolt_inputs.RightInstructionInput)
    0
  -- RightLookupEqProductIfMul
  ZKBuilder.constrainR1CS
    jolt_inputs.OpFlags_MultiplyOperands
    (jolt_inputs.RightLookupOperand + (-1*jolt_inputs.Product))
    0
  -- RightLookupEqRightInputOtherwise
  ZKBuilder.constrainR1CS
    (1 + (-1*jolt_inputs.OpFlags_AddOperands) + (-1*jolt_inputs.OpFlags_SubtractOperands) + (-1*jolt_inputs.OpFlags_MultiplyOperands) + (-1*jolt_inputs.OpFlags_Advice))
    (jolt_inputs.RightLookupOperand + (-1*jolt_inputs.RightInstructionInput))
    0
  -- AssertLookupOne
  ZKBuilder.constrainR1CS
    jolt_inputs.OpFlags_Assert
    (-1 + jolt_inputs.LookupOutput)
    0
  -- RdWriteEqLookupIfWriteLookupToRd
  ZKBuilder.constrainR1CS
    jolt_inputs.WriteLookupOutputToRD
    (jolt_inputs.RdWriteValue + (-1*jolt_inputs.LookupOutput))
    0
  -- RdWriteEqPCPlusConstIfWritePCtoRD
  ZKBuilder.constrainR1CS
    jolt_inputs.WritePCtoRD
    (-4 + jolt_inputs.RdWriteValue + (-1*jolt_inputs.UnexpandedPC) + (2*jolt_inputs.OpFlags_IsCompressed))
    0
  -- NextUnexpPCEqLookupIfShouldJump
  ZKBuilder.constrainR1CS
    jolt_inputs.ShouldJump
    (jolt_inputs.NextUnexpandedPC + (-1*jolt_inputs.LookupOutput))
    0
  -- NextUnexpPCEqPCPlusImmIfShouldBranch
  ZKBuilder.constrainR1CS
    jolt_inputs.ShouldBranch
    (jolt_inputs.NextUnexpandedPC + (-1*jolt_inputs.UnexpandedPC) + (-1*jolt_inputs.Imm))
    0
  -- NextUnexpPCUpdateOtherwise
  ZKBuilder.constrainR1CS
    (1 + (-1*jolt_inputs.ShouldBranch) + (-1*jolt_inputs.OpFlags_Jump))
    (-4 + jolt_inputs.NextUnexpandedPC + (-1*jolt_inputs.UnexpandedPC) + (4*jolt_inputs.OpFlags_DoNotUpdateUnexpandedPC) + (2*jolt_inputs.OpFlags_IsCompressed))
    0
  -- NextPCEqPCPlusOneIfInline
  ZKBuilder.constrainR1CS
    jolt_inputs.OpFlags_InlineSequenceInstruction
    (-1 + jolt_inputs.NextPC + (-1*jolt_inputs.PC))
    0
