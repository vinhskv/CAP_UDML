<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:64942cff-0a42-4333-bc51-84f59262f4c4(UDML.RBAC.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="zs21" ref="r:0ee3fca1-ea02-4c7b-a6b2-8b2e273ad73d(UDML.core.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
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
  <node concept="1TIwiD" id="6L8LVVYvWrQ">
    <property role="EcuMT" value="7802705977546884854" />
    <property role="TrG5h" value="DomainModelRbac" />
    <ref role="1TJDcQ" to="zs21:4Mzzjozs47h" resolve="DomainModel" />
  </node>
  <node concept="1TIwiD" id="6L8LVVYw1no">
    <property role="EcuMT" value="7802705977546905048" />
    <property role="TrG5h" value="AnnotationRbac" />
    <property role="34LRSv" value="RBAC" />
    <property role="R4oN_" value="RBAC" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6L8LVVYw1nu" role="PzmwI">
      <ref role="PrY4T" to="zs21:4MzzjozsKXg" resolve="Annotation" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYw1nv">
    <property role="EcuMT" value="7802705977546905055" />
    <property role="TrG5h" value="ConcernRbac" />
    <ref role="1TJDcQ" to="zs21:4Mzzjozsarl" resolve="Concern" />
  </node>
  <node concept="1TIwiD" id="6L8LVVYw1nC">
    <property role="EcuMT" value="7802705977546905064" />
    <property role="TrG5h" value="Access" />
    <property role="3GE5qa" value="Attr" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6L8LVVYw1nK">
    <property role="EcuMT" value="7802705977546905072" />
    <property role="TrG5h" value="Action" />
    <property role="3GE5qa" value="Attr" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RTw4AfG218" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732515912" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="resource" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6L8LVVYwnBe" resolve="RefReource" />
    </node>
    <node concept="1TJgyj" id="1RTw4AfG23F" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732516075" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="AccessAction" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="6L8LVVYw1od" resolve="RefAccess" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYw1nS">
    <property role="EcuMT" value="7802705977546905080" />
    <property role="TrG5h" value="Resource" />
    <property role="3GE5qa" value="Attr" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RTw4AfG1SS" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732515384" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="action" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6L8LVVYw1ok" resolve="RefAction" />
    </node>
    <node concept="1TJgyj" id="1RTw4AfG1Ub" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732515467" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="AccessResource" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="6L8LVVYw1od" resolve="RefAccess" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYw1nZ">
    <property role="EcuMT" value="7802705977546905087" />
    <property role="TrG5h" value="SeparationOfDuty" />
    <property role="3GE5qa" value="Attr" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RTw4AfG1N_" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732515045" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="sodMembers" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="6L8LVVYw1o7" resolve="SoDMembers" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYw1o7">
    <property role="EcuMT" value="7802705977546905095" />
    <property role="TrG5h" value="SoDMembers" />
    <property role="3GE5qa" value="Attr" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6L8LVVYw1od">
    <property role="EcuMT" value="7802705977546905101" />
    <property role="TrG5h" value="RefAccess" />
    <property role="3GE5qa" value="ref" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RTw4AfG1J2" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732514754" />
      <property role="20kJfa" value="access" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6L8LVVYw1nC" resolve="Access" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYw1ok">
    <property role="EcuMT" value="7802705977546905108" />
    <property role="TrG5h" value="RefAction" />
    <property role="3GE5qa" value="ref" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RTw4AfG26Z" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732516287" />
      <property role="20kJfa" value="action" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6L8LVVYw1nK" resolve="Action" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYwm_p">
    <property role="EcuMT" value="7802705977546991961" />
    <property role="TrG5h" value="RefPermission" />
    <property role="3GE5qa" value="ref" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RTw4AfFO2K" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732458672" />
      <property role="20kJfa" value="permission" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6L8LVVYwnBQ" resolve="Permission" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYwnBe">
    <property role="EcuMT" value="7802705977546996174" />
    <property role="TrG5h" value="RefReource" />
    <property role="3GE5qa" value="ref" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RTw4AfG1Zm" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732515798" />
      <property role="20kJfa" value="resource" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6L8LVVYw1nS" resolve="Resource" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYwnBm">
    <property role="EcuMT" value="7802705977546996182" />
    <property role="TrG5h" value="RefRole" />
    <property role="3GE5qa" value="ref" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RTw4AfFNYp" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732458393" />
      <property role="20kJfa" value="role" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6L8LVVYwnBK" resolve="Role" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYwnBt">
    <property role="EcuMT" value="7802705977546996189" />
    <property role="3GE5qa" value="ref" />
    <property role="TrG5h" value="RefSession" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RTw4AfFO8I" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732459054" />
      <property role="20kJfa" value="session" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6L8LVVYwnBX" resolve="Session" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYwnB$">
    <property role="EcuMT" value="7802705977546996196" />
    <property role="3GE5qa" value="ref" />
    <property role="TrG5h" value="RefUser" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1RTw4AfFO5n" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732458839" />
      <property role="20kJfa" value="user" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6L8LVVYwnBE" resolve="User" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYwnBE">
    <property role="EcuMT" value="7802705977546996202" />
    <property role="TrG5h" value="User" />
    <property role="3GE5qa" value="annotation" />
    <ref role="1TJDcQ" node="6L8LVVYw1no" resolve="AnnotationRbac" />
    <node concept="1TJgyj" id="1RTw4AfG1z0" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732513984" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="role" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6L8LVVYwnBm" resolve="RefRole" />
    </node>
    <node concept="1TJgyj" id="1RTw4AfG1$1" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732514049" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="session" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6L8LVVYwnBt" resolve="RefSession" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYwnBK">
    <property role="EcuMT" value="7802705977546996208" />
    <property role="3GE5qa" value="annotation" />
    <property role="TrG5h" value="Role" />
    <ref role="1TJDcQ" node="6L8LVVYw1no" resolve="AnnotationRbac" />
    <node concept="1TJgyj" id="1RTw4AfG1nv" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732513247" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="sodMembers" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="6L8LVVYw1o7" resolve="SoDMembers" />
    </node>
    <node concept="1TJgyj" id="1RTw4AfG1pM" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732513394" />
      <property role="20kJfa" value="inheritsRole" />
      <ref role="20lvS9" node="6L8LVVYwnBK" resolve="Role" />
    </node>
    <node concept="1TJgyj" id="1RTw4AfG1rn" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732513495" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="user" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6L8LVVYwnB$" resolve="RefUser" />
    </node>
    <node concept="1TJgyj" id="1RTw4AfG1t9" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732513609" />
      <property role="20kJfa" value="session" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="6L8LVVYwnBt" resolve="RefSession" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYwnBQ">
    <property role="EcuMT" value="7802705977546996214" />
    <property role="3GE5qa" value="annotation" />
    <property role="TrG5h" value="Permission" />
    <ref role="1TJDcQ" node="6L8LVVYw1no" resolve="AnnotationRbac" />
    <node concept="1TJgyj" id="1RTw4AfG1ja" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732512970" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6L8LVVYw1nS" resolve="Resource" />
    </node>
    <node concept="1TJgyj" id="1RTw4AfG1kX" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732513085" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="role" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6L8LVVYwnBm" resolve="RefRole" />
    </node>
  </node>
  <node concept="1TIwiD" id="6L8LVVYwnBX">
    <property role="EcuMT" value="7802705977546996221" />
    <property role="3GE5qa" value="annotation" />
    <property role="TrG5h" value="Session" />
    <ref role="1TJDcQ" node="6L8LVVYw1no" resolve="AnnotationRbac" />
    <node concept="1TJgyj" id="1RTw4AfG1Bj" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732514259" />
      <property role="20kJfa" value="user" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6L8LVVYwnBE" resolve="User" />
    </node>
    <node concept="1TJgyj" id="1RTw4AfG1CQ" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732514358" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="role" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6L8LVVYwnBm" resolve="RefRole" />
    </node>
    <node concept="1TJgyj" id="1RTw4AfG1Fo" role="1TKVEi">
      <property role="IQ2ns" value="2159898549732514520" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="ActiveAccess" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="6L8LVVYw1od" resolve="RefAccess" />
    </node>
  </node>
</model>

