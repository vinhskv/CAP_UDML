<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1a755cfd-14ba-4098-9900-105a55ae6b22(UDML.diagram.Shapes)">
  <persistence version="9" />
  <languages>
    <use id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram" version="1" />
  </languages>
  <imports>
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram">
      <concept id="7464726264117247548" name="de.itemis.mps.editor.diagram.structure.ShapeDefinition" flags="ng" index="2xDbr0">
        <child id="7464726264118062179" name="draw" index="2xOiiv" />
        <child id="3454709602156469310" name="parameters" index="1xmOgE" />
      </concept>
      <concept id="7464726264117281947" name="de.itemis.mps.editor.diagram.structure.Parameter_Bounds" flags="ng" index="2xDkLB" />
      <concept id="7464726264117345981" name="de.itemis.mps.editor.diagram.structure.Function_DrawShape" flags="ig" index="2xDzp1" />
      <concept id="7464726264117388668" name="de.itemis.mps.editor.diagram.structure.Parameter_Graphics2D" flags="ng" index="2xDIQ0" />
      <concept id="3454709602156468860" name="de.itemis.mps.editor.diagram.structure.ShapeParameterDeclaration" flags="ng" index="1xmO9C">
        <child id="3454709602156468949" name="type" index="1xmOb1" />
      </concept>
      <concept id="3454709602156593329" name="de.itemis.mps.editor.diagram.structure.ShapeParameterReference" flags="ng" index="1xnly_">
        <reference id="3454709602156593404" name="parameter" index="1xnlzC" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2xDbr0" id="3QRtJrmEdcd">
    <property role="TrG5h" value="Arrow" />
    <node concept="1xmO9C" id="7RutGRS910n" role="1xmOgE">
      <property role="TrG5h" value="relativeHeight" />
      <node concept="10P55v" id="7RutGRS910o" role="1xmOb1" />
    </node>
    <node concept="2xDzp1" id="3QRtJrmEdOE" role="2xOiiv">
      <node concept="3clFbS" id="3QRtJrmEdOF" role="2VODD2">
        <node concept="3cpWs8" id="7RutGRS912j" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS912k" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="7RutGRS912l" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="7RutGRS912m" role="33vP2m">
              <node concept="1pGfFk" id="7RutGRS912n" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS912o" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS912p" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10P55v" id="7RutGRS912q" role="1tU5fm" />
            <node concept="2OqwBi" id="7RutGRS912r" role="33vP2m">
              <node concept="2xDkLB" id="7RutGRS912s" role="2Oq$k0" />
              <node concept="liA8E" id="7RutGRS912t" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getWidth()" resolve="getWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS912u" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS912v" role="3cpWs9">
            <property role="TrG5h" value="height" />
            <node concept="10P55v" id="7RutGRS912w" role="1tU5fm" />
            <node concept="2OqwBi" id="7RutGRS912x" role="33vP2m">
              <node concept="2xDkLB" id="7RutGRS912y" role="2Oq$k0" />
              <node concept="liA8E" id="7RutGRS912z" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getHeight()" resolve="getHeight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS912$" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS912_" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10P55v" id="7RutGRS912A" role="1tU5fm" />
            <node concept="2OqwBi" id="7RutGRS912B" role="33vP2m">
              <node concept="2xDkLB" id="7RutGRS912C" role="2Oq$k0" />
              <node concept="liA8E" id="7RutGRS912D" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getX()" resolve="getX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS912E" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS912F" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10P55v" id="7RutGRS912G" role="1tU5fm" />
            <node concept="2OqwBi" id="7RutGRS912H" role="33vP2m">
              <node concept="2xDkLB" id="7RutGRS912I" role="2Oq$k0" />
              <node concept="liA8E" id="7RutGRS912J" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getY()" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS912K" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS912L" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10P55v" id="7RutGRS912M" role="1tU5fm" />
            <node concept="3cpWs3" id="7RutGRS912N" role="33vP2m">
              <node concept="37vLTw" id="7RutGRS912O" role="3uHU7w">
                <ref role="3cqZAo" node="7RutGRS912p" resolve="width" />
              </node>
              <node concept="37vLTw" id="7RutGRS912P" role="3uHU7B">
                <ref role="3cqZAo" node="7RutGRS912_" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS912W" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS912X" role="3cpWs9">
            <property role="TrG5h" value="centerY" />
            <node concept="10P55v" id="7RutGRS912Y" role="1tU5fm" />
            <node concept="3cpWs3" id="7RutGRS912Z" role="33vP2m">
              <node concept="FJ1c_" id="7RutGRS9130" role="3uHU7w">
                <node concept="3cmrfG" id="7RutGRS9131" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="7RutGRS9132" role="3uHU7B">
                  <ref role="3cqZAo" node="7RutGRS912v" resolve="height" />
                </node>
              </node>
              <node concept="37vLTw" id="7RutGRS9133" role="3uHU7B">
                <ref role="3cqZAo" node="7RutGRS912F" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3CgoCDqplY$" role="3cqZAp">
          <node concept="3cpWsn" id="3CgoCDqplYB" role="3cpWs9">
            <property role="TrG5h" value="leftX" />
            <node concept="10P55v" id="3CgoCDqplYy" role="1tU5fm" />
            <node concept="3cpWsd" id="3CgoCDqpnD9" role="33vP2m">
              <node concept="17qRlL" id="3CgoCDqpnFb" role="3uHU7w">
                <node concept="1xnly_" id="3CgoCDqpnGc" role="3uHU7w">
                  <ref role="1xnlzC" node="7RutGRS910n" resolve="relativeHeight" />
                </node>
                <node concept="37vLTw" id="3CgoCDqpnEa" role="3uHU7B">
                  <ref role="3cqZAo" node="7RutGRS912v" resolve="height" />
                </node>
              </node>
              <node concept="37vLTw" id="3CgoCDqpmyd" role="3uHU7B">
                <ref role="3cqZAo" node="7RutGRS912L" resolve="x2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS9134" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS9135" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS9136" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS912k" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS9137" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(double,double)" resolve="moveTo" />
              <node concept="37vLTw" id="7RutGRS9138" role="37wK5m">
                <ref role="3cqZAo" node="3CgoCDqplYB" resolve="leftX" />
              </node>
              <node concept="3cpWsd" id="7RutGRS9139" role="37wK5m">
                <node concept="17qRlL" id="7RutGRS913a" role="3uHU7w">
                  <node concept="1xnly_" id="7RutGRS913b" role="3uHU7w">
                    <ref role="1xnlzC" node="7RutGRS910n" resolve="relativeHeight" />
                  </node>
                  <node concept="37vLTw" id="7RutGRS913c" role="3uHU7B">
                    <ref role="3cqZAo" node="7RutGRS912v" resolve="height" />
                  </node>
                </node>
                <node concept="37vLTw" id="7RutGRS913d" role="3uHU7B">
                  <ref role="3cqZAo" node="7RutGRS912X" resolve="centerY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS913e" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS913f" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS913g" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS912k" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS913h" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="7RutGRS913i" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS912L" resolve="x2" />
              </node>
              <node concept="37vLTw" id="7RutGRS913j" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS912X" resolve="centerY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS913k" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS913l" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS913m" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS912k" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS913n" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="7RutGRS913o" role="37wK5m">
                <ref role="3cqZAo" node="3CgoCDqplYB" resolve="leftX" />
              </node>
              <node concept="3cpWs3" id="7RutGRS913p" role="37wK5m">
                <node concept="17qRlL" id="7RutGRS913q" role="3uHU7w">
                  <node concept="1xnly_" id="7RutGRS913r" role="3uHU7w">
                    <ref role="1xnlzC" node="7RutGRS910n" resolve="relativeHeight" />
                  </node>
                  <node concept="37vLTw" id="7RutGRS913s" role="3uHU7B">
                    <ref role="3cqZAo" node="7RutGRS912v" resolve="height" />
                  </node>
                </node>
                <node concept="37vLTw" id="7RutGRS913t" role="3uHU7B">
                  <ref role="3cqZAo" node="7RutGRS912X" resolve="centerY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3CgoCDqjx2h" role="3cqZAp">
          <node concept="2OqwBi" id="3CgoCDqjxgX" role="3clFbG">
            <node concept="2xDIQ0" id="3CgoCDqjx2g" role="2Oq$k0" />
            <node concept="liA8E" id="3CgoCDqjxEO" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape)" resolve="draw" />
              <node concept="37vLTw" id="3CgoCDqjxFK" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS912k" resolve="shape" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2xDbr0" id="3QRtJrmEeDj">
    <property role="TrG5h" value="ArrowHead" />
    <node concept="1xmO9C" id="7z30MUmenMd" role="1xmOgE">
      <property role="TrG5h" value="relativeHeight" />
      <node concept="10P55v" id="7z30MUmeo7O" role="1xmOb1" />
    </node>
    <node concept="1xmO9C" id="3GatLR2TX7v" role="1xmOgE">
      <property role="TrG5h" value="filled" />
      <node concept="10P_77" id="3GatLR2TX7_" role="1xmOb1" />
    </node>
    <node concept="2xDzp1" id="3QRtJrmEfiq" role="2xOiiv">
      <node concept="3clFbS" id="3QRtJrmEfir" role="2VODD2">
        <node concept="3cpWs8" id="7RutGRS5cAl" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS5cAm" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="7RutGRS5cAn" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="7RutGRS5cCv" role="33vP2m">
              <node concept="1pGfFk" id="7RutGRS5ezU" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7z30MUmeex3" role="3cqZAp">
          <node concept="3cpWsn" id="7z30MUmeex4" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10P55v" id="7z30MUmeex5" role="1tU5fm" />
            <node concept="2OqwBi" id="7z30MUmeex6" role="33vP2m">
              <node concept="2xDkLB" id="7z30MUmeex7" role="2Oq$k0" />
              <node concept="liA8E" id="7z30MUmeex8" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getWidth()" resolve="getWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7z30MUmeex9" role="3cqZAp">
          <node concept="3cpWsn" id="7z30MUmeexa" role="3cpWs9">
            <property role="TrG5h" value="height" />
            <node concept="10P55v" id="7z30MUmeexb" role="1tU5fm" />
            <node concept="2OqwBi" id="7z30MUmeexc" role="33vP2m">
              <node concept="2xDkLB" id="7z30MUmeexd" role="2Oq$k0" />
              <node concept="liA8E" id="7z30MUmeexe" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getHeight()" resolve="getHeight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7z30MUmeexf" role="3cqZAp">
          <node concept="3cpWsn" id="7z30MUmeexg" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10P55v" id="7z30MUmeexh" role="1tU5fm" />
            <node concept="2OqwBi" id="7z30MUmeexi" role="33vP2m">
              <node concept="2xDkLB" id="7z30MUmeexj" role="2Oq$k0" />
              <node concept="liA8E" id="7z30MUmeexk" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getX()" resolve="getX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7z30MUmeexl" role="3cqZAp">
          <node concept="3cpWsn" id="7z30MUmeexm" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10P55v" id="7z30MUmeexn" role="1tU5fm" />
            <node concept="2OqwBi" id="7z30MUmeexo" role="33vP2m">
              <node concept="2xDkLB" id="7z30MUmeexp" role="2Oq$k0" />
              <node concept="liA8E" id="7z30MUmeexq" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getY()" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7z30MUmepLL" role="3cqZAp">
          <node concept="3cpWsn" id="7z30MUmepLO" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10P55v" id="7z30MUmepLJ" role="1tU5fm" />
            <node concept="3cpWs3" id="7z30MUmeryG" role="33vP2m">
              <node concept="37vLTw" id="7z30MUmerRr" role="3uHU7w">
                <ref role="3cqZAo" node="7z30MUmeex4" resolve="width" />
              </node>
              <node concept="37vLTw" id="7z30MUmeqXy" role="3uHU7B">
                <ref role="3cqZAo" node="7z30MUmeexg" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7z30MUmevXw" role="3cqZAp">
          <node concept="3cpWsn" id="7z30MUmevXz" role="3cpWs9">
            <property role="TrG5h" value="centerY" />
            <node concept="10P55v" id="7z30MUmevXu" role="1tU5fm" />
            <node concept="3cpWs3" id="7z30MUmezjj" role="33vP2m">
              <node concept="FJ1c_" id="7z30MUme$KY" role="3uHU7w">
                <node concept="3cmrfG" id="7z30MUme$L3" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="7z30MUme$jZ" role="3uHU7B">
                  <ref role="3cqZAo" node="7z30MUmeexa" resolve="height" />
                </node>
              </node>
              <node concept="37vLTw" id="7z30MUmezYs" role="3uHU7B">
                <ref role="3cqZAo" node="7z30MUmeexm" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS5f43" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS5fF3" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS5f41" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS5cAm" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS5g4s" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(double,double)" resolve="moveTo" />
              <node concept="37vLTw" id="7RutGRS5g5y" role="37wK5m">
                <ref role="3cqZAo" node="7z30MUmeexg" resolve="x" />
              </node>
              <node concept="3cpWsd" id="7RutGRS5gKm" role="37wK5m">
                <node concept="17qRlL" id="7RutGRS5hf6" role="3uHU7w">
                  <node concept="1xnly_" id="7RutGRS5hgr" role="3uHU7w">
                    <ref role="1xnlzC" node="7z30MUmenMd" resolve="relativeHeight" />
                  </node>
                  <node concept="37vLTw" id="7RutGRS5gRD" role="3uHU7B">
                    <ref role="3cqZAo" node="7z30MUmeexa" resolve="height" />
                  </node>
                </node>
                <node concept="37vLTw" id="7RutGRS5gAI" role="3uHU7B">
                  <ref role="3cqZAo" node="7z30MUmevXz" resolve="centerY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS5hNU" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS5icU" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS5hNS" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS5cAm" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS5iBU" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="7RutGRS5iJ2" role="37wK5m">
                <ref role="3cqZAo" node="7z30MUmepLO" resolve="x2" />
              </node>
              <node concept="37vLTw" id="7RutGRS5iSk" role="37wK5m">
                <ref role="3cqZAo" node="7z30MUmevXz" resolve="centerY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS5jv6" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS5jSQ" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS5jv4" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS5cAm" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS5jWi" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="7RutGRS5k3C" role="37wK5m">
                <ref role="3cqZAo" node="7z30MUmeexg" resolve="x" />
              </node>
              <node concept="3cpWs3" id="7RutGRS5l0X" role="37wK5m">
                <node concept="17qRlL" id="7RutGRS5lk4" role="3uHU7w">
                  <node concept="1xnly_" id="7RutGRS5lrf" role="3uHU7w">
                    <ref role="1xnlzC" node="7z30MUmenMd" resolve="relativeHeight" />
                  </node>
                  <node concept="37vLTw" id="7RutGRS5l8g" role="3uHU7B">
                    <ref role="3cqZAo" node="7z30MUmeexa" resolve="height" />
                  </node>
                </node>
                <node concept="37vLTw" id="7RutGRS5kd8" role="3uHU7B">
                  <ref role="3cqZAo" node="7z30MUmevXz" resolve="centerY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS5lKq" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS5mCN" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS5lKo" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS5cAm" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS5mRa" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath()" resolve="closePath" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7RutGRS8gpf" role="3cqZAp" />
        <node concept="3clFbH" id="7RutGRS5e$r" role="3cqZAp" />
        <node concept="3clFbJ" id="7RutGRS5nzV" role="3cqZAp">
          <node concept="3clFbS" id="7RutGRS5nzX" role="3clFbx">
            <node concept="3clFbF" id="7RutGRS5ohX" role="3cqZAp">
              <node concept="2OqwBi" id="7RutGRS5oxU" role="3clFbG">
                <node concept="2xDIQ0" id="7RutGRS5ohW" role="2Oq$k0" />
                <node concept="liA8E" id="7RutGRS5oH8" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
                  <node concept="37vLTw" id="7RutGRS5oI7" role="37wK5m">
                    <ref role="3cqZAo" node="7RutGRS5cAm" resolve="shape" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1xnly_" id="7RutGRS5nKp" role="3clFbw">
            <ref role="1xnlzC" node="3GatLR2TX7v" resolve="filled" />
          </node>
          <node concept="9aQIb" id="7RutGRS5pFD" role="9aQIa">
            <node concept="3clFbS" id="7RutGRS5pFE" role="9aQI4">
              <node concept="3clFbF" id="7RutGRS5pJE" role="3cqZAp">
                <node concept="2OqwBi" id="7RutGRS5pZB" role="3clFbG">
                  <node concept="2xDIQ0" id="7RutGRS5pJD" role="2Oq$k0" />
                  <node concept="liA8E" id="7RutGRS5qaP" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape)" resolve="draw" />
                    <node concept="37vLTw" id="7RutGRS5qbO" role="37wK5m">
                      <ref role="3cqZAo" node="7RutGRS5cAm" resolve="shape" />
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
  <node concept="2xDbr0" id="3QRtJrmEgD3">
    <property role="TrG5h" value="DiamondHead" />
    <node concept="1xmO9C" id="7RutGRS5_vq" role="1xmOgE">
      <property role="TrG5h" value="relativeHeight" />
      <node concept="10P55v" id="7RutGRS5_vr" role="1xmOb1" />
    </node>
    <node concept="1xmO9C" id="7RutGRS5_vs" role="1xmOgE">
      <property role="TrG5h" value="filled" />
      <node concept="10P_77" id="7RutGRS5_vu" role="1xmOb1" />
    </node>
    <node concept="2xDzp1" id="3QRtJrmQKYZ" role="2xOiiv">
      <node concept="3clFbS" id="3QRtJrmQKZ0" role="2VODD2">
        <node concept="3cpWs8" id="7RutGRS5ARD" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS5ARE" role="3cpWs9">
            <property role="TrG5h" value="shape" />
            <node concept="3uibUv" id="7RutGRS5ARF" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~GeneralPath" resolve="GeneralPath" />
            </node>
            <node concept="2ShNRf" id="7RutGRS5ARG" role="33vP2m">
              <node concept="1pGfFk" id="7RutGRS5ARH" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="fbzs:~GeneralPath.&lt;init&gt;()" resolve="GeneralPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS5_xq" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS5_xr" role="3cpWs9">
            <property role="TrG5h" value="width" />
            <node concept="10P55v" id="7RutGRS5_xs" role="1tU5fm" />
            <node concept="2OqwBi" id="7RutGRS5_xt" role="33vP2m">
              <node concept="2xDkLB" id="7RutGRS5_xu" role="2Oq$k0" />
              <node concept="liA8E" id="7RutGRS5_xv" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getWidth()" resolve="getWidth" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS5_xw" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS5_xx" role="3cpWs9">
            <property role="TrG5h" value="height" />
            <node concept="10P55v" id="7RutGRS5_xy" role="1tU5fm" />
            <node concept="2OqwBi" id="7RutGRS5_xz" role="33vP2m">
              <node concept="2xDkLB" id="7RutGRS5_x$" role="2Oq$k0" />
              <node concept="liA8E" id="7RutGRS5_x_" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getHeight()" resolve="getHeight" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS5_xA" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS5_xB" role="3cpWs9">
            <property role="TrG5h" value="x" />
            <node concept="10P55v" id="7RutGRS5_xC" role="1tU5fm" />
            <node concept="2OqwBi" id="7RutGRS5_xD" role="33vP2m">
              <node concept="2xDkLB" id="7RutGRS5_xE" role="2Oq$k0" />
              <node concept="liA8E" id="7RutGRS5_xF" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getX()" resolve="getX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS5_xG" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS5_xH" role="3cpWs9">
            <property role="TrG5h" value="y" />
            <node concept="10P55v" id="7RutGRS5_xI" role="1tU5fm" />
            <node concept="2OqwBi" id="7RutGRS5_xJ" role="33vP2m">
              <node concept="2xDkLB" id="7RutGRS5_xK" role="2Oq$k0" />
              <node concept="liA8E" id="7RutGRS5_xL" role="2OqNvi">
                <ref role="37wK5l" to="fbzs:~RectangularShape.getY()" resolve="getY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS5_xM" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS5_xN" role="3cpWs9">
            <property role="TrG5h" value="x2" />
            <node concept="10P55v" id="7RutGRS5_xO" role="1tU5fm" />
            <node concept="3cpWs3" id="7RutGRS5_xP" role="33vP2m">
              <node concept="37vLTw" id="7RutGRS5_xQ" role="3uHU7w">
                <ref role="3cqZAo" node="7RutGRS5_xr" resolve="width" />
              </node>
              <node concept="37vLTw" id="7RutGRS5_xR" role="3uHU7B">
                <ref role="3cqZAo" node="7RutGRS5_xB" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7RutGRS5_xY" role="3cqZAp">
          <node concept="3cpWsn" id="7RutGRS5_xZ" role="3cpWs9">
            <property role="TrG5h" value="centerY" />
            <node concept="10P55v" id="7RutGRS5_y0" role="1tU5fm" />
            <node concept="3cpWs3" id="7RutGRS5_y1" role="33vP2m">
              <node concept="FJ1c_" id="7RutGRS5_y2" role="3uHU7w">
                <node concept="3cmrfG" id="7RutGRS5_y3" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="7RutGRS5_y4" role="3uHU7B">
                  <ref role="3cqZAo" node="7RutGRS5_xx" resolve="height" />
                </node>
              </node>
              <node concept="37vLTw" id="7RutGRS5_y5" role="3uHU7B">
                <ref role="3cqZAo" node="7RutGRS5_xH" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3CgoCDqnCTL" role="3cqZAp">
          <node concept="3cpWsn" id="3CgoCDqnCTO" role="3cpWs9">
            <property role="TrG5h" value="centerX" />
            <node concept="10P55v" id="3CgoCDqnCTJ" role="1tU5fm" />
            <node concept="3cpWs3" id="3CgoCDqnEcC" role="33vP2m">
              <node concept="FJ1c_" id="3CgoCDqnEIP" role="3uHU7w">
                <node concept="3cmrfG" id="3CgoCDqnEJG" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="3CgoCDqnEdR" role="3uHU7B">
                  <ref role="3cqZAo" node="7RutGRS5_xr" resolve="width" />
                </node>
              </node>
              <node concept="37vLTw" id="3CgoCDqnD5u" role="3uHU7B">
                <ref role="3cqZAo" node="7RutGRS5_xB" resolve="x" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS5B$9" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS5CjW" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS5B$7" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS5ARE" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS5CI8" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.moveTo(double,double)" resolve="moveTo" />
              <node concept="37vLTw" id="7RutGRS5CJe" role="37wK5m">
                <ref role="3cqZAo" node="3CgoCDqnCTO" resolve="centerX" />
              </node>
              <node concept="3cpWsd" id="7RutGRS5E2O" role="37wK5m">
                <node concept="17qRlL" id="7RutGRS5ED5" role="3uHU7w">
                  <node concept="1xnly_" id="7RutGRS5EKg" role="3uHU7w">
                    <ref role="1xnlzC" node="7RutGRS5_vq" resolve="relativeHeight" />
                  </node>
                  <node concept="37vLTw" id="7RutGRS5Ea7" role="3uHU7B">
                    <ref role="3cqZAo" node="7RutGRS5_xx" resolve="height" />
                  </node>
                </node>
                <node concept="37vLTw" id="7RutGRS5Dgq" role="3uHU7B">
                  <ref role="3cqZAo" node="7RutGRS5_xZ" resolve="centerY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS5FjJ" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS5G2y" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS5FjH" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS5ARE" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS5GAN" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="7RutGRS5GC5" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS5_xN" resolve="x2" />
              </node>
              <node concept="37vLTw" id="7RutGRS5GLn" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS5_xZ" resolve="centerY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS5HpT" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS5Jp7" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS5HpR" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS5ARE" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS5JOf" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="7RutGRS5JPJ" role="37wK5m">
                <ref role="3cqZAo" node="3CgoCDqnCTO" resolve="centerX" />
              </node>
              <node concept="3cpWs3" id="7RutGRS5LNM" role="37wK5m">
                <node concept="17qRlL" id="7RutGRS5NNc" role="3uHU7w">
                  <node concept="1xnly_" id="7RutGRS5NUn" role="3uHU7w">
                    <ref role="1xnlzC" node="7RutGRS5_vq" resolve="relativeHeight" />
                  </node>
                  <node concept="37vLTw" id="7RutGRS5MtR" role="3uHU7B">
                    <ref role="3cqZAo" node="7RutGRS5_xx" resolve="height" />
                  </node>
                </node>
                <node concept="37vLTw" id="7RutGRS5K53" role="3uHU7B">
                  <ref role="3cqZAo" node="7RutGRS5_xZ" resolve="centerY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS5OpK" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS5Pi9" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS5OpI" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS5ARE" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS5PIx" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D$Float.lineTo(double,double)" resolve="lineTo" />
              <node concept="37vLTw" id="7RutGRS5XZX" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS5_xB" resolve="x" />
              </node>
              <node concept="37vLTw" id="7RutGRS5YmW" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS5_xZ" resolve="centerY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS7iev" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS7j3y" role="3clFbG">
            <node concept="37vLTw" id="7RutGRS7iet" role="2Oq$k0">
              <ref role="3cqZAo" node="7RutGRS5ARE" resolve="shape" />
            </node>
            <node concept="liA8E" id="7RutGRS7jyI" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Path2D.closePath()" resolve="closePath" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS8eZN" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS8fwJ" role="3clFbG">
            <node concept="2xDkLB" id="7RutGRS8eZM" role="2Oq$k0" />
            <node concept="liA8E" id="7RutGRS8fQf" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Rectangle2D.setRect(double,double,double,double)" resolve="setRect" />
              <node concept="37vLTw" id="7RutGRS8gP9" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS5_xB" resolve="x" />
              </node>
              <node concept="37vLTw" id="7RutGRS8h9h" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS5_xH" resolve="y" />
              </node>
              <node concept="3cpWsd" id="7RutGRS8hIw" role="37wK5m">
                <node concept="17qRlL" id="7RutGRS8ia4" role="3uHU7w">
                  <node concept="1xnly_" id="7RutGRS8ibo" role="3uHU7w">
                    <ref role="1xnlzC" node="7RutGRS5_vq" resolve="relativeHeight" />
                  </node>
                  <node concept="37vLTw" id="7RutGRS8hJU" role="3uHU7B">
                    <ref role="3cqZAo" node="7RutGRS5_xx" resolve="height" />
                  </node>
                </node>
                <node concept="37vLTw" id="7RutGRS8hhq" role="3uHU7B">
                  <ref role="3cqZAo" node="7RutGRS5_xr" resolve="width" />
                </node>
              </node>
              <node concept="37vLTw" id="7RutGRS8hkh" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS5_xx" resolve="height" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7RutGRS8qeu" role="3cqZAp">
          <node concept="2OqwBi" id="7RutGRS8rbp" role="3clFbG">
            <node concept="2xDkLB" id="7RutGRS8qet" role="2Oq$k0" />
            <node concept="liA8E" id="7RutGRS8rOT" role="2OqNvi">
              <ref role="37wK5l" to="fbzs:~Rectangle2D.setFrame(double,double,double,double)" resolve="setFrame" />
              <node concept="37vLTw" id="7RutGRS8rPU" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS5_xB" resolve="x" />
              </node>
              <node concept="37vLTw" id="7RutGRS8ssT" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS5_xH" resolve="y" />
              </node>
              <node concept="3cpWsd" id="7RutGRS8sKQ" role="37wK5m">
                <node concept="17qRlL" id="7RutGRS8sKR" role="3uHU7w">
                  <node concept="1xnly_" id="7RutGRS8sKS" role="3uHU7w">
                    <ref role="1xnlzC" node="7RutGRS5_vq" resolve="relativeHeight" />
                  </node>
                  <node concept="37vLTw" id="7RutGRS8sKT" role="3uHU7B">
                    <ref role="3cqZAo" node="7RutGRS5_xx" resolve="height" />
                  </node>
                </node>
                <node concept="37vLTw" id="7RutGRS8sKU" role="3uHU7B">
                  <ref role="3cqZAo" node="7RutGRS5_xr" resolve="width" />
                </node>
              </node>
              <node concept="37vLTw" id="7RutGRS8sKV" role="37wK5m">
                <ref role="3cqZAo" node="7RutGRS5_xx" resolve="height" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7RutGRS5YBl" role="3cqZAp" />
        <node concept="3clFbJ" id="7RutGRS60mF" role="3cqZAp">
          <node concept="3clFbS" id="7RutGRS60mG" role="3clFbx">
            <node concept="3clFbF" id="7RutGRS60mH" role="3cqZAp">
              <node concept="2OqwBi" id="7RutGRS60mI" role="3clFbG">
                <node concept="2xDIQ0" id="7RutGRS60mJ" role="2Oq$k0" />
                <node concept="liA8E" id="7RutGRS60mK" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
                  <node concept="37vLTw" id="7RutGRS60mL" role="37wK5m">
                    <ref role="3cqZAo" node="7RutGRS5ARE" resolve="shape" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1xnly_" id="7RutGRS60mM" role="3clFbw">
            <ref role="1xnlzC" node="7RutGRS5_vs" resolve="filled" />
          </node>
          <node concept="9aQIb" id="7RutGRS60mN" role="9aQIa">
            <node concept="3clFbS" id="7RutGRS60mO" role="9aQI4">
              <node concept="3clFbF" id="7RutGRS60mP" role="3cqZAp">
                <node concept="2OqwBi" id="7RutGRS60mQ" role="3clFbG">
                  <node concept="2xDIQ0" id="7RutGRS60mR" role="2Oq$k0" />
                  <node concept="liA8E" id="7RutGRS60mS" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape)" resolve="draw" />
                    <node concept="37vLTw" id="7RutGRS60mT" role="37wK5m">
                      <ref role="3cqZAo" node="7RutGRS5ARE" resolve="shape" />
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
</model>

