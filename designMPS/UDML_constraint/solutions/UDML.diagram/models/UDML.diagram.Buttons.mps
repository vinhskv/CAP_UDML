<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5fca275d-0e36-43da-bcff-6ed2567dc8fc(UDML.diagram.Buttons)">
  <persistence version="9" />
  <languages>
    <use id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="eb56ebf4-df56-438e-af06-fc1cd08b495a" name="jetbrains.mps.kotlin.smodel" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
  </languages>
  <imports>
    <import index="r3rm" ref="r:7fc96130-6279-4a55-aeeb-422a6879539d(de.itemis.mps.editor.diagram.runtime.jgraph)" />
    <import index="nkm5" ref="r:095345ad-6627-42ca-9d3f-fc1b2d9fbd61(de.itemis.mps.editor.diagram.runtime.model)" />
    <import index="1njx" ref="1144260c-e9a5-49a2-9add-39a1a1a7077e/java:com.mxgraph.view(de.itemis.mps.editor.diagram.runtime/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="2o4v" ref="r:2a70cba0-4dc5-4697-986d-5cba44622d22(de.itemis.mps.editor.diagram.runtime)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" implicit="true" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348183" name="jetbrains.mps.lang.access.structure.ExecuteWriteActionStatement" flags="nn" index="1QHqEM" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3QRtJrmEGzw">
    <property role="TrG5h" value="DeleteBoxButton" />
    <node concept="312cEg" id="S$ha3H7l9W" role="jymVt">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="S$ha3H7l9X" role="1B3o_S" />
      <node concept="3Tqbb2" id="4bqK5lKz4_k" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="5CBfeKkeNRo" role="jymVt">
      <node concept="3cqZAl" id="5CBfeKkeNRp" role="3clF45" />
      <node concept="3Tm1VV" id="5CBfeKkeNRq" role="1B3o_S" />
      <node concept="3clFbS" id="5CBfeKkeNRr" role="3clF47">
        <node concept="XkiVB" id="5CBfeKkeNRs" role="3cqZAp">
          <ref role="37wK5l" to="r3rm:2KWY$Um6y6e" resolve="ContextButton" />
          <node concept="37vLTw" id="5CBfeKkeNRt" role="37wK5m">
            <ref role="3cqZAo" node="5CBfeKkeNRv" resolve="size" />
          </node>
          <node concept="37vLTw" id="5CBfeKkeNRu" role="37wK5m">
            <ref role="3cqZAo" node="5CBfeKkeNRx" resolve="state" />
          </node>
        </node>
        <node concept="3clFbF" id="5H_uPUpHe_c" role="3cqZAp">
          <node concept="37vLTI" id="5H_uPUpHgvZ" role="3clFbG">
            <node concept="37vLTw" id="5H_uPUpHg_y" role="37vLTx">
              <ref role="3cqZAo" node="5H_uPUpHegO" resolve="node" />
            </node>
            <node concept="2OqwBi" id="4bqK5lKsGMO" role="37vLTJ">
              <node concept="Xjq3P" id="4bqK5lKsGE3" role="2Oq$k0" />
              <node concept="2OwXpG" id="4bqK5lKsGZG" role="2OqNvi">
                <ref role="2Oxat5" node="S$ha3H7l9W" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5CBfeKkeNRv" role="3clF46">
        <property role="TrG5h" value="size" />
        <node concept="10P55v" id="5CBfeKkeNRw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5CBfeKkeNRx" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="5CBfeKkeNRy" role="1tU5fm">
          <ref role="3uigEE" to="1njx:~mxCellState" resolve="mxCellState" />
        </node>
      </node>
      <node concept="37vLTG" id="5H_uPUpHegO" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4bqK5lKz5br" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3QRtJrmFkkJ" role="jymVt" />
    <node concept="3clFb_" id="5CBfeKkeNR$" role="jymVt">
      <property role="TrG5h" value="paintSymbol" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="5CBfeKkeNR_" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="5CBfeKkeNRA" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3cqZAl" id="5CBfeKkeNRB" role="3clF45" />
      <node concept="3Tmbuc" id="5CBfeKkeNRC" role="1B3o_S" />
      <node concept="3clFbS" id="5CBfeKkeNRD" role="3clF47">
        <node concept="3clFbF" id="5CBfeKkfpkW" role="3cqZAp">
          <node concept="2OqwBi" id="5CBfeKkfpkX" role="3clFbG">
            <node concept="37vLTw" id="5CBfeKkfpkY" role="2Oq$k0">
              <ref role="3cqZAo" node="5CBfeKkeNR_" resolve="g" />
            </node>
            <node concept="liA8E" id="5CBfeKkfpkZ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="37vLTw" id="5CBfeKkfpl3" role="37wK5m">
                <ref role="3cqZAo" to="r3rm:6Fu8whCapOp" resolve="LINE_COLOR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5CBfeKkfpl5" role="3cqZAp">
          <node concept="2OqwBi" id="5CBfeKkfpl6" role="3clFbG">
            <node concept="37vLTw" id="5CBfeKkfpl7" role="2Oq$k0">
              <ref role="3cqZAo" node="5CBfeKkeNR_" resolve="g" />
            </node>
            <node concept="liA8E" id="5CBfeKkfpl8" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setStroke(java.awt.Stroke)" resolve="setStroke" />
              <node concept="2ShNRf" id="5CBfeKkfpl9" role="37wK5m">
                <node concept="1pGfFk" id="5CBfeKkfpla" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~BasicStroke.&lt;init&gt;(float)" resolve="BasicStroke" />
                  <node concept="10QFUN" id="5CBfeKkfplb" role="37wK5m">
                    <node concept="1rXfSq" id="5CBfeKkfplc" role="10QFUP">
                      <ref role="37wK5l" to="r3rm:3SIh5TTm1tw" resolve="getLineWidth" />
                    </node>
                    <node concept="10OMs4" id="5CBfeKkfpld" role="10QFUM" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5CBfeKkfple" role="3cqZAp" />
        <node concept="3cpWs8" id="5CBfeKkfplf" role="3cqZAp">
          <node concept="3cpWsn" id="5CBfeKkfplg" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="5CBfeKkfplh" role="1tU5fm">
              <ref role="3uigEE" to="nkm5:190K99K1s2v" resolve="Bounds" />
            </node>
            <node concept="1rXfSq" id="5CBfeKkfpli" role="33vP2m">
              <ref role="37wK5l" to="r3rm:2KWY$Um8EIm" resolve="getBounds" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5CBfeKkfplj" role="3cqZAp">
          <node concept="1PaTwC" id="5CBfeKkfplk" role="1aUNEU">
            <node concept="3oM_SD" id="5CBfeKkfpll" role="1PaTwD">
              <property role="3oM_SC" value="Calculate" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfplm" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpln" role="1PaTwD">
              <property role="3oM_SC" value="start" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfplo" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfplp" role="1PaTwD">
              <property role="3oM_SC" value="end" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfplq" role="1PaTwD">
              <property role="3oM_SC" value="points" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfplr" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpls" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfplt" role="1PaTwD">
              <property role="3oM_SC" value="vertical" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfplu" role="1PaTwD">
              <property role="3oM_SC" value="lines" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5CBfeKkfplv" role="3cqZAp">
          <node concept="3cpWsn" id="5CBfeKkfplw" role="3cpWs9">
            <property role="TrG5h" value="leftX" />
            <node concept="10Oyi0" id="5CBfeKkfplx" role="1tU5fm" />
            <node concept="3cpWs3" id="5CBfeKkfply" role="33vP2m">
              <node concept="2OqwBi" id="5CBfeKkfplz" role="3uHU7B">
                <node concept="37vLTw" id="5CBfeKkfpl$" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CBfeKkfplg" resolve="bounds" />
                </node>
                <node concept="liA8E" id="5CBfeKkfpl_" role="2OqNvi">
                  <ref role="37wK5l" to="nkm5:5emhLECj$zL" resolve="getXInt" />
                </node>
              </node>
              <node concept="10QFUN" id="5CBfeKkfplA" role="3uHU7w">
                <node concept="1eOMI4" id="5CBfeKkfplB" role="10QFUP">
                  <node concept="17qRlL" id="5CBfeKkfplC" role="1eOMHV">
                    <node concept="2OqwBi" id="5CBfeKkfplD" role="3uHU7B">
                      <node concept="37vLTw" id="5CBfeKkfplE" role="2Oq$k0">
                        <ref role="3cqZAo" node="5CBfeKkfplg" resolve="bounds" />
                      </node>
                      <node concept="liA8E" id="5CBfeKkfplF" role="2OqNvi">
                        <ref role="37wK5l" to="nkm5:190K99K1zDx" resolve="getWidth" />
                      </node>
                    </node>
                    <node concept="3b6qkQ" id="5CBfeKkfplG" role="3uHU7w">
                      <property role="$nhwW" value="0.25" />
                    </node>
                  </node>
                </node>
                <node concept="10Oyi0" id="5CBfeKkfplH" role="10QFUM" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5CBfeKkfplI" role="3cqZAp">
          <node concept="3cpWsn" id="5CBfeKkfplJ" role="3cpWs9">
            <property role="TrG5h" value="rightX" />
            <node concept="10Oyi0" id="5CBfeKkfplK" role="1tU5fm" />
            <node concept="3cpWs3" id="5CBfeKkfplL" role="33vP2m">
              <node concept="2OqwBi" id="5CBfeKkfplM" role="3uHU7B">
                <node concept="37vLTw" id="5CBfeKkfplN" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CBfeKkfplg" resolve="bounds" />
                </node>
                <node concept="liA8E" id="5CBfeKkfplO" role="2OqNvi">
                  <ref role="37wK5l" to="nkm5:5emhLECj$zL" resolve="getXInt" />
                </node>
              </node>
              <node concept="10QFUN" id="5CBfeKkfplP" role="3uHU7w">
                <node concept="1eOMI4" id="5CBfeKkfplQ" role="10QFUP">
                  <node concept="17qRlL" id="5CBfeKkfplR" role="1eOMHV">
                    <node concept="2OqwBi" id="5CBfeKkfplS" role="3uHU7B">
                      <node concept="37vLTw" id="5CBfeKkfplT" role="2Oq$k0">
                        <ref role="3cqZAo" node="5CBfeKkfplg" resolve="bounds" />
                      </node>
                      <node concept="liA8E" id="5CBfeKkfplU" role="2OqNvi">
                        <ref role="37wK5l" to="nkm5:190K99K1zDx" resolve="getWidth" />
                      </node>
                    </node>
                    <node concept="3b6qkQ" id="5CBfeKkfplV" role="3uHU7w">
                      <property role="$nhwW" value="0.75" />
                    </node>
                  </node>
                </node>
                <node concept="10Oyi0" id="5CBfeKkfplW" role="10QFUM" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5CBfeKkfplX" role="3cqZAp">
          <node concept="3cpWsn" id="5CBfeKkfplY" role="3cpWs9">
            <property role="TrG5h" value="startY" />
            <node concept="10Oyi0" id="5CBfeKkfplZ" role="1tU5fm" />
            <node concept="3cpWs3" id="5CBfeKkfpm0" role="33vP2m">
              <node concept="2OqwBi" id="5CBfeKkfpm1" role="3uHU7B">
                <node concept="37vLTw" id="5CBfeKkfpm2" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CBfeKkfplg" resolve="bounds" />
                </node>
                <node concept="liA8E" id="5CBfeKkfpm3" role="2OqNvi">
                  <ref role="37wK5l" to="nkm5:5emhLECjCQ7" resolve="getYInt" />
                </node>
              </node>
              <node concept="10QFUN" id="5CBfeKkfpm4" role="3uHU7w">
                <node concept="1eOMI4" id="5CBfeKkfpm5" role="10QFUP">
                  <node concept="17qRlL" id="5CBfeKkfpm6" role="1eOMHV">
                    <node concept="2OqwBi" id="5CBfeKkfpm7" role="3uHU7B">
                      <node concept="37vLTw" id="5CBfeKkfpm8" role="2Oq$k0">
                        <ref role="3cqZAo" node="5CBfeKkfplg" resolve="bounds" />
                      </node>
                      <node concept="liA8E" id="5CBfeKkfpm9" role="2OqNvi">
                        <ref role="37wK5l" to="nkm5:190K99K1BGQ" resolve="getHeight" />
                      </node>
                    </node>
                    <node concept="3b6qkQ" id="5CBfeKkfpma" role="3uHU7w">
                      <property role="$nhwW" value="0.25" />
                    </node>
                  </node>
                </node>
                <node concept="10Oyi0" id="5CBfeKkfpmb" role="10QFUM" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5CBfeKkfpmc" role="3cqZAp">
          <node concept="3cpWsn" id="5CBfeKkfpmd" role="3cpWs9">
            <property role="TrG5h" value="endY" />
            <node concept="10Oyi0" id="5CBfeKkfpme" role="1tU5fm" />
            <node concept="3cpWs3" id="5CBfeKkfpmf" role="33vP2m">
              <node concept="2OqwBi" id="5CBfeKkfpmg" role="3uHU7B">
                <node concept="37vLTw" id="5CBfeKkfpmh" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CBfeKkfplg" resolve="bounds" />
                </node>
                <node concept="liA8E" id="5CBfeKkfpmi" role="2OqNvi">
                  <ref role="37wK5l" to="nkm5:5emhLECjCQ7" resolve="getYInt" />
                </node>
              </node>
              <node concept="10QFUN" id="5CBfeKkfpmj" role="3uHU7w">
                <node concept="1eOMI4" id="5CBfeKkfpmk" role="10QFUP">
                  <node concept="17qRlL" id="5CBfeKkfpml" role="1eOMHV">
                    <node concept="2OqwBi" id="5CBfeKkfpmm" role="3uHU7B">
                      <node concept="37vLTw" id="5CBfeKkfpmn" role="2Oq$k0">
                        <ref role="3cqZAo" node="5CBfeKkfplg" resolve="bounds" />
                      </node>
                      <node concept="liA8E" id="5CBfeKkfpmo" role="2OqNvi">
                        <ref role="37wK5l" to="nkm5:190K99K1BGQ" resolve="getHeight" />
                      </node>
                    </node>
                    <node concept="3b6qkQ" id="5CBfeKkfpmp" role="3uHU7w">
                      <property role="$nhwW" value="0.75" />
                    </node>
                  </node>
                </node>
                <node concept="10Oyi0" id="5CBfeKkfpmq" role="10QFUM" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5CBfeKkfpmr" role="3cqZAp">
          <node concept="1PaTwC" id="5CBfeKkfpms" role="1aUNEU">
            <node concept="3oM_SD" id="5CBfeKkfpmt" role="1PaTwD">
              <property role="3oM_SC" value="Draw" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmu" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmv" role="1PaTwD">
              <property role="3oM_SC" value="left" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmw" role="1PaTwD">
              <property role="3oM_SC" value="vertical" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmx" role="1PaTwD">
              <property role="3oM_SC" value="line" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5CBfeKkfpmy" role="3cqZAp">
          <node concept="2OqwBi" id="5CBfeKkfpmz" role="3clFbG">
            <node concept="37vLTw" id="5CBfeKkfpm$" role="2Oq$k0">
              <ref role="3cqZAo" node="5CBfeKkeNR_" resolve="g" />
            </node>
            <node concept="liA8E" id="5CBfeKkfpm_" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
              <node concept="37vLTw" id="5CBfeKkfpmA" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfplw" resolve="leftX" />
              </node>
              <node concept="37vLTw" id="5CBfeKkfpmB" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfplY" resolve="startY" />
              </node>
              <node concept="37vLTw" id="5CBfeKkfpmC" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfplw" resolve="leftX" />
              </node>
              <node concept="37vLTw" id="5CBfeKkfpmD" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfpmd" resolve="endY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5CBfeKkfpmE" role="3cqZAp">
          <node concept="1PaTwC" id="5CBfeKkfpmF" role="1aUNEU">
            <node concept="3oM_SD" id="5CBfeKkfpmG" role="1PaTwD">
              <property role="3oM_SC" value="Draw" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmH" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmI" role="1PaTwD">
              <property role="3oM_SC" value="right" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmJ" role="1PaTwD">
              <property role="3oM_SC" value="vertical" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmK" role="1PaTwD">
              <property role="3oM_SC" value="line" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5CBfeKkfpmL" role="3cqZAp">
          <node concept="2OqwBi" id="5CBfeKkfpmM" role="3clFbG">
            <node concept="37vLTw" id="5CBfeKkfpmN" role="2Oq$k0">
              <ref role="3cqZAo" node="5CBfeKkeNR_" resolve="g" />
            </node>
            <node concept="liA8E" id="5CBfeKkfpmO" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
              <node concept="37vLTw" id="5CBfeKkfpmP" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfplJ" resolve="rightX" />
              </node>
              <node concept="37vLTw" id="5CBfeKkfpmQ" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfplY" resolve="startY" />
              </node>
              <node concept="37vLTw" id="5CBfeKkfpmR" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfplJ" resolve="rightX" />
              </node>
              <node concept="37vLTw" id="5CBfeKkfpmS" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfpmd" resolve="endY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5CBfeKkfpmT" role="3cqZAp">
          <node concept="1PaTwC" id="5CBfeKkfpmU" role="1aUNEU">
            <node concept="3oM_SD" id="5CBfeKkfpmV" role="1PaTwD">
              <property role="3oM_SC" value="Calculate" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmW" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmX" role="1PaTwD">
              <property role="3oM_SC" value="start" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmY" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpmZ" role="1PaTwD">
              <property role="3oM_SC" value="end" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpn0" role="1PaTwD">
              <property role="3oM_SC" value="points" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpn1" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpn2" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpn3" role="1PaTwD">
              <property role="3oM_SC" value="horizontal" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpn4" role="1PaTwD">
              <property role="3oM_SC" value="line" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5CBfeKkfpn5" role="3cqZAp">
          <node concept="3cpWsn" id="5CBfeKkfpn6" role="3cpWs9">
            <property role="TrG5h" value="midY" />
            <node concept="10Oyi0" id="5CBfeKkfpn7" role="1tU5fm" />
            <node concept="3cpWs3" id="5CBfeKkfpn8" role="33vP2m">
              <node concept="2OqwBi" id="5CBfeKkfpn9" role="3uHU7B">
                <node concept="37vLTw" id="5CBfeKkfpna" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CBfeKkfplg" resolve="bounds" />
                </node>
                <node concept="liA8E" id="5CBfeKkfpnb" role="2OqNvi">
                  <ref role="37wK5l" to="nkm5:5emhLECjCQ7" resolve="getYInt" />
                </node>
              </node>
              <node concept="10QFUN" id="5CBfeKkfpnc" role="3uHU7w">
                <node concept="1eOMI4" id="5CBfeKkfpnd" role="10QFUP">
                  <node concept="17qRlL" id="5CBfeKkfpne" role="1eOMHV">
                    <node concept="2OqwBi" id="5CBfeKkfpnf" role="3uHU7B">
                      <node concept="37vLTw" id="5CBfeKkfpng" role="2Oq$k0">
                        <ref role="3cqZAo" node="5CBfeKkfplg" resolve="bounds" />
                      </node>
                      <node concept="liA8E" id="5CBfeKkfpnh" role="2OqNvi">
                        <ref role="37wK5l" to="nkm5:190K99K1BGQ" resolve="getHeight" />
                      </node>
                    </node>
                    <node concept="3b6qkQ" id="5CBfeKkfpni" role="3uHU7w">
                      <property role="$nhwW" value="0.5" />
                    </node>
                  </node>
                </node>
                <node concept="10Oyi0" id="5CBfeKkfpnj" role="10QFUM" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="5CBfeKkfpnk" role="3cqZAp">
          <node concept="1PaTwC" id="5CBfeKkfpnl" role="1aUNEU">
            <node concept="3oM_SD" id="5CBfeKkfpnm" role="1PaTwD">
              <property role="3oM_SC" value="Draw" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpnn" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpno" role="1PaTwD">
              <property role="3oM_SC" value="horizontal" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpnp" role="1PaTwD">
              <property role="3oM_SC" value="line" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpnq" role="1PaTwD">
              <property role="3oM_SC" value="connecting" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpnr" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpns" role="1PaTwD">
              <property role="3oM_SC" value="two" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpnt" role="1PaTwD">
              <property role="3oM_SC" value="vertical" />
            </node>
            <node concept="3oM_SD" id="5CBfeKkfpnu" role="1PaTwD">
              <property role="3oM_SC" value="lines" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5CBfeKkfpnv" role="3cqZAp">
          <node concept="2OqwBi" id="5CBfeKkfpnw" role="3clFbG">
            <node concept="37vLTw" id="5CBfeKkfpnx" role="2Oq$k0">
              <ref role="3cqZAo" node="5CBfeKkeNR_" resolve="g" />
            </node>
            <node concept="liA8E" id="5CBfeKkfpny" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawLine(int,int,int,int)" resolve="drawLine" />
              <node concept="37vLTw" id="5CBfeKkfpnz" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfplw" resolve="leftX" />
              </node>
              <node concept="37vLTw" id="5CBfeKkfpn$" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfpn6" resolve="midY" />
              </node>
              <node concept="37vLTw" id="5CBfeKkfpn_" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfplJ" resolve="rightX" />
              </node>
              <node concept="37vLTw" id="5CBfeKkfpnA" role="37wK5m">
                <ref role="3cqZAo" node="5CBfeKkfpn6" resolve="midY" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5CBfeKkeNU0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5CBfeKkeNU1" role="jymVt" />
    <node concept="3clFb_" id="5CBfeKkeNU2" role="jymVt">
      <property role="TrG5h" value="execute" />
      <property role="1EzhhJ" value="false" />
      <node concept="3cqZAl" id="5CBfeKkeNU3" role="3clF45" />
      <node concept="3Tmbuc" id="5CBfeKkeNU4" role="1B3o_S" />
      <node concept="3clFbS" id="5CBfeKkeNU5" role="3clF47">
        <node concept="1X3_iC" id="4bqK5lKC3_2" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="4bqK5lKAQWP" role="8Wnug">
            <node concept="2OqwBi" id="4bqK5lKB$Ue" role="3clFbG">
              <node concept="2OqwBi" id="4bqK5lKBgIy" role="2Oq$k0">
                <node concept="0kSF2" id="4bqK5lKAUjG" role="2Oq$k0">
                  <node concept="3uibUv" id="4bqK5lKAUjI" role="0kSFW">
                    <ref role="3uigEE" to="r3rm:6mIiWXPO0l0" resolve="BaseDCell" />
                  </node>
                  <node concept="2OqwBi" id="4bqK5lKASca" role="0kSFX">
                    <node concept="37vLTw" id="4bqK5lKAQWO" role="2Oq$k0">
                      <ref role="3cqZAo" to="r3rm:S$ha3GQL6r" resolve="myCellState" />
                    </node>
                    <node concept="liA8E" id="4bqK5lKASGp" role="2OqNvi">
                      <ref role="37wK5l" to="1njx:~mxCellState.getCell()" resolve="getCell" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4bqK5lKBzQL" role="2OqNvi">
                  <ref role="37wK5l" to="r3rm:6$5eFO9h2zB" resolve="getDiagramElement" />
                </node>
              </node>
              <node concept="liA8E" id="4bqK5lKB_fI" role="2OqNvi">
                <ref role="37wK5l" to="nkm5:27djZ8A1A6M" resolve="getSNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4bqK5lKEppy" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="4bqK5lKCFBX" role="8Wnug">
            <node concept="2OqwBi" id="4bqK5lKDsnL" role="3clFbG">
              <node concept="2OqwBi" id="4bqK5lKCFBZ" role="2Oq$k0">
                <node concept="37vLTw" id="4bqK5lKCFC0" role="2Oq$k0">
                  <ref role="3cqZAo" node="S$ha3H7l9W" resolve="node" />
                </node>
                <node concept="32TBzR" id="4bqK5lKCFC1" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="4bqK5lKDtEj" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.remove(java.lang.Object)" resolve="remove" />
                <node concept="2OqwBi" id="4bqK5lKDwJb" role="37wK5m">
                  <node concept="2OqwBi" id="4bqK5lKDwJc" role="2Oq$k0">
                    <node concept="0kSF2" id="4bqK5lKDwJd" role="2Oq$k0">
                      <node concept="3uibUv" id="4bqK5lKDwJe" role="0kSFW">
                        <ref role="3uigEE" to="r3rm:6mIiWXPO0l0" resolve="BaseDCell" />
                      </node>
                      <node concept="2OqwBi" id="4bqK5lKDwJf" role="0kSFX">
                        <node concept="37vLTw" id="4bqK5lKDwJg" role="2Oq$k0">
                          <ref role="3cqZAo" to="r3rm:S$ha3GQL6r" resolve="myCellState" />
                        </node>
                        <node concept="liA8E" id="4bqK5lKDwJh" role="2OqNvi">
                          <ref role="37wK5l" to="1njx:~mxCellState.getCell()" resolve="getCell" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4bqK5lKDwJi" role="2OqNvi">
                      <ref role="37wK5l" to="r3rm:6$5eFO9h2zB" resolve="getDiagramElement" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4bqK5lKDwJj" role="2OqNvi">
                    <ref role="37wK5l" to="nkm5:27djZ8A1A6M" resolve="getSNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4bqK5lKF2H2" role="3cqZAp" />
        <node concept="3cpWs8" id="6OfpnAg4LNB" role="3cqZAp">
          <node concept="3cpWsn" id="6OfpnAg4LNC" role="3cpWs9">
            <property role="TrG5h" value="graphComponent" />
            <node concept="3uibUv" id="6OfpnAg4LND" role="1tU5fm">
              <ref role="3uigEE" to="r3rm:190K99KyNov" resolve="MyGraphComponent" />
            </node>
            <node concept="2OqwBi" id="4bqK5lKF7gy" role="33vP2m">
              <node concept="1rXfSq" id="4bqK5lKF5Zf" role="2Oq$k0">
                <ref role="37wK5l" to="r3rm:2QokVxCJzqt" resolve="getGraph" />
              </node>
              <node concept="liA8E" id="4bqK5lKF9zq" role="2OqNvi">
                <ref role="37wK5l" to="r3rm:eyrvBdlDbJ" resolve="getGraphComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6OfpnAg4LNH" role="3cqZAp">
          <node concept="3cpWsn" id="6OfpnAg4LNI" role="3cpWs9">
            <property role="TrG5h" value="diagramCell" />
            <node concept="3uibUv" id="6OfpnAg4LNJ" role="1tU5fm">
              <ref role="3uigEE" to="r3rm:4KKQOHIOe6F" resolve="RootDiagramECell" />
            </node>
            <node concept="2OqwBi" id="6OfpnAg4LNK" role="33vP2m">
              <node concept="37vLTw" id="6OfpnAg4LNL" role="2Oq$k0">
                <ref role="3cqZAo" node="6OfpnAg4LNC" resolve="graphComponent" />
              </node>
              <node concept="liA8E" id="6OfpnAg4LNM" role="2OqNvi">
                <ref role="37wK5l" to="r3rm:2l7cIJdg_1e" resolve="getDiagramCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4bqK5lKF1qx" role="3cqZAp" />
        <node concept="3cpWs8" id="6OfpnAg4LNN" role="3cqZAp">
          <node concept="3cpWsn" id="6OfpnAg4LNO" role="3cpWs9">
            <property role="TrG5h" value="context" />
            <node concept="3uibUv" id="6OfpnAg4LNP" role="1tU5fm">
              <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
            </node>
            <node concept="2OqwBi" id="4bqK5lKFdaK" role="33vP2m">
              <node concept="37vLTw" id="4bqK5lKFbkT" role="2Oq$k0">
                <ref role="3cqZAo" node="6OfpnAg4LNI" resolve="diagramCell" />
              </node>
              <node concept="liA8E" id="4bqK5lKFg0u" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext()" resolve="getContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4bqK5lKEWvg" role="3cqZAp" />
        <node concept="1QHqEM" id="6OfpnAg4LO5" role="3cqZAp">
          <node concept="1QHqEC" id="6OfpnAg4LO6" role="1QHqEI">
            <node concept="3clFbS" id="6OfpnAg4LO7" role="1bW5cS">
              <node concept="3clFbF" id="4bqK5lKFjAD" role="3cqZAp">
                <node concept="2OqwBi" id="4bqK5lKFjAF" role="3clFbG">
                  <node concept="2OqwBi" id="4bqK5lKFjAG" role="2Oq$k0">
                    <node concept="37vLTw" id="4bqK5lKFjAH" role="2Oq$k0">
                      <ref role="3cqZAo" node="S$ha3H7l9W" resolve="node" />
                    </node>
                    <node concept="32TBzR" id="4bqK5lKFjAI" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="4bqK5lKFjAJ" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.remove(java.lang.Object)" resolve="remove" />
                    <node concept="2OqwBi" id="4bqK5lKFjAK" role="37wK5m">
                      <node concept="2OqwBi" id="4bqK5lKFjAL" role="2Oq$k0">
                        <node concept="0kSF2" id="4bqK5lKFjAM" role="2Oq$k0">
                          <node concept="3uibUv" id="4bqK5lKFjAN" role="0kSFW">
                            <ref role="3uigEE" to="r3rm:6mIiWXPO0l0" resolve="BaseDCell" />
                          </node>
                          <node concept="2OqwBi" id="4bqK5lKFjAO" role="0kSFX">
                            <node concept="37vLTw" id="4bqK5lKFjAP" role="2Oq$k0">
                              <ref role="3cqZAo" to="r3rm:S$ha3GQL6r" resolve="myCellState" />
                            </node>
                            <node concept="liA8E" id="4bqK5lKFjAQ" role="2OqNvi">
                              <ref role="37wK5l" to="1njx:~mxCellState.getCell()" resolve="getCell" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4bqK5lKFjAR" role="2OqNvi">
                          <ref role="37wK5l" to="r3rm:6$5eFO9h2zB" resolve="getDiagramElement" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4bqK5lKFjAS" role="2OqNvi">
                        <ref role="37wK5l" to="nkm5:27djZ8A1A6M" resolve="getSNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4bqK5lKFhJI" role="ukAjM">
            <node concept="37vLTw" id="4bqK5lKFhnY" role="2Oq$k0">
              <ref role="3cqZAo" node="6OfpnAg4LNO" resolve="context" />
            </node>
            <node concept="liA8E" id="4bqK5lKFifO" role="2OqNvi">
              <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4bqK5lKCEB9" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="5CBfeKkeNVY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5CBfeKkeNVZ" role="jymVt" />
    <node concept="3clFb_" id="5CBfeKkeNW0" role="jymVt">
      <property role="TrG5h" value="getTooltip" />
      <property role="1EzhhJ" value="false" />
      <node concept="17QB3L" id="5CBfeKkeNW1" role="3clF45" />
      <node concept="3Tm1VV" id="5CBfeKkeNW2" role="1B3o_S" />
      <node concept="3clFbS" id="5CBfeKkeNW3" role="3clF47">
        <node concept="3clFbF" id="4bqK5lKBB7x" role="3cqZAp">
          <node concept="2OqwBi" id="4bqK5lKBB7z" role="3clFbG">
            <node concept="2OqwBi" id="4bqK5lKBB7$" role="2Oq$k0">
              <node concept="2OqwBi" id="4bqK5lKBB7_" role="2Oq$k0">
                <node concept="2OqwBi" id="4bqK5lKBB7A" role="2Oq$k0">
                  <node concept="0kSF2" id="4bqK5lKBB7B" role="2Oq$k0">
                    <node concept="3uibUv" id="4bqK5lKBB7C" role="0kSFW">
                      <ref role="3uigEE" to="r3rm:6mIiWXPO0l0" resolve="BaseDCell" />
                    </node>
                    <node concept="2OqwBi" id="4bqK5lKBB7D" role="0kSFX">
                      <node concept="37vLTw" id="4bqK5lKBB7E" role="2Oq$k0">
                        <ref role="3cqZAo" to="r3rm:S$ha3GQL6r" resolve="myCellState" />
                      </node>
                      <node concept="liA8E" id="4bqK5lKBB7F" role="2OqNvi">
                        <ref role="37wK5l" to="1njx:~mxCellState.getCell()" resolve="getCell" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4bqK5lKBB7G" role="2OqNvi">
                    <ref role="37wK5l" to="r3rm:6$5eFO9h2zB" resolve="getDiagramElement" />
                  </node>
                </node>
                <node concept="liA8E" id="4bqK5lKBB7H" role="2OqNvi">
                  <ref role="37wK5l" to="nkm5:27djZ8A1A6M" resolve="getSNode" />
                </node>
              </node>
              <node concept="2yIwOk" id="4bqK5lKBB7I" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="4bqK5lKBB7J" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5CBfeKkeNW6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3QRtJrmF4AX" role="jymVt" />
    <node concept="3Tm1VV" id="3QRtJrmEGzx" role="1B3o_S" />
    <node concept="3uibUv" id="3QRtJrmF4An" role="1zkMxy">
      <ref role="3uigEE" to="r3rm:2KWY$Um6wZH" resolve="ContextButton" />
    </node>
  </node>
</model>

