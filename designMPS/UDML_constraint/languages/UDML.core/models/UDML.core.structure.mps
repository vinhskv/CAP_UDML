<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0ee3fca1-ea02-4c7b-a6b2-8b2e273ad73d(UDML.core.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
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
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
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
  <node concept="1TIwiD" id="4Mzzjozs47h">
    <property role="EcuMT" value="5522412831748669905" />
    <property role="TrG5h" value="DomainModel" />
    <property role="34LRSv" value="domain model" />
    <property role="R4oN_" value="domain model" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4Mzzjozse5c" role="1TKVEi">
      <property role="IQ2ns" value="5522412831748710732" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="element" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4Mzzjozsa5Z" resolve="Annotable" />
    </node>
    <node concept="1TJgyj" id="4MzzjozsfJt" role="1TKVEi">
      <property role="IQ2ns" value="5522412831748717533" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="concern" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4Mzzjozsarl" resolve="Concern" />
    </node>
    <node concept="PrWs8" id="4MzzjozEZns" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="4Mzzjozsa5Z">
    <property role="TrG5h" value="Annotable" />
    <property role="EcuMT" value="5522412831748684872" />
    <node concept="PrWs8" id="4Mzzjozs9ru" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="4Mzzjozu$$A" role="1TKVEi">
      <property role="IQ2ns" value="5522412831749327142" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="refAnnotation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4MzzjozsNi7" resolve="RefAnnotation" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Mzzjozsarl">
    <property role="EcuMT" value="5522412831748695765" />
    <property role="TrG5h" value="Concern" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4MzzjozscqV" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="6L8LVVYw1nA" role="1TKVEi">
      <property role="IQ2ns" value="7802705977546905062" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="annotation" />
      <ref role="20lvS9" node="4MzzjozsKXg" resolve="Annotation" />
    </node>
  </node>
  <node concept="PlHQZ" id="4Mzzjozsl3_">
    <property role="TrG5h" value="Classifier" />
    <property role="EcuMT" value="5522412831748731134" />
    <property role="3GE5qa" value="class" />
    <node concept="PrWs8" id="4Mzzjozskp4" role="PrDN$">
      <ref role="PrY4T" node="4Mzzjozsa5Z" resolve="Annotable" />
    </node>
  </node>
  <node concept="1TIwiD" id="4MzzjozsloV">
    <property role="EcuMT" value="5522412831748740667" />
    <property role="TrG5h" value="Class" />
    <property role="19KtqR" value="true" />
    <property role="R4oN_" value="class UDML" />
    <property role="34LRSv" value="Class" />
    <property role="3GE5qa" value="class" />
    <ref role="1TJDcQ" to="tpee:fz12cDA" resolve="ClassConcept" />
    <node concept="PrWs8" id="4MzzjozsmI1" role="PzmwI">
      <ref role="PrY4T" node="4Mzzjozsl3_" resolve="Classifier" />
    </node>
    <node concept="1TJgyj" id="4Mzzjozs$EK" role="1TKVEi">
      <property role="IQ2ns" value="5522412831748803248" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="propertyUdml" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4Mzzjozsr2i" resolve="Property" />
    </node>
    <node concept="1TJgyj" id="4MzzjozsAl1" role="1TKVEi">
      <property role="IQ2ns" value="5522412831748810049" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="operationUdml" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4MzzjozsvmD" resolve="Operation" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Mzzjozsr2i">
    <property role="EcuMT" value="5522412831748763794" />
    <property role="3GE5qa" value="class" />
    <property role="TrG5h" value="Property" />
    <property role="34LRSv" value="Property" />
    <property role="R4oN_" value="Property UDML" />
    <ref role="1TJDcQ" to="tpee:huRhdFY" resolve="Property" />
    <node concept="PrWs8" id="4MzzjozssGC" role="PzmwI">
      <ref role="PrY4T" node="4Mzzjozsa5Z" resolve="Annotable" />
    </node>
  </node>
  <node concept="1TIwiD" id="4MzzjozsvmD">
    <property role="EcuMT" value="5522412831748781481" />
    <property role="3GE5qa" value="class" />
    <property role="TrG5h" value="Operation" />
    <property role="34LRSv" value="Operation" />
    <property role="R4oN_" value="Operation UDML" />
    <ref role="1TJDcQ" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
    <node concept="PrWs8" id="4MzzjozsxFv" role="PzmwI">
      <ref role="PrY4T" node="4Mzzjozsa5Z" resolve="Annotable" />
    </node>
  </node>
  <node concept="1TIwiD" id="4MzzjozsCZ2">
    <property role="EcuMT" value="5522412831748820930" />
    <property role="3GE5qa" value="class" />
    <property role="TrG5h" value="DataType" />
    <property role="34LRSv" value="Data type" />
    <property role="R4oN_" value="DataType UDML" />
    <ref role="1TJDcQ" to="tpee:fKQs72_" resolve="EnumClass" />
    <node concept="PrWs8" id="4MzzjozsEDo" role="PzmwI">
      <ref role="PrY4T" node="4Mzzjozsa5Z" resolve="Annotable" />
    </node>
  </node>
  <node concept="PlHQZ" id="4MzzjozsKXg">
    <property role="TrG5h" value="Annotation" />
    <property role="EcuMT" value="5522412831748845417" />
    <node concept="PrWs8" id="4MzzjozsKBZ" role="PrDN$">
      <ref role="PrY4T" node="4Mzzjozsl3_" resolve="Classifier" />
    </node>
    <node concept="1TJgyj" id="4MzzjozsLBQ" role="1TKVEi">
      <property role="IQ2ns" value="5522412831748856310" />
      <property role="20kJfa" value="target" />
      <ref role="20lvS9" node="4Mzzjozsa5Z" resolve="Annotable" />
    </node>
  </node>
  <node concept="1TIwiD" id="4MzzjozsNi7">
    <property role="EcuMT" value="5522412831748863111" />
    <property role="TrG5h" value="RefAnnotation" />
    <property role="34LRSv" value="Ref Annotation" />
    <property role="R4oN_" value="Ref Annotation" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="PrWs8" id="4MzzjozsPAX" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="1TJgyj" id="4MzzjozsVgf" role="1TKVEi">
      <property role="IQ2ns" value="5522412831748895759" />
      <property role="20kJfa" value="annotation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4MzzjozsKXg" resolve="Annotation" />
    </node>
  </node>
  <node concept="1TIwiD" id="4MzzjozsYfw">
    <property role="EcuMT" value="5522412831748908000" />
    <property role="3GE5qa" value="class.relation" />
    <property role="TrG5h" value="MemberEnd" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2_mYotpLvDt" role="1TKVEi">
      <property role="IQ2ns" value="2978842563274209885" />
      <property role="20kJfa" value="memberEnd" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4Mzzjozsl3_" resolve="Classifier" />
    </node>
    <node concept="1TJgyj" id="2_mYotqBvnt" role="1TKVEi">
      <property role="IQ2ns" value="2978842563288364509" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="property" />
      <ref role="20lvS9" node="4Mzzjozsr2i" resolve="Property" />
    </node>
    <node concept="1TJgyi" id="2_mYotpLvDr" role="1TKVEl">
      <property role="IQ2nx" value="2978842563274209883" />
      <property role="TrG5h" value="role" />
      <ref role="AX2Wp" node="4Mzzjozt6dL" resolve="Role" />
    </node>
    <node concept="1TJgyi" id="2_mYotpLvDs" role="1TKVEl">
      <property role="IQ2nx" value="2978842563274209884" />
      <property role="TrG5h" value="nameLL" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="25R3W" id="4Mzzjozt6dL">
    <property role="3F6X1D" value="5522412831748940657" />
    <property role="3GE5qa" value="class.relation" />
    <property role="TrG5h" value="Role" />
    <ref role="1H5jkz" node="2_mYotp$WhR" resolve="One" />
    <node concept="25R33" id="2_mYotp$WhK" role="25R1y">
      <property role="3tVfz5" value="2978842563270919280" />
      <property role="TrG5h" value="Many" />
      <property role="1L1pqM" value="0..*" />
    </node>
    <node concept="25R33" id="2_mYotp$WhR" role="25R1y">
      <property role="3tVfz5" value="2978842563270919287" />
      <property role="TrG5h" value="One" />
      <property role="1L1pqM" value="1..1" />
    </node>
    <node concept="25R33" id="2_mYotp$WhQ" role="25R1y">
      <property role="3tVfz5" value="2978842563270919286" />
      <property role="TrG5h" value="ZeroToOne" />
      <property role="1L1pqM" value="0..1" />
    </node>
    <node concept="25R33" id="2_mYotp$WhU" role="25R1y">
      <property role="3tVfz5" value="2978842563270919290" />
      <property role="TrG5h" value="oneToMany" />
      <property role="1L1pqM" value="1..*" />
    </node>
  </node>
  <node concept="PlHQZ" id="4Mzzjoztdxo">
    <property role="EcuMT" value="5522412831748970584" />
    <property role="3GE5qa" value="class.relation" />
    <property role="TrG5h" value="RelationShip" />
    <node concept="1TJgyj" id="3CgoCDqh3fh" role="1TKVEi">
      <property role="IQ2ns" value="4183952400186618833" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="MemberEndSource" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4MzzjozsYfw" resolve="MemberEnd" />
    </node>
    <node concept="1TJgyj" id="3CgoCDqh3fi" role="1TKVEi">
      <property role="IQ2ns" value="4183952400186618834" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="MemberEndTarget" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4MzzjozsYfw" resolve="MemberEnd" />
    </node>
    <node concept="PrWs8" id="4Mzzjoztexe" role="PrDN$">
      <ref role="PrY4T" node="4Mzzjozsl3_" resolve="Classifier" />
    </node>
    <node concept="1TJgyj" id="2M42Z5Xlcdp" role="1TKVEi">
      <property role="IQ2ns" value="3207701966412366681" />
      <property role="20kJfa" value="label" />
      <ref role="20lvS9" node="4MzzjozsloV" resolve="Class" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Mzzjozthbf">
    <property role="EcuMT" value="5522412831748985551" />
    <property role="3GE5qa" value="class.relation" />
    <property role="TrG5h" value="Association" />
    <property role="34LRSv" value="Association" />
    <property role="R4oN_" value="Association" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4Mzzjoztib5" role="PzmwI">
      <ref role="PrY4T" node="4Mzzjoztdxo" resolve="RelationShip" />
    </node>
  </node>
  <node concept="1TIwiD" id="4MzzjoztkaA">
    <property role="EcuMT" value="5522412831748997798" />
    <property role="3GE5qa" value="class.relation" />
    <property role="TrG5h" value="Composition" />
    <property role="34LRSv" value="Composition" />
    <property role="R4oN_" value="Composition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4MzzjoztlvG" role="PzmwI">
      <ref role="PrY4T" node="4Mzzjoztdxo" resolve="RelationShip" />
    </node>
  </node>
  <node concept="1TIwiD" id="4Mzzjozto9H">
    <property role="EcuMT" value="5522412831749014125" />
    <property role="3GE5qa" value="class.relation" />
    <property role="TrG5h" value="Aggregation" />
    <property role="34LRSv" value="Aggregation" />
    <property role="R4oN_" value="Aggregation" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4MzzjoztpuO" role="PzmwI">
      <ref role="PrY4T" node="4Mzzjoztdxo" resolve="RelationShip" />
    </node>
  </node>
</model>

