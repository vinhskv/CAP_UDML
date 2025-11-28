<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:11d1b621-783c-4c2f-aeba-6f180102f9eb(UDML.OCL.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="zs21" ref="r:0ee3fca1-ea02-4c7b-a6b2-8b2e273ad73d(UDML.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
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
  <node concept="1TIwiD" id="2M42Z5XzacA">
    <property role="EcuMT" value="3207701966416028454" />
    <property role="TrG5h" value="Sumcontract" />
    <property role="34LRSv" value="SUM CONTRACT" />
    <ref role="1TJDcQ" node="3aRkDr26tm2" resolve="AnnotationCAP" />
    <node concept="1TJgyi" id="60E6kFO9$VL" role="1TKVEl">
      <property role="IQ2nx" value="6929378786377354993" />
      <property role="TrG5h" value="sumAttr" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3aRkDr2chvx" role="1TKVEl">
      <property role="IQ2nx" value="3654480430091016161" />
      <property role="TrG5h" value="sumAttr1" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3aRkDr2chvy" role="1TKVEl">
      <property role="IQ2nx" value="3654480430091016162" />
      <property role="TrG5h" value="sumAttr2" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="60E6kFO5i1Z" role="1TKVEi">
      <property role="IQ2ns" value="6929378786376228991" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="assocCls" />
      <ref role="20lvS9" node="60E6kFO5hO8" resolve="AssocCls" />
    </node>
    <node concept="1TJgyj" id="60E6kFO5i22" role="1TKVEi">
      <property role="IQ2ns" value="6929378786376228994" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="rolePath" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="60E6kFO5hR$" resolve="RolePath" />
    </node>
    <node concept="1TJgyj" id="60E6kFO5i25" role="1TKVEi">
      <property role="IQ2ns" value="6929378786376228997" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="collect" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="60E6kFO5hUZ" resolve="AttrCond" />
    </node>
    <node concept="1TJgyj" id="3aRkDr2chuo" role="1TKVEi">
      <property role="IQ2ns" value="3654480430091016088" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="collect1" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="60E6kFO5hUZ" resolve="AttrCond" />
    </node>
    <node concept="1TJgyj" id="3aRkDr2chvw" role="1TKVEi">
      <property role="IQ2ns" value="3654480430091016160" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="collect2" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="60E6kFO5hUZ" resolve="AttrCond" />
    </node>
    <node concept="1TJgyj" id="60E6kFO5i2c" role="1TKVEi">
      <property role="IQ2ns" value="6929378786376229004" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="fixAttr" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3aRkDr26tp$" resolve="FixAttr" />
    </node>
    <node concept="1TJgyj" id="3aRkDr26tps" role="1TKVEi">
      <property role="IQ2ns" value="3654480430089492060" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="ifPart" />
      <ref role="20lvS9" node="3aRkDr26o3z" resolve="IfPart" />
    </node>
    <node concept="PrWs8" id="3aRkDr26ohb" role="PzmwI">
      <ref role="PrY4T" node="3aRkDr26odN" resolve="AnnoType" />
    </node>
  </node>
  <node concept="1TIwiD" id="60E6kFO5hO8">
    <property role="EcuMT" value="6929378786376228104" />
    <property role="TrG5h" value="AssocCls" />
    <property role="3GE5qa" value="SumConstraint" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="60E6kFO5i1W" role="PzmwI">
      <ref role="PrY4T" node="60E6kFO5hYx" resolve="OCLParamater" />
    </node>
    <node concept="PrWs8" id="3aRkDr26tpy" role="PzmwI">
      <ref role="PrY4T" node="3aRkDr26odN" resolve="AnnoType" />
    </node>
    <node concept="1TJgyi" id="60E6kFO7zDK" role="1TKVEl">
      <property role="IQ2nx" value="6929378786376825456" />
      <property role="TrG5h" value="as1" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="60E6kFO7zDL" role="1TKVEl">
      <property role="IQ2nx" value="6929378786376825457" />
      <property role="TrG5h" value="as2" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="60E6kFO7zDM" role="1TKVEl">
      <property role="IQ2nx" value="6929378786376825458" />
      <property role="TrG5h" value="as3" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="60E6kFO5hR$">
    <property role="EcuMT" value="6929378786376228324" />
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="RolePath" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="60E6kFO9oRc" role="1TKVEl">
      <property role="IQ2nx" value="6929378786377305548" />
      <property role="TrG5h" value="r1" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="60E6kFO9oRd" role="1TKVEl">
      <property role="IQ2nx" value="6929378786377305549" />
      <property role="TrG5h" value="r2" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="60E6kFO9oRe" role="1TKVEl">
      <property role="IQ2nx" value="6929378786377305550" />
      <property role="TrG5h" value="r3" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="60E6kFO5i1T" role="PzmwI">
      <ref role="PrY4T" node="60E6kFO5hYx" resolve="OCLParamater" />
    </node>
    <node concept="PrWs8" id="3aRkDr26tpw" role="PzmwI">
      <ref role="PrY4T" node="3aRkDr26odN" resolve="AnnoType" />
    </node>
  </node>
  <node concept="1TIwiD" id="60E6kFO5hUZ">
    <property role="EcuMT" value="6929378786376228543" />
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AttrCond" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="60E6kFO5hYn" role="1TKVEl">
      <property role="IQ2nx" value="6929378786376228759" />
      <property role="TrG5h" value="attr" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3aRkDr26o71" role="1TKVEl">
      <property role="IQ2nx" value="3654480430089470401" />
      <property role="TrG5h" value="matchAttr" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="60E6kFO5hYt" role="1TKVEl">
      <property role="IQ2nx" value="6929378786376228765" />
      <property role="TrG5h" value="matchStr" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3aRkDr26twC" role="1TKVEl">
      <property role="IQ2nx" value="3654480430089492520" />
      <property role="TrG5h" value="varAttr" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3aRkDr26twG" role="1TKVEl">
      <property role="IQ2nx" value="3654480430089492524" />
      <property role="TrG5h" value="varFillterAttr" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="3aRkDr26twB" role="PzmwI">
      <ref role="PrY4T" node="3aRkDr26odN" resolve="AnnoType" />
    </node>
    <node concept="1TJgyj" id="3aRkDr26uRp" role="1TKVEi">
      <property role="IQ2ns" value="3654480430089498073" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="fixAttr" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3aRkDr26tp$" resolve="FixAttr" />
    </node>
    <node concept="1TJgyj" id="3aRkDr26uRu" role="1TKVEi">
      <property role="IQ2ns" value="3654480430089498078" />
      <property role="20kJfa" value="attrCond" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="60E6kFO5hUZ" resolve="AttrCond" />
    </node>
    <node concept="1TJgyj" id="3aRkDr26uRx" role="1TKVEi">
      <property role="IQ2ns" value="3654480430089498081" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="rolePath" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="60E6kFO5hR$" resolve="RolePath" />
    </node>
  </node>
  <node concept="PlHQZ" id="60E6kFO5hYx">
    <property role="EcuMT" value="6929378786376228769" />
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="OCLParamater" />
  </node>
  <node concept="1TIwiD" id="60E6kFO7zAn">
    <property role="EcuMT" value="6929378786376825239" />
    <property role="TrG5h" value="AttrAnno" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
  </node>
  <node concept="1TIwiD" id="60E6kFOabYA">
    <property role="EcuMT" value="6929378786377514918" />
    <property role="TrG5h" value="AttrRef" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="3aRkDr26twt" role="1TKVEl">
      <property role="IQ2nx" value="3654480430089492509" />
      <property role="TrG5h" value="minLim" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3aRkDr26tww" role="1TKVEl">
      <property role="IQ2nx" value="3654480430089492512" />
      <property role="TrG5h" value="min" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3aRkDr26twy" role="1TKVEl">
      <property role="IQ2nx" value="3654480430089492514" />
      <property role="TrG5h" value="maxLim" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3aRkDr26twz" role="1TKVEl">
      <property role="IQ2nx" value="3654480430089492515" />
      <property role="TrG5h" value="max" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="3aRkDr26tw_" role="PzmwI">
      <ref role="PrY4T" node="3aRkDr26odN" resolve="AnnoType" />
    </node>
  </node>
  <node concept="1TIwiD" id="3aRkDr26o3z">
    <property role="EcuMT" value="3654480430089470179" />
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="IfPart" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="3aRkDr26o6Z" role="1TKVEi">
      <property role="IQ2ns" value="3654480430089470399" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="conditions" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="60E6kFO5hUZ" resolve="AttrCond" />
    </node>
  </node>
  <node concept="PlHQZ" id="3aRkDr26odN">
    <property role="TrG5h" value="AnnoType" />
    <property role="EcuMT" value="3654480430089470619" />
    <node concept="1TJgyi" id="3aRkDr26oAp" role="1TKVEl">
      <property role="IQ2nx" value="3654480430089472409" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3aRkDr26tm2">
    <property role="TrG5h" value="AnnotationCAP" />
    <property role="EcuMT" value="3654480430089462279" />
    <node concept="PrWs8" id="3aRkDr26mbv" role="PzmwI">
      <ref role="PrY4T" to="zs21:4MzzjozsKXg" resolve="Annotation" />
    </node>
  </node>
  <node concept="1TIwiD" id="3aRkDr26tp$">
    <property role="EcuMT" value="3654480430089492068" />
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="FixAttr" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="3aRkDr26tsX" role="1TKVEi">
      <property role="IQ2ns" value="3654480430089492285" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="attrRef" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="60E6kFOabYA" resolve="AttrRef" />
    </node>
  </node>
  <node concept="1TIwiD" id="3aRkDr26tt0">
    <property role="EcuMT" value="3654480430089492288" />
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="RolePathRefAttr" />
    <ref role="1TJDcQ" node="3aRkDr26tp$" resolve="FixAttr" />
    <node concept="1TJgyj" id="3aRkDr26twp" role="1TKVEi">
      <property role="IQ2ns" value="3654480430089492505" />
      <property role="20kJfa" value="rolePath" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="60E6kFO5hR$" resolve="RolePath" />
    </node>
  </node>
</model>

