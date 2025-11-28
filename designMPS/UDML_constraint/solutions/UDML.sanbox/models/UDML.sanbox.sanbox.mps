<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e63c8088-c2db-4bb5-a2fd-d4f6b3132568(UDML.sanbox.sanbox)">
  <persistence version="9" />
  <languages>
    <use id="d4f52fb2-2fbc-4883-a735-c12d5a16d76a" name="UDML.core" version="-1" />
    <use id="e4535475-0fce-43f8-9393-d918e19b04c7" name="UDML.DCSL" version="-1" />
    <use id="9b8883a2-743b-4f83-ab8e-072c718c70d0" name="UDML.asDiagram" version="-1" />
    <use id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout" version="0" />
    <use id="dc0833fc-3afb-454c-9aac-5ac3113b55db" name="UDML.RBAC" version="0" />
    <use id="f255ee86-8b35-4b79-b1ca-92fff98ff8dd" name="UDML.OCL" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="d4f52fb2-2fbc-4883-a735-c12d5a16d76a" name="UDML.core">
      <concept id="5522412831748763794" name="UDML.core.structure.Property" flags="ig" index="1JOzQ$" />
      <concept id="5522412831748781481" name="UDML.core.structure.Operation" flags="ig" index="1JOByv" />
      <concept id="5522412831748740667" name="UDML.core.structure.Class" flags="ig" index="1JOHGd">
        <child id="5522412831748803248" name="propertyUdml" index="1JOsu6" />
        <child id="5522412831748810049" name="operationUdml" index="1JOuxR" />
      </concept>
      <concept id="5522412831748669905" name="UDML.core.structure.DomainModel" flags="ng" index="1JOWNB">
        <child id="5522412831748710732" name="element" index="1JOQLU" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1201370618622" name="jetbrains.mps.baseLanguage.structure.Property" flags="ig" index="2RhdJD">
        <property id="1201371481316" name="propertyName" index="2RkwnN" />
        <child id="1201371521209" name="type" index="2RkE6I" />
        <child id="1201372378714" name="propertyImplementation" index="2RnVtd" />
      </concept>
      <concept id="1201372606839" name="jetbrains.mps.baseLanguage.structure.DefaultPropertyImplementation" flags="ng" index="2RoN1w">
        <child id="1202065356069" name="defaultGetAccessor" index="3wFrgM" />
        <child id="1202078082794" name="defaultSetAccessor" index="3xrYvX" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1202065242027" name="jetbrains.mps.baseLanguage.structure.DefaultGetAccessor" flags="ng" index="3wEZqW" />
      <concept id="1202077725299" name="jetbrains.mps.baseLanguage.structure.DefaultSetAccessor" flags="ng" index="3xqBd$">
        <child id="1202077744034" name="visibility" index="3xqFEP" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="f255ee86-8b35-4b79-b1ca-92fff98ff8dd" name="UDML.OCL">
      <concept id="6929378786377514918" name="UDML.OCL.structure.AttrRef" flags="ng" index="2k0ErG">
        <property id="3654480430089492509" name="minLim" index="3KFCEb" />
      </concept>
      <concept id="6929378786376228104" name="UDML.OCL.structure.AssocCls" flags="ng" index="2kfKh2">
        <property id="6929378786376825456" name="as1" index="2kd2cU" />
      </concept>
      <concept id="6929378786376228324" name="UDML.OCL.structure.RolePath" flags="ng" index="2kfKiI">
        <property id="6929378786377305548" name="r1" index="2k3Ti6" />
        <property id="6929378786377305549" name="r2" index="2k3Ti7" />
      </concept>
      <concept id="6929378786376228543" name="UDML.OCL.structure.AttrCond" flags="ng" index="2kfKvP">
        <property id="6929378786376228765" name="matchStr" index="2kfKrn" />
        <property id="6929378786376228759" name="attr" index="2kfKrt" />
        <property id="3654480430089470401" name="matchAttr" index="3KFHdn" />
      </concept>
      <concept id="3207701966416028454" name="UDML.OCL.structure.Sumcontract" flags="ng" index="1h2azn">
        <property id="6929378786377354993" name="sumAttr" index="2k35uV" />
        <property id="3654480430091016162" name="sumAttr2" index="3Kx$lO" />
        <property id="3654480430091016161" name="sumAttr1" index="3Kx$lR" />
        <child id="6929378786376228991" name="assocCls" index="2kfN$P" />
        <child id="6929378786376229004" name="fixAttr" index="2kfNB6" />
        <child id="6929378786376228994" name="rolePath" index="2kfNB8" />
        <child id="6929378786376228997" name="collect" index="2kfNBf" />
        <child id="3654480430091016088" name="collect1" index="3Kx$ke" />
        <child id="3654480430091016160" name="collect2" index="3Kx$lQ" />
        <child id="3654480430089492060" name="ifPart" index="3KFCja" />
      </concept>
      <concept id="3654480430089492068" name="UDML.OCL.structure.FixAttr" flags="ng" index="3KFCjM">
        <child id="3654480430089492285" name="attrRef" index="3KFCmF" />
      </concept>
      <concept id="3654480430089492288" name="UDML.OCL.structure.RolePathRefAttr" flags="ng" index="3KFCnm">
        <child id="3654480430089492505" name="rolePath" index="3KFCEf" />
      </concept>
      <concept id="3654480430089470619" name="UDML.OCL.structure.AnnoType" flags="ngI" index="3KFH0d">
        <property id="3654480430089472409" name="type" index="3KFHGf" />
      </concept>
      <concept id="3654480430089470179" name="UDML.OCL.structure.IfPart" flags="ng" index="3KFH9P">
        <child id="3654480430089470399" name="conditions" index="3KFHcD" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout">
      <concept id="6720495385597071406" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Box" flags="ng" index="gqqVs">
        <property id="6720495385597071504" name="bounds_height" index="gqqTy" />
        <property id="6720495385597071502" name="bounds_y" index="gqqTW" />
        <property id="6720495385597071503" name="bounds_width" index="gqqTX" />
        <property id="6720495385597071501" name="bounds_x" index="gqqTZ" />
        <property id="4583510071007917016" name="portTransform" index="TgtnS" />
      </concept>
      <concept id="2319506556913310852" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Connection" flags="ng" index="2VclpC" />
      <concept id="8963411245960991886" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMap" flags="ng" index="37mRI7">
        <child id="8963411245960991904" name="entries" index="37mRID" />
      </concept>
      <concept id="8963411245960991903" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMapEntry" flags="ng" index="37mRIm">
        <property id="8963411245960998400" name="key" index="37mO49" />
        <child id="8963411245960998404" name="value" index="37mO4d" />
      </concept>
    </language>
  </registry>
  <node concept="1JOWNB" id="60E6kFO3yy5">
    <property role="TrG5h" value="CourseMan" />
    <node concept="1JOHGd" id="60E6kFO3y_s" role="1JOQLU">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Student" />
      <node concept="1JOByv" id="60E6kFO3yFl" role="1JOuxR">
        <property role="TrG5h" value="Enrolments" />
        <node concept="3cqZAl" id="60E6kFO3yFm" role="3clF45" />
        <node concept="3Tm1VV" id="60E6kFO3yFn" role="1B3o_S" />
        <node concept="3clFbS" id="60E6kFO3yFo" role="3clF47" />
      </node>
      <node concept="1JOByv" id="60E6kFO3$bZ" role="1JOuxR">
        <property role="TrG5h" value="Enrolmentsln" />
        <node concept="3cqZAl" id="60E6kFO3$c0" role="3clF45" />
        <node concept="3Tm1VV" id="60E6kFO3$c1" role="1B3o_S" />
        <node concept="3clFbS" id="60E6kFO3$c2" role="3clF47" />
      </node>
      <node concept="1JOzQ$" id="60E6kFO3yDg" role="1JOsu6">
        <property role="2RkwnN" value="id" />
        <node concept="3Tm1VV" id="60E6kFO3yDh" role="1B3o_S" />
        <node concept="2RoN1w" id="60E6kFO3yDi" role="2RnVtd">
          <node concept="3wEZqW" id="60E6kFO3yDj" role="3wFrgM" />
          <node concept="3xqBd$" id="60E6kFO3yDk" role="3xrYvX">
            <node concept="3Tm6S6" id="60E6kFO3yDl" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="60E6kFO3zNV" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="60E6kFO3yDK" role="1JOsu6">
        <property role="2RkwnN" value="name" />
        <node concept="3Tm1VV" id="60E6kFO3yDL" role="1B3o_S" />
        <node concept="2RoN1w" id="60E6kFO3yDM" role="2RnVtd">
          <node concept="3wEZqW" id="60E6kFO3yDN" role="3wFrgM" />
          <node concept="3xqBd$" id="60E6kFO3yDO" role="3xrYvX">
            <node concept="3Tm6S6" id="60E6kFO3yDP" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="60E6kFO3zNP" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="60E6kFO3yEt" role="1JOsu6">
        <property role="2RkwnN" value="email " />
        <node concept="3Tm1VV" id="60E6kFO3yEu" role="1B3o_S" />
        <node concept="2RoN1w" id="60E6kFO3yEv" role="2RnVtd">
          <node concept="3wEZqW" id="60E6kFO3yEw" role="3wFrgM" />
          <node concept="3xqBd$" id="60E6kFO3yEx" role="3xrYvX">
            <node concept="3Tm6S6" id="60E6kFO3yEy" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="60E6kFO3zNx" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="60E6kFO3yET" role="1JOsu6">
        <property role="2RkwnN" value="status" />
        <node concept="3Tm1VV" id="60E6kFO3yEU" role="1B3o_S" />
        <node concept="2RoN1w" id="60E6kFO3yEV" role="2RnVtd">
          <node concept="3wEZqW" id="60E6kFO3yEW" role="3wFrgM" />
          <node concept="3xqBd$" id="60E6kFO3yEX" role="3xrYvX">
            <node concept="3Tm6S6" id="60E6kFO3yEY" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="60E6kFO3yFf" role="2RkE6I" />
      </node>
      <node concept="3Tm1VV" id="60E6kFO3y_t" role="1B3o_S" />
    </node>
    <node concept="37mRI7" id="60E6kFO3$Bh" role="lGtFl">
      <node concept="37mRIm" id="60E6kFO3$Bi" role="37mRID">
        <property role="37mO49" value="6929378786375772508" />
        <node concept="gqqVs" id="60E6kFO3$Bg" role="37mO4d">
          <property role="gqqTZ" value="20.0" />
          <property role="gqqTW" value="6.0" />
          <property role="gqqTX" value="150.0" />
          <property role="gqqTy" value="161.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="60E6kFO3$EP" role="37mRID">
        <property role="37mO49" value="6929378786375780819" />
        <node concept="gqqVs" id="60E6kFO3$EO" role="37mO4d">
          <property role="gqqTZ" value="261.0" />
          <property role="gqqTW" value="48.0" />
          <property role="gqqTX" value="166.0" />
          <property role="gqqTy" value="119.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="60E6kFO4uPA" role="37mRID">
        <property role="37mO49" value="6929378786376019300" />
        <node concept="gqqVs" id="60E6kFO4uP_" role="37mO4d">
          <property role="gqqTZ" value="20.0" />
          <property role="gqqTW" value="187.0" />
          <property role="gqqTX" value="356.0" />
          <property role="gqqTy" value="286.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="60E6kFO4Di6" role="37mRID">
        <property role="37mO49" value="6929378786376019303" />
        <node concept="2VclpC" id="60E6kFO4Di5" role="37mO4d" />
      </node>
      <node concept="37mRIm" id="60E6kFOc3pW" role="37mRID">
        <property role="37mO49" value="6929378786378004088" />
        <node concept="gqqVs" id="60E6kFOc3pV" role="37mO4d">
          <property role="gqqTZ" value="545.0" />
          <property role="gqqTW" value="208.0" />
          <property role="gqqTX" value="484.0" />
          <property role="gqqTy" value="286.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3aRkDr28lvl" role="37mRID">
        <property role="37mO49" value="3654480430089983953" />
        <node concept="gqqVs" id="3aRkDr28lvk" role="37mO4d">
          <property role="gqqTZ" value="32.0" />
          <property role="gqqTW" value="206.0" />
          <property role="gqqTX" value="476.0" />
          <property role="gqqTy" value="286.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3aRkDr2aOCJ" role="37mRID">
        <property role="37mO49" value="3654480430090635819" />
        <node concept="gqqVs" id="3aRkDr2aOCI" role="37mO4d">
          <property role="gqqTZ" value="573.0" />
          <property role="gqqTW" value="6.0" />
          <property role="gqqTX" value="476.0" />
          <property role="gqqTy" value="286.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3aRkDr2chtP" role="37mRID">
        <property role="37mO49" value="3654480430091016049" />
        <node concept="gqqVs" id="3aRkDr2chtO" role="37mO4d">
          <property role="gqqTZ" value="20.0" />
          <property role="gqqTW" value="515.0" />
          <property role="gqqTX" value="476.0" />
          <property role="gqqTy" value="475.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3aRkDr2e_DW" role="37mRID">
        <property role="37mO49" value="3654480430091623032" />
        <node concept="gqqVs" id="3aRkDr2e_DV" role="37mO4d">
          <property role="gqqTZ" value="548.0" />
          <property role="gqqTW" value="343.0" />
          <property role="gqqTX" value="476.0" />
          <property role="gqqTy" value="328.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3aRkDr2e_F3" role="37mRID">
        <property role="37mO49" value="3654480430091623103" />
        <node concept="gqqVs" id="3aRkDr2e_F2" role="37mO4d">
          <property role="gqqTZ" value="536.0" />
          <property role="gqqTW" value="696.0" />
          <property role="gqqTX" value="488.0" />
          <property role="gqqTy" value="307.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3aRkDr2glph" role="37mRID">
        <property role="37mO49" value="3654480430092080685" />
        <node concept="gqqVs" id="3aRkDr2glpg" role="37mO4d">
          <property role="gqqTZ" value="20.0" />
          <property role="gqqTW" value="1007.0" />
          <property role="gqqTX" value="488.0" />
          <property role="gqqTy" value="265.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3aRkDr2glpU" role="37mRID">
        <property role="37mO49" value="3654480430092080758" />
        <node concept="gqqVs" id="3aRkDr2glpT" role="37mO4d">
          <property role="gqqTZ" value="536.0" />
          <property role="gqqTW" value="1023.0" />
          <property role="gqqTX" value="476.0" />
          <property role="gqqTy" value="286.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
    </node>
    <node concept="1JOHGd" id="60E6kFO3$Bj" role="1JOQLU">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="CourseOffering" />
      <node concept="1JOByv" id="60E6kFO3$Hu" role="1JOuxR">
        <property role="TrG5h" value="EnrolmentCount" />
        <node concept="3cqZAl" id="60E6kFO3$Hv" role="3clF45" />
        <node concept="3Tm1VV" id="60E6kFO3$Hw" role="1B3o_S" />
        <node concept="3clFbS" id="60E6kFO3$Hx" role="3clF47" />
      </node>
      <node concept="1JOzQ$" id="60E6kFO3$F$" role="1JOsu6">
        <property role="2RkwnN" value="id" />
        <node concept="3Tm1VV" id="60E6kFO3$F_" role="1B3o_S" />
        <node concept="2RoN1w" id="60E6kFO3$FA" role="2RnVtd">
          <node concept="3wEZqW" id="60E6kFO3$FB" role="3wFrgM" />
          <node concept="3xqBd$" id="60E6kFO3$FC" role="3xrYvX">
            <node concept="3Tm6S6" id="60E6kFO3$FD" role="3xqFEP" />
          </node>
        </node>
        <node concept="3uibUv" id="60E6kFO3$FU" role="2RkE6I">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="1JOzQ$" id="60E6kFO3$G0" role="1JOsu6">
        <property role="2RkwnN" value="schedule" />
        <node concept="3Tm1VV" id="60E6kFO3$G1" role="1B3o_S" />
        <node concept="2RoN1w" id="60E6kFO3$G2" role="2RnVtd">
          <node concept="3wEZqW" id="60E6kFO3$G3" role="3wFrgM" />
          <node concept="3xqBd$" id="60E6kFO3$G4" role="3xrYvX">
            <node concept="3Tm6S6" id="60E6kFO3$G5" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="60E6kFO3$Gu" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="60E6kFO3$GY" role="1JOsu6">
        <property role="2RkwnN" value="room" />
        <node concept="3Tm1VV" id="60E6kFO3$GZ" role="1B3o_S" />
        <node concept="2RoN1w" id="60E6kFO3$H0" role="2RnVtd">
          <node concept="3wEZqW" id="60E6kFO3$H1" role="3wFrgM" />
          <node concept="3xqBd$" id="60E6kFO3$H2" role="3xrYvX">
            <node concept="3Tm6S6" id="60E6kFO3$H3" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="60E6kFO3$Ho" role="2RkE6I" />
      </node>
      <node concept="3Tm1VV" id="60E6kFO3$Bk" role="1B3o_S" />
    </node>
    <node concept="1h2azn" id="3aRkDr28lvh" role="1JOQLU">
      <property role="TrG5h" value="cm01_CoreCreditsRequirement" />
      <property role="3KFHGf" value="1" />
      <property role="2k35uV" value="credits" />
      <node concept="2kfKiI" id="3aRkDr28lvi" role="2kfNB8">
        <property role="3KFHGf" value="2" />
        <property role="2k3Ti6" value="offering" />
        <property role="2k3Ti7" value="module" />
      </node>
      <node concept="2kfKvP" id="3aRkDr28lvj" role="2kfNBf">
        <property role="3KFHGf" value="1" />
        <property role="2kfKrt" value="grade" />
      </node>
      <node concept="2kfKvP" id="3aRkDr28lK5" role="2kfNBf">
        <property role="3KFHGf" value="2" />
        <property role="2kfKrt" value="type" />
        <property role="2kfKrn" value="CORE" />
      </node>
      <node concept="2kfKh2" id="3aRkDr28lvm" role="2kfN$P">
        <property role="3KFHGf" value="1" />
        <property role="2kd2cU" value="Enrolment" />
      </node>
      <node concept="3KFCnm" id="3aRkDr29$Pq" role="2kfNB6">
        <node concept="2kfKiI" id="3aRkDr29$Pr" role="3KFCEf">
          <property role="3KFHGf" value="2" />
          <property role="2k3Ti6" value="programEnrolment" />
          <property role="2k3Ti7" value="program" />
        </node>
        <node concept="2k0ErG" id="3aRkDr29$Ps" role="3KFCmF">
          <property role="3KFCEb" value="minCoreCredits" />
        </node>
      </node>
    </node>
    <node concept="1h2azn" id="3aRkDr2aOCF" role="1JOQLU">
      <property role="TrG5h" value="cm02_TotalCreditsRequirement" />
      <property role="3KFHGf" value="2" />
      <property role="2k35uV" value="credits" />
      <node concept="2kfKiI" id="3aRkDr2aOCG" role="2kfNB8">
        <property role="3KFHGf" value="2" />
        <property role="2k3Ti6" value="offering" />
        <property role="2k3Ti7" value="module" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2aOCH" role="2kfNBf">
        <property role="3KFHGf" value="1" />
        <property role="2kfKrt" value="grade" />
      </node>
      <node concept="2kfKh2" id="3aRkDr2aOCK" role="2kfN$P">
        <property role="3KFHGf" value="1" />
        <property role="2kd2cU" value="Enrolment" />
      </node>
      <node concept="3KFH9P" id="3aRkDr2bsLV" role="3KFCja">
        <node concept="2kfKvP" id="3aRkDr2bsLW" role="3KFHcD">
          <property role="3KFHGf" value="3" />
          <property role="2kfKrt" value="status" />
          <property role="2kfKrn" value="GRADUATED" />
        </node>
      </node>
      <node concept="3KFCnm" id="3aRkDr2chtI" role="2kfNB6">
        <node concept="2kfKiI" id="3aRkDr2chtJ" role="3KFCEf">
          <property role="3KFHGf" value="2" />
          <property role="2k3Ti6" value="programEnrolment" />
          <property role="2k3Ti7" value="program" />
        </node>
        <node concept="2k0ErG" id="3aRkDr2chtK" role="3KFCmF">
          <property role="3KFCEb" value="minTotalCredits" />
        </node>
      </node>
    </node>
    <node concept="1h2azn" id="3aRkDr2chtL" role="1JOQLU">
      <property role="TrG5h" value="cm03_total" />
      <property role="3KFHGf" value="3" />
      <property role="2k35uV" value="credits" />
      <property role="3Kx$lR" value="credits" />
      <property role="3Kx$lO" value="credits" />
      <node concept="2kfKiI" id="3aRkDr2chtM" role="2kfNB8">
        <property role="3KFHGf" value="2" />
        <property role="2k3Ti6" value="offering" />
        <property role="2k3Ti7" value="module" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2chtN" role="2kfNBf">
        <property role="3KFHGf" value="1" />
        <property role="2kfKrt" value="grade" />
      </node>
      <node concept="2kfKh2" id="3aRkDr2chtQ" role="2kfN$P">
        <property role="3KFHGf" value="1" />
        <property role="2kd2cU" value="Enrolment" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2e_Di" role="3Kx$ke">
        <property role="3KFHGf" value="1" />
        <property role="2kfKrt" value="grade" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2e_Dj" role="3Kx$ke">
        <property role="3KFHGf" value="3" />
        <property role="2kfKrt" value="type" />
        <property role="2kfKrn" value="CORE" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2e_Dk" role="3Kx$lQ">
        <property role="3KFHGf" value="1" />
        <property role="2kfKrt" value="grade" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2e_DP" role="3Kx$lQ">
        <property role="3KFHGf" value="2" />
        <property role="2kfKrt" value="type" />
        <property role="2kfKrn" value="ELECTIVE" />
      </node>
      <node concept="3KFCjM" id="3aRkDr2e_DQ" role="2kfNB6">
        <node concept="2k0ErG" id="3aRkDr2e_DR" role="3KFCmF" />
      </node>
    </node>
    <node concept="1h2azn" id="3aRkDr2e_DS" role="1JOQLU">
      <property role="TrG5h" value="cm04_total" />
      <property role="3KFHGf" value="4" />
      <property role="2k35uV" value="credits" />
      <property role="3Kx$lR" value="credits" />
      <node concept="2kfKiI" id="3aRkDr2e_DT" role="2kfNB8">
        <property role="3KFHGf" value="2" />
        <property role="2k3Ti6" value="offering" />
        <property role="2k3Ti7" value="module" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2e_DU" role="2kfNBf">
        <property role="3KFHGf" value="1" />
        <property role="2kfKrt" value="grade" />
      </node>
      <node concept="2kfKh2" id="3aRkDr2e_Et" role="2kfN$P">
        <property role="3KFHGf" value="1" />
        <property role="2kd2cU" value="Enrolment" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2e_EY" role="3Kx$ke">
        <property role="3KFHGf" value="1" />
        <property role="2kfKrt" value="grade" />
      </node>
    </node>
    <node concept="1h2azn" id="3aRkDr2e_EZ" role="1JOQLU">
      <property role="TrG5h" value="cm05_ElectiveFloorAtGraduation" />
      <property role="3KFHGf" value="1" />
      <property role="2k35uV" value="credits" />
      <node concept="2kfKiI" id="3aRkDr2e_F0" role="2kfNB8">
        <property role="3KFHGf" value="2" />
        <property role="2k3Ti6" value="offering" />
        <property role="2k3Ti7" value="module" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2e_F1" role="2kfNBf">
        <property role="3KFHGf" value="3" />
        <property role="2kfKrt" value="status" />
        <property role="2kfKrn" value="GRADUATED" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2e_F5" role="2kfNBf">
        <property role="3KFHGf" value="1" />
        <property role="2kfKrt" value="grade" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2e_F6" role="2kfNBf">
        <property role="3KFHGf" value="3" />
        <property role="2kfKrt" value="type" />
        <property role="2kfKrn" value="ELECTIVE" />
      </node>
      <node concept="2kfKh2" id="3aRkDr2e_F4" role="2kfN$P">
        <property role="3KFHGf" value="1" />
        <property role="2kd2cU" value="Enrolment" />
      </node>
      <node concept="3KFCnm" id="3aRkDr2e_Ff" role="2kfNB6">
        <node concept="2kfKiI" id="3aRkDr2e_Fg" role="3KFCEf">
          <property role="3KFHGf" value="2" />
          <property role="2k3Ti6" value="programEnrolment" />
          <property role="2k3Ti7" value="program" />
        </node>
        <node concept="2k0ErG" id="3aRkDr2e_Fh" role="3KFCmF">
          <property role="3KFCEb" value="result" />
        </node>
      </node>
    </node>
    <node concept="1h2azn" id="3aRkDr2gloH" role="1JOQLU">
      <property role="TrG5h" value="cm06_AcademicProbationRules" />
      <property role="3KFHGf" value="1" />
      <property role="2k35uV" value="credits" />
      <node concept="2kfKiI" id="3aRkDr2gloI" role="2kfNB8">
        <property role="3KFHGf" value="2" />
        <property role="2k3Ti6" value="offering" />
        <property role="2k3Ti7" value="module" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2gloJ" role="2kfNBf">
        <property role="3KFHGf" value="3" />
        <property role="2kfKrt" value="status" />
        <property role="2kfKrn" value="PROBATION" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2glpN" role="2kfNBf">
        <property role="3KFHGf" value="3" />
        <property role="2kfKrt" value="status" />
        <property role="2kfKrn" value="ACTIVE" />
      </node>
      <node concept="2kfKh2" id="3aRkDr2glpi" role="2kfN$P">
        <property role="3KFHGf" value="1" />
        <property role="2kd2cU" value="Enrolment" />
      </node>
      <node concept="3KFCjM" id="3aRkDr2glpO" role="2kfNB6">
        <node concept="2k0ErG" id="3aRkDr2glpP" role="3KFCmF" />
      </node>
    </node>
    <node concept="1h2azn" id="3aRkDr2glpQ" role="1JOQLU">
      <property role="TrG5h" value="cm07_CurrentTermCreditsLimit" />
      <property role="3KFHGf" value="1" />
      <property role="2k35uV" value="credits" />
      <node concept="2kfKiI" id="3aRkDr2glpR" role="2kfNB8">
        <property role="3KFHGf" value="2" />
        <property role="2k3Ti6" value="offering" />
        <property role="2k3Ti7" value="module" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2glpS" role="2kfNBf">
        <property role="3KFHGf" value="4" />
        <property role="2kfKrt" value="term" />
        <property role="3KFHdn" value="curTerm" />
      </node>
      <node concept="2kfKvP" id="3aRkDr2hhYd" role="2kfNBf">
        <property role="3KFHGf" value="3" />
        <property role="2kfKrt" value="status" />
        <property role="2kfKrn" value="ACTIVE" />
      </node>
      <node concept="2kfKh2" id="3aRkDr2glpV" role="2kfN$P">
        <property role="3KFHGf" value="1" />
        <property role="2kd2cU" value="Enrolment" />
      </node>
      <node concept="3KFCnm" id="3aRkDr2hhYe" role="2kfNB6">
        <node concept="2kfKiI" id="3aRkDr2hhYf" role="3KFCEf">
          <property role="3KFHGf" value="2" />
          <property role="2k3Ti6" value="programEnrolment" />
          <property role="2k3Ti7" value="program" />
        </node>
        <node concept="2k0ErG" id="3aRkDr2hhYg" role="3KFCmF">
          <property role="3KFCEb" value="maxCreditsPerTerm" />
        </node>
      </node>
    </node>
  </node>
</model>

