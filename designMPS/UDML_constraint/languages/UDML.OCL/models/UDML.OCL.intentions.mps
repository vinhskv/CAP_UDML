<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b4858df3-164f-43bb-94fd-c7a3cac53e76(UDML.OCL.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zs21" ref="r:0ee3fca1-ea02-4c7b-a6b2-8b2e273ad73d(UDML.core.structure)" implicit="true" />
    <import index="zjlp" ref="r:11d1b621-783c-4c2f-aeba-6f180102f9eb(UDML.OCL.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1194033889146" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1XNTG" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
        <child id="5764240145346688149" name="fieldDeclaration" index="1S$sla" />
      </concept>
      <concept id="1240316299033" name="jetbrains.mps.lang.intentions.structure.QueryBlock" flags="in" index="38BcoT">
        <child id="1240393479918" name="paramType" index="3ddBve" />
      </concept>
      <concept id="1240395258925" name="jetbrains.mps.lang.intentions.structure.ParameterizedIntentionDeclaration" flags="ig" index="3dkpOd">
        <child id="1240395532443" name="queryFunction" index="3dlsAV" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1562299158920737514" name="initSize" index="3lWHg$" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
    </language>
  </registry>
  <node concept="2S6QgY" id="4rgh5BetwYo">
    <property role="TrG5h" value="addOCLTemplates" />
    <ref role="2ZfgGC" to="zs21:4MzzjozsloV" resolve="Class" />
    <node concept="2S6ZIM" id="4rgh5BetwYp" role="2ZfVej">
      <node concept="3clFbS" id="4rgh5BetwYq" role="2VODD2">
        <node concept="3clFbF" id="4rgh5BetDB4" role="3cqZAp">
          <node concept="Xl_RD" id="4rgh5BetDB3" role="3clFbG">
            <property role="Xl_RC" value="Add OCL Templates" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4rgh5BetwYr" role="2ZfgGD">
      <node concept="3clFbS" id="4rgh5BetwYs" role="2VODD2">
        <node concept="3cpWs8" id="7sId_oaDpfl" role="3cqZAp">
          <node concept="3cpWsn" id="7sId_oaDpfo" role="3cpWs9">
            <property role="TrG5h" value="refAnnotation" />
            <node concept="3Tqbb2" id="7sId_oaDpfj" role="1tU5fm">
              <ref role="ehGHo" to="zs21:4MzzjozsNi7" resolve="RefAnnotation" />
            </node>
            <node concept="2OqwBi" id="7sId_oaDphN" role="33vP2m">
              <node concept="2OqwBi" id="7sId_oaDphO" role="2Oq$k0">
                <node concept="2Sf5sV" id="7sId_oaDphP" role="2Oq$k0" />
                <node concept="3Tsc0h" id="7sId_oaDphQ" role="2OqNvi">
                  <ref role="3TtcxE" to="zs21:4Mzzjozu$$A" resolve="refAnnotation" />
                </node>
              </node>
              <node concept="2DeJg1" id="7sId_oaDphR" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7sId_oaDcPv" role="3cqZAp">
          <node concept="2OqwBi" id="7sId_oaDn3I" role="3clFbG">
            <node concept="1OKiuA" id="7sId_oaDnOQ" role="2OqNvi">
              <node concept="1XNTG" id="4Mzzjozv8EZ" role="lBI5i" />
              <node concept="2B6iha" id="7sId_oaDpd9" role="lGT1i">
                <property role="1lyBwo" value="59pBc0SIIVt/mostRelevant" />
              </node>
            </node>
            <node concept="37vLTw" id="7sId_oaDqhW" role="2Oq$k0">
              <ref role="3cqZAo" node="7sId_oaDpfo" resolve="refAnnotation" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3dkpOd" id="4rgh5Beu5Ma">
    <property role="TrG5h" value="AddOCLParameter" />
    <ref role="2ZfgGC" to="zs21:4MzzjozsloV" resolve="Class" />
    <node concept="38BcoT" id="4rgh5Beu5Mb" role="3dlsAV">
      <node concept="3clFbS" id="4rgh5Beu5Md" role="2VODD2">
        <node concept="3cpWs8" id="4rgh5Beudt8" role="3cqZAp">
          <node concept="3cpWsn" id="4rgh5Beudtb" role="3cpWs9">
            <property role="TrG5h" value="a" />
            <node concept="_YKpA" id="4rgh5BeuhSy" role="1tU5fm">
              <node concept="10Oyi0" id="4rgh5Beui4C" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="4rgh5BeunTM" role="33vP2m">
              <node concept="Tc6Ow" id="4rgh5BeuoQ5" role="2ShVmc">
                <node concept="10Oyi0" id="4rgh5Beupiv" role="HW$YZ" />
                <node concept="3cmrfG" id="4rgh5Beuqi7" role="3lWHg$">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4rgh5Beug8J" role="3cqZAp">
          <node concept="37vLTw" id="4rgh5Beug8H" role="3clFbG">
            <ref role="3cqZAo" node="4rgh5Beudtb" resolve="a" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="4rgh5Beuamm" role="3ddBve" />
    </node>
    <node concept="2S6ZIM" id="4rgh5Beu5Me" role="2ZfVej">
      <node concept="3clFbS" id="4rgh5Beu5Mf" role="2VODD2">
        <node concept="3clFbF" id="4rgh5BeubeL" role="3cqZAp">
          <node concept="Xl_RD" id="4rgh5BeubeK" role="3clFbG">
            <property role="Xl_RC" value="Add OCL parameters" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4rgh5Beu5Mg" role="2ZfgGD">
      <node concept="3clFbS" id="4rgh5Beu5Mh" role="2VODD2" />
    </node>
  </node>
  <node concept="2S6QgY" id="4rgh5Bevo5N">
    <property role="TrG5h" value="Type1" />
    <ref role="2ZfgGC" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="2S6ZIM" id="4rgh5Bevo5O" role="2ZfVej">
      <node concept="3clFbS" id="4rgh5Bevo5P" role="2VODD2">
        <node concept="3clFbF" id="4rgh5Bevp96" role="3cqZAp">
          <node concept="Xl_RD" id="60E6kFO5k$9" role="3clFbG">
            <property role="Xl_RC" value="type 1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4rgh5Bevo5Q" role="2ZfgGD">
      <node concept="3clFbS" id="4rgh5Bevo5R" role="2VODD2">
        <node concept="3clFbF" id="4rgh5Bevq2l" role="3cqZAp">
          <node concept="37vLTI" id="4rgh5Bevwqs" role="3clFbG">
            <node concept="3cmrfG" id="4rgh5Bevwr7" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="4rgh5BevqDF" role="37vLTJ">
              <node concept="2Sf5sV" id="4rgh5Bevq2k" role="2Oq$k0" />
              <node concept="3TrcHB" id="3aRkDr26sCs" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4rgh5Bevx5D">
    <property role="TrG5h" value="Type2" />
    <ref role="2ZfgGC" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="2S6ZIM" id="4rgh5Bevx5E" role="2ZfVej">
      <node concept="3clFbS" id="4rgh5Bevx5F" role="2VODD2">
        <node concept="3clFbF" id="4rgh5Bevy9a" role="3cqZAp">
          <node concept="Xl_RD" id="4rgh5Bevy99" role="3clFbG">
            <property role="Xl_RC" value="type 2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4rgh5Bevx5G" role="2ZfgGD">
      <node concept="3clFbS" id="4rgh5Bevx5H" role="2VODD2">
        <node concept="3clFbF" id="4rgh5BevyX6" role="3cqZAp">
          <node concept="37vLTI" id="4rgh5BevA2W" role="3clFbG">
            <node concept="3cmrfG" id="4rgh5BevA3f" role="37vLTx">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="4rgh5Bevzx6" role="37vLTJ">
              <node concept="2Sf5sV" id="4rgh5BevyX5" role="2Oq$k0" />
              <node concept="3TrcHB" id="4rgh5Bev$SK" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="4rgh5Bewk2a" role="1S$sla">
      <property role="TrG5h" value="max" />
      <node concept="3Tm6S6" id="4rgh5Bewk2b" role="1B3o_S" />
      <node concept="10Oyi0" id="4rgh5Bewk34" role="1tU5fm" />
    </node>
    <node concept="2BZ0e9" id="4rgh5Bewk6u" role="1S$sla">
      <property role="TrG5h" value="p0" />
      <node concept="3Tm6S6" id="4rgh5Bewk6v" role="1B3o_S" />
      <node concept="10Oyi0" id="4rgh5Bewkn6" role="1tU5fm" />
    </node>
  </node>
  <node concept="2S6QgY" id="4rgh5Be$15d">
    <property role="TrG5h" value="Type3" />
    <ref role="2ZfgGC" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="2S6ZIM" id="4rgh5Be$15e" role="2ZfVej">
      <node concept="3clFbS" id="4rgh5Be$15f" role="2VODD2">
        <node concept="3clFbF" id="4rgh5Be$1wM" role="3cqZAp">
          <node concept="Xl_RD" id="4rgh5Be$1wL" role="3clFbG">
            <property role="Xl_RC" value="type 3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4rgh5Be$15g" role="2ZfgGD">
      <node concept="3clFbS" id="4rgh5Be$15h" role="2VODD2">
        <node concept="3clFbF" id="4rgh5Be$2Pc" role="3cqZAp">
          <node concept="37vLTI" id="4rgh5Be$5Dr" role="3clFbG">
            <node concept="2OqwBi" id="4rgh5Be$38c" role="37vLTJ">
              <node concept="2Sf5sV" id="4rgh5Be$2Pb" role="2Oq$k0" />
              <node concept="3TrcHB" id="4rgh5Be$3Am" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
            <node concept="3cmrfG" id="60E6kFO5siX" role="37vLTx">
              <property role="3cmrfH" value="3" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4rgh5Be$6E8">
    <property role="TrG5h" value="Type4" />
    <ref role="2ZfgGC" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="2S6ZIM" id="4rgh5Be$6E9" role="2ZfVej">
      <node concept="3clFbS" id="4rgh5Be$6Ea" role="2VODD2">
        <node concept="3clFbF" id="4rgh5Be$72M" role="3cqZAp">
          <node concept="Xl_RD" id="4rgh5Be$72L" role="3clFbG">
            <property role="Xl_RC" value="type 4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4rgh5Be$6Eb" role="2ZfgGD">
      <node concept="3clFbS" id="4rgh5Be$6Ec" role="2VODD2">
        <node concept="3clFbF" id="4rgh5Be$8gp" role="3cqZAp">
          <node concept="37vLTI" id="4rgh5Be$a7$" role="3clFbG">
            <node concept="3cmrfG" id="4rgh5Be$a7R" role="37vLTx">
              <property role="3cmrfH" value="4" />
            </node>
            <node concept="2OqwBi" id="4rgh5Be$8vQ" role="37vLTJ">
              <node concept="2Sf5sV" id="4rgh5Be$8go" role="2Oq$k0" />
              <node concept="3TrcHB" id="4rgh5Be$8Sw" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4rgh5Be$aJg">
    <property role="TrG5h" value="Type5" />
    <ref role="2ZfgGC" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="2S6ZIM" id="4rgh5Be$aJh" role="2ZfVej">
      <node concept="3clFbS" id="4rgh5Be$aJi" role="2VODD2">
        <node concept="3clFbF" id="4rgh5Be$bz5" role="3cqZAp">
          <node concept="Xl_RD" id="60E6kFO5u79" role="3clFbG">
            <property role="Xl_RC" value="type 5" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4rgh5Be$aJj" role="2ZfgGD">
      <node concept="3clFbS" id="4rgh5Be$aJk" role="2VODD2">
        <node concept="3clFbF" id="4rgh5Be$cvi" role="3cqZAp">
          <node concept="37vLTI" id="4rgh5Be$gKn" role="3clFbG">
            <node concept="3cmrfG" id="4rgh5Be$hna" role="37vLTx">
              <property role="3cmrfH" value="5" />
            </node>
            <node concept="2OqwBi" id="4rgh5Be$dCb" role="37vLTJ">
              <node concept="2Sf5sV" id="4rgh5Be$cvh" role="2Oq$k0" />
              <node concept="3TrcHB" id="4rgh5Be$eDW" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="4rgh5Be$jff">
    <property role="TrG5h" value="Type6" />
    <ref role="2ZfgGC" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="2S6ZIM" id="4rgh5Be$jfg" role="2ZfVej">
      <node concept="3clFbS" id="4rgh5Be$jfh" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO5uSz" role="3cqZAp">
          <node concept="Xl_RD" id="60E6kFO5uS_" role="3clFbG">
            <property role="Xl_RC" value="type 6" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="4rgh5Be$jfi" role="2ZfgGD">
      <node concept="3clFbS" id="4rgh5Be$jfj" role="2VODD2">
        <node concept="3clFbF" id="4rgh5Be$kM$" role="3cqZAp">
          <node concept="37vLTI" id="4rgh5Be$nS5" role="3clFbG">
            <node concept="3cmrfG" id="4rgh5Be$o2W" role="37vLTx">
              <property role="3cmrfH" value="6" />
            </node>
            <node concept="2OqwBi" id="4rgh5Be$l8G" role="37vLTJ">
              <node concept="2Sf5sV" id="4rgh5Be$kMz" role="2Oq$k0" />
              <node concept="3TrcHB" id="4rgh5Be$lI7" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="60E6kFO7SZL">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AssocCls1" />
    <ref role="2ZfgGC" to="zjlp:60E6kFO5hO8" resolve="AssocCls" />
    <node concept="2S6ZIM" id="60E6kFO7SZM" role="2ZfVej">
      <node concept="3clFbS" id="60E6kFO7SZN" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO7Ta1" role="3cqZAp">
          <node concept="Xl_RD" id="60E6kFO7Ta0" role="3clFbG">
            <property role="Xl_RC" value="(as1)" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="60E6kFO7SZO" role="2ZfgGD">
      <node concept="3clFbS" id="60E6kFO7SZP" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO7Tde" role="3cqZAp">
          <node concept="37vLTI" id="60E6kFO7WE2" role="3clFbG">
            <node concept="3cmrfG" id="60E6kFO7WEl" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="60E6kFO7Tok" role="37vLTJ">
              <node concept="2Sf5sV" id="60E6kFO7Tdd" role="2Oq$k0" />
              <node concept="3TrcHB" id="60E6kFO7TC1" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="60E6kFO7XNV">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AssocCls2" />
    <ref role="2ZfgGC" to="zjlp:60E6kFO5hO8" resolve="AssocCls" />
    <node concept="2S6ZIM" id="60E6kFO7XNW" role="2ZfVej">
      <node concept="3clFbS" id="60E6kFO7XNX" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO7XYc" role="3cqZAp">
          <node concept="Xl_RD" id="60E6kFO7XYb" role="3clFbG">
            <property role="Xl_RC" value="(as1,as2)" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="60E6kFO7XNY" role="2ZfgGD">
      <node concept="3clFbS" id="60E6kFO7XNZ" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO7Y0R" role="3cqZAp">
          <node concept="37vLTI" id="60E6kFO80rj" role="3clFbG">
            <node concept="3cmrfG" id="60E6kFO80rA" role="37vLTx">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="60E6kFO7YbX" role="37vLTJ">
              <node concept="2Sf5sV" id="60E6kFO7Y0Q" role="2Oq$k0" />
              <node concept="3TrcHB" id="60E6kFO7Yrk" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="60E6kFO81a6">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AssocCls3" />
    <ref role="2ZfgGC" to="zjlp:60E6kFO5hO8" resolve="AssocCls" />
    <node concept="2S6ZIM" id="60E6kFO81a7" role="2ZfVej">
      <node concept="3clFbS" id="60E6kFO81a8" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO81kw" role="3cqZAp">
          <node concept="Xl_RD" id="60E6kFO81kv" role="3clFbG">
            <property role="Xl_RC" value="(as1,as2,as3)" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="60E6kFO81a9" role="2ZfgGD">
      <node concept="3clFbS" id="60E6kFO81aa" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO81uT" role="3cqZAp">
          <node concept="37vLTI" id="60E6kFO83Wa" role="3clFbG">
            <node concept="3cmrfG" id="60E6kFO84Be" role="37vLTx">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="2OqwBi" id="60E6kFO81DZ" role="37vLTJ">
              <node concept="2Sf5sV" id="60E6kFO81uS" role="2Oq$k0" />
              <node concept="3TrcHB" id="60E6kFO81TG" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="60E6kFO9pDY">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="RolePath1" />
    <ref role="2ZfgGC" to="zjlp:60E6kFO5hR$" resolve="RolePath" />
    <node concept="2S6ZIM" id="60E6kFO9pDZ" role="2ZfVej">
      <node concept="3clFbS" id="60E6kFO9pE0" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO9pUS" role="3cqZAp">
          <node concept="Xl_RD" id="60E6kFO9pUR" role="3clFbG">
            <property role="Xl_RC" value="(r1)" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="60E6kFO9pE1" role="2ZfgGD">
      <node concept="3clFbS" id="60E6kFO9pE2" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO9pYV" role="3cqZAp">
          <node concept="37vLTI" id="60E6kFO9spH" role="3clFbG">
            <node concept="3cmrfG" id="60E6kFO9sq0" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="60E6kFO9qa1" role="37vLTJ">
              <node concept="2Sf5sV" id="60E6kFO9pYU" role="2Oq$k0" />
              <node concept="3TrcHB" id="60E6kFO9qpI" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="60E6kFO9t7b">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="RolePath2" />
    <ref role="2ZfgGC" to="zjlp:60E6kFO5hR$" resolve="RolePath" />
    <node concept="2S6ZIM" id="60E6kFO9t7c" role="2ZfVej">
      <node concept="3clFbS" id="60E6kFO9t7d" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO9thv" role="3cqZAp">
          <node concept="Xl_RD" id="60E6kFO9thu" role="3clFbG">
            <property role="Xl_RC" value="(r1,r2)" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="60E6kFO9t7e" role="2ZfgGD">
      <node concept="3clFbS" id="60E6kFO9t7f" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO9tqd" role="3cqZAp">
          <node concept="37vLTI" id="60E6kFO9w4R" role="3clFbG">
            <node concept="3cmrfG" id="60E6kFO9w5y" role="37vLTx">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="60E6kFO9t_j" role="37vLTJ">
              <node concept="2Sf5sV" id="60E6kFO9tqc" role="2Oq$k0" />
              <node concept="3TrcHB" id="60E6kFO9u2p" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="60E6kFO9xgr">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="RolePath3" />
    <ref role="2ZfgGC" to="zjlp:60E6kFO5hR$" resolve="RolePath" />
    <node concept="2S6ZIM" id="60E6kFO9xgs" role="2ZfVej">
      <node concept="3clFbS" id="60E6kFO9xgt" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO9xsW" role="3cqZAp">
          <node concept="Xl_RD" id="60E6kFO9xsV" role="3clFbG">
            <property role="Xl_RC" value="(r1,r2,r3)" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="60E6kFO9xgu" role="2ZfgGD">
      <node concept="3clFbS" id="60E6kFO9xgv" role="2VODD2">
        <node concept="3clFbF" id="60E6kFO9x_8" role="3cqZAp">
          <node concept="37vLTI" id="60E6kFO9$dS" role="3clFbG">
            <node concept="3cmrfG" id="60E6kFO9$re" role="37vLTx">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="2OqwBi" id="60E6kFO9xKe" role="37vLTJ">
              <node concept="2Sf5sV" id="60E6kFO9x_7" role="2Oq$k0" />
              <node concept="3TrcHB" id="60E6kFO9ydT" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="60E6kFOdx3M">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AttrCond1" />
    <ref role="2ZfgGC" to="zjlp:60E6kFO5hUZ" resolve="AttrCond" />
    <node concept="2S6ZIM" id="60E6kFOdx3N" role="2ZfVej">
      <node concept="3clFbS" id="60E6kFOdx3O" role="2VODD2">
        <node concept="3clFbF" id="60E6kFOdxkN" role="3cqZAp">
          <node concept="Xl_RD" id="60E6kFOdxkM" role="3clFbG">
            <property role="Xl_RC" value="Attr, minLim" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="60E6kFOdx3P" role="2ZfgGD">
      <node concept="3clFbS" id="60E6kFOdx3Q" role="2VODD2">
        <node concept="3clFbF" id="60E6kFOdxst" role="3cqZAp">
          <node concept="37vLTI" id="60E6kFOdzTI" role="3clFbG">
            <node concept="3cmrfG" id="60E6kFOdzU1" role="37vLTx">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="60E6kFOdxBz" role="37vLTJ">
              <node concept="2Sf5sV" id="60E6kFOdxss" role="2Oq$k0" />
              <node concept="3TrcHB" id="60E6kFOdxRg" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="60E6kFOd_4U">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AAttrCond2" />
    <ref role="2ZfgGC" to="zjlp:60E6kFO5hUZ" resolve="AttrCond" />
    <node concept="2S6ZIM" id="60E6kFOd_4V" role="2ZfVej">
      <node concept="3clFbS" id="60E6kFOd_4W" role="2VODD2">
        <node concept="3clFbF" id="60E6kFOd_fh" role="3cqZAp">
          <node concept="Xl_RD" id="60E6kFOd_fg" role="3clFbG">
            <property role="Xl_RC" value="attr, matchStr" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="60E6kFOd_4X" role="2ZfgGD">
      <node concept="3clFbS" id="60E6kFOd_4Y" role="2VODD2">
        <node concept="3clFbF" id="60E6kFOd_hc" role="3cqZAp">
          <node concept="37vLTI" id="60E6kFOdAJ1" role="3clFbG">
            <node concept="3cmrfG" id="60E6kFOdAJk" role="37vLTx">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="60E6kFOd_si" role="37vLTJ">
              <node concept="2Sf5sV" id="60E6kFOd_hb" role="2Oq$k0" />
              <node concept="3TrcHB" id="60E6kFOd_FZ" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3aRkDr2bz3H">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AttrCond3" />
    <ref role="2ZfgGC" to="zjlp:60E6kFO5hUZ" resolve="AttrCond" />
    <node concept="2S6ZIM" id="3aRkDr2bz3I" role="2ZfVej">
      <node concept="3clFbS" id="3aRkDr2bz3J" role="2VODD2">
        <node concept="3clFbF" id="3aRkDr2bzXO" role="3cqZAp">
          <node concept="Xl_RD" id="3aRkDr2b_ld" role="3clFbG">
            <property role="Xl_RC" value="(Attr, matchStr)" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3aRkDr2bz3K" role="2ZfgGD">
      <node concept="3clFbS" id="3aRkDr2bz3L" role="2VODD2">
        <node concept="3clFbF" id="3aRkDr2b_vA" role="3cqZAp">
          <node concept="37vLTI" id="3aRkDr2bATd" role="3clFbG">
            <node concept="3cmrfG" id="3aRkDr2bBrO" role="37vLTx">
              <property role="3cmrfH" value="3" />
            </node>
            <node concept="2OqwBi" id="3aRkDr2b_EG" role="37vLTJ">
              <node concept="2Sf5sV" id="3aRkDr2b_v_" role="2Oq$k0" />
              <node concept="3TrcHB" id="3aRkDr2b_SE" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3aRkDr2grOn">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AttrCond4" />
    <ref role="2ZfgGC" to="zjlp:60E6kFO5hUZ" resolve="AttrCond" />
    <node concept="2S6ZIM" id="3aRkDr2grOo" role="2ZfVej">
      <node concept="3clFbS" id="3aRkDr2grOp" role="2VODD2">
        <node concept="3clFbF" id="3aRkDr2grYK" role="3cqZAp">
          <node concept="Xl_RD" id="3aRkDr2gt5D" role="3clFbG">
            <property role="Xl_RC" value="Attr, matchAttr" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3aRkDr2grOq" role="2ZfgGD">
      <node concept="3clFbS" id="3aRkDr2grOr" role="2VODD2">
        <node concept="3clFbF" id="3aRkDr2gu8F" role="3cqZAp">
          <node concept="37vLTI" id="3aRkDr2gz5s" role="3clFbG">
            <node concept="3cmrfG" id="3aRkDr2gzgF" role="37vLTx">
              <property role="3cmrfH" value="4" />
            </node>
            <node concept="2OqwBi" id="3aRkDr2gujL" role="37vLTJ">
              <node concept="2Sf5sV" id="3aRkDr2gu8E" role="2Oq$k0" />
              <node concept="3TrcHB" id="3aRkDr2guxp" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

