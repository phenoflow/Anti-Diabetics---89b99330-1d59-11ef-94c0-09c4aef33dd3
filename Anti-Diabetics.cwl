cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  anti-diabetics-500unit---primary:
    run: anti-diabetics-500unit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  anti-diabetics-novonorm---primary:
    run: anti-diabetics-novonorm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: anti-diabetics-500unit---primary/output
  anti-diabetics-500mg---primary:
    run: anti-diabetics-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: anti-diabetics-novonorm---primary/output
  anti-diabetics-soluble---primary:
    run: anti-diabetics-soluble---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: anti-diabetics-500mg---primary/output
  anti-diabetics-modifiedrelease---primary:
    run: anti-diabetics-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: anti-diabetics-soluble---primary/output
  anti-diabetics-100mg---primary:
    run: anti-diabetics-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: anti-diabetics-modifiedrelease---primary/output
  anti-diabetics-tablet---primary:
    run: anti-diabetics-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: anti-diabetics-100mg---primary/output
  anti-diabetics-jardiance---primary:
    run: anti-diabetics-jardiance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: anti-diabetics-tablet---primary/output
  anti-diabetics-glimepiride---primary:
    run: anti-diabetics-glimepiride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: anti-diabetics-jardiance---primary/output
  anti-diabetics-625mg---primary:
    run: anti-diabetics-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: anti-diabetics-glimepiride---primary/output
  anti-diabetics-180mg---primary:
    run: anti-diabetics-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: anti-diabetics-625mg---primary/output
  rapid-anti-diabetics---primary:
    run: rapid-anti-diabetics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: anti-diabetics-180mg---primary/output
  anti-diabetics-invokana---primary:
    run: anti-diabetics-invokana---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: rapid-anti-diabetics---primary/output
  anti-diabetics-750mg---primary:
    run: anti-diabetics-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: anti-diabetics-invokana---primary/output
  anti-diabetics-amaryl---primary:
    run: anti-diabetics-amaryl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: anti-diabetics-750mg---primary/output
  anti-diabetics-repaglinide---primary:
    run: anti-diabetics-repaglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: anti-diabetics-amaryl---primary/output
  anti-diabetics-tolbutamide---primary:
    run: anti-diabetics-tolbutamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: anti-diabetics-repaglinide---primary/output
  anti-diabetics-alogliptin---primary:
    run: anti-diabetics-alogliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: anti-diabetics-tolbutamide---primary/output
  anti-diabetics-liraglutide---primary:
    run: anti-diabetics-liraglutide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: anti-diabetics-alogliptin---primary/output
  anti-diabetics-20microgram---primary:
    run: anti-diabetics-20microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: anti-diabetics-liraglutide---primary/output
  anti-diabetics-metabet---primary:
    run: anti-diabetics-metabet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: anti-diabetics-20microgram---primary/output
  anti-diabetics-850mg---primary:
    run: anti-diabetics-850mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: anti-diabetics-metabet---primary/output
  anti-diabetics-pioglitazone---primary:
    run: anti-diabetics-pioglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: anti-diabetics-850mg---primary/output
  anti-diabetics-detemir---primary:
    run: anti-diabetics-detemir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: anti-diabetics-pioglitazone---primary/output
  anti-diabetics-insuman---primary:
    run: anti-diabetics-insuman---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: anti-diabetics-detemir---primary/output
  anti-diabetics-forxiga---primary:
    run: anti-diabetics-forxiga---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: anti-diabetics-insuman---primary/output
  pharmaceutical-anti-diabetics---primary:
    run: pharmaceutical-anti-diabetics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: anti-diabetics-forxiga---primary/output
  anti-diabetics-crystalline---primary:
    run: anti-diabetics-crystalline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: pharmaceutical-anti-diabetics---primary/output
  anti-diabetics-sugar---primary:
    run: anti-diabetics-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: anti-diabetics-crystalline---primary/output
  anti-diabetics-sterile---primary:
    run: anti-diabetics-sterile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: anti-diabetics-sugar---primary/output
  anti-diabetics-penmix---primary:
    run: anti-diabetics-penmix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: anti-diabetics-sterile---primary/output
  anti-diabetics-glucophage---primary:
    run: anti-diabetics-glucophage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: anti-diabetics-penmix---primary/output
  anti-diabetics-rosiglitazone---primary:
    run: anti-diabetics-rosiglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: anti-diabetics-glucophage---primary/output
  anti-diabetics-humulin---primary:
    run: anti-diabetics-humulin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: anti-diabetics-rosiglitazone---primary/output
  anti-diabetics-nazdol---primary:
    run: anti-diabetics-nazdol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: anti-diabetics-humulin---primary/output
  anti-diabetics-diamicron---primary:
    run: anti-diabetics-diamicron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: anti-diabetics-nazdol---primary/output
  anti-diabetics-bydureon---primary:
    run: anti-diabetics-bydureon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: anti-diabetics-diamicron---primary/output
  anti-diabetics-100iu---primary:
    run: anti-diabetics-100iu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: anti-diabetics-bydureon---primary/output
  anti-diabetics-exubera---primary:
    run: anti-diabetics-exubera---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: anti-diabetics-100iu---primary/output
  anti-diabetics-daonil---primary:
    run: anti-diabetics-daonil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: anti-diabetics-exubera---primary/output
  anti-diabetics-innolet---primary:
    run: anti-diabetics-innolet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: anti-diabetics-daonil---primary/output
  anti-diabetics-125mg---primary:
    run: anti-diabetics-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: anti-diabetics-innolet---primary/output
  anti-diabetics-basal---primary:
    run: anti-diabetics-basal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: anti-diabetics-125mg---primary/output
  anti-diabetics-initard---primary:
    run: anti-diabetics-initard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: anti-diabetics-basal---primary/output
  anti-diabetics-vipidia---primary:
    run: anti-diabetics-vipidia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: anti-diabetics-initard---primary/output
  anti-diabetics-komboglyze---primary:
    run: anti-diabetics-komboglyze---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: anti-diabetics-vipidia---primary/output
  anti-diabetics-malix---primary:
    run: anti-diabetics-malix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: anti-diabetics-komboglyze---primary/output
  anti-diabetics-xigduo---primary:
    run: anti-diabetics-xigduo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: anti-diabetics-malix---primary/output
  anti-diabetics-120mg---primary:
    run: anti-diabetics-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: anti-diabetics-xigduo---primary/output
  anti-diabetics-blister---primary:
    run: anti-diabetics-blister---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: anti-diabetics-120mg---primary/output
  anti-diabetics-humaject---primary:
    run: anti-diabetics-humaject---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: anti-diabetics-blister---primary/output
  anti-diabetics-nateglinide---primary:
    run: anti-diabetics-nateglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: anti-diabetics-humaject---primary/output
  anti-diabetics-avandia---primary:
    run: anti-diabetics-avandia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: anti-diabetics-nateglinide---primary/output
  anti-diabetics-lente---primary:
    run: anti-diabetics-lente---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: anti-diabetics-avandia---primary/output
  anti-diabetics-avandamet---primary:
    run: anti-diabetics-avandamet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: anti-diabetics-lente---primary/output
  anti-diabetics-sitagliptin---primary:
    run: anti-diabetics-sitagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: anti-diabetics-avandamet---primary/output
  anti-diabetics-bolamyn---primary:
    run: anti-diabetics-bolamyn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: anti-diabetics-sitagliptin---primary/output
  anti-diabetics-mix25---primary:
    run: anti-diabetics-mix25---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: anti-diabetics-bolamyn---primary/output
  anti-diabetics-calabren---primary:
    run: anti-diabetics-calabren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: anti-diabetics-mix25---primary/output
  anti-diabetics-glucamet---primary:
    run: anti-diabetics-glucamet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: anti-diabetics-calabren---primary/output
  anti-diabetics-jentadueto---primary:
    run: anti-diabetics-jentadueto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: anti-diabetics-glucamet---primary/output
  anti-diabetics-empagliflozin---primary:
    run: anti-diabetics-empagliflozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: anti-diabetics-jentadueto---primary/output
  anti-diabetics-gliclazide---primary:
    run: anti-diabetics-gliclazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: anti-diabetics-empagliflozin---primary/output
  abasaglar-anti-diabetics---primary:
    run: abasaglar-anti-diabetics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: anti-diabetics-gliclazide---primary/output
  anti-diabetics-metformin---primary:
    run: anti-diabetics-metformin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: abasaglar-anti-diabetics---primary/output
  anti-diabetics-exenatide---primary:
    run: anti-diabetics-exenatide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: anti-diabetics-metformin---primary/output
  anti-diabetics-eucrea---primary:
    run: anti-diabetics-eucrea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: anti-diabetics-exenatide---primary/output
  anti-diabetics-orabet---primary:
    run: anti-diabetics-orabet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: anti-diabetics-eucrea---primary/output
  anti-diabetics-sachet---primary:
    run: anti-diabetics-sachet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: anti-diabetics-orabet---primary/output
  anti-diabetics-protaphane---primary:
    run: anti-diabetics-protaphane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: anti-diabetics-sachet---primary/output
  glucient-anti-diabetics---primary:
    run: glucient-anti-diabetics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: anti-diabetics-protaphane---primary/output
  anti-diabetics-monotard---primary:
    run: anti-diabetics-monotard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: glucient-anti-diabetics---primary/output
  anti-diabetics-sukkarto---primary:
    run: anti-diabetics-sukkarto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: anti-diabetics-monotard---primary/output
  anti-diabetics-prandin---primary:
    run: anti-diabetics-prandin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: anti-diabetics-sukkarto---primary/output
  anti-diabetics-flexpen---primary:
    run: anti-diabetics-flexpen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: anti-diabetics-prandin---primary/output
  anti-diabetics-insulatard---primary:
    run: anti-diabetics-insulatard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: anti-diabetics-flexpen---primary/output
  anti-diabetics-mixtard---primary:
    run: anti-diabetics-mixtard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: anti-diabetics-insulatard---primary/output
  anti-diabetics-opticlik---primary:
    run: anti-diabetics-opticlik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: anti-diabetics-mixtard---primary/output
  anti-diabetics-glibenclamide---primary:
    run: anti-diabetics-glibenclamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: anti-diabetics-opticlik---primary/output
  anti-diabetics-januvia---primary:
    run: anti-diabetics-januvia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: anti-diabetics-glibenclamide---primary/output
  anti-diabetics-glargine---primary:
    run: anti-diabetics-glargine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: anti-diabetics-januvia---primary/output
  anti-diabetics-lantus---primary:
    run: anti-diabetics-lantus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: anti-diabetics-glargine---primary/output
  anti-diabetics-diabetamide---primary:
    run: anti-diabetics-diabetamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: anti-diabetics-lantus---primary/output
  anti-diabetics-starlix---primary:
    run: anti-diabetics-starlix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: anti-diabetics-diabetamide---primary/output
  anti-diabetics-canagliflozin---primary:
    run: anti-diabetics-canagliflozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: anti-diabetics-starlix---primary/output
  anti-diabetics-protamine---primary:
    run: anti-diabetics-protamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: anti-diabetics-canagliflozin---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: anti-diabetics-protamine---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
