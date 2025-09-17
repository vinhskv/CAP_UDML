<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:07f872a1-4dfc-4d97-aca0-5f625ab13a16(UDML.core.textGen)">
  <persistence version="9" />
  <languages>
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="dmyu" ref="r:c6eeedda-084d-4659-9c4d-80b7768f2bb2(jetbrains.mps.baseLanguage.textGen)" />
    <import index="zs21" ref="r:0ee3fca1-ea02-4c7b-a6b2-8b2e273ad73d(UDML.core.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
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
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
        <property id="1237306361677" name="withIndent" index="ldcpH" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233921373471" name="jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration" flags="ig" index="1bsvg0">
        <reference id="1234781160172" name="baseTextGen" index="1YGkfN" />
        <child id="1233922432965" name="operation" index="1bwxVq" />
        <child id="1234526822589" name="function" index="1Jy66y" />
      </concept>
      <concept id="1233922353619" name="jetbrains.mps.lang.textGen.structure.OperationDeclaration" flags="sg" stub="3147100357551177019" index="1bwezc" />
      <concept id="1234524838116" name="jetbrains.mps.lang.textGen.structure.UtilityMethodDeclaration" flags="ng" index="1JqxBV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1bsvg0" id="4Mzzjozz7oa">
    <property role="TrG5h" value="UDMLTextGen" />
    <ref role="1YGkfN" to="dmyu:hXZ_k_W" resolve="BaseLanguageTextGen" />
    <node concept="1JqxBV" id="2TXY2_D2ATv" role="1Jy66y">
      <property role="TrG5h" value="getAnnotationString" />
      <node concept="37vLTG" id="2TXY2_D2ATN" role="3clF46">
        <property role="TrG5h" value="annotation" />
        <node concept="3Tqbb2" id="2TXY2_D2ATU" role="1tU5fm">
          <ref role="ehGHo" to="zs21:4MzzjozsKXg" resolve="Annotation" />
        </node>
      </node>
      <node concept="17QB3L" id="2TXY2_D2ATy" role="3clF45" />
      <node concept="3clFbS" id="2TXY2_D2ATx" role="3clF47">
        <node concept="3cpWs6" id="2TXY2_D2AU6" role="3cqZAp">
          <node concept="2OqwBi" id="2TXY2_D3L9D" role="3cqZAk">
            <node concept="37vLTw" id="2TXY2_D2AU9" role="2Oq$k0">
              <ref role="3cqZAo" node="2TXY2_D2ATN" resolve="annotation" />
            </node>
            <node concept="2qgKlT" id="2TXY2_D3LoE" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:22G2W3WJ92t" resolve="getDetailedPresentation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1bwezc" id="3QRtJrm5awu" role="1bwxVq">
      <property role="TrG5h" value="genCommaAnnotation" />
      <node concept="3cqZAl" id="3QRtJrm5awv" role="3clF45" />
      <node concept="3clFbS" id="3QRtJrm5aww" role="3clF47">
        <node concept="3cpWs8" id="3QRtJrmcdMy" role="3cqZAp">
          <node concept="3cpWsn" id="3QRtJrmdSSL" role="3cpWs9">
            <property role="TrG5h" value="oneLine" />
            <node concept="10P_77" id="3QRtJrmdSSM" role="1tU5fm" />
            <node concept="22lmx$" id="3QRtJrmdSSN" role="33vP2m">
              <node concept="2OqwBi" id="3QRtJrmdSSO" role="3uHU7w">
                <node concept="2OqwBi" id="3QRtJrmdSSP" role="2Oq$k0">
                  <node concept="37vLTw" id="3QRtJrmdT5s" role="2Oq$k0">
                    <ref role="3cqZAo" node="3QRtJrm5ay1" resolve="annotation" />
                  </node>
                  <node concept="1mfA1w" id="3QRtJrmdSSR" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="3QRtJrmdSSS" role="2OqNvi">
                  <node concept="chp4Y" id="3QRtJrmdSST" role="cj9EA">
                    <ref role="cht4Q" to="zs21:4MzzjozsvmD" resolve="Operation" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3QRtJrmdSSU" role="3uHU7B">
                <node concept="2OqwBi" id="3QRtJrmdSSV" role="2Oq$k0">
                  <node concept="37vLTw" id="3QRtJrmdT3V" role="2Oq$k0">
                    <ref role="3cqZAo" node="3QRtJrm5ay1" resolve="annotation" />
                  </node>
                  <node concept="1mfA1w" id="3QRtJrmdSSX" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="3QRtJrmdSSY" role="2OqNvi">
                  <node concept="chp4Y" id="3QRtJrmdSSZ" role="cj9EA">
                    <ref role="cht4Q" to="zs21:4Mzzjozsr2i" resolve="Property" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3QRtJrmdTaI" role="3cqZAp">
          <node concept="3clFbS" id="3QRtJrmdTaJ" role="3clFbx">
            <node concept="lc7rE" id="3QRtJrmdTaK" role="3cqZAp">
              <node concept="la8eA" id="3QRtJrmdTaL" role="lcghm">
                <property role="lacIc" value="@" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3QRtJrmdTaM" role="3clFbw">
            <ref role="3cqZAo" node="3QRtJrmdSSL" resolve="oneLine" />
          </node>
          <node concept="9aQIb" id="3QRtJrmdTaN" role="9aQIa">
            <node concept="3clFbS" id="3QRtJrmdTaO" role="9aQI4">
              <node concept="lc7rE" id="3QRtJrmdTaP" role="3cqZAp">
                <node concept="la8eA" id="3QRtJrmdTaQ" role="lcghm">
                  <property role="ldcpH" value="true" />
                  <property role="lacIc" value="@" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3QRtJrmdT6D" role="3cqZAp" />
      </node>
      <node concept="37vLTG" id="3QRtJrm5ay1" role="3clF46">
        <property role="TrG5h" value="annotation" />
        <node concept="3Tqbb2" id="3QRtJrm5ay0" role="1tU5fm">
          <ref role="ehGHo" to="zs21:4MzzjozsKXg" resolve="Annotation" />
        </node>
      </node>
    </node>
  </node>
</model>

