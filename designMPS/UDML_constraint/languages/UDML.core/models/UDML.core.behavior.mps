<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:019dcdd1-4bd2-445d-abc8-5eff0d01bc2e(UDML.core.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zs21" ref="r:0ee3fca1-ea02-4c7b-a6b2-8b2e273ad73d(UDML.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="6985522012210254362" name="jetbrains.mps.lang.quotation.structure.NodeBuilderPropertyExpression" flags="nn" index="WxPPo">
        <child id="6985522012210254363" name="expression" index="WxPPp" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
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
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="13h7C7" id="4MzzjoztzcR">
    <ref role="13h7C2" to="zs21:4Mzzjozs47h" resolve="DomainModel" />
    <node concept="13i0hz" id="3QRtJrmLi$$" role="13h7CS">
      <property role="TrG5h" value="addAssociation" />
      <node concept="37vLTG" id="3QRtJrmLN85" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="3QRtJrmLN86" role="1tU5fm">
          <ref role="ehGHo" to="zs21:4Mzzjozsl3_" resolve="Classifier" />
        </node>
      </node>
      <node concept="37vLTG" id="3QRtJrmLN87" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="3QRtJrmLN88" role="1tU5fm">
          <ref role="ehGHo" to="zs21:4Mzzjozsl3_" resolve="Classifier" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3QRtJrmLi$_" role="1B3o_S" />
      <node concept="3cqZAl" id="3QRtJrmLi_8" role="3clF45" />
      <node concept="3clFbS" id="3QRtJrmLi$B" role="3clF47">
        <node concept="3cpWs8" id="3QRtJrmLMAL" role="3cqZAp">
          <node concept="3cpWsn" id="3QRtJrmLMAO" role="3cpWs9">
            <property role="TrG5h" value="memberEnds" />
            <node concept="_YKpA" id="3QRtJrmLMAH" role="1tU5fm">
              <node concept="3Tqbb2" id="3QRtJrmLMEK" role="_ZDj9">
                <ref role="ehGHo" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
              </node>
            </node>
            <node concept="BsUDl" id="4MzzjoztZ1Y" role="33vP2m">
              <ref role="37wK5l" node="3QRtJrmLiXt" resolve="getRelationMemberEnd" />
              <node concept="37vLTw" id="4MzzjoztZPW" role="37wK5m">
                <ref role="3cqZAo" node="3QRtJrmLN85" resolve="source" />
              </node>
              <node concept="37vLTw" id="4Mzzjozu0tP" role="37wK5m">
                <ref role="3cqZAo" node="3QRtJrmLN87" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3QRtJrmM0l4" role="3cqZAp">
          <node concept="3clFbS" id="3QRtJrmM0l6" role="3clFbx">
            <node concept="3cpWs6" id="3QRtJrmMfMs" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="3QRtJrmMeHj" role="3clFbw">
            <node concept="3cmrfG" id="3QRtJrmMfDe" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="3QRtJrmM2JA" role="3uHU7B">
              <node concept="37vLTw" id="3QRtJrmM0yh" role="2Oq$k0">
                <ref role="3cqZAo" node="3QRtJrmLMAO" resolve="memberEnds" />
              </node>
              <node concept="34oBXx" id="3QRtJrmMcBe" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3QRtJrmLDni" role="3cqZAp">
          <node concept="2OqwBi" id="3QRtJrmLG4K" role="3clFbG">
            <node concept="2OqwBi" id="3QRtJrmLDzd" role="2Oq$k0">
              <node concept="13iPFW" id="3QRtJrmLDnh" role="2Oq$k0" />
              <node concept="3Tsc0h" id="3QRtJrmLDL4" role="2OqNvi">
                <ref role="3TtcxE" to="zs21:4Mzzjozse5c" resolve="element" />
              </node>
            </node>
            <node concept="TSZUe" id="3QRtJrmLI1$" role="2OqNvi">
              <node concept="2pJPEk" id="3QRtJrmLLMm" role="25WWJ7">
                <node concept="2pJPED" id="3QRtJrmLLMo" role="2pJPEn">
                  <ref role="2pJxaS" to="zs21:4Mzzjozthbf" resolve="Association" />
                  <node concept="2pIpSj" id="3QRtJrmLMnl" role="2pJxcM">
                    <ref role="2pIpSl" to="zs21:3CgoCDqh3fh" resolve="MemberEndSource" />
                    <node concept="36biLy" id="4Mzzjozu9$6" role="28nt2d">
                      <node concept="2OqwBi" id="4MzzjozucxG" role="36biLW">
                        <node concept="37vLTw" id="4Mzzjozu9Zx" role="2Oq$k0">
                          <ref role="3cqZAo" node="3QRtJrmLMAO" resolve="memberEnds" />
                        </node>
                        <node concept="34jXtK" id="4MzzjozuepO" role="2OqNvi">
                          <node concept="3cmrfG" id="4Mzzjozufsu" role="25WWJ7">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2pIpSj" id="3QRtJrmLSK9" role="2pJxcM">
                    <ref role="2pIpSl" to="zs21:3CgoCDqh3fi" resolve="MemberEndTarget" />
                    <node concept="36biLy" id="3QRtJrmLSTM" role="28nt2d">
                      <node concept="2OqwBi" id="3QRtJrmLVkZ" role="36biLW">
                        <node concept="37vLTw" id="3QRtJrmLT0N" role="2Oq$k0">
                          <ref role="3cqZAo" node="3QRtJrmLMAO" resolve="memberEnds" />
                        </node>
                        <node concept="34jXtK" id="3QRtJrmLZOJ" role="2OqNvi">
                          <node concept="3cmrfG" id="3QRtJrmLZZz" role="25WWJ7">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4MzzjozukVf" role="13h7CS">
      <property role="TrG5h" value="addComposition" />
      <node concept="37vLTG" id="4MzzjozukVg" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="4MzzjozukVh" role="1tU5fm">
          <ref role="ehGHo" to="zs21:4Mzzjozsl3_" resolve="Classifier" />
        </node>
      </node>
      <node concept="37vLTG" id="4MzzjozukVi" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="4MzzjozukVj" role="1tU5fm">
          <ref role="ehGHo" to="zs21:4Mzzjozsl3_" resolve="Classifier" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MzzjozukVk" role="1B3o_S" />
      <node concept="3cqZAl" id="4MzzjozukVl" role="3clF45" />
      <node concept="3clFbS" id="4MzzjozukVm" role="3clF47">
        <node concept="3cpWs8" id="4MzzjozukVn" role="3cqZAp">
          <node concept="3cpWsn" id="4MzzjozukVo" role="3cpWs9">
            <property role="TrG5h" value="memberEnds" />
            <node concept="_YKpA" id="4MzzjozukVp" role="1tU5fm">
              <node concept="3Tqbb2" id="4MzzjozukVq" role="_ZDj9">
                <ref role="ehGHo" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
              </node>
            </node>
            <node concept="BsUDl" id="4MzzjozukVr" role="33vP2m">
              <ref role="37wK5l" node="3QRtJrmLiXt" resolve="getRelationMemberEnd" />
              <node concept="37vLTw" id="4MzzjozukVs" role="37wK5m">
                <ref role="3cqZAo" node="4MzzjozukVg" resolve="source" />
              </node>
              <node concept="37vLTw" id="4MzzjozukVt" role="37wK5m">
                <ref role="3cqZAo" node="4MzzjozukVi" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4MzzjozukVu" role="3cqZAp">
          <node concept="3clFbS" id="4MzzjozukVv" role="3clFbx">
            <node concept="3cpWs6" id="4MzzjozukVw" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="4MzzjozukVx" role="3clFbw">
            <node concept="3cmrfG" id="4MzzjozukVy" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="4MzzjozukVz" role="3uHU7B">
              <node concept="37vLTw" id="4MzzjozukV$" role="2Oq$k0">
                <ref role="3cqZAo" node="4MzzjozukVo" resolve="memberEnds" />
              </node>
              <node concept="34oBXx" id="4MzzjozukV_" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MzzjozukVA" role="3cqZAp">
          <node concept="2OqwBi" id="4MzzjozukVB" role="3clFbG">
            <node concept="2OqwBi" id="4MzzjozukVC" role="2Oq$k0">
              <node concept="13iPFW" id="4MzzjozukVD" role="2Oq$k0" />
              <node concept="3Tsc0h" id="4MzzjozukVE" role="2OqNvi">
                <ref role="3TtcxE" to="zs21:4Mzzjozse5c" resolve="element" />
              </node>
            </node>
            <node concept="TSZUe" id="4MzzjozukVF" role="2OqNvi">
              <node concept="2pJPEk" id="4MzzjozukVG" role="25WWJ7">
                <node concept="2pJPED" id="4MzzjozukVH" role="2pJPEn">
                  <ref role="2pJxaS" to="zs21:4MzzjoztkaA" resolve="Composition" />
                  <node concept="2pIpSj" id="4MzzjozukVI" role="2pJxcM">
                    <ref role="2pIpSl" to="zs21:3CgoCDqh3fh" resolve="MemberEndSource" />
                    <node concept="36biLy" id="4MzzjozukVJ" role="28nt2d">
                      <node concept="2OqwBi" id="4MzzjozukVK" role="36biLW">
                        <node concept="37vLTw" id="4MzzjozukVL" role="2Oq$k0">
                          <ref role="3cqZAo" node="4MzzjozukVo" resolve="memberEnds" />
                        </node>
                        <node concept="34jXtK" id="4MzzjozukVM" role="2OqNvi">
                          <node concept="3cmrfG" id="4MzzjozukVN" role="25WWJ7">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2pIpSj" id="4MzzjozukVO" role="2pJxcM">
                    <ref role="2pIpSl" to="zs21:3CgoCDqh3fi" resolve="MemberEndTarget" />
                    <node concept="36biLy" id="4MzzjozukVP" role="28nt2d">
                      <node concept="2OqwBi" id="4MzzjozukVQ" role="36biLW">
                        <node concept="37vLTw" id="4MzzjozukVR" role="2Oq$k0">
                          <ref role="3cqZAo" node="4MzzjozukVo" resolve="memberEnds" />
                        </node>
                        <node concept="34jXtK" id="4MzzjozukVS" role="2OqNvi">
                          <node concept="3cmrfG" id="4MzzjozukVT" role="25WWJ7">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4Mzzjozurnj" role="13h7CS">
      <property role="TrG5h" value="addAggregation" />
      <node concept="37vLTG" id="4Mzzjozurnk" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="4Mzzjozurnl" role="1tU5fm">
          <ref role="ehGHo" to="zs21:4Mzzjozsl3_" resolve="Classifier" />
        </node>
      </node>
      <node concept="37vLTG" id="4Mzzjozurnm" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="4Mzzjozurnn" role="1tU5fm">
          <ref role="ehGHo" to="zs21:4Mzzjozsl3_" resolve="Classifier" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4Mzzjozurno" role="1B3o_S" />
      <node concept="3cqZAl" id="4Mzzjozurnp" role="3clF45" />
      <node concept="3clFbS" id="4Mzzjozurnq" role="3clF47">
        <node concept="3cpWs8" id="4Mzzjozurnr" role="3cqZAp">
          <node concept="3cpWsn" id="4Mzzjozurns" role="3cpWs9">
            <property role="TrG5h" value="memberEnds" />
            <node concept="_YKpA" id="4Mzzjozurnt" role="1tU5fm">
              <node concept="3Tqbb2" id="4Mzzjozurnu" role="_ZDj9">
                <ref role="ehGHo" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
              </node>
            </node>
            <node concept="BsUDl" id="4Mzzjozurnv" role="33vP2m">
              <ref role="37wK5l" node="3QRtJrmLiXt" resolve="getRelationMemberEnd" />
              <node concept="37vLTw" id="4Mzzjozurnw" role="37wK5m">
                <ref role="3cqZAo" node="4Mzzjozurnk" resolve="source" />
              </node>
              <node concept="37vLTw" id="4Mzzjozurnx" role="37wK5m">
                <ref role="3cqZAo" node="4Mzzjozurnm" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Mzzjozurny" role="3cqZAp">
          <node concept="3clFbS" id="4Mzzjozurnz" role="3clFbx">
            <node concept="3cpWs6" id="4Mzzjozurn$" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="4Mzzjozurn_" role="3clFbw">
            <node concept="3cmrfG" id="4MzzjozurnA" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="4MzzjozurnB" role="3uHU7B">
              <node concept="37vLTw" id="4MzzjozurnC" role="2Oq$k0">
                <ref role="3cqZAo" node="4Mzzjozurns" resolve="memberEnds" />
              </node>
              <node concept="34oBXx" id="4MzzjozurnD" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MzzjozurnE" role="3cqZAp">
          <node concept="2OqwBi" id="4MzzjozurnF" role="3clFbG">
            <node concept="2OqwBi" id="4MzzjozurnG" role="2Oq$k0">
              <node concept="13iPFW" id="4MzzjozurnH" role="2Oq$k0" />
              <node concept="3Tsc0h" id="4MzzjozurnI" role="2OqNvi">
                <ref role="3TtcxE" to="zs21:4Mzzjozse5c" resolve="element" />
              </node>
            </node>
            <node concept="TSZUe" id="4MzzjozurnJ" role="2OqNvi">
              <node concept="2pJPEk" id="4MzzjozurnK" role="25WWJ7">
                <node concept="2pJPED" id="4MzzjozurnL" role="2pJPEn">
                  <ref role="2pJxaS" to="zs21:4Mzzjozto9H" resolve="Aggregation" />
                  <node concept="2pIpSj" id="4MzzjozurnM" role="2pJxcM">
                    <ref role="2pIpSl" to="zs21:3CgoCDqh3fh" resolve="MemberEndSource" />
                    <node concept="36biLy" id="4MzzjozurnN" role="28nt2d">
                      <node concept="2OqwBi" id="4MzzjozurnO" role="36biLW">
                        <node concept="37vLTw" id="4MzzjozurnP" role="2Oq$k0">
                          <ref role="3cqZAo" node="4Mzzjozurns" resolve="memberEnds" />
                        </node>
                        <node concept="34jXtK" id="4MzzjozurnQ" role="2OqNvi">
                          <node concept="3cmrfG" id="4MzzjozurnR" role="25WWJ7">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2pIpSj" id="4MzzjozurnS" role="2pJxcM">
                    <ref role="2pIpSl" to="zs21:3CgoCDqh3fi" resolve="MemberEndTarget" />
                    <node concept="36biLy" id="4MzzjozurnT" role="28nt2d">
                      <node concept="2OqwBi" id="4MzzjozurnU" role="36biLW">
                        <node concept="37vLTw" id="4MzzjozurnV" role="2Oq$k0">
                          <ref role="3cqZAo" node="4Mzzjozurns" resolve="memberEnds" />
                        </node>
                        <node concept="34jXtK" id="4MzzjozurnW" role="2OqNvi">
                          <node concept="3cmrfG" id="4MzzjozurnX" role="25WWJ7">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3QRtJrmLiXt" role="13h7CS">
      <property role="TrG5h" value="getRelationMemberEnd" />
      <node concept="3Tm1VV" id="3QRtJrmLiXu" role="1B3o_S" />
      <node concept="_YKpA" id="3QRtJrmLjkt" role="3clF45">
        <node concept="3Tqbb2" id="3QRtJrmLjlf" role="_ZDj9">
          <ref role="ehGHo" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
        </node>
      </node>
      <node concept="3clFbS" id="3QRtJrmLiXw" role="3clF47">
        <node concept="3cpWs8" id="3QRtJrmLjqO" role="3cqZAp">
          <node concept="3cpWsn" id="3QRtJrmLjqR" role="3cpWs9">
            <property role="TrG5h" value="memberEnds" />
            <node concept="_YKpA" id="3QRtJrmLjqM" role="1tU5fm">
              <node concept="3Tqbb2" id="3QRtJrmLjre" role="_ZDj9">
                <ref role="ehGHo" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
              </node>
            </node>
            <node concept="2ShNRf" id="3QRtJrmLjsI" role="33vP2m">
              <node concept="Tc6Ow" id="3QRtJrmLjyT" role="2ShVmc">
                <node concept="3Tqbb2" id="3QRtJrmLj_e" role="HW$YZ">
                  <ref role="ehGHo" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2_mYotrpVla" role="3cqZAp">
          <node concept="3cpWsn" id="2_mYotrpVld" role="3cpWs9">
            <property role="TrG5h" value="sourceEnd" />
            <node concept="3Tqbb2" id="2_mYotrpVl8" role="1tU5fm">
              <ref role="ehGHo" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
            </node>
            <node concept="2pJPEk" id="2_mYotrpVM9" role="33vP2m">
              <node concept="2pJPED" id="2_mYotrpVMb" role="2pJPEn">
                <ref role="2pJxaS" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
                <node concept="2pIpSj" id="2_mYotrpVPn" role="2pJxcM">
                  <ref role="2pIpSl" to="zs21:2_mYotpLvDt" resolve="memberEnd" />
                  <node concept="36biLy" id="2_mYotrpVPo" role="28nt2d">
                    <node concept="37vLTw" id="2_mYotrpVPp" role="36biLW">
                      <ref role="3cqZAo" node="3QRtJrmLjmt" resolve="source" />
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="2_mYotrpVPt" role="2pJxcM">
                  <ref role="2pJxcJ" to="zs21:2_mYotpLvDr" resolve="role" />
                  <node concept="WxPPo" id="2_mYotrpVPu" role="28ntcv">
                    <node concept="2OqwBi" id="2_mYotrpVPv" role="WxPPp">
                      <node concept="1XH99k" id="2_mYotrpVPw" role="2Oq$k0">
                        <ref role="1XH99l" to="zs21:4Mzzjozt6dL" resolve="Role" />
                      </node>
                      <node concept="2ViDtV" id="2_mYotrpVPx" role="2OqNvi">
                        <ref role="2ViDtZ" to="zs21:2_mYotp$WhR" resolve="One" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2pIpSj" id="2_mYotrpVPy" role="2pJxcM">
                  <ref role="2pIpSl" to="zs21:2_mYotqBvnt" resolve="property" />
                  <node concept="36biLy" id="2_mYotrpVPz" role="28nt2d">
                    <node concept="2ShNRf" id="2_mYotrpVP$" role="36biLW">
                      <node concept="3zrR0B" id="2_mYotrpVP_" role="2ShVmc">
                        <node concept="3Tqbb2" id="2_mYotrpVPA" role="3zrR0E">
                          <ref role="ehGHo" to="zs21:4Mzzjozsr2i" resolve="Property" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2_mYotrq0oa" role="3cqZAp">
          <node concept="3cpWsn" id="2_mYotrq0ob" role="3cpWs9">
            <property role="TrG5h" value="targetEnd" />
            <node concept="3Tqbb2" id="2_mYotrq0oc" role="1tU5fm">
              <ref role="ehGHo" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
            </node>
            <node concept="2pJPEk" id="2_mYotrq0od" role="33vP2m">
              <node concept="2pJPED" id="2_mYotrq0oe" role="2pJPEn">
                <ref role="2pJxaS" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
                <node concept="2pIpSj" id="2_mYotrq0sd" role="2pJxcM">
                  <ref role="2pIpSl" to="zs21:2_mYotpLvDt" resolve="memberEnd" />
                  <node concept="36biLy" id="2_mYotrq0se" role="28nt2d">
                    <node concept="37vLTw" id="2_mYotrq0sf" role="36biLW">
                      <ref role="3cqZAo" node="3QRtJrmLjoP" resolve="target" />
                    </node>
                  </node>
                </node>
                <node concept="2pJxcG" id="2_mYotrq0sj" role="2pJxcM">
                  <ref role="2pJxcJ" to="zs21:2_mYotpLvDr" resolve="role" />
                  <node concept="WxPPo" id="2_mYotrq0sk" role="28ntcv">
                    <node concept="2OqwBi" id="2_mYotrq0sl" role="WxPPp">
                      <node concept="1XH99k" id="2_mYotrq0sm" role="2Oq$k0">
                        <ref role="1XH99l" to="zs21:4Mzzjozt6dL" resolve="Role" />
                      </node>
                      <node concept="2ViDtV" id="2_mYotrq0sn" role="2OqNvi">
                        <ref role="2ViDtZ" to="zs21:2_mYotp$WhR" resolve="One" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2pIpSj" id="2_mYotrq0so" role="2pJxcM">
                  <ref role="2pIpSl" to="zs21:2_mYotqBvnt" resolve="property" />
                  <node concept="36biLy" id="2_mYotrq0sp" role="28nt2d">
                    <node concept="2ShNRf" id="2_mYotrq0sq" role="36biLW">
                      <node concept="3zrR0B" id="2_mYotrq0sr" role="2ShVmc">
                        <node concept="3Tqbb2" id="2_mYotrq0ss" role="3zrR0E">
                          <ref role="ehGHo" to="zs21:4Mzzjozsr2i" resolve="Property" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_mYotr$fLG" role="3cqZAp">
          <node concept="37vLTI" id="2_mYotr$fLI" role="3clFbG">
            <node concept="2OqwBi" id="2_mYotr$fLJ" role="37vLTJ">
              <node concept="2OqwBi" id="2_mYotr$fLK" role="2Oq$k0">
                <node concept="37vLTw" id="2_mYotr$fLL" role="2Oq$k0">
                  <ref role="3cqZAo" node="2_mYotrpVld" resolve="sourceEnd" />
                </node>
                <node concept="3TrEf2" id="2_mYotr$fLM" role="2OqNvi">
                  <ref role="3Tt5mk" to="zs21:2_mYotqBvnt" resolve="property" />
                </node>
              </node>
              <node concept="3TrEf2" id="2_mYotr$fLN" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:huRkE2T" resolve="type" />
              </node>
            </node>
            <node concept="2pJPEk" id="2_mYotr$fLO" role="37vLTx">
              <node concept="2pJPED" id="2_mYotr$fLP" role="2pJPEn">
                <ref role="2pJxaS" to="tpee:g7uibYu" resolve="ClassifierType" />
                <node concept="2pIpSj" id="2_mYotr$fLQ" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:g7uigIF" resolve="classifier" />
                  <node concept="36biLy" id="2_mYotr$fLR" role="28nt2d">
                    <node concept="1PxgMI" id="2_mYotr$fLS" role="36biLW">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="2_mYotr$fLT" role="3oSUPX">
                        <ref role="cht4Q" to="zs21:4MzzjozsloV" resolve="Class" />
                      </node>
                      <node concept="2OqwBi" id="2_mYotr$fLU" role="1m5AlR">
                        <node concept="3TrEf2" id="2_mYotr$fLV" role="2OqNvi">
                          <ref role="3Tt5mk" to="zs21:2_mYotpLvDt" resolve="memberEnd" />
                        </node>
                        <node concept="37vLTw" id="2_mYotr$fLW" role="2Oq$k0">
                          <ref role="3cqZAo" node="2_mYotrq0ob" resolve="targetEnd" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2_mYotr$fJp" role="3cqZAp" />
        <node concept="3clFbF" id="2_mYotrq0H7" role="3cqZAp">
          <node concept="37vLTI" id="2_mYotrq0H9" role="3clFbG">
            <node concept="2OqwBi" id="2_mYotrq0Ha" role="37vLTJ">
              <node concept="2OqwBi" id="2_mYotrq0Hb" role="2Oq$k0">
                <node concept="37vLTw" id="2_mYotrq0Hc" role="2Oq$k0">
                  <ref role="3cqZAo" node="2_mYotrq0ob" resolve="targetEnd" />
                </node>
                <node concept="3TrEf2" id="2_mYotrq0Hd" role="2OqNvi">
                  <ref role="3Tt5mk" to="zs21:2_mYotqBvnt" resolve="property" />
                </node>
              </node>
              <node concept="3TrEf2" id="2_mYotrq0He" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:huRkE2T" resolve="type" />
              </node>
            </node>
            <node concept="2pJPEk" id="2_mYotrq0Hf" role="37vLTx">
              <node concept="2pJPED" id="2_mYotrq0Hg" role="2pJPEn">
                <ref role="2pJxaS" to="tpee:g7uibYu" resolve="ClassifierType" />
                <node concept="2pIpSj" id="2_mYotrq0Hh" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:g7uigIF" resolve="classifier" />
                  <node concept="36biLy" id="2_mYotrq0Hi" role="28nt2d">
                    <node concept="1PxgMI" id="2_mYotrq0Hj" role="36biLW">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="2_mYotrq0Hk" role="3oSUPX">
                        <ref role="cht4Q" to="zs21:4MzzjozsloV" resolve="Class" />
                      </node>
                      <node concept="2OqwBi" id="2_mYotrq0Hl" role="1m5AlR">
                        <node concept="3TrEf2" id="2_mYotrq0Hm" role="2OqNvi">
                          <ref role="3Tt5mk" to="zs21:2_mYotpLvDt" resolve="memberEnd" />
                        </node>
                        <node concept="37vLTw" id="2_mYotrq0Hn" role="2Oq$k0">
                          <ref role="3cqZAo" node="2_mYotrpVld" resolve="sourceEnd" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3QRtJrmLk$H" role="3cqZAp">
          <node concept="2OqwBi" id="3QRtJrmLmvc" role="3clFbG">
            <node concept="37vLTw" id="3QRtJrmLk$F" role="2Oq$k0">
              <ref role="3cqZAo" node="3QRtJrmLjqR" resolve="memberEnds" />
            </node>
            <node concept="TSZUe" id="3QRtJrmLpwA" role="2OqNvi">
              <node concept="37vLTw" id="3QRtJrmLpAL" role="25WWJ7">
                <ref role="3cqZAo" node="2_mYotrpVld" resolve="sourceEnd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3QRtJrmLq1z" role="3cqZAp">
          <node concept="2OqwBi" id="3QRtJrmLsjD" role="3clFbG">
            <node concept="37vLTw" id="3QRtJrmLq1x" role="2Oq$k0">
              <ref role="3cqZAo" node="3QRtJrmLjqR" resolve="memberEnds" />
            </node>
            <node concept="TSZUe" id="3QRtJrmLtRW" role="2OqNvi">
              <node concept="37vLTw" id="3QRtJrmLtWi" role="25WWJ7">
                <ref role="3cqZAo" node="2_mYotrq0ob" resolve="targetEnd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3QRtJrmLpQG" role="3cqZAp">
          <node concept="37vLTw" id="3QRtJrmLpQE" role="3clFbG">
            <ref role="3cqZAo" node="3QRtJrmLjqR" resolve="memberEnds" />
          </node>
        </node>
        <node concept="3clFbH" id="3QRtJrmLjDy" role="3cqZAp" />
      </node>
      <node concept="37vLTG" id="3QRtJrmLjmt" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="3QRtJrmLjms" role="1tU5fm">
          <ref role="ehGHo" to="zs21:4Mzzjozsl3_" resolve="Classifier" />
        </node>
      </node>
      <node concept="37vLTG" id="3QRtJrmLjoP" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="3QRtJrmLjpK" role="1tU5fm">
          <ref role="ehGHo" to="zs21:4Mzzjozsl3_" resolve="Classifier" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4MzzjoztzcS" role="13h7CW">
      <node concept="3clFbS" id="4MzzjoztzcT" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4Mzzjozvzwt">
    <ref role="13h7C2" to="zs21:4MzzjozsKXg" resolve="Annotation" />
    <node concept="13hLZK" id="4Mzzjozvzwu" role="13h7CW">
      <node concept="3clFbS" id="4Mzzjozvzwv" role="2VODD2">
        <node concept="3clFbF" id="4Mzzjozv_LA" role="3cqZAp">
          <node concept="37vLTI" id="4MzzjozvCQ8" role="3clFbG">
            <node concept="2OqwBi" id="4MzzjozvEkY" role="37vLTx">
              <node concept="2OqwBi" id="4MzzjozvDa1" role="2Oq$k0">
                <node concept="13iPFW" id="4MzzjozvCWz" role="2Oq$k0" />
                <node concept="2yIwOk" id="4MzzjozvDIJ" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="4MzzjozvEV2" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="2OqwBi" id="4MzzjozvAr2" role="37vLTJ">
              <node concept="13iPFW" id="4Mzzjozv_L_" role="2Oq$k0" />
              <node concept="3TrcHB" id="4MzzjozvBhl" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4MzzjozyWyU">
    <property role="3GE5qa" value="class.relation" />
    <ref role="13h7C2" to="zs21:4MzzjozsYfw" resolve="MemberEnd" />
    <node concept="13hLZK" id="4MzzjozyWyV" role="13h7CW">
      <node concept="3clFbS" id="4MzzjozyWyW" role="2VODD2">
        <node concept="3clFbF" id="4MzzjozyXBN" role="3cqZAp">
          <node concept="37vLTI" id="4MzzjozyYVW" role="3clFbG">
            <node concept="2ShNRf" id="4MzzjozyZhD" role="37vLTx">
              <node concept="3zrR0B" id="4Mzzjozz0Mm" role="2ShVmc">
                <node concept="3Tqbb2" id="4Mzzjozz0Mo" role="3zrR0E">
                  <ref role="ehGHo" to="zs21:4Mzzjozsr2i" resolve="Property" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4MzzjozyXM7" role="37vLTJ">
              <node concept="13iPFW" id="4MzzjozyXBM" role="2Oq$k0" />
              <node concept="3TrEf2" id="4MzzjozyYgK" role="2OqNvi">
                <ref role="3Tt5mk" to="zs21:2_mYotqBvnt" resolve="property" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

