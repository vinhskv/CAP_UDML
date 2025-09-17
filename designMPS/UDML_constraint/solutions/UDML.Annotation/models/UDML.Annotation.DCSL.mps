<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a69e64b7-584b-4285-8b0a-31848c7d97a8(UDML.Annotation.DCSL)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="ouhv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.annotation(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1188206331916" name="jetbrains.mps.baseLanguage.structure.Annotation" flags="ig" index="2ABs$o" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <reference id="1188214555875" name="key" index="2B6OnR" />
        <child id="1188214607812" name="value" index="2B70Vg" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2ABs$o" id="7sId_oaG6mY">
    <property role="TrG5h" value="Annotation" />
    <node concept="3Tm1VV" id="7sId_oaG6n0" role="1B3o_S" />
    <node concept="2AHcQZ" id="7sId_oaGiNc" role="2AJF6D">
      <ref role="2AI5Lk" to="ouhv:~Target" resolve="Target" />
      <node concept="2B6LJw" id="7sId_oaGiNd" role="2B76xF">
        <ref role="2B6OnR" to="ouhv:~Target.value()" resolve="value" />
        <node concept="2BsdOp" id="7sId_oaGiNe" role="2B70Vg">
          <node concept="Rm8GO" id="7sId_oaGiNf" role="2BsfMF">
            <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
            <ref role="Rm8GQ" to="ouhv:~ElementType.CONSTRUCTOR" resolve="CONSTRUCTOR" />
          </node>
          <node concept="Rm8GO" id="7sId_oaGiNg" role="2BsfMF">
            <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
            <ref role="Rm8GQ" to="ouhv:~ElementType.FIELD" resolve="FIELD" />
          </node>
          <node concept="Rm8GO" id="7sId_oaGiNh" role="2BsfMF">
            <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
            <ref role="Rm8GQ" to="ouhv:~ElementType.LOCAL_VARIABLE" resolve="LOCAL_VARIABLE" />
          </node>
          <node concept="Rm8GO" id="7sId_oaGiNi" role="2BsfMF">
            <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
            <ref role="Rm8GQ" to="ouhv:~ElementType.METHOD" resolve="METHOD" />
          </node>
          <node concept="Rm8GO" id="7sId_oaGiNj" role="2BsfMF">
            <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
            <ref role="Rm8GQ" to="ouhv:~ElementType.PACKAGE" resolve="PACKAGE" />
          </node>
          <node concept="Rm8GO" id="7sId_oaGiNk" role="2BsfMF">
            <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
            <ref role="Rm8GQ" to="ouhv:~ElementType.MODULE" resolve="MODULE" />
          </node>
          <node concept="Rm8GO" id="7sId_oaGiNl" role="2BsfMF">
            <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
            <ref role="Rm8GQ" to="ouhv:~ElementType.PARAMETER" resolve="PARAMETER" />
          </node>
          <node concept="Rm8GO" id="7sId_oaGiNm" role="2BsfMF">
            <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
            <ref role="Rm8GQ" to="ouhv:~ElementType.TYPE" resolve="TYPE" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

