<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1569ac16-88e0-467b-a0a7-2cc4247ddc9c(UDML.DCSL.structure)">
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
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3QRtJrm$z0t">
    <property role="EcuMT" value="4447153959585591325" />
    <property role="TrG5h" value="AnnotationDcsl" />
    <property role="R5$K7" value="true" />
    <property role="34LRSv" value="DCSL" />
    <node concept="PrWs8" id="3QRtJrmAH1Z" role="PzmwI">
      <ref role="PrY4T" to="zs21:4MzzjozsKXg" resolve="Annotation" />
    </node>
  </node>
  <node concept="25R3W" id="3QRtJrmAH20">
    <property role="3F6X1D" value="4447153959586156672" />
    <property role="TrG5h" value="AssocEndType" />
    <property role="3GE5qa" value="Enum" />
    <ref role="1H5jkz" node="1w2LIuq6bs4" resolve="One" />
    <node concept="25R33" id="1w2LIuq6bs4" role="25R1y">
      <property role="3tVfz5" value="1730163904888747780" />
      <property role="TrG5h" value="One" />
    </node>
    <node concept="25R33" id="1w2LIuq6buL" role="25R1y">
      <property role="3tVfz5" value="1730163904888747953" />
      <property role="TrG5h" value="Many" />
    </node>
  </node>
  <node concept="25R3W" id="3QRtJrmAH2b">
    <property role="3F6X1D" value="4447153959586156683" />
    <property role="TrG5h" value="AssocType" />
    <property role="3GE5qa" value="Enum" />
    <ref role="1H5jkz" node="1w2LIuq6bcJ" resolve="One2One" />
    <node concept="25R33" id="1w2LIuq6bcJ" role="25R1y">
      <property role="3tVfz5" value="1730163904888746799" />
      <property role="TrG5h" value="One2One" />
    </node>
    <node concept="25R33" id="1w2LIuq6bi3" role="25R1y">
      <property role="3tVfz5" value="1730163904888747139" />
      <property role="TrG5h" value="One2Many" />
    </node>
    <node concept="25R33" id="2gSN3I4Zd$T" role="25R1y">
      <property role="3tVfz5" value="2610060540067502393" />
      <property role="TrG5h" value="Many2Many" />
    </node>
  </node>
  <node concept="25R3W" id="3QRtJrmAH2w">
    <property role="3F6X1D" value="4447153959586156704" />
    <property role="3GE5qa" value="Enum" />
    <property role="TrG5h" value="OtpType" />
    <ref role="1H5jkz" node="2gSN3I4Zd$Q" resolve="Setter" />
    <node concept="25R33" id="2gSN3I4Zd$G" role="25R1y">
      <property role="3tVfz5" value="2610060540067502380" />
      <property role="TrG5h" value="RequiredConstructor" />
    </node>
    <node concept="25R33" id="2gSN3I4Zd$I" role="25R1y">
      <property role="3tVfz5" value="2610060540067502382" />
      <property role="TrG5h" value="ObjectFormConstrctor" />
    </node>
    <node concept="25R33" id="2gSN3I4Zd$J" role="25R1y">
      <property role="3tVfz5" value="2610060540067502383" />
      <property role="TrG5h" value="AutoAttributeValueGen" />
    </node>
    <node concept="25R33" id="2gSN3I4Zd$K" role="25R1y">
      <property role="3tVfz5" value="2610060540067502384" />
      <property role="TrG5h" value="LinkCountGetter" />
    </node>
    <node concept="25R33" id="2gSN3I4Zd$L" role="25R1y">
      <property role="3tVfz5" value="2610060540067502385" />
      <property role="TrG5h" value="LinkCountSetter" />
    </node>
    <node concept="25R33" id="2gSN3I4Zd$M" role="25R1y">
      <property role="3tVfz5" value="2610060540067502386" />
      <property role="TrG5h" value="LinkAdder" />
    </node>
    <node concept="25R33" id="2gSN3I4Zd$O" role="25R1y">
      <property role="3tVfz5" value="2610060540067502388" />
      <property role="TrG5h" value="LinkAdderNew" />
    </node>
    <node concept="25R33" id="2gSN3I4Zd$N" role="25R1y">
      <property role="3tVfz5" value="2610060540067502387" />
      <property role="TrG5h" value="LinkRemover" />
    </node>
    <node concept="25R33" id="2gSN3I4Zd$P" role="25R1y">
      <property role="3tVfz5" value="2610060540067502389" />
      <property role="TrG5h" value="LinkUpdater" />
    </node>
    <node concept="25R33" id="2gSN3I4Zd$Q" role="25R1y">
      <property role="3tVfz5" value="2610060540067502390" />
      <property role="TrG5h" value="Setter" />
    </node>
    <node concept="25R33" id="2gSN3I4Zd$R" role="25R1y">
      <property role="3tVfz5" value="2610060540067502391" />
      <property role="TrG5h" value="Getter" />
    </node>
  </node>
  <node concept="1TIwiD" id="3QRtJrmAH2F">
    <property role="EcuMT" value="4447153959586156715" />
    <property role="TrG5h" value="DAssoc" />
    <property role="3GE5qa" value="annotation" />
    <ref role="1TJDcQ" node="3QRtJrm$z0t" resolve="AnnotationDcsl" />
    <node concept="1TJgyj" id="1w2LIuq6WnI" role="1TKVEi">
      <property role="IQ2ns" value="1730163904888948206" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="associate" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3QRtJrmAH3l" resolve="Associate" />
    </node>
    <node concept="1TJgyi" id="3QRtJrmAH2O" role="1TKVEl">
      <property role="IQ2nx" value="4447153959586156724" />
      <property role="TrG5h" value="ascType" />
      <ref role="AX2Wp" node="3QRtJrmAH2b" resolve="AssocType" />
    </node>
    <node concept="1TJgyi" id="3QRtJrmAH2P" role="1TKVEl">
      <property role="IQ2nx" value="4447153959586156725" />
      <property role="TrG5h" value="endType" />
      <ref role="AX2Wp" node="3QRtJrmAH20" resolve="AssocEndType" />
    </node>
    <node concept="1TJgyi" id="3QRtJrmAH2Q" role="1TKVEl">
      <property role="IQ2nx" value="4447153959586156726" />
      <property role="TrG5h" value="dependsOn" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="3QRtJrmAH2R" role="1TKVEl">
      <property role="IQ2nx" value="4447153959586156727" />
      <property role="TrG5h" value="derivedFrom" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="3QRtJrmAH2V">
    <property role="EcuMT" value="4447153959586156731" />
    <property role="TrG5h" value="DAttr" />
    <property role="3GE5qa" value="annotation" />
    <ref role="1TJDcQ" node="3QRtJrm$z0t" resolve="AnnotationDcsl" />
    <node concept="1TJgyi" id="7RutGRSb4WP" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784309" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="3QRtJrmAK7W" role="1TKVEl">
      <property role="IQ2nx" value="4447153959586169340" />
      <property role="TrG5h" value="namedcsl" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4WR" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784311" />
      <property role="TrG5h" value="auto" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4WS" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784312" />
      <property role="TrG5h" value="autoIncrement" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4WT" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784313" />
      <property role="TrG5h" value="unique" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4WU" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784314" />
      <property role="TrG5h" value="mutable" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4WV" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784315" />
      <property role="TrG5h" value="optional" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4WW" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784316" />
      <property role="TrG5h" value="lenght" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4WX" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784317" />
      <property role="TrG5h" value="min" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4WZ" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784319" />
      <property role="TrG5h" value="max" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4X0" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784320" />
      <property role="TrG5h" value="serialisable" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="3QRtJrmAK7V" role="1TKVEi">
      <property role="IQ2ns" value="4447153959586169339" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="3QRtJrmAH33">
    <property role="EcuMT" value="4447153959586156739" />
    <property role="TrG5h" value="DClass" />
    <property role="3GE5qa" value="annotation" />
    <ref role="1TJDcQ" node="3QRtJrm$z0t" resolve="AnnotationDcsl" />
    <node concept="1TJgyi" id="7RutGRSb4X5" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784325" />
      <property role="TrG5h" value="serialisable" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4X6" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784326" />
      <property role="TrG5h" value="mutable" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4X7" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784327" />
      <property role="TrG5h" value="singleton" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="3QRtJrmAH3c">
    <property role="EcuMT" value="4447153959586156748" />
    <property role="TrG5h" value="DOtp" />
    <property role="3GE5qa" value="annotation" />
    <ref role="1TJDcQ" node="3QRtJrm$z0t" resolve="AnnotationDcsl" />
    <node concept="1TJgyi" id="7RutGRSb4Xa" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784330" />
      <property role="TrG5h" value="requires" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4Xb" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784331" />
      <property role="TrG5h" value="effect" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7RutGRSb4Xc" role="1TKVEl">
      <property role="IQ2nx" value="9069817326574784332" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="3QRtJrmAH2w" resolve="OtpType" />
    </node>
  </node>
  <node concept="1TIwiD" id="3QRtJrmAH3l">
    <property role="EcuMT" value="4447153959586156757" />
    <property role="TrG5h" value="Associate" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1w2LIuq6zlU" role="1TKVEi">
      <property role="IQ2ns" value="1730163904888845690" />
      <property role="20kJfa" value="type" />
      <ref role="20lvS9" to="zs21:4Mzzjozsl3_" resolve="Classifier" />
    </node>
    <node concept="1TJgyi" id="1w2LIuq6zbl" role="1TKVEl">
      <property role="IQ2nx" value="1730163904888845013" />
      <property role="TrG5h" value="cardMin" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="1w2LIuq6zcI" role="1TKVEl">
      <property role="IQ2nx" value="1730163904888845102" />
      <property role="TrG5h" value="cardMax" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3QRtJrmAH4j">
    <property role="EcuMT" value="4447153959586156819" />
    <property role="TrG5h" value="DomainModelDcsl" />
    <ref role="1TJDcQ" to="zs21:4Mzzjozs47h" resolve="DomainModel" />
  </node>
  <node concept="1TIwiD" id="3QRtJrmAH4p">
    <property role="EcuMT" value="4447153959586156825" />
    <property role="TrG5h" value="ConcernDcsl" />
    <ref role="1TJDcQ" to="zs21:4Mzzjozsarl" resolve="Concern" />
  </node>
</model>

