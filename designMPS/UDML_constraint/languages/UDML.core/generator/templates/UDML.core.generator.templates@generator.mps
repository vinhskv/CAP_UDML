<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d61ccce1-9375-43c6-89de-bf0fb903b50a(UDML.core.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="f3mm" ref="r:a69e64b7-584b-4285-8b0a-31848c7d97a8(UDML.Annotation.DCSL)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="hd0h" ref="r:8b84f2f2-3f35-4698-bc08-fafea3caa1b5(jetbrains.mps.baseLanguage.generator.java.properties@generator)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="zs21" ref="r:0ee3fca1-ea02-4c7b-a6b2-8b2e273ad73d(UDML.core.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1201370618622" name="jetbrains.mps.baseLanguage.structure.Property" flags="ig" index="2RhdJD">
        <property id="1201371481316" name="propertyName" index="2RkwnN" />
        <child id="1201371521209" name="type" index="2RkE6I" />
        <child id="1201372378714" name="propertyImplementation" index="2RnVtd" />
      </concept>
      <concept id="1201372606839" name="jetbrains.mps.baseLanguage.structure.DefaultPropertyImplementation" flags="ng" index="2RoN1w">
        <child id="1202065356069" name="defaultGetAccessor" index="3wFrgM" />
        <child id="1202078082794" name="defaultSetAccessor" index="3xrYvX" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167172143858" name="weavingMappingRule" index="30SoJX" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj">
        <reference id="1200916687663" name="labelDeclaration" index="2sdACS" />
      </concept>
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ngI" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1200917515464" name="labelDeclaration" index="2sgKRv" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1167171569011" name="jetbrains.mps.lang.generator.structure.Weaving_MappingRule" flags="lg" index="30QchW">
        <child id="1169570368028" name="ruleConsequence" index="1fOSGc" />
        <child id="1184616230853" name="contextNodeQuery" index="3gCiVm" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1184616041890" name="jetbrains.mps.lang.generator.structure.Weaving_MappingRule_ContextNodeQuery" flags="in" index="3gB$ML" />
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="bUwia" id="4MzzjozrYVC">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="4MzzjozEvxs" role="3acgRq">
      <ref role="30HIoZ" to="zs21:4Mzzjozsr2i" resolve="Property" />
      <node concept="j$656" id="4MzzjozEwby" role="1lVwrX">
        <ref role="v9R2y" node="4MzzjozEwbw" resolve="reduce_Property" />
      </node>
    </node>
    <node concept="3aamgX" id="4MzzjozF$Da" role="3acgRq">
      <ref role="30HIoZ" to="zs21:4MzzjozsvmD" resolve="Operation" />
      <node concept="j$656" id="4MzzjozF_Ba" role="1lVwrX">
        <ref role="v9R2y" node="4MzzjozF_B8" resolve="reduce_Operation" />
      </node>
    </node>
    <node concept="30QchW" id="4MzzjozEjAD" role="30SoJX">
      <ref role="30HIoZ" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
      <node concept="3gB$ML" id="4MzzjozEjAF" role="3gCiVm">
        <node concept="3clFbS" id="4MzzjozEjAG" role="2VODD2">
          <node concept="3cpWs8" id="4MzzjozElcR" role="3cqZAp">
            <node concept="3cpWsn" id="4MzzjozElcU" role="3cpWs9">
              <property role="TrG5h" value="cl" />
              <node concept="3Tqbb2" id="4MzzjozElcQ" role="1tU5fm">
                <ref role="ehGHo" to="zs21:4Mzzjozsl3_" resolve="Classifier" />
              </node>
              <node concept="2OqwBi" id="4MzzjozEmZL" role="33vP2m">
                <node concept="30H73N" id="4MzzjozEmPd" role="2Oq$k0" />
                <node concept="3TrEf2" id="4MzzjozEntp" role="2OqNvi">
                  <ref role="3Tt5mk" to="zs21:2_mYotpLvDt" resolve="memberEnd" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4MzzjozEsFf" role="3cqZAp">
            <node concept="2OqwBi" id="4MzzjozEsQk" role="3clFbG">
              <node concept="1iwH7S" id="4MzzjozEsFe" role="2Oq$k0" />
              <node concept="1iwH70" id="4MzzjozEtS7" role="2OqNvi">
                <ref role="1iwH77" node="4MzzjozEc6e" resolve="map_class_label" />
                <node concept="37vLTw" id="4MzzjozEuRc" role="1iwH7V">
                  <ref role="3cqZAo" node="4MzzjozElcU" resolve="cl" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="j$656" id="4MzzjozEvck" role="1fOSGc">
        <ref role="v9R2y" node="4MzzjozEvcg" resolve="weave_MemberEnd" />
      </node>
    </node>
    <node concept="3lhOvk" id="4MzzjozEeUf" role="3lj3bC">
      <ref role="30HIoZ" to="zs21:4MzzjozsloV" resolve="Class" />
      <ref role="3lhOvi" node="4MzzjozEgMg" resolve="map_Class" />
      <ref role="2sgKRv" node="4MzzjozEc6e" resolve="map_class_label" />
    </node>
    <node concept="3lhOvk" id="4MzzjozEi2s" role="3lj3bC">
      <ref role="30HIoZ" to="zs21:4Mzzjozs47h" resolve="DomainModel" />
      <ref role="3lhOvi" node="4MzzjozEiYx" resolve="map_DomainModel" />
    </node>
    <node concept="2rT7sh" id="4MzzjozEc6e" role="2rTMjI">
      <property role="TrG5h" value="map_class_label" />
      <ref role="2rTdP9" to="zs21:4Mzzjozsl3_" resolve="Classifier" />
      <ref role="2rZz_L" to="tpee:fz12cDA" resolve="ClassConcept" />
    </node>
  </node>
  <node concept="312cEu" id="4MzzjozEgMg">
    <property role="TrG5h" value="map_Class" />
    <node concept="2tJIrI" id="4MzzjozEBoe" role="jymVt">
      <node concept="1WS0z7" id="4MzzjozEClf" role="lGtFl">
        <node concept="3JmXsc" id="4MzzjozEClg" role="3Jn$fo">
          <node concept="3clFbS" id="4MzzjozEClh" role="2VODD2">
            <node concept="3clFbF" id="4MzzjozECGS" role="3cqZAp">
              <node concept="2OqwBi" id="4MzzjozEDlA" role="3clFbG">
                <node concept="30H73N" id="4MzzjozECGR" role="2Oq$k0" />
                <node concept="3Tsc0h" id="4MzzjozEEQX" role="2OqNvi">
                  <ref role="3TtcxE" to="zs21:4Mzzjozs$EK" resolve="propertyUdml" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="29HgVG" id="4MzzjozEGWz" role="lGtFl" />
    </node>
    <node concept="2tJIrI" id="4MzzjozEH0V" role="jymVt">
      <node concept="1WS0z7" id="4MzzjozEI7Y" role="lGtFl">
        <node concept="3JmXsc" id="4MzzjozEI7Z" role="3Jn$fo">
          <node concept="3clFbS" id="4MzzjozEI80" role="2VODD2">
            <node concept="3clFbF" id="4MzzjozEIsQ" role="3cqZAp">
              <node concept="2OqwBi" id="4MzzjozEItz" role="3clFbG">
                <node concept="30H73N" id="4MzzjozEIsP" role="2Oq$k0" />
                <node concept="3Tsc0h" id="4MzzjozEJ7w" role="2OqNvi">
                  <ref role="3TtcxE" to="zs21:4MzzjozsAl1" resolve="operationUdml" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="29HgVG" id="4MzzjozELdH" role="lGtFl" />
    </node>
    <node concept="3Tm1VV" id="4MzzjozEgMh" role="1B3o_S" />
    <node concept="n94m4" id="4MzzjozEgMi" role="lGtFl">
      <ref role="n9lRv" to="zs21:4MzzjozsloV" resolve="Class" />
    </node>
    <node concept="17Uvod" id="4MzzjozE$zD" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="4MzzjozE$zE" role="3zH0cK">
        <node concept="3clFbS" id="4MzzjozE$zF" role="2VODD2">
          <node concept="3clFbF" id="4MzzjozE$Yf" role="3cqZAp">
            <node concept="2OqwBi" id="4MzzjozE_Eo" role="3clFbG">
              <node concept="30H73N" id="4MzzjozE$Ye" role="2Oq$k0" />
              <node concept="3TrcHB" id="4MzzjozEAR3" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2AHcQZ" id="Jn4V98SiSF" role="2AJF6D">
      <ref role="2AI5Lk" to="f3mm:7sId_oaG6mY" resolve="Annotation" />
      <node concept="1WS0z7" id="Jn4V98Sje7" role="lGtFl">
        <node concept="3JmXsc" id="Jn4V98Sjea" role="3Jn$fo">
          <node concept="3clFbS" id="Jn4V98Sjeb" role="2VODD2">
            <node concept="3clFbF" id="Jn4V98Sjeh" role="3cqZAp">
              <node concept="2OqwBi" id="Jn4V98Sjec" role="3clFbG">
                <node concept="30H73N" id="Jn4V98Sjeg" role="2Oq$k0" />
                <node concept="3Tsc0h" id="Jn4V98TuBH" role="2OqNvi">
                  <ref role="3TtcxE" to="zs21:4Mzzjozu$$A" resolve="refAnnotation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="29HgVG" id="Jn4V98SjBL" role="lGtFl">
        <node concept="3NFfHV" id="7sId_oaCiil" role="3NFExx">
          <node concept="3clFbS" id="7sId_oaCiim" role="2VODD2">
            <node concept="3clFbF" id="7sId_oaCiH9" role="3cqZAp">
              <node concept="2OqwBi" id="3QRtJrm5m2h" role="3clFbG">
                <node concept="30H73N" id="2TXY2_CexF0" role="2Oq$k0" />
                <node concept="3TrEf2" id="3QRtJrm5mOf" role="2OqNvi">
                  <ref role="3Tt5mk" to="zs21:4MzzjozsVgf" resolve="annotation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4MzzjozEiYx">
    <property role="TrG5h" value="map_DomainModel" />
    <node concept="3Tm1VV" id="4MzzjozEiYy" role="1B3o_S" />
    <node concept="n94m4" id="4MzzjozEiYz" role="lGtFl">
      <ref role="n9lRv" to="zs21:4Mzzjozs47h" resolve="DomainModel" />
    </node>
    <node concept="17Uvod" id="4MzzjozEUAW" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="4MzzjozEUAX" role="3zH0cK">
        <node concept="3clFbS" id="4MzzjozEUAY" role="2VODD2">
          <node concept="3clFbF" id="4MzzjozEXLC" role="3cqZAp">
            <node concept="2OqwBi" id="4MzzjozEXMb" role="3clFbG">
              <node concept="30H73N" id="4MzzjozEXLB" role="2Oq$k0" />
              <node concept="3TrcHB" id="4MzzjozF0MS" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4MzzjozEvcg">
    <property role="TrG5h" value="weave_MemberEnd" />
    <ref role="3gUMe" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
    <node concept="312cEu" id="4MzzjozEvci" role="13RCb5">
      <property role="TrG5h" value="relation" />
      <node concept="2RhdJD" id="4MzzjozF7hC" role="jymVt">
        <property role="2RkwnN" value="name" />
        <node concept="3Tm1VV" id="4MzzjozF7hD" role="1B3o_S" />
        <node concept="2RoN1w" id="4MzzjozF7hE" role="2RnVtd">
          <node concept="3wEZqW" id="4MzzjozF7hF" role="3wFrgM" />
          <node concept="3xqBd$" id="4MzzjozF7hG" role="3xrYvX">
            <node concept="3Tm6S6" id="4MzzjozF7hH" role="3xqFEP" />
          </node>
        </node>
        <node concept="17QB3L" id="4MzzjozF7_W" role="2RkE6I" />
        <node concept="raruj" id="4MzzjozFaqq" role="lGtFl" />
        <node concept="29HgVG" id="4MzzjozFaID" role="lGtFl">
          <node concept="3NFfHV" id="4MzzjozFbES" role="3NFExx">
            <node concept="3clFbS" id="4MzzjozFbET" role="2VODD2">
              <node concept="3clFbF" id="4MzzjozFc1_" role="3cqZAp">
                <node concept="2OqwBi" id="4MzzjozFceg" role="3clFbG">
                  <node concept="30H73N" id="4MzzjozFc1$" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4MzzjozFcG8" role="2OqNvi">
                    <ref role="3Tt5mk" to="zs21:2_mYotqBvnt" resolve="property" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4MzzjozEvcj" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="4MzzjozEwbw">
    <property role="TrG5h" value="reduce_Property" />
    <ref role="3gUMe" to="zs21:4Mzzjozsr2i" resolve="Property" />
    <node concept="312cEu" id="4MzzjozFhRD" role="13RCb5">
      <property role="TrG5h" value="property" />
      <node concept="312cEu" id="hv3alqy" role="jymVt">
        <property role="TrG5h" value="C" />
        <node concept="3Tm1VV" id="hv3alqz" role="1B3o_S" />
        <node concept="312cEg" id="hv3dtEI" role="jymVt">
          <property role="TrG5h" value="myBackingPropertyVar" />
          <node concept="3Tm6S6" id="hv3dtEJ" role="1B3o_S" />
          <node concept="10Oyi0" id="hv3dw16" role="1tU5fm">
            <node concept="29HgVG" id="hv3eU7D" role="lGtFl">
              <node concept="3NFfHV" id="hv3eU7E" role="3NFExx">
                <node concept="3clFbS" id="hv3eU7F" role="2VODD2">
                  <node concept="3clFbF" id="hv3eUIK" role="3cqZAp">
                    <node concept="2OqwBi" id="hxiHIZj" role="3clFbG">
                      <node concept="30H73N" id="hv3eUIL" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hv3eVw9" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:huRkE2T" resolve="type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="hv3dxE_" role="lGtFl" />
          <node concept="1W57fq" id="hv3dyO6" role="lGtFl">
            <node concept="3IZrLx" id="hv3dyO7" role="3IZSJc">
              <node concept="3clFbS" id="hv3dyO8" role="2VODD2">
                <node concept="3clFbF" id="hv3eNpK" role="3cqZAp">
                  <node concept="22lmx$" id="2hzApTj5FgS" role="3clFbG">
                    <node concept="2OqwBi" id="2hzApTj5J0f" role="3uHU7w">
                      <node concept="2OqwBi" id="2hzApTj5FC7" role="2Oq$k0">
                        <node concept="30H73N" id="2hzApTj5FuL" role="2Oq$k0" />
                        <node concept="2Rf3mk" id="2hzApTj5GNN" role="2OqNvi">
                          <node concept="1xMEDy" id="2hzApTj5GNP" role="1xVPHs">
                            <node concept="chp4Y" id="2hzApTj5Hlt" role="ri$Ld">
                              <ref role="cht4Q" to="tpee:2hzApTijNJP" resolve="PropertyValueReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3GX2aA" id="2hzApTj5NKZ" role="2OqNvi" />
                    </node>
                    <node concept="22lmx$" id="3Rhnz24iez4" role="3uHU7B">
                      <node concept="2OqwBi" id="3Rhnz24ig5n" role="3uHU7w">
                        <node concept="30H73N" id="3Rhnz24ifYG" role="2Oq$k0" />
                        <node concept="2qgKlT" id="3Rhnz24igJu" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:2hzApTi_Lsg" resolve="isCustomSetterOnlyImplementation" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="hxiHIZ_" role="3uHU7B">
                        <node concept="30H73N" id="hv3eNpL" role="2Oq$k0" />
                        <node concept="2qgKlT" id="hv3fWXG" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:hEwIIZu" resolve="isDefaultImplementation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17Uvod" id="hv3eWzM" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="hv3eWzN" role="3zH0cK">
              <node concept="3clFbS" id="hv3eWzO" role="2VODD2">
                <node concept="3clFbF" id="hv3f06D" role="3cqZAp">
                  <node concept="2OqwBi" id="3fuSPi56tt8" role="3clFbG">
                    <node concept="30H73N" id="3fuSPi56sTP" role="2Oq$k0" />
                    <node concept="2qgKlT" id="3fuSPi56BP8" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:1tRxQXfvLw" resolve="getBackingVarName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="Jn4V98UQhk" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
            <node concept="1WS0z7" id="Jn4V98USSr" role="lGtFl">
              <node concept="3JmXsc" id="Jn4V98USSs" role="3Jn$fo">
                <node concept="3clFbS" id="Jn4V98USSt" role="2VODD2">
                  <node concept="3clFbF" id="Jn4V98USTU" role="3cqZAp">
                    <node concept="2OqwBi" id="Jn4V98UTlo" role="3clFbG">
                      <node concept="30H73N" id="Jn4V98USTT" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="Jn4V98UTQV" role="2OqNvi">
                        <ref role="3TtcxE" to="zs21:4Mzzjozu$$A" resolve="refAnnotation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="29HgVG" id="Jn4V98UU$r" role="lGtFl">
              <node concept="3NFfHV" id="2TXY2_Ce$Z8" role="3NFExx">
                <node concept="3clFbS" id="2TXY2_Ce$Z9" role="2VODD2">
                  <node concept="3clFbF" id="2TXY2_Ce_4a" role="3cqZAp">
                    <node concept="2OqwBi" id="3QRtJrm5stF" role="3clFbG">
                      <node concept="30H73N" id="2TXY2_Ce_49" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3QRtJrm5tfD" role="2OqNvi">
                        <ref role="3Tt5mk" to="zs21:4MzzjozsVgf" resolve="annotation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="2_mYotoGJWd" role="jymVt">
          <node concept="raruj" id="2_mYotoGJWe" role="lGtFl" />
        </node>
        <node concept="2tJIrI" id="2_mYotoGIMP" role="jymVt" />
        <node concept="3clFb_" id="hv3a_ZQ" role="jymVt">
          <property role="TrG5h" value="getProperty" />
          <node concept="10Oyi0" id="4D3RMlPNgdm" role="3clF45">
            <node concept="29HgVG" id="4D3RMlPNgdo" role="lGtFl">
              <node concept="3NFfHV" id="4D3RMlPNgdp" role="3NFExx">
                <node concept="3clFbS" id="4D3RMlPNgdq" role="2VODD2">
                  <node concept="3clFbF" id="4D3RMlPNgdr" role="3cqZAp">
                    <node concept="2OqwBi" id="4D3RMlPNgdt" role="3clFbG">
                      <node concept="30H73N" id="4D3RMlPNgds" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4D3RMlPNgdx" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:huRkE2T" resolve="type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="hv3a_ZS" role="1B3o_S">
            <node concept="29HgVG" id="hv3aUqg" role="lGtFl">
              <node concept="3NFfHV" id="hv3aUqh" role="3NFExx">
                <node concept="3clFbS" id="hv3aUqi" role="2VODD2">
                  <node concept="3clFbF" id="hv3aUOF" role="3cqZAp">
                    <node concept="2OqwBi" id="hxiHJ25" role="3clFbG">
                      <node concept="30H73N" id="hv3aUOG" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hv3aW4l" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="hv3a_ZT" role="3clF47">
            <node concept="3clFbF" id="hv3bbn6" role="3cqZAp">
              <node concept="1W57fq" id="hv3bw7n" role="lGtFl">
                <node concept="3IZrLx" id="hv3bw7o" role="3IZSJc">
                  <node concept="3clFbS" id="hv3bw7p" role="2VODD2">
                    <node concept="3clFbF" id="hvtlBEX" role="3cqZAp">
                      <node concept="2OqwBi" id="hxiHJ0Q" role="3clFbG">
                        <node concept="30H73N" id="hvtlBEY" role="2Oq$k0" />
                        <node concept="2qgKlT" id="hvtlCNj" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:hEwIIZC" resolve="isCustomImplementation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2b32R4" id="hv3bv2X" role="lGtFl">
                <node concept="3JmXsc" id="hv3bv2Y" role="2P8S$">
                  <node concept="3clFbS" id="hv3bv2Z" role="2VODD2">
                    <node concept="3clFbF" id="hvtmC__" role="3cqZAp">
                      <node concept="2OqwBi" id="hxiHJ2u" role="3clFbG">
                        <node concept="2OqwBi" id="hxiHJ0S" role="2Oq$k0">
                          <node concept="2OqwBi" id="hxiHIYQ" role="2Oq$k0">
                            <node concept="2OqwBi" id="hxiHIZb" role="2Oq$k0">
                              <node concept="30H73N" id="hvtmC_A" role="2Oq$k0" />
                              <node concept="2qgKlT" id="hvtmDKo" role="2OqNvi">
                                <ref role="37wK5l" to="tpek:hEwIIZM" resolve="getCustomPropertyImplementation" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="hvtmF0x" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:huT9Ut0" resolve="getAccessor" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="hw09J6y" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:hw09Boo" resolve="statementList" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="hzHoYsN" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4D3RMlPNgdM" role="3clFbG">
                <node concept="10M0yZ" id="4D3RMlPNgdN" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="4D3RMlPNgdO" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="Xl_RD" id="4D3RMlPNgdP" role="37wK5m">
                    <property role="Xl_RC" value="statements" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4D3RMlPNgdg" role="3cqZAp">
              <node concept="2OqwBi" id="5NJ97UmmM44" role="3cqZAk">
                <node concept="Xjq3P" id="5NJ97UmmMLC" role="2Oq$k0" />
                <node concept="2OwXpG" id="5NJ97UmmM47" role="2OqNvi">
                  <ref role="2Oxat5" node="hv3dtEI" resolve="myBackingPropertyVar" />
                </node>
              </node>
              <node concept="1W57fq" id="4D3RMlPNgdz" role="lGtFl">
                <node concept="3IZrLx" id="4D3RMlPNgd$" role="3IZSJc">
                  <node concept="3clFbS" id="4D3RMlPNgd_" role="2VODD2">
                    <node concept="3clFbF" id="4D3RMlPNgdA" role="3cqZAp">
                      <node concept="22lmx$" id="2hzApTi_Gxg" role="3clFbG">
                        <node concept="2OqwBi" id="2hzApTi_GSv" role="3uHU7w">
                          <node concept="30H73N" id="2hzApTi_GJ9" role="2Oq$k0" />
                          <node concept="2qgKlT" id="2hzApTiAdDb" role="2OqNvi">
                            <ref role="37wK5l" to="tpek:2hzApTi_Lsg" resolve="isCustomSetterOnlyImplementation" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4D3RMlPNgdB" role="3uHU7B">
                          <node concept="30H73N" id="4D3RMlPNgdC" role="2Oq$k0" />
                          <node concept="2qgKlT" id="4D3RMlPNgdD" role="2OqNvi">
                            <ref role="37wK5l" to="tpek:hEwIIZu" resolve="isDefaultImplementation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="hv3aBdN" role="lGtFl">
            <ref role="2sdACS" to="hd0h:hG092h2" resolve="mn_property_getter" />
          </node>
          <node concept="17Uvod" id="hv3aXvE" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="hv3aXvF" role="3zH0cK">
              <node concept="3clFbS" id="hv3aXvG" role="2VODD2">
                <node concept="3clFbF" id="hzkjjVT" role="3cqZAp">
                  <node concept="2OqwBi" id="hzkjk88" role="3clFbG">
                    <node concept="30H73N" id="hzkjjVU" role="2Oq$k0" />
                    <node concept="2qgKlT" id="hzkjlhE" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:hEwIJ02" resolve="getGetterMethodName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="2_mYotoGv2U" role="jymVt" />
        <node concept="2tJIrI" id="2_mYotoGFYI" role="jymVt">
          <node concept="raruj" id="2_mYotoGFYJ" role="lGtFl" />
        </node>
        <node concept="2tJIrI" id="2_mYotoGFYH" role="jymVt" />
        <node concept="3clFb_" id="hvtjMRq" role="jymVt">
          <property role="TrG5h" value="_setProperty" />
          <node concept="37vLTG" id="hvtkYJj" role="3clF46">
            <property role="TrG5h" value="value" />
            <node concept="10Oyi0" id="hvtkZUi" role="1tU5fm">
              <node concept="29HgVG" id="hvtl1py" role="lGtFl">
                <node concept="3NFfHV" id="hvtl1pz" role="3NFExx">
                  <node concept="3clFbS" id="hvtl1p$" role="2VODD2">
                    <node concept="3clFbF" id="hvtl2kb" role="3cqZAp">
                      <node concept="2OqwBi" id="hxiHIZY" role="3clFbG">
                        <node concept="30H73N" id="hvtl2kc" role="2Oq$k0" />
                        <node concept="3TrEf2" id="hvtl35k" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:huRkE2T" resolve="type" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqZAl" id="hvtjMRr" role="3clF45" />
          <node concept="3Tm6S6" id="4qcYKcph6iq" role="1B3o_S" />
          <node concept="3clFbS" id="hvtjMRt" role="3clF47">
            <node concept="3clFbF" id="hvtljo6" role="3cqZAp">
              <node concept="2OqwBi" id="4D3RMlPNgdG" role="3clFbG">
                <node concept="10M0yZ" id="4D3RMlPNgdF" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="4D3RMlPNgdK" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="Xl_RD" id="4D3RMlPNgdL" role="37wK5m">
                    <property role="Xl_RC" value="statements" />
                  </node>
                </node>
              </node>
              <node concept="1W57fq" id="hvtllg1" role="lGtFl">
                <node concept="3IZrLx" id="hvtllg2" role="3IZSJc">
                  <node concept="3clFbS" id="hvtllg3" role="2VODD2">
                    <node concept="3clFbF" id="hvtlLRd" role="3cqZAp">
                      <node concept="22lmx$" id="2hzApTiAv$g" role="3clFbG">
                        <node concept="2OqwBi" id="2hzApTiAvVv" role="3uHU7w">
                          <node concept="30H73N" id="2hzApTiAvM9" role="2Oq$k0" />
                          <node concept="2qgKlT" id="2hzApTiAxX_" role="2OqNvi">
                            <ref role="37wK5l" to="tpek:2hzApTi_Lsg" resolve="isCustomSetterOnlyImplementation" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="hxiHIYO" role="3uHU7B">
                          <node concept="30H73N" id="hvtlLRe" role="2Oq$k0" />
                          <node concept="2qgKlT" id="hvtlM$s" role="2OqNvi">
                            <ref role="37wK5l" to="tpek:hEwIIZC" resolve="isCustomImplementation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2b32R4" id="hvtlmwq" role="lGtFl">
                <node concept="3JmXsc" id="hvtlmwr" role="2P8S$">
                  <node concept="3clFbS" id="hvtlmws" role="2VODD2">
                    <node concept="3clFbF" id="hvtmJRG" role="3cqZAp">
                      <node concept="2OqwBi" id="hxiHJ02" role="3clFbG">
                        <node concept="30H73N" id="hvtmJRH" role="2Oq$k0" />
                        <node concept="2qgKlT" id="2hzApTjcZMF" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:2hzApTjcJcI" resolve="getCustomSetterStatements" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="hvtl7jA" role="3cqZAp">
              <node concept="37vLTI" id="hvtl7CT" role="3clFbG">
                <node concept="2OqwBi" id="5NJ97UmmLDv" role="37vLTJ">
                  <node concept="Xjq3P" id="5NJ97UmmLTq" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5NJ97UmmLDy" role="2OqNvi">
                    <ref role="2Oxat5" node="hv3dtEI" resolve="myBackingPropertyVar" />
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxgm_lW" role="37vLTx">
                  <ref role="3cqZAo" node="hvtkYJj" resolve="value" />
                </node>
              </node>
              <node concept="1W57fq" id="hvtl8Yb" role="lGtFl">
                <node concept="3IZrLx" id="hvtl8Yc" role="3IZSJc">
                  <node concept="3clFbS" id="hvtl8Yd" role="2VODD2">
                    <node concept="3clFbF" id="hvtlbtD" role="3cqZAp">
                      <node concept="2OqwBi" id="hxiHJ06" role="3clFbG">
                        <node concept="30H73N" id="hvtlbtE" role="2Oq$k0" />
                        <node concept="2qgKlT" id="hvtlcbR" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:hEwIIZu" resolve="isDefaultImplementation" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="hvtjOOu" role="lGtFl" />
          <node concept="1W57fq" id="hvtjPCK" role="lGtFl">
            <node concept="3IZrLx" id="hvtjPCL" role="3IZSJc">
              <node concept="3clFbS" id="hvtjPCM" role="2VODD2">
                <node concept="3clFbF" id="hvtjQgY" role="3cqZAp">
                  <node concept="2OqwBi" id="hxiHIZF" role="3clFbG">
                    <node concept="30H73N" id="hvtjQgZ" role="2Oq$k0" />
                    <node concept="2qgKlT" id="hw0hZOB" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:hEwIJ0S" resolve="hasSetter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17Uvod" id="hvtk0BN" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="hvtk0BO" role="3zH0cK">
              <node concept="3clFbS" id="hvtk0BP" role="2VODD2">
                <node concept="3clFbF" id="hzkj8dP" role="3cqZAp">
                  <node concept="3cpWs3" id="4qcYKcph8os" role="3clFbG">
                    <node concept="Xl_RD" id="4qcYKcph8CH" role="3uHU7B">
                      <property role="Xl_RC" value="_" />
                    </node>
                    <node concept="2OqwBi" id="hzkjf3O" role="3uHU7w">
                      <node concept="30H73N" id="hzkj8dQ" role="2Oq$k0" />
                      <node concept="2qgKlT" id="hzkjgpz" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:hEwIJ0b" resolve="getSetterMethodName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="2_mYotoGETj" role="jymVt">
          <node concept="raruj" id="2_mYotoGETk" role="lGtFl" />
        </node>
        <node concept="2tJIrI" id="2_mYotoGCU0" role="jymVt" />
        <node concept="3clFb_" id="4qcYKcph0vf" role="jymVt">
          <property role="TrG5h" value="setProperty" />
          <node concept="37vLTG" id="4qcYKcph0vg" role="3clF46">
            <property role="TrG5h" value="value" />
            <node concept="10Oyi0" id="4qcYKcph0vh" role="1tU5fm">
              <node concept="29HgVG" id="4qcYKcph0vi" role="lGtFl">
                <node concept="3NFfHV" id="4qcYKcph0vj" role="3NFExx">
                  <node concept="3clFbS" id="4qcYKcph0vk" role="2VODD2">
                    <node concept="3clFbF" id="4qcYKcph0vl" role="3cqZAp">
                      <node concept="2OqwBi" id="4qcYKcph0vm" role="3clFbG">
                        <node concept="30H73N" id="4qcYKcph0vn" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4qcYKcph0vo" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:huRkE2T" resolve="type" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="4qcYKcph0vq" role="1B3o_S">
            <node concept="29HgVG" id="4qcYKcph0vr" role="lGtFl">
              <node concept="3NFfHV" id="4qcYKcph0vs" role="3NFExx">
                <node concept="3clFbS" id="4qcYKcph0vt" role="2VODD2">
                  <node concept="3clFbF" id="4qcYKcph0vu" role="3cqZAp">
                    <node concept="2OqwBi" id="4qcYKcph0vv" role="3clFbG">
                      <node concept="30H73N" id="4qcYKcph0vw" role="2Oq$k0" />
                      <node concept="2qgKlT" id="4qcYKcph0vx" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:hEwIJ0k" resolve="getSetterVisibility" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4qcYKcph0vy" role="3clF47">
            <node concept="3clFbF" id="4qcYKcphfXQ" role="3cqZAp">
              <node concept="1rXfSq" id="4qcYKcphfXP" role="3clFbG">
                <ref role="37wK5l" node="hvtjMRq" resolve="_setProperty" />
                <node concept="37vLTw" id="4qcYKcphgki" role="37wK5m">
                  <ref role="3cqZAo" node="4qcYKcph0vg" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4qcYKcphgBS" role="3cqZAp">
              <node concept="37vLTw" id="4qcYKcphgMP" role="3cqZAk">
                <ref role="3cqZAo" node="4qcYKcph0vg" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="raruj" id="4qcYKcph0w7" role="lGtFl" />
          <node concept="1W57fq" id="4qcYKcph0w8" role="lGtFl">
            <ref role="2rW$FS" to="hd0h:hG0dD5g" resolve="mn_property_setter" />
            <node concept="3IZrLx" id="4qcYKcph0w9" role="3IZSJc">
              <node concept="3clFbS" id="4qcYKcph0wa" role="2VODD2">
                <node concept="3clFbF" id="4qcYKcph0wb" role="3cqZAp">
                  <node concept="2OqwBi" id="4qcYKcph0wc" role="3clFbG">
                    <node concept="30H73N" id="4qcYKcph0wd" role="2Oq$k0" />
                    <node concept="2qgKlT" id="4qcYKcph0we" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:hEwIJ0S" resolve="hasSetter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="17Uvod" id="4qcYKcph0wf" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
            <node concept="3zFVjK" id="4qcYKcph0wg" role="3zH0cK">
              <node concept="3clFbS" id="4qcYKcph0wh" role="2VODD2">
                <node concept="3clFbF" id="4qcYKcph0wi" role="3cqZAp">
                  <node concept="2OqwBi" id="4qcYKcph0wj" role="3clFbG">
                    <node concept="30H73N" id="4qcYKcph0wk" role="2Oq$k0" />
                    <node concept="2qgKlT" id="4qcYKcph0wl" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:hEwIJ0b" resolve="getSetterMethodName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="10Oyi0" id="4qcYKcphbnx" role="3clF45">
            <node concept="29HgVG" id="4qcYKcphbny" role="lGtFl">
              <node concept="3NFfHV" id="4qcYKcphbnz" role="3NFExx">
                <node concept="3clFbS" id="4qcYKcphbn$" role="2VODD2">
                  <node concept="3clFbF" id="4qcYKcphbn_" role="3cqZAp">
                    <node concept="2OqwBi" id="4qcYKcphbnA" role="3clFbG">
                      <node concept="30H73N" id="4qcYKcphbnB" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4qcYKcphbnC" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:huRkE2T" resolve="type" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="2_mYotoGBOg" role="jymVt">
          <node concept="raruj" id="2_mYotoGCTF" role="lGtFl" />
        </node>
        <node concept="2tJIrI" id="2_mYotoGx2e" role="jymVt" />
      </node>
      <node concept="2tJIrI" id="4MzzjozFiwb" role="jymVt" />
      <node concept="3Tm1VV" id="4MzzjozFhRE" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="4MzzjozF_B8">
    <property role="TrG5h" value="reduce_Operation" />
    <ref role="3gUMe" to="zs21:4MzzjozsvmD" resolve="Operation" />
    <node concept="312cEu" id="4MzzjozFAzh" role="13RCb5">
      <property role="TrG5h" value="operation" />
      <node concept="3clFb_" id="2_mYotoHYBV" role="jymVt">
        <property role="TrG5h" value="name" />
        <node concept="3cqZAl" id="2_mYotoHYBX" role="3clF45">
          <node concept="29HgVG" id="2_mYotoI5b9" role="lGtFl">
            <node concept="3NFfHV" id="2_mYotoI5mI" role="3NFExx">
              <node concept="3clFbS" id="2_mYotoI5mJ" role="2VODD2">
                <node concept="3clFbF" id="2_mYotoI5OL" role="3cqZAp">
                  <node concept="2OqwBi" id="2_mYotoI6xz" role="3clFbG">
                    <node concept="30H73N" id="2_mYotoI5OK" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2_mYotoI7H2" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fzclF7X" resolve="returnType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2_mYotoHYBY" role="1B3o_S">
          <node concept="29HgVG" id="2_mYotoI33t" role="lGtFl">
            <node concept="3NFfHV" id="2_mYotoI33P" role="3NFExx">
              <node concept="3clFbS" id="2_mYotoI33Q" role="2VODD2">
                <node concept="3clFbF" id="2_mYotoI34Y" role="3cqZAp">
                  <node concept="2OqwBi" id="2_mYotoI3LK" role="3clFbG">
                    <node concept="30H73N" id="2_mYotoI34X" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2_mYotoI4Xf" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:h9B3oxE" resolve="visibility" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2_mYotoHYBZ" role="3clF47">
          <node concept="29HgVG" id="2_mYotoIbWz" role="lGtFl">
            <node concept="3NFfHV" id="2_mYotoIc9u" role="3NFExx">
              <node concept="3clFbS" id="2_mYotoIc9v" role="2VODD2">
                <node concept="3clFbF" id="2_mYotoIcTD" role="3cqZAp">
                  <node concept="2OqwBi" id="2_mYotoIdYg" role="3clFbG">
                    <node concept="30H73N" id="2_mYotoIcTC" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2_mYotoIfrU" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fzclF7Z" resolve="body" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2_mYotoI1Cv" role="2AJF6D">
          <ref role="2AI5Lk" to="f3mm:7sId_oaG6mY" resolve="Annotation" />
          <node concept="1WS0z7" id="2_mYotoI1Vn" role="lGtFl">
            <node concept="3JmXsc" id="2_mYotoI1Vq" role="3Jn$fo">
              <node concept="3clFbS" id="2_mYotoI1Vr" role="2VODD2">
                <node concept="3clFbF" id="2_mYotoI1Vx" role="3cqZAp">
                  <node concept="2OqwBi" id="2_mYotoI1Vs" role="3clFbG">
                    <node concept="3Tsc0h" id="2_mYotoI1Vv" role="2OqNvi">
                      <ref role="3TtcxE" to="zs21:4Mzzjozu$$A" resolve="refAnnotation" />
                    </node>
                    <node concept="30H73N" id="2_mYotoI1Vw" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="29HgVG" id="2_mYotoI2oz" role="lGtFl">
            <node concept="3NFfHV" id="2_mYotoI2BD" role="3NFExx">
              <node concept="3clFbS" id="2_mYotoI2BE" role="2VODD2">
                <node concept="3clFbF" id="2_mYotoI2Ip" role="3cqZAp">
                  <node concept="2OqwBi" id="3QRtJrm5nUt" role="3clFbG">
                    <node concept="30H73N" id="2TXY2_CeyBR" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3QRtJrm5q7e" role="2OqNvi">
                      <ref role="3Tt5mk" to="zs21:4MzzjozsVgf" resolve="annotation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="raruj" id="2_mYotoI8bd" role="lGtFl" />
        <node concept="17Uvod" id="2_mYotoI8be" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="2_mYotoI8bf" role="3zH0cK">
            <node concept="3clFbS" id="2_mYotoI8bg" role="2VODD2">
              <node concept="3clFbF" id="2_mYotoI8vu" role="3cqZAp">
                <node concept="2OqwBi" id="2_mYotoI9my" role="3clFbG">
                  <node concept="30H73N" id="2_mYotoI8vt" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2_mYotoIaxJ" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4MzzjozFBbN" role="jymVt" />
      <node concept="3Tm1VV" id="4MzzjozFAzi" role="1B3o_S" />
    </node>
  </node>
</model>

