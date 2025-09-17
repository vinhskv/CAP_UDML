<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:11d1b621-783c-4c2f-aeba-6f180102f9eb(UDML.OCL.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="zs21" ref="r:0ee3fca1-ea02-4c7b-a6b2-8b2e273ad73d(UDML.core.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1083243159079" name="jetbrains.mps.lang.structure.structure.PrimitiveDataTypeDeclaration" flags="ng" index="QkHVr" />
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="4DevkBtIt9l">
    <property role="EcuMT" value="5354354763196125781" />
    <property role="TrG5h" value="AnnotationOcl" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="OCL" />
    <property role="R4oN_" value="OCL " />
    <node concept="PrWs8" id="4DevkBtIuW8" role="PzmwI">
      <ref role="PrY4T" to="zs21:4MzzjozsKXg" resolve="Annotation" />
    </node>
  </node>
  <node concept="1TIwiD" id="4DevkBtIvIj">
    <property role="EcuMT" value="5354354763196136339" />
    <property role="TrG5h" value="OCL" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="OCL" />
    <ref role="1TJDcQ" node="4DevkBtIt9l" resolve="AnnotationOcl" />
  </node>
  <node concept="1TIwiD" id="2M42Z5XzacA">
    <property role="EcuMT" value="3207701966416028454" />
    <property role="TrG5h" value="Sumcontract" />
    <ref role="1TJDcQ" node="4DevkBtIt9l" resolve="AnnotationOcl" />
    <node concept="1TJgyi" id="2M42Z5XzaOK" role="1TKVEl">
      <property role="IQ2nx" value="3207701966416031024" />
      <property role="TrG5h" value="min" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="2M42Z5Xzb5w" role="1TKVEl">
      <property role="IQ2nx" value="3207701966416032096" />
      <property role="TrG5h" value="max" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="2M42Z5XzbsV" role="1TKVEl">
      <property role="IQ2nx" value="3207701966416033595" />
      <property role="TrG5h" value="max2" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="2M42Z5XzbRH" role="1TKVEl">
      <property role="IQ2nx" value="3207701966416035309" />
      <property role="TrG5h" value="message" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2M42Z5XzcHf" role="1TKVEl">
      <property role="IQ2nx" value="3207701966416038735" />
      <property role="TrG5h" value="message2" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2M42Z5XzcUC" role="1TKVEl">
      <property role="IQ2nx" value="3207701966416039592" />
      <property role="TrG5h" value="l" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="2M42Z5Xzdi5" role="1TKVEl">
      <property role="IQ2nx" value="3207701966416041093" />
      <property role="TrG5h" value="li" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="2M42Z5XzLrw" role="1TKVEl">
      <property role="IQ2nx" value="3207701966416189152" />
      <property role="TrG5h" value="p0" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4rgh5Bev78t" role="1TKVEl">
      <property role="IQ2nx" value="5102653530317812253" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4rgh5Be$vye" role="1TKVEl">
      <property role="IQ2nx" value="5102653530319222926" />
      <property role="TrG5h" value="conditionalMax" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="2M42Z5X$sSj" role="1TKVEi">
      <property role="IQ2ns" value="3207701966416367123" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="sss" />
      <ref role="20lvS9" to="tpee:hP7QB7G" resolve="StringType" />
    </node>
  </node>
  <node concept="QkHVr" id="2M42Z5X$HLm">
    <property role="3F6X1D" value="3207701966416436310" />
    <property role="TrG5h" value="AnnotationValue" />
  </node>
</model>

