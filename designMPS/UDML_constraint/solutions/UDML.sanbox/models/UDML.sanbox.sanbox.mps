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
      <concept id="5522412831748908000" name="UDML.core.structure.MemberEnd" flags="ng" index="1JO6Vm">
        <property id="2978842563274209884" name="nameLL" index="1K$Kfr" />
        <property id="2978842563274209883" name="role" index="1K$Kfs" />
        <reference id="2978842563274209885" name="memberEnd" index="1K$Kfq" />
        <child id="2978842563288364509" name="property" index="1NMKLq" />
      </concept>
      <concept id="5522412831748863111" name="UDML.core.structure.RefAnnotation" flags="ng" index="1JObAL">
        <reference id="5522412831748895759" name="annotation" index="1JO3$T" />
      </concept>
      <concept id="5522412831748845417" name="UDML.core.structure.Annotation" flags="ngI" index="1JOm9v">
        <reference id="5522412831748856310" name="target" index="1JO9j0" />
      </concept>
      <concept id="5522412831748763794" name="UDML.core.structure.Property" flags="ig" index="1JOzQ$" />
      <concept id="5522412831748781481" name="UDML.core.structure.Operation" flags="ig" index="1JOByv" />
      <concept id="5522412831748740667" name="UDML.core.structure.Class" flags="ig" index="1JOHGd">
        <child id="5522412831748803248" name="propertyUdml" index="1JOsu6" />
        <child id="5522412831748810049" name="operationUdml" index="1JOuxR" />
      </concept>
      <concept id="5522412831748669905" name="UDML.core.structure.DomainModel" flags="ng" index="1JOWNB">
        <child id="5522412831748710732" name="element" index="1JOQLU" />
      </concept>
      <concept id="5522412831748684872" name="UDML.core.structure.Annotable" flags="ngI" index="1JOZ5Y">
        <child id="5522412831749327142" name="refAnnotation" index="1JQsgg" />
      </concept>
      <concept id="5522412831748985551" name="UDML.core.structure.Association" flags="ng" index="1JPDZT" />
      <concept id="5522412831748970584" name="UDML.core.structure.RelationShip" flags="ngI" index="1JPPlI">
        <reference id="3207701966412366681" name="label" index="1hOcyC" />
        <child id="4183952400186618834" name="MemberEndTarget" index="1wl55o" />
        <child id="4183952400186618833" name="MemberEndSource" index="1wl55r" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
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
    <language id="e4535475-0fce-43f8-9393-d918e19b04c7" name="UDML.DCSL">
      <concept id="4447153959586156757" name="UDML.DCSL.structure.Associate" flags="ng" index="3Fbqoz">
        <property id="1730163904888845013" name="cardMin" index="226fgM" />
        <property id="1730163904888845102" name="cardMax" index="226fn9" />
        <reference id="1730163904888845690" name="type" index="226fet" />
      </concept>
      <concept id="4447153959586156739" name="UDML.DCSL.structure.DClass" flags="ng" index="3FbqoP">
        <property id="9069817326574784326" name="mutable" index="25WzAb" />
      </concept>
      <concept id="4447153959586156748" name="UDML.DCSL.structure.DOtp" flags="ng" index="3FbqoU">
        <property id="9069817326574784331" name="effect" index="25WzA6" />
        <property id="9069817326574784330" name="requires" index="25WzA7" />
      </concept>
      <concept id="4447153959586156731" name="UDML.DCSL.structure.DAttr" flags="ng" index="3Fbqpd">
        <property id="9069817326574784317" name="min" index="25WzBK" />
        <property id="9069817326574784316" name="lenght" index="25WzBL" />
        <property id="9069817326574784319" name="max" index="25WzBM" />
        <property id="4447153959586169340" name="namedcsl" index="3Fb7sa" />
        <child id="4447153959586169339" name="type" index="3Fb7sd" />
      </concept>
      <concept id="4447153959586156715" name="UDML.DCSL.structure.DAssoc" flags="ng" index="3Fbqpt">
        <property id="4447153959586156724" name="ascType" index="3Fbqp2" />
        <property id="4447153959586156725" name="endType" index="3Fbqp3" />
        <child id="1730163904888948206" name="associate" index="226gc9" />
      </concept>
    </language>
    <language id="f255ee86-8b35-4b79-b1ca-92fff98ff8dd" name="UDML.OCL">
      <concept id="3207701966416028454" name="UDML.OCL.structure.Sumcontract" flags="ng" index="1h2azn">
        <property id="5102653530317812253" name="type" index="28F3p4" />
        <property id="3207701966416189152" name="p0" index="1h2LOh" />
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
      <concept id="2319506556913310852" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Connection" flags="ng" index="2VclpC">
        <child id="4767615435799372763" name="labels" index="3ul5Gx" />
      </concept>
      <concept id="2319506556913310727" name="de.itemis.mps.editor.diagram.layout.structure.Point" flags="ng" index="2VclrF">
        <property id="2319506556913310861" name="x" index="2Vclpx" />
        <property id="2319506556913310863" name="y" index="2Vclpz" />
      </concept>
      <concept id="8963411245960991886" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMap" flags="ng" index="37mRI7">
        <child id="8963411245960991904" name="entries" index="37mRID" />
      </concept>
      <concept id="8963411245960991903" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMapEntry" flags="ng" index="37mRIm">
        <property id="8963411245960998400" name="key" index="37mO49" />
        <child id="8963411245960998404" name="value" index="37mO4d" />
      </concept>
      <concept id="4767615435799372731" name="de.itemis.mps.editor.diagram.layout.structure.Layout_EdgeLabel" flags="ng" index="3ul5H1">
        <property id="4767615435799372759" name="type" index="3ul5GH" />
        <child id="4767615435799372761" name="position" index="3ul5Gz" />
      </concept>
      <concept id="3253043142928125505" name="de.itemis.mps.editor.diagram.layout.structure.RelativePosition" flags="ng" index="3wpmZ1">
        <child id="3253043142928125557" name="referencePoint" index="3wpmZP" />
        <child id="3253043142928125559" name="offset" index="3wpmZR" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
    </language>
  </registry>
  <node concept="1JOWNB" id="2M42Z5XkVAc">
    <property role="TrG5h" value="Cap" />
    <node concept="1JOHGd" id="6L8LVVWR60Z" role="1JOQLU">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Student" />
      <node concept="1JOByv" id="4rgh5BetiIn" role="1JOuxR">
        <property role="TrG5h" value="name" />
        <node concept="37vLTG" id="4rgh5BetlxS" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="4rgh5BetlG5" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="4rgh5BetiIo" role="3clF45" />
        <node concept="3Tm1VV" id="4rgh5BetiIp" role="1B3o_S" />
        <node concept="3clFbS" id="4rgh5BetiIq" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="6L8LVVWR610" role="1B3o_S" />
      <node concept="1JOzQ$" id="6L8LVVWR61o" role="1JOsu6">
        <property role="2RkwnN" value="id" />
        <node concept="3Tm1VV" id="6L8LVVWR61p" role="1B3o_S" />
        <node concept="2RoN1w" id="6L8LVVWR61q" role="2RnVtd">
          <node concept="3wEZqW" id="6L8LVVWR61r" role="3wFrgM" />
          <node concept="3xqBd$" id="6L8LVVWR61s" role="3xrYvX">
            <node concept="3Tm6S6" id="6L8LVVWR61t" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="6L8LVVYqlEh" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="2M42Z5XyPja" role="1JOsu6">
        <property role="2RkwnN" value="lgv" />
        <node concept="3Tm1VV" id="2M42Z5XyPjb" role="1B3o_S" />
        <node concept="2RoN1w" id="2M42Z5XyPjc" role="2RnVtd">
          <node concept="3wEZqW" id="2M42Z5XyPjd" role="3wFrgM" />
          <node concept="3xqBd$" id="2M42Z5XyPje" role="3xrYvX">
            <node concept="3Tm6S6" id="2M42Z5XyPjf" role="3xqFEP" />
          </node>
        </node>
        <node concept="10P55v" id="2M42Z5XyPPg" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="2M42Z5XyPWL" role="1JOsu6">
        <property role="2RkwnN" value="p0" />
        <node concept="3Tm1VV" id="2M42Z5XyPWM" role="1B3o_S" />
        <node concept="2RoN1w" id="2M42Z5XyPWN" role="2RnVtd">
          <node concept="3wEZqW" id="2M42Z5XyPWO" role="3wFrgM" />
          <node concept="3xqBd$" id="2M42Z5XyPWP" role="3xrYvX">
            <node concept="3Tm6S6" id="2M42Z5XyPWQ" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="2M42Z5XyQoH" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="2M42Z5XyQvz" role="1JOsu6">
        <property role="2RkwnN" value="exm" />
        <node concept="3Tm1VV" id="2M42Z5XyQv$" role="1B3o_S" />
        <node concept="2RoN1w" id="2M42Z5XyQv_" role="2RnVtd">
          <node concept="3wEZqW" id="2M42Z5XyQvA" role="3wFrgM" />
          <node concept="3xqBd$" id="2M42Z5XyQvB" role="3xrYvX">
            <node concept="3Tm6S6" id="2M42Z5XyQvC" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="2M42Z5XyQHt" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="2M42Z5XyQOj" role="1JOsu6">
        <property role="2RkwnN" value="ndm" />
        <node concept="3Tm1VV" id="2M42Z5XyQOk" role="1B3o_S" />
        <node concept="2RoN1w" id="2M42Z5XyQOl" role="2RnVtd">
          <node concept="3wEZqW" id="2M42Z5XyQOm" role="3wFrgM" />
          <node concept="3xqBd$" id="2M42Z5XyQOn" role="3xrYvX">
            <node concept="3Tm6S6" id="2M42Z5XyQOo" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="2M42Z5XyQYR" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="2M42Z5XyR5H" role="1JOsu6">
        <property role="2RkwnN" value="m1" />
        <node concept="3Tm1VV" id="2M42Z5XyR5I" role="1B3o_S" />
        <node concept="2RoN1w" id="2M42Z5XyR5J" role="2RnVtd">
          <node concept="3wEZqW" id="2M42Z5XyR5K" role="3wFrgM" />
          <node concept="3xqBd$" id="2M42Z5XyR5L" role="3xrYvX">
            <node concept="3Tm6S6" id="2M42Z5XyR5M" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="2M42Z5XyWGv" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="2M42Z5XyRxh" role="1JOsu6">
        <property role="2RkwnN" value="m2" />
        <node concept="3Tm1VV" id="2M42Z5XyRxi" role="1B3o_S" />
        <node concept="2RoN1w" id="2M42Z5XyRxj" role="2RnVtd">
          <node concept="3wEZqW" id="2M42Z5XyRxk" role="3wFrgM" />
          <node concept="3xqBd$" id="2M42Z5XyRxl" role="3xrYvX">
            <node concept="3Tm6S6" id="2M42Z5XyRxm" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="2M42Z5XyWG$" role="2RkE6I" />
      </node>
      <node concept="1JObAL" id="2M42Z5Xz3zI" role="1JQsgg">
        <ref role="1JO3$T" node="2M42Z5Xzpno" resolve="Sumcontract" />
      </node>
    </node>
    <node concept="1JOHGd" id="6L8LVVYqlCJ" role="1JOQLU">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="SClass" />
      <node concept="3Tm1VV" id="6L8LVVYqlCK" role="1B3o_S" />
      <node concept="1JOzQ$" id="6L8LVVYqlDi" role="1JOsu6">
        <property role="2RkwnN" value="id" />
        <node concept="3Tm1VV" id="6L8LVVYqlDj" role="1B3o_S" />
        <node concept="2RoN1w" id="6L8LVVYqlDk" role="2RnVtd">
          <node concept="3wEZqW" id="6L8LVVYqlDl" role="3wFrgM" />
          <node concept="3xqBd$" id="6L8LVVYqlDm" role="3xrYvX">
            <node concept="3Tm6S6" id="6L8LVVYqlDn" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="6L8LVVYqlEH" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="6L8LVVYqlDR" role="1JOsu6">
        <property role="2RkwnN" value="Name" />
        <node concept="3Tm1VV" id="6L8LVVYqlDS" role="1B3o_S" />
        <node concept="2RoN1w" id="6L8LVVYqlDT" role="2RnVtd">
          <node concept="3wEZqW" id="6L8LVVYqlDU" role="3wFrgM" />
          <node concept="3xqBd$" id="6L8LVVYqlDV" role="3xrYvX">
            <node concept="3Tm6S6" id="6L8LVVYqlDW" role="3xqFEP" />
          </node>
        </node>
        <node concept="3uibUv" id="6L8LVVYqlEb" role="2RkE6I">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="1JOByv" id="2M42Z5X$Ko9" role="1JOuxR">
        <property role="TrG5h" value="getName" />
        <node concept="37vLTG" id="2M42Z5X$LaA" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="2M42Z5X$Lhq" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="2M42Z5X$Koa" role="3clF45" />
        <node concept="3Tm1VV" id="2M42Z5X$Kob" role="1B3o_S" />
        <node concept="3clFbS" id="2M42Z5X$Koc" role="3clF47" />
      </node>
      <node concept="1JOByv" id="2M42Z5X$Lv4" role="1JOuxR">
        <property role="TrG5h" value="getName" />
        <node concept="3cqZAl" id="2M42Z5X$Lv5" role="3clF45" />
        <node concept="3Tm1VV" id="2M42Z5X$Lv6" role="1B3o_S" />
        <node concept="3clFbS" id="2M42Z5X$Lv7" role="3clF47" />
      </node>
      <node concept="1JOByv" id="2M42Z5X$M10" role="1JOuxR">
        <property role="TrG5h" value="getName" />
        <node concept="3cqZAl" id="2M42Z5X$M11" role="3clF45" />
        <node concept="3Tm1VV" id="2M42Z5X$M12" role="1B3o_S" />
        <node concept="3clFbS" id="2M42Z5X$M13" role="3clF47" />
      </node>
    </node>
    <node concept="1JOHGd" id="6L8LVVYqlG3" role="1JOQLU">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="CourseModule" />
      <node concept="3Tm1VV" id="6L8LVVYqlG4" role="1B3o_S" />
      <node concept="1JOzQ$" id="6L8LVVYqlHo" role="1JOsu6">
        <property role="2RkwnN" value="cod" />
        <node concept="3Tm1VV" id="6L8LVVYqlHp" role="1B3o_S" />
        <node concept="2RoN1w" id="6L8LVVYqlHq" role="2RnVtd">
          <node concept="3wEZqW" id="6L8LVVYqlHr" role="3wFrgM" />
          <node concept="3xqBd$" id="6L8LVVYqlHs" role="3xrYvX">
            <node concept="3Tm6S6" id="6L8LVVYqlHt" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="2M42Z5XyW9_" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="6L8LVVYqlIk" role="1JOsu6">
        <property role="2RkwnN" value="v" />
        <node concept="3Tm1VV" id="6L8LVVYqlIl" role="1B3o_S" />
        <node concept="2RoN1w" id="6L8LVVYqlIm" role="2RnVtd">
          <node concept="3wEZqW" id="6L8LVVYqlIn" role="3wFrgM" />
          <node concept="3xqBd$" id="6L8LVVYqlIo" role="3xrYvX">
            <node concept="3Tm6S6" id="6L8LVVYqlIp" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="2M42Z5XyUM1" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="6L8LVVYqlIJ" role="1JOsu6">
        <property role="2RkwnN" value="p" />
        <node concept="3Tm1VV" id="6L8LVVYqlIK" role="1B3o_S" />
        <node concept="2RoN1w" id="6L8LVVYqlIL" role="2RnVtd">
          <node concept="3wEZqW" id="6L8LVVYqlIM" role="3wFrgM" />
          <node concept="3xqBd$" id="6L8LVVYqlIN" role="3xrYvX">
            <node concept="3Tm6S6" id="6L8LVVYqlIO" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="6L8LVVYqlJ6" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="6L8LVVYqlJg" role="1JOsu6">
        <property role="2RkwnN" value="prog" />
        <node concept="3Tm1VV" id="6L8LVVYqlJh" role="1B3o_S" />
        <node concept="2RoN1w" id="6L8LVVYqlJi" role="2RnVtd">
          <node concept="3wEZqW" id="6L8LVVYqlJj" role="3wFrgM" />
          <node concept="3xqBd$" id="6L8LVVYqlJk" role="3xrYvX">
            <node concept="3Tm6S6" id="6L8LVVYqlJl" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="2M42Z5XyWrG" role="2RkE6I" />
      </node>
    </node>
    <node concept="1JPDZT" id="6L8LVVYu0PV" role="1JOQLU">
      <node concept="1JO6Vm" id="6L8LVVYu0PL" role="1wl55r">
        <property role="1K$Kfr" value="student" />
        <ref role="1K$Kfq" node="6L8LVVYqlCJ" resolve="SClass" />
        <node concept="1JOzQ$" id="6L8LVVYu0PF" role="1NMKLq">
          <property role="2RkwnN" value="student" />
          <node concept="3Tm1VV" id="6L8LVVYu0PG" role="1B3o_S" />
          <node concept="2RoN1w" id="6L8LVVYu0PH" role="2RnVtd">
            <node concept="3wEZqW" id="6L8LVVYu0PI" role="3wFrgM" />
            <node concept="3xqBd$" id="6L8LVVYu0PJ" role="3xrYvX">
              <node concept="3Tm6S6" id="6L8LVVYu0PK" role="3xqFEP" />
            </node>
          </node>
          <node concept="3uibUv" id="6L8LVVYu0PT" role="2RkE6I">
            <ref role="3uigEE" node="6L8LVVWR60Z" resolve="Student" />
          </node>
        </node>
      </node>
      <node concept="1JO6Vm" id="6L8LVVYu0PS" role="1wl55o">
        <property role="1K$Kfr" value="sclass" />
        <ref role="1K$Kfq" node="6L8LVVWR60Z" resolve="Student" />
        <node concept="1JOzQ$" id="6L8LVVYu0PM" role="1NMKLq">
          <property role="2RkwnN" value="sclass" />
          <node concept="3Tm1VV" id="6L8LVVYu0PN" role="1B3o_S" />
          <node concept="2RoN1w" id="6L8LVVYu0PO" role="2RnVtd">
            <node concept="3wEZqW" id="6L8LVVYu0PP" role="3wFrgM" />
            <node concept="3xqBd$" id="6L8LVVYu0PQ" role="3xrYvX">
              <node concept="3Tm6S6" id="6L8LVVYu0PR" role="3xqFEP" />
            </node>
          </node>
          <node concept="3uibUv" id="6L8LVVYu0PU" role="2RkE6I">
            <ref role="3uigEE" node="6L8LVVYqlCJ" resolve="SClass" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1JPDZT" id="6L8LVVYu0QN" role="1JOQLU">
      <ref role="1hOcyC" node="4l3vHf$vSlP" resolve="Enrolment" />
      <node concept="1JO6Vm" id="6L8LVVYu0QD" role="1wl55r">
        <property role="1K$Kfr" value="r" />
        <property role="1K$Kfs" value="2_mYotp$WhU/oneToMany" />
        <ref role="1K$Kfq" node="6L8LVVWR60Z" resolve="Student" />
        <node concept="1JOzQ$" id="6L8LVVYu0Qz" role="1NMKLq">
          <property role="2RkwnN" value="r" />
          <node concept="3Tm1VV" id="6L8LVVYu0Q$" role="1B3o_S" />
          <node concept="2RoN1w" id="6L8LVVYu0Q_" role="2RnVtd">
            <node concept="3wEZqW" id="6L8LVVYu0QA" role="3wFrgM" />
            <node concept="3xqBd$" id="6L8LVVYu0QB" role="3xrYvX">
              <node concept="3Tm6S6" id="6L8LVVYu0QC" role="3xqFEP" />
            </node>
          </node>
          <node concept="3uibUv" id="6L8LVVYu0QL" role="2RkE6I">
            <ref role="3uigEE" node="6L8LVVYqlG3" resolve="CourseModule" />
          </node>
        </node>
      </node>
      <node concept="1JO6Vm" id="6L8LVVYu0QK" role="1wl55o">
        <property role="1K$Kfr" value="studentm" />
        <property role="1K$Kfs" value="2_mYotp$WhK/Many" />
        <ref role="1K$Kfq" node="6L8LVVYqlG3" resolve="CourseModule" />
        <node concept="1JOzQ$" id="6L8LVVYu0QE" role="1NMKLq">
          <property role="2RkwnN" value="studentm" />
          <node concept="3Tm1VV" id="6L8LVVYu0QF" role="1B3o_S" />
          <node concept="2RoN1w" id="6L8LVVYu0QG" role="2RnVtd">
            <node concept="3wEZqW" id="6L8LVVYu0QH" role="3wFrgM" />
            <node concept="3xqBd$" id="6L8LVVYu0QI" role="3xrYvX">
              <node concept="3Tm6S6" id="6L8LVVYu0QJ" role="3xqFEP" />
            </node>
          </node>
          <node concept="3uibUv" id="6L8LVVYu0QM" role="2RkE6I">
            <ref role="3uigEE" node="6L8LVVWR60Z" resolve="Student" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1JOHGd" id="4l3vHf$vSlP" role="1JOQLU">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Enrolment" />
      <node concept="1JOzQ$" id="4l3vHf$vSsN" role="1JOsu6">
        <property role="2RkwnN" value="id" />
        <node concept="3Tm1VV" id="4l3vHf$vSsO" role="1B3o_S" />
        <node concept="2RoN1w" id="4l3vHf$vSsP" role="2RnVtd">
          <node concept="3wEZqW" id="4l3vHf$vSsQ" role="3wFrgM" />
          <node concept="3xqBd$" id="4l3vHf$vSsR" role="3xrYvX">
            <node concept="3Tm6S6" id="4l3vHf$vSsS" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="4l3vHf$vSsT" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="4l3vHf$vSsU" role="1JOsu6">
        <property role="2RkwnN" value="wd" />
        <node concept="3Tm1VV" id="4l3vHf$vSsV" role="1B3o_S" />
        <node concept="2RoN1w" id="4l3vHf$vSsW" role="2RnVtd">
          <node concept="3wEZqW" id="4l3vHf$vSsX" role="3wFrgM" />
          <node concept="3xqBd$" id="4l3vHf$vSsY" role="3xrYvX">
            <node concept="3Tm6S6" id="4l3vHf$vSsZ" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="4l3vHf$vSt0" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="4l3vHf$vSt1" role="1JOsu6">
        <property role="2RkwnN" value="sme" />
        <node concept="3Tm1VV" id="4l3vHf$vSt2" role="1B3o_S" />
        <node concept="2RoN1w" id="4l3vHf$vSt3" role="2RnVtd">
          <node concept="3wEZqW" id="4l3vHf$vSt4" role="3wFrgM" />
          <node concept="3xqBd$" id="4l3vHf$vSt5" role="3xrYvX">
            <node concept="3Tm6S6" id="4l3vHf$vSt6" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="4l3vHf$vSt7" role="2RkE6I" />
      </node>
      <node concept="3Tm1VV" id="4l3vHf$vSlQ" role="1B3o_S" />
    </node>
    <node concept="37mRI7" id="2M42Z5Xl8Q3" role="lGtFl">
      <node concept="37mRIm" id="2M42Z5Xl8Q4" role="37mRID">
        <property role="37mO49" value="7802705977519398975" />
        <node concept="gqqVs" id="2M42Z5Xl8Q2" role="37mO4d">
          <property role="gqqTZ" value="344.0" />
          <property role="gqqTW" value="45.5" />
          <property role="gqqTX" value="172.0" />
          <property role="gqqTy" value="203.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2M42Z5Xl8Q6" role="37mRID">
        <property role="37mO49" value="7802705977545415215" />
        <node concept="gqqVs" id="2M42Z5Xl8Q5" role="37mO4d">
          <property role="gqqTZ" value="20.0" />
          <property role="gqqTW" value="65.0" />
          <property role="gqqTX" value="196.0" />
          <property role="gqqTy" value="140.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2M42Z5Xl8Q8" role="37mRID">
        <property role="37mO49" value="7802705977545415427" />
        <node concept="gqqVs" id="2M42Z5Xl8Q7" role="37mO4d">
          <property role="gqqTZ" value="765.0" />
          <property role="gqqTW" value="65.0" />
          <property role="gqqTX" value="132.0" />
          <property role="gqqTy" value="140.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2M42Z5Xl8Qa" role="37mRID">
        <property role="37mO49" value="7802705977546378619" />
        <node concept="2VclpC" id="2M42Z5Xl8Q9" role="37mO4d">
          <node concept="3ul5H1" id="2M42Z5Xl8Qb" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="2M42Z5Xl8Qc" role="3ul5Gz">
              <node concept="2VclrF" id="2M42Z5Xl8Qd" role="3wpmZR">
                <property role="2Vclpx" value="242.0" />
                <property role="2Vclpz" value="188.0" />
              </node>
              <node concept="2VclrF" id="2M42Z5Xl8Qe" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="2M42Z5Xl8Qf" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="2M42Z5Xl8Qg" role="3ul5Gz">
              <node concept="2VclrF" id="2M42Z5Xl8Qh" role="3wpmZR">
                <property role="2Vclpx" value="181.0" />
                <property role="2Vclpz" value="261.0" />
              </node>
              <node concept="2VclrF" id="2M42Z5Xl8Qi" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="2M42Z5Xnlhs" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="2M42Z5Xnlht" role="3ul5Gz">
              <node concept="2VclrF" id="2M42Z5Xnlhu" role="3wpmZR">
                <property role="2Vclpx" value="287.5" />
                <property role="2Vclpz" value="231.0" />
              </node>
              <node concept="2VclrF" id="2M42Z5Xnlhv" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="2M42Z5Xl8Qk" role="37mRID">
        <property role="37mO49" value="7802705977546378675" />
        <node concept="2VclpC" id="2M42Z5Xl8Qj" role="37mO4d">
          <node concept="3ul5H1" id="2M42Z5Xl8Ql" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="2M42Z5Xl8Qm" role="3ul5Gz">
              <node concept="2VclrF" id="2M42Z5Xl8Qn" role="3wpmZR">
                <property role="2Vclpx" value="691.0" />
                <property role="2Vclpz" value="108.5" />
              </node>
              <node concept="2VclrF" id="2M42Z5Xl8Qo" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="2M42Z5Xl8Qp" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="2M42Z5Xl8Qq" role="3ul5Gz">
              <node concept="2VclrF" id="2M42Z5Xl8Qr" role="3wpmZR">
                <property role="2Vclpx" value="549.0" />
                <property role="2Vclpz" value="155.5" />
              </node>
              <node concept="2VclrF" id="2M42Z5Xl8Qs" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="2M42Z5Xnlhw" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="2M42Z5Xnlhx" role="3ul5Gz">
              <node concept="2VclrF" id="2M42Z5Xnlhy" role="3wpmZR">
                <property role="2Vclpx" value="655.5" />
                <property role="2Vclpz" value="21.5" />
              </node>
              <node concept="2VclrF" id="2M42Z5Xnlhz" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="2M42Z5XnnpB" role="37mRID">
        <property role="37mO49" value="3207701966412930030" />
        <node concept="gqqVs" id="2M42Z5XnnpA" role="37mO4d">
          <property role="gqqTZ" value="673.0" />
          <property role="gqqTW" value="-24.0" />
          <property role="gqqTX" value="92.0" />
          <property role="gqqTy" value="119.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="2M42Z5Xzpx_" role="37mRID">
        <property role="37mO49" value="3207701966416090584" />
        <node concept="gqqVs" id="2M42Z5Xzpx$" role="37mO4d">
          <property role="gqqTZ" value="578.0" />
          <property role="gqqTW" value="244.0" />
          <property role="gqqTX" value="148.0" />
          <property role="gqqTy" value="76.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="4rgh5Bev1ld" role="37mRID">
        <property role="37mO49" value="3207701966416001262" />
        <node concept="2VclpC" id="4rgh5Bev1lc" role="37mO4d" />
      </node>
      <node concept="37mRIm" id="4l3vHf$tQs1" role="37mRID">
        <property role="37mO49" value="4990972260592138097" />
        <node concept="2VclpC" id="4l3vHf$tQs0" role="37mO4d" />
      </node>
      <node concept="37mRIm" id="4l3vHf$xq4L" role="37mRID">
        <property role="37mO49" value="4990972260593403253" />
        <node concept="gqqVs" id="4l3vHf$xq4K" role="37mO4d">
          <property role="gqqTZ" value="578.0" />
          <property role="gqqTW" value="-11.0" />
          <property role="gqqTX" value="92.0" />
          <property role="gqqTy" value="119.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
    </node>
    <node concept="1h2azn" id="2M42Z5Xzpno" role="1JOQLU">
      <property role="TrG5h" value="Sumcontract" />
      <property role="2bfB8j" value="true" />
      <property role="1h2LOh" value="0" />
      <property role="28F3p4" value="6" />
      <ref role="1JO9j0" node="6L8LVVWR60Z" resolve="Student" />
      <node concept="3Tm1VV" id="2M42Z5Xzpnq" role="1B3o_S" />
    </node>
  </node>
  <node concept="1JOWNB" id="5r9znOl8rhq">
    <property role="TrG5h" value="CourseMan" />
    <node concept="1JOHGd" id="5r9znOl8rrt" role="1JOQLU">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Student" />
      <node concept="3Tm1VV" id="5r9znOl8rru" role="1B3o_S" />
      <node concept="1JOzQ$" id="5r9znOl8rrv" role="1JOsu6">
        <property role="2RkwnN" value="id" />
        <node concept="3Tm1VV" id="5r9znOl8rrw" role="1B3o_S" />
        <node concept="2RoN1w" id="5r9znOl8rrx" role="2RnVtd">
          <node concept="3wEZqW" id="5r9znOl8rry" role="3wFrgM" />
          <node concept="3xqBd$" id="5r9znOl8rrz" role="3xrYvX">
            <node concept="3Tm6S6" id="5r9znOl8rr$" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="5r9znOl8rr_" role="2RkE6I" />
        <node concept="1JObAL" id="6L8LVVYu0Fs" role="1JQsgg">
          <ref role="1JO3$T" node="6L8LVVYqlKH" resolve="DAttr" />
        </node>
      </node>
      <node concept="1JOzQ$" id="6L8LVVWR61O" role="1JOsu6">
        <property role="2RkwnN" value="Name" />
        <node concept="3Tm1VV" id="6L8LVVWR61P" role="1B3o_S" />
        <node concept="2RoN1w" id="6L8LVVWR61Q" role="2RnVtd">
          <node concept="3wEZqW" id="6L8LVVWR61R" role="3wFrgM" />
          <node concept="3xqBd$" id="6L8LVVWR61S" role="3xrYvX">
            <node concept="3Tm6S6" id="6L8LVVWR61T" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="5r9znOl8s9s" role="2RkE6I" />
      </node>
      <node concept="1JOByv" id="6L8LVVYqlEV" role="1JOuxR">
        <property role="TrG5h" value="setName" />
        <node concept="37vLTG" id="6L8LVVYqlFr" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="6L8LVVYqlFC" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="6L8LVVYqlEW" role="3clF45" />
        <node concept="3Tm1VV" id="6L8LVVYqlEX" role="1B3o_S" />
        <node concept="3clFbS" id="6L8LVVYqlEY" role="3clF47" />
        <node concept="1JObAL" id="6L8LVVYu0MC" role="1JQsgg">
          <ref role="1JO3$T" node="6L8LVVYqlLc" resolve="DOtp" />
        </node>
      </node>
      <node concept="1JObAL" id="6L8LVVYu0Ee" role="1JQsgg">
        <ref role="1JO3$T" node="6L8LVVYqlJN" resolve="DClass" />
      </node>
    </node>
    <node concept="1JOHGd" id="5r9znOl8rrA" role="1JOQLU">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="SClass" />
      <node concept="3Tm1VV" id="5r9znOl8rrB" role="1B3o_S" />
      <node concept="1JOzQ$" id="5r9znOl8rrC" role="1JOsu6">
        <property role="2RkwnN" value="id" />
        <node concept="3Tm1VV" id="5r9znOl8rrD" role="1B3o_S" />
        <node concept="2RoN1w" id="5r9znOl8rrE" role="2RnVtd">
          <node concept="3wEZqW" id="5r9znOl8rrF" role="3wFrgM" />
          <node concept="3xqBd$" id="5r9znOl8rrG" role="3xrYvX">
            <node concept="3Tm6S6" id="5r9znOl8rrH" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="5r9znOl8rrI" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="5r9znOl8rrJ" role="1JOsu6">
        <property role="2RkwnN" value="Name" />
        <node concept="3Tm1VV" id="5r9znOl8rrK" role="1B3o_S" />
        <node concept="2RoN1w" id="5r9znOl8rrL" role="2RnVtd">
          <node concept="3wEZqW" id="5r9znOl8rrM" role="3wFrgM" />
          <node concept="3xqBd$" id="5r9znOl8rrN" role="3xrYvX">
            <node concept="3Tm6S6" id="5r9znOl8rrO" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="5r9znOl8sgj" role="2RkE6I" />
      </node>
    </node>
    <node concept="1JOHGd" id="5r9znOl8rrQ" role="1JOQLU">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="CourseModule" />
      <node concept="3Tm1VV" id="5r9znOl8rrR" role="1B3o_S" />
      <node concept="1JOzQ$" id="5r9znOl8rrS" role="1JOsu6">
        <property role="2RkwnN" value="id" />
        <node concept="3Tm1VV" id="5r9znOl8rrT" role="1B3o_S" />
        <node concept="2RoN1w" id="5r9znOl8rrU" role="2RnVtd">
          <node concept="3wEZqW" id="5r9znOl8rrV" role="3wFrgM" />
          <node concept="3xqBd$" id="5r9znOl8rrW" role="3xrYvX">
            <node concept="3Tm6S6" id="5r9znOl8rrX" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="6L8LVVYqlIa" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="5r9znOl8rrY" role="1JOsu6">
        <property role="2RkwnN" value="name" />
        <node concept="3Tm1VV" id="5r9znOl8rrZ" role="1B3o_S" />
        <node concept="2RoN1w" id="5r9znOl8rs0" role="2RnVtd">
          <node concept="3wEZqW" id="5r9znOl8rs1" role="3wFrgM" />
          <node concept="3xqBd$" id="5r9znOl8rs2" role="3xrYvX">
            <node concept="3Tm6S6" id="5r9znOl8rs3" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="6L8LVVYqlID" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="5r9znOl8rs4" role="1JOsu6">
        <property role="2RkwnN" value="semester" />
        <node concept="3Tm1VV" id="5r9znOl8rs5" role="1B3o_S" />
        <node concept="2RoN1w" id="5r9znOl8rs6" role="2RnVtd">
          <node concept="3wEZqW" id="5r9znOl8rs7" role="3wFrgM" />
          <node concept="3xqBd$" id="5r9znOl8rs8" role="3xrYvX">
            <node concept="3Tm6S6" id="5r9znOl8rs9" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="5r9znOl8rsa" role="2RkE6I" />
      </node>
      <node concept="1JOzQ$" id="5r9znOl8rsb" role="1JOsu6">
        <property role="2RkwnN" value="credits" />
        <node concept="3Tm1VV" id="5r9znOl8rsc" role="1B3o_S" />
        <node concept="2RoN1w" id="5r9znOl8rsd" role="2RnVtd">
          <node concept="3wEZqW" id="5r9znOl8rse" role="3wFrgM" />
          <node concept="3xqBd$" id="5r9znOl8rsf" role="3xrYvX">
            <node concept="3Tm6S6" id="5r9znOl8rsg" role="3xqFEP" />
          </node>
        </node>
        <node concept="10Oyi0" id="6L8LVVYqlJ_" role="2RkE6I" />
      </node>
    </node>
    <node concept="3FbqoP" id="6L8LVVYqlJN" role="1JOQLU">
      <property role="TrG5h" value="DClass" />
      <property role="25WzAb" value="true" />
      <ref role="1JO9j0" node="5r9znOl8rrt" resolve="Student" />
    </node>
    <node concept="3Fbqpd" id="6L8LVVYqlKH" role="1JOQLU">
      <property role="TrG5h" value="DAttr" />
      <property role="3Fb7sa" value="id" />
      <property role="25WzBL" value="30" />
      <property role="25WzBK" value="1" />
      <property role="25WzBM" value="30" />
      <ref role="1JO9j0" node="5r9znOl8rrv" resolve="id" />
      <node concept="10Oyi0" id="6L8LVVYqlKR" role="3Fb7sd" />
    </node>
    <node concept="3FbqoU" id="6L8LVVYqlLc" role="1JOQLU">
      <property role="TrG5h" value="DOtp" />
      <property role="25WzA7" value="&quot;&quot;" />
      <property role="25WzA6" value="&quot;&quot;" />
      <ref role="1JO9j0" node="6L8LVVYqlEV" resolve="setName" />
    </node>
    <node concept="3Fbqpt" id="6L8LVVYqlM9" role="1JOQLU">
      <property role="TrG5h" value="DAssoc" />
      <property role="3Fbqp2" value="1w2LIuq6bi3/One2Many" />
      <property role="3Fbqp3" value="1w2LIuq6buL/Many" />
      <ref role="1JO9j0" node="5r9znOl8rsG" resolve="student" />
      <node concept="3Fbqoz" id="6L8LVVYqlMk" role="226gc9">
        <property role="226fgM" value="1" />
        <property role="226fn9" value="30" />
        <ref role="226fet" node="5r9znOl8rrQ" resolve="CourseModule" />
      </node>
    </node>
    <node concept="1JPDZT" id="5r9znOl8rsh" role="1JOQLU">
      <node concept="1JO6Vm" id="5r9znOl8rsi" role="1wl55r">
        <property role="1K$Kfr" value="student" />
        <property role="1K$Kfs" value="2_mYotp$WhK/Many" />
        <ref role="1K$Kfq" node="5r9znOl8rrA" resolve="SClass" />
        <node concept="1JOzQ$" id="5r9znOl8rsj" role="1NMKLq">
          <property role="2RkwnN" value="student" />
          <node concept="3Tm1VV" id="5r9znOl8rsk" role="1B3o_S" />
          <node concept="2RoN1w" id="5r9znOl8rsl" role="2RnVtd">
            <node concept="3wEZqW" id="5r9znOl8rsm" role="3wFrgM" />
            <node concept="3xqBd$" id="5r9znOl8rsn" role="3xrYvX">
              <node concept="3Tm6S6" id="5r9znOl8rso" role="3xqFEP" />
            </node>
          </node>
          <node concept="_YKpA" id="5r9znOl8vhd" role="2RkE6I">
            <node concept="3uibUv" id="5r9znOl8vhe" role="_ZDj9">
              <ref role="3uigEE" node="5r9znOl8rrt" resolve="Student" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1JO6Vm" id="5r9znOl8rsq" role="1wl55o">
        <property role="1K$Kfr" value="sclass" />
        <property role="1K$Kfs" value="2_mYotp$WhK/Many" />
        <ref role="1K$Kfq" node="5r9znOl8rrt" resolve="Student" />
        <node concept="1JOzQ$" id="5r9znOl8rsr" role="1NMKLq">
          <property role="2RkwnN" value="sclass" />
          <node concept="3Tm1VV" id="5r9znOl8rss" role="1B3o_S" />
          <node concept="2RoN1w" id="5r9znOl8rst" role="2RnVtd">
            <node concept="3wEZqW" id="5r9znOl8rsu" role="3wFrgM" />
            <node concept="3xqBd$" id="5r9znOl8rsv" role="3xrYvX">
              <node concept="3Tm6S6" id="5r9znOl8rsw" role="3xqFEP" />
            </node>
          </node>
          <node concept="_YKpA" id="5r9znOl8vd$" role="2RkE6I">
            <node concept="3uibUv" id="5r9znOl8vd_" role="_ZDj9">
              <ref role="3uigEE" node="5r9znOl8rrA" resolve="SClass" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1JPDZT" id="5r9znOl8rsy" role="1JOQLU">
      <node concept="1JO6Vm" id="5r9znOl8rsz" role="1wl55r">
        <property role="1K$Kfr" value="Course" />
        <property role="1K$Kfs" value="2_mYotp$WhK/Many" />
        <ref role="1K$Kfq" node="5r9znOl8rrt" resolve="Student" />
        <node concept="1JOzQ$" id="5r9znOl8rs$" role="1NMKLq">
          <property role="2RkwnN" value="Course" />
          <node concept="3Tm1VV" id="5r9znOl8rs_" role="1B3o_S" />
          <node concept="2RoN1w" id="5r9znOl8rsA" role="2RnVtd">
            <node concept="3wEZqW" id="5r9znOl8rsB" role="3wFrgM" />
            <node concept="3xqBd$" id="5r9znOl8rsC" role="3xrYvX">
              <node concept="3Tm6S6" id="5r9znOl8rsD" role="3xqFEP" />
            </node>
          </node>
          <node concept="_YKpA" id="5r9znOl8vrz" role="2RkE6I">
            <node concept="3uibUv" id="5r9znOl8vr$" role="_ZDj9">
              <ref role="3uigEE" node="5r9znOl8rrQ" resolve="CourseModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1JO6Vm" id="5r9znOl8rsF" role="1wl55o">
        <property role="1K$Kfr" value="student" />
        <property role="1K$Kfs" value="2_mYotp$WhK/Many" />
        <ref role="1K$Kfq" node="5r9znOl8rrQ" resolve="CourseModule" />
        <node concept="1JOzQ$" id="5r9znOl8rsG" role="1NMKLq">
          <property role="2RkwnN" value="student" />
          <node concept="3Tm1VV" id="5r9znOl8rsH" role="1B3o_S" />
          <node concept="2RoN1w" id="5r9znOl8rsI" role="2RnVtd">
            <node concept="3wEZqW" id="5r9znOl8rsJ" role="3wFrgM" />
            <node concept="3xqBd$" id="5r9znOl8rsK" role="3xrYvX">
              <node concept="3Tm6S6" id="5r9znOl8rsL" role="3xqFEP" />
            </node>
          </node>
          <node concept="1JObAL" id="6L8LVVYu1Cd" role="1JQsgg">
            <ref role="1JO3$T" node="6L8LVVYqlM9" resolve="DAssoc" />
          </node>
          <node concept="_YKpA" id="5r9znOl8uZS" role="2RkE6I">
            <node concept="3uibUv" id="5r9znOl8uZT" role="_ZDj9">
              <ref role="3uigEE" node="5r9znOl8rrt" resolve="Student" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="37mRI7" id="5r9znOl8tMh" role="lGtFl">
      <node concept="37mRIm" id="5r9znOl8tMi" role="37mRID">
        <property role="37mO49" value="6253685125945603805" />
        <node concept="gqqVs" id="5r9znOl8tMg" role="37mO4d">
          <property role="gqqTZ" value="251.0" />
          <property role="gqqTW" value="21.0" />
          <property role="gqqTX" value="196.0" />
          <property role="gqqTy" value="98.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5r9znOl8tMk" role="37mRID">
        <property role="37mO49" value="6253685125945603814" />
        <node concept="gqqVs" id="5r9znOl8tMj" role="37mO4d">
          <property role="gqqTZ" value="13.0" />
          <property role="gqqTW" value="21.0" />
          <property role="gqqTX" value="124.0" />
          <property role="gqqTy" value="98.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5r9znOl8tMm" role="37mRID">
        <property role="37mO49" value="6253685125945603830" />
        <node concept="gqqVs" id="5r9znOl8tMl" role="37mO4d">
          <property role="gqqTZ" value="564.0" />
          <property role="gqqTW" value="0.0" />
          <property role="gqqTX" value="132.0" />
          <property role="gqqTy" value="140.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5r9znOl8tMo" role="37mRID">
        <property role="37mO49" value="7802705977545415667" />
        <node concept="gqqVs" id="5r9znOl8tMn" role="37mO4d">
          <property role="gqqTZ" value="204.0" />
          <property role="gqqTW" value="317.0" />
          <property role="gqqTX" value="172.0" />
          <property role="gqqTy" value="118.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5r9znOl8tMq" role="37mRID">
        <property role="37mO49" value="7802705977545415725" />
        <node concept="gqqVs" id="5r9znOl8tMp" role="37mO4d">
          <property role="gqqTZ" value="13.0" />
          <property role="gqqTW" value="149.0" />
          <property role="gqqTX" value="172.0" />
          <property role="gqqTy" value="286.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5r9znOl8tMs" role="37mRID">
        <property role="37mO49" value="7802705977545415756" />
        <node concept="gqqVs" id="5r9znOl8tMr" role="37mO4d">
          <property role="gqqTZ" value="373.0" />
          <property role="gqqTW" value="149.0" />
          <property role="gqqTX" value="156.0" />
          <property role="gqqTy" value="118.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5r9znOl8tMu" role="37mRID">
        <property role="37mO49" value="7802705977545415817" />
        <node concept="gqqVs" id="5r9znOl8tMt" role="37mO4d">
          <property role="gqqTZ" value="417.0" />
          <property role="gqqTW" value="291.0" />
          <property role="gqqTX" value="206.0" />
          <property role="gqqTy" value="244.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="5r9znOl8tMw" role="37mRID">
        <property role="37mO49" value="6253685125945603857" />
        <node concept="2VclpC" id="5r9znOl8tMv" role="37mO4d">
          <node concept="3ul5H1" id="5r9znOl8tMx" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="5r9znOl8tMy" role="3ul5Gz">
              <node concept="2VclrF" id="5r9znOl8tMz" role="3wpmZR">
                <property role="2Vclpx" value="144.0" />
                <property role="2Vclpz" value="81.0" />
              </node>
              <node concept="2VclrF" id="5r9znOl8tM$" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5r9znOl8tM_" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="5r9znOl8tMA" role="3ul5Gz">
              <node concept="2VclrF" id="5r9znOl8tMB" role="3wpmZR">
                <property role="2Vclpx" value="150.0" />
                <property role="2Vclpz" value="43.0" />
              </node>
              <node concept="2VclrF" id="5r9znOl8tMC" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="5r9znOl8tME" role="37mRID">
        <property role="37mO49" value="6253685125945603874" />
        <node concept="2VclpC" id="5r9znOl8tMD" role="37mO4d">
          <node concept="3ul5H1" id="5r9znOl8tMF" role="3ul5Gx">
            <property role="3ul5GH" value="startRole" />
            <node concept="3wpmZ1" id="5r9znOl8tMG" role="3ul5Gz">
              <node concept="2VclrF" id="5r9znOl8tMH" role="3wpmZR">
                <property role="2Vclpx" value="474.0" />
                <property role="2Vclpz" value="84.5" />
              </node>
              <node concept="2VclrF" id="5r9znOl8tMI" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
          <node concept="3ul5H1" id="5r9znOl8tMJ" role="3ul5Gx">
            <property role="3ul5GH" value="endRole" />
            <node concept="3wpmZ1" id="5r9znOl8tMK" role="3ul5Gz">
              <node concept="2VclrF" id="5r9znOl8tML" role="3wpmZR">
                <property role="2Vclpx" value="458.0" />
                <property role="2Vclpz" value="30.5" />
              </node>
              <node concept="2VclrF" id="5r9znOl8tMM" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="5r9znOl8tMO" role="37mRID">
        <property role="37mO49" value="7802705977546377870" />
        <node concept="2VclpC" id="5r9znOl8tMN" role="37mO4d" />
      </node>
      <node concept="37mRIm" id="5r9znOl8tMQ" role="37mRID">
        <property role="37mO49" value="7802705977546377948" />
        <node concept="2VclpC" id="5r9znOl8tMP" role="37mO4d" />
      </node>
      <node concept="37mRIm" id="5r9znOl8tMS" role="37mRID">
        <property role="37mO49" value="7802705977546378408" />
        <node concept="2VclpC" id="5r9znOl8tMR" role="37mO4d" />
      </node>
      <node concept="37mRIm" id="5r9znOl8tMU" role="37mRID">
        <property role="37mO49" value="7802705977546381837" />
        <node concept="2VclpC" id="5r9znOl8tMT" role="37mO4d" />
      </node>
    </node>
  </node>
</model>

