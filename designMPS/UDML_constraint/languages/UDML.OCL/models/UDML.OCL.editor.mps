<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8adf2ac8-83b5-441f-81c8-5b245afa8106(UDML.OCL.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="1919c723-b60b-4592-9318-9ce96d91da44" name="de.itemis.mps.editor.celllayout" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="zjlp" ref="r:11d1b621-783c-4c2f-aeba-6f180102f9eb(UDML.OCL.structure)" />
    <import index="c9i8" ref="r:ea7fc89c-ba23-4010-88b5-8d2a6c306986(UDML.core.editor)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="1919c723-b60b-4592-9318-9ce96d91da44" name="de.itemis.mps.editor.celllayout">
      <concept id="4682418030828725523" name="de.itemis.mps.editor.celllayout.structure.HorizontalLineCell" flags="ng" index="2T_mXK" />
      <concept id="2728748097294192922" name="de.itemis.mps.editor.celllayout.structure.IntegerStyle" flags="lg" index="3To2jP">
        <property id="1221209241505" name="value" index="1lJzqX" />
      </concept>
      <concept id="2728748097294299101" name="de.itemis.mps.editor.celllayout.structure.MarginLeftStyle" flags="lg" index="3TopCM" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
  <node concept="24kQdi" id="2M42Z5XzdAa">
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="PMmxH" id="4rgh5BeuMC8" role="6VMZX">
      <ref role="PMmxG" to="c9i8:4MzzjozvuHf" resolve="target_annotable" />
    </node>
    <node concept="3EZMnI" id="4rgh5BevcWQ" role="2wV5jI">
      <node concept="PMmxH" id="4rgh5Bevdai" role="3EZMnx">
        <ref role="PMmxG" node="4rgh5Bev4zC" resolve="Min" />
        <node concept="pkWqt" id="4rgh5Bevd_5" role="pqm2j">
          <node concept="3clFbS" id="4rgh5Bevd_6" role="2VODD2">
            <node concept="3clFbF" id="60E6kFO5cMX" role="3cqZAp">
              <node concept="3clFbC" id="60E6kFO5fJ3" role="3clFbG">
                <node concept="3cmrfG" id="60E6kFO5gB_" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="60E6kFO5d9h" role="3uHU7B">
                  <node concept="pncrf" id="60E6kFO5cMW" role="2Oq$k0" />
                  <node concept="3TrcHB" id="60E6kFO5dxd" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="4rgh5BevdnG" role="3EZMnx">
        <ref role="PMmxG" node="4rgh5Bev5zD" resolve="Max" />
        <node concept="pkWqt" id="4rgh5BevlAF" role="pqm2j">
          <node concept="3clFbS" id="4rgh5BevlAG" role="2VODD2">
            <node concept="3clFbF" id="4rgh5BevlHP" role="3cqZAp">
              <node concept="3clFbC" id="4rgh5BevnDd" role="3clFbG">
                <node concept="3cmrfG" id="4rgh5BevnHx" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="4rgh5Bevmnw" role="3uHU7B">
                  <node concept="pncrf" id="4rgh5BevlHO" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4rgh5BevnBZ" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="4rgh5Be_u7u" role="3EZMnx">
        <ref role="PMmxG" node="4rgh5Be$pEp" resolve="type3" />
        <node concept="pkWqt" id="4rgh5Be_wC_" role="pqm2j">
          <node concept="3clFbS" id="4rgh5Be_wCA" role="2VODD2">
            <node concept="3clFbF" id="4rgh5Be_wJW" role="3cqZAp">
              <node concept="3clFbC" id="4rgh5Be_$iE" role="3clFbG">
                <node concept="3cmrfG" id="4rgh5Be__1r" role="3uHU7w">
                  <property role="3cmrfH" value="3" />
                </node>
                <node concept="2OqwBi" id="4rgh5Be_x6g" role="3uHU7B">
                  <node concept="pncrf" id="4rgh5Be_wJV" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4rgh5Be_x$w" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="4rgh5Be_vzn" role="3EZMnx">
        <ref role="PMmxG" node="4rgh5Be$tig" resolve="type4" />
        <node concept="pkWqt" id="4rgh5Be__rh" role="pqm2j">
          <node concept="3clFbS" id="4rgh5Be__ri" role="2VODD2">
            <node concept="3clFbF" id="4rgh5Be__yP" role="3cqZAp">
              <node concept="3clFbC" id="4rgh5Be_CLu" role="3clFbG">
                <node concept="3cmrfG" id="4rgh5Be_Dil" role="3uHU7w">
                  <property role="3cmrfH" value="4" />
                </node>
                <node concept="2OqwBi" id="4rgh5Be__T9" role="3uHU7B">
                  <node concept="pncrf" id="4rgh5Be__yO" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4rgh5Be_Awi" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="4rgh5Be_vI7" role="3EZMnx">
        <ref role="PMmxG" node="4rgh5Be$wBq" resolve="type5" />
        <node concept="pkWqt" id="4rgh5Be_DUV" role="pqm2j">
          <node concept="3clFbS" id="4rgh5Be_DUW" role="2VODD2">
            <node concept="3clFbF" id="4rgh5Be_Ea1" role="3cqZAp">
              <node concept="3clFbC" id="4rgh5Be_HcC" role="3clFbG">
                <node concept="3cmrfG" id="4rgh5Be_HKP" role="3uHU7w">
                  <property role="3cmrfH" value="5" />
                </node>
                <node concept="2OqwBi" id="4rgh5Be_Ewy" role="3uHU7B">
                  <node concept="pncrf" id="4rgh5Be_Ea0" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4rgh5Be_EYM" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="4rgh5Be_wvE" role="3EZMnx">
        <ref role="PMmxG" node="4rgh5Be$xLS" resolve="type6" />
        <node concept="pkWqt" id="4rgh5Be_Is1" role="pqm2j">
          <node concept="3clFbS" id="4rgh5Be_Is2" role="2VODD2">
            <node concept="3clFbF" id="4rgh5Be_IBY" role="3cqZAp">
              <node concept="3clFbC" id="4rgh5Be_N6$" role="3clFbG">
                <node concept="3cmrfG" id="4rgh5Be_NEL" role="3uHU7w">
                  <property role="3cmrfH" value="6" />
                </node>
                <node concept="2OqwBi" id="4rgh5Be_IYi" role="3uHU7B">
                  <node concept="pncrf" id="4rgh5Be_IBX" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4rgh5Be_Jsy" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="4rgh5BevcWT" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rgh5Bev4zC">
    <property role="TrG5h" value="type1" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="4rgh5Bev5bM" role="2wV5jI">
      <node concept="3F0ifn" id="4rgh5Bev5bN" role="3EZMnx">
        <property role="3F0ifm" value="@Sumcontract" />
      </node>
      <node concept="2T_mXK" id="4rgh5Bev5bO" role="3EZMnx" />
      <node concept="3EZMnI" id="60E6kFO5i2i" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5i2k" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5i2q" role="3EZMnx">
          <property role="3F0ifm" value="name" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5i2t" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5i2x" role="3EZMnx">
          <property role="3F0ifm" value="'" />
          <node concept="11LMrY" id="60E6kFO7zAl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="60E6kFO5i2$" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5i2B" role="3EZMnx">
          <property role="3F0ifm" value="'" />
          <node concept="11L4FC" id="60E6kFO7zAm" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="60E6kFO5i2n" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Bev5bP" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Bev5bQ" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5i2G" role="3EZMnx">
          <property role="3F0ifm" value="assocCls" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5i2J" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="60E6kFO5i2P" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i1Z" resolve="assocCls" />
        </node>
        <node concept="2iRfu4" id="4rgh5Bev5bU" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Bev5bV" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Bev5bW" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5i2V" role="3EZMnx">
          <property role="3F0ifm" value="rolePath" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5i2Y" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="60E6kFO5i31" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i22" resolve="rolePath" />
        </node>
        <node concept="2iRfu4" id="4rgh5Bev5c0" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO9$VZ" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO9$W1" role="3F10Kt" />
        <node concept="3EZMnI" id="60E6kFO9$W5" role="3EZMnx">
          <node concept="VPM3Z" id="60E6kFO9$W7" role="3F10Kt" />
          <node concept="3F0ifn" id="60E6kFO9$Wb" role="3EZMnx">
            <property role="3F0ifm" value="collect" />
          </node>
          <node concept="3F0ifn" id="60E6kFO9$Wc" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="60E6kFO9$Wd" role="3EZMnx">
            <property role="3F0ifm" value="{" />
          </node>
          <node concept="2iRfu4" id="60E6kFO9$Wa" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="60E6kFO9$Wf" role="3EZMnx">
          <node concept="VPM3Z" id="60E6kFO9$Wh" role="3F10Kt" />
          <node concept="3TopCM" id="60E6kFOac68" role="3F10Kt">
            <property role="1lJzqX" value="12" />
          </node>
          <node concept="3F2HdR" id="60E6kFO9$Wl" role="3EZMnx">
            <ref role="1NtTu8" to="zjlp:60E6kFO5i25" resolve="collect" />
            <node concept="2iRkQZ" id="60E6kFO9$Wn" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="60E6kFO9$Wk" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="60E6kFO9$Wo" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRkQZ" id="60E6kFO9$W4" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO5i3q" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5i3s" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5i3x" role="3EZMnx">
          <property role="3F0ifm" value="sumAttr" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5i3$" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5i3B" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFO9$VP" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO9$VL" resolve="sumAttr" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5i3H" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5i3v" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFOac5J" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFOac5L" role="3F10Kt" />
        <node concept="3EZMnI" id="60E6kFOac5S" role="3EZMnx">
          <node concept="VPM3Z" id="60E6kFOac5U" role="3F10Kt" />
          <node concept="3F0ifn" id="60E6kFOac5Y" role="3EZMnx">
            <property role="3F0ifm" value="fixAttr" />
          </node>
          <node concept="3F0ifn" id="60E6kFOac5Z" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="60E6kFOac60" role="3EZMnx">
            <property role="3F0ifm" value="{" />
          </node>
          <node concept="2iRfu4" id="60E6kFOac5X" role="2iSdaV" />
        </node>
        <node concept="3F2HdR" id="60E6kFOac62" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i2c" resolve="fixAttr" />
          <node concept="2iRkQZ" id="60E6kFOac64" role="2czzBx" />
          <node concept="3TopCM" id="60E6kFOac6a" role="3F10Kt">
            <property role="1lJzqX" value="10" />
          </node>
        </node>
        <node concept="3F0ifn" id="60E6kFOac65" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRkQZ" id="60E6kFOac5O" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="4rgh5Bev5ce" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rgh5Bev5zD">
    <property role="TrG5h" value="type2" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="60E6kFOc3pX" role="2wV5jI">
      <node concept="3F0ifn" id="60E6kFOc3pY" role="3EZMnx">
        <property role="3F0ifm" value="@Sumcontract" />
      </node>
      <node concept="2T_mXK" id="60E6kFOc3pZ" role="3EZMnx" />
      <node concept="3EZMnI" id="60E6kFOc3q0" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFOc3q1" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFOc3q2" role="3EZMnx">
          <property role="3F0ifm" value="name" />
        </node>
        <node concept="3F0ifn" id="60E6kFOc3q3" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="60E6kFOc3q4" role="3EZMnx">
          <property role="3F0ifm" value="'" />
          <node concept="11LMrY" id="60E6kFOc3q5" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="60E6kFOc3q6" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="60E6kFOc3q7" role="3EZMnx">
          <property role="3F0ifm" value="'" />
          <node concept="11L4FC" id="60E6kFOc3q8" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="60E6kFOc3q9" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFOc3qa" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFOc3qb" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFOc3qc" role="3EZMnx">
          <property role="3F0ifm" value="assocCls" />
        </node>
        <node concept="3F0ifn" id="60E6kFOc3qd" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="60E6kFOc3qe" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i1Z" />
        </node>
        <node concept="2iRfu4" id="60E6kFOc3qf" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFOc3qg" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFOc3qh" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFOc3qi" role="3EZMnx">
          <property role="3F0ifm" value="rolePath" />
        </node>
        <node concept="3F0ifn" id="60E6kFOc3qj" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="60E6kFOc3qk" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i22" />
        </node>
        <node concept="2iRfu4" id="60E6kFOc3ql" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFOcFja" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFOcFjc" role="3F10Kt" />
        <node concept="2iRfu4" id="60E6kFOcFjf" role="2iSdaV" />
        <node concept="3F1sOY" id="3aRkDr2aOCL" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:3aRkDr26tps" resolve="ifPart" />
        </node>
      </node>
      <node concept="3EZMnI" id="60E6kFOc3qm" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFOc3qn" role="3F10Kt" />
        <node concept="3EZMnI" id="60E6kFOc3qo" role="3EZMnx">
          <node concept="VPM3Z" id="60E6kFOc3qp" role="3F10Kt" />
          <node concept="3F0ifn" id="60E6kFOc3qq" role="3EZMnx">
            <property role="3F0ifm" value="collect" />
          </node>
          <node concept="3F0ifn" id="60E6kFOc3qr" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="60E6kFOc3qs" role="3EZMnx">
            <property role="3F0ifm" value="{" />
          </node>
          <node concept="2iRfu4" id="60E6kFOc3qt" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="60E6kFOc3qu" role="3EZMnx">
          <node concept="VPM3Z" id="60E6kFOc3qv" role="3F10Kt" />
          <node concept="3TopCM" id="60E6kFOc3qw" role="3F10Kt">
            <property role="1lJzqX" value="12" />
          </node>
          <node concept="3F2HdR" id="60E6kFOc3qx" role="3EZMnx">
            <ref role="1NtTu8" to="zjlp:60E6kFO5i25" />
            <node concept="2iRkQZ" id="60E6kFOc3qy" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="60E6kFOc3qz" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="60E6kFOc3q$" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRkQZ" id="60E6kFOc3q_" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFOc3qA" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFOc3qB" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFOc3qC" role="3EZMnx">
          <property role="3F0ifm" value="sumAttr" />
        </node>
        <node concept="3F0ifn" id="60E6kFOc3qD" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="60E6kFOc3qE" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFOc3qF" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO9$VL" resolve="sumAttr" />
        </node>
        <node concept="3F0ifn" id="60E6kFOc3qG" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFOc3qH" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFOc3qI" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFOc3qJ" role="3F10Kt" />
        <node concept="3EZMnI" id="60E6kFOc3qK" role="3EZMnx">
          <node concept="VPM3Z" id="60E6kFOc3qL" role="3F10Kt" />
          <node concept="3F0ifn" id="60E6kFOc3qM" role="3EZMnx">
            <property role="3F0ifm" value="fixAttr" />
          </node>
          <node concept="3F0ifn" id="60E6kFOc3qN" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="60E6kFOc3qO" role="3EZMnx">
            <property role="3F0ifm" value="{" />
          </node>
          <node concept="2iRfu4" id="60E6kFOc3qP" role="2iSdaV" />
        </node>
        <node concept="3F2HdR" id="60E6kFOc3qQ" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i2c" />
          <node concept="2iRkQZ" id="60E6kFOc3qR" role="2czzBx" />
          <node concept="3TopCM" id="60E6kFOc3qS" role="3F10Kt">
            <property role="1lJzqX" value="10" />
          </node>
        </node>
        <node concept="3F0ifn" id="60E6kFOc3qT" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRkQZ" id="60E6kFOc3qU" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="60E6kFOc3qV" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rgh5Be$pEp">
    <property role="TrG5h" value="type3" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="3aRkDr2chup" role="2wV5jI">
      <node concept="3F0ifn" id="3aRkDr2chuq" role="3EZMnx">
        <property role="3F0ifm" value="@Sumcontract" />
      </node>
      <node concept="2T_mXK" id="3aRkDr2chur" role="3EZMnx" />
      <node concept="3EZMnI" id="3aRkDr2chus" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2chut" role="3F10Kt" />
        <node concept="3F0ifn" id="3aRkDr2chuu" role="3EZMnx">
          <property role="3F0ifm" value="name" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chuv" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chuw" role="3EZMnx">
          <property role="3F0ifm" value="'" />
          <node concept="11LMrY" id="3aRkDr2chux" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="3aRkDr2chuy" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chuz" role="3EZMnx">
          <property role="3F0ifm" value="'" />
          <node concept="11L4FC" id="3aRkDr2chu$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="3aRkDr2chu_" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2chuA" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2chuB" role="3F10Kt" />
        <node concept="3F0ifn" id="3aRkDr2chuC" role="3EZMnx">
          <property role="3F0ifm" value="assocCls" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chuD" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="3aRkDr2chuE" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i1Z" />
        </node>
        <node concept="2iRfu4" id="3aRkDr2chuF" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2chuG" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2chuH" role="3F10Kt" />
        <node concept="3F0ifn" id="3aRkDr2chuI" role="3EZMnx">
          <property role="3F0ifm" value="rolePath" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chuJ" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="3aRkDr2chuK" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i22" />
        </node>
        <node concept="2iRfu4" id="3aRkDr2chuL" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2chuQ" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2chuR" role="3F10Kt" />
        <node concept="3EZMnI" id="3aRkDr2chuS" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2chuT" role="3F10Kt" />
          <node concept="3F0ifn" id="3aRkDr2chuU" role="3EZMnx">
            <property role="3F0ifm" value="collect" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2chuV" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2chuW" role="3EZMnx">
            <property role="3F0ifm" value="{" />
          </node>
          <node concept="2iRfu4" id="3aRkDr2chuX" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3aRkDr2chuY" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2chuZ" role="3F10Kt" />
          <node concept="3TopCM" id="3aRkDr2chv0" role="3F10Kt">
            <property role="1lJzqX" value="12" />
          </node>
          <node concept="3F2HdR" id="3aRkDr2chv1" role="3EZMnx">
            <ref role="1NtTu8" to="zjlp:60E6kFO5i25" />
            <node concept="2iRkQZ" id="3aRkDr2chv2" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="3aRkDr2chv3" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chv4" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRkQZ" id="3aRkDr2chv5" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2chv6" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2chv7" role="3F10Kt" />
        <node concept="3F0ifn" id="3aRkDr2chv8" role="3EZMnx">
          <property role="3F0ifm" value="sumAttr" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chv9" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chva" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="3aRkDr2chvb" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO9$VL" resolve="sumAttr" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chvc" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="3aRkDr2chvd" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2chv_" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2chvA" role="3F10Kt" />
        <node concept="3EZMnI" id="3aRkDr2chvB" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2chvC" role="3F10Kt" />
          <node concept="3F0ifn" id="3aRkDr2chvD" role="3EZMnx">
            <property role="3F0ifm" value="collect1" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2chvE" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2chvF" role="3EZMnx">
            <property role="3F0ifm" value="{" />
          </node>
          <node concept="2iRfu4" id="3aRkDr2chvG" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3aRkDr2chvH" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2chvI" role="3F10Kt" />
          <node concept="3TopCM" id="3aRkDr2chvJ" role="3F10Kt">
            <property role="1lJzqX" value="12" />
          </node>
          <node concept="3F2HdR" id="3aRkDr2chvK" role="3EZMnx">
            <ref role="1NtTu8" to="zjlp:3aRkDr2chuo" />
            <node concept="2iRkQZ" id="3aRkDr2chvL" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="3aRkDr2chvM" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chvN" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRkQZ" id="3aRkDr2chvO" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2chvP" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2chvQ" role="3F10Kt" />
        <node concept="3F0ifn" id="3aRkDr2chvX" role="3EZMnx">
          <property role="3F0ifm" value="sumAttr1" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chvS" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chvT" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="3aRkDr2chvU" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:3aRkDr2chvx" resolve="sumAttr1" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chvV" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="3aRkDr2chvW" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2chvZ" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2chw0" role="3F10Kt" />
        <node concept="3EZMnI" id="3aRkDr2chw1" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2chw2" role="3F10Kt" />
          <node concept="3F0ifn" id="3aRkDr2chw3" role="3EZMnx">
            <property role="3F0ifm" value="collect2" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2chw4" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2chw5" role="3EZMnx">
            <property role="3F0ifm" value="{" />
          </node>
          <node concept="2iRfu4" id="3aRkDr2chw6" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3aRkDr2chw7" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2chw8" role="3F10Kt" />
          <node concept="3TopCM" id="3aRkDr2chw9" role="3F10Kt">
            <property role="1lJzqX" value="12" />
          </node>
          <node concept="3F2HdR" id="3aRkDr2chwa" role="3EZMnx">
            <ref role="1NtTu8" to="zjlp:3aRkDr2chvw" />
            <node concept="2iRkQZ" id="3aRkDr2chwb" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="3aRkDr2chwc" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chwd" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRkQZ" id="3aRkDr2chwe" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2chwf" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2chwg" role="3F10Kt" />
        <node concept="3F0ifn" id="3aRkDr2chwh" role="3EZMnx">
          <property role="3F0ifm" value="sumAttr2" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chwi" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chwj" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="3aRkDr2chwk" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:3aRkDr2chvy" resolve="sumAttr2" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2chwl" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="3aRkDr2chwm" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2chv$" role="3EZMnx" />
      <node concept="3EZMnI" id="3aRkDr2chve" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2chvf" role="3F10Kt" />
        <node concept="3EZMnI" id="3aRkDr2chvg" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2chvh" role="3F10Kt" />
          <node concept="3F0ifn" id="3aRkDr2chvi" role="3EZMnx">
            <property role="3F0ifm" value="fixAttr" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2chvj" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2chvk" role="3EZMnx">
            <property role="3F0ifm" value="{" />
          </node>
          <node concept="2iRfu4" id="3aRkDr2chvl" role="2iSdaV" />
        </node>
        <node concept="3F2HdR" id="3aRkDr2chvm" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i2c" />
          <node concept="2iRkQZ" id="3aRkDr2chvn" role="2czzBx" />
          <node concept="3TopCM" id="3aRkDr2chvo" role="3F10Kt">
            <property role="1lJzqX" value="10" />
          </node>
        </node>
        <node concept="3F0ifn" id="3aRkDr2chvp" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRkQZ" id="3aRkDr2chvq" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3aRkDr2chvr" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rgh5Be$tig">
    <property role="TrG5h" value="type4" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="3aRkDr2e_Fi" role="2wV5jI">
      <node concept="3F0ifn" id="3aRkDr2e_Fj" role="3EZMnx">
        <property role="3F0ifm" value="@Sumcontract" />
      </node>
      <node concept="2T_mXK" id="3aRkDr2e_Fk" role="3EZMnx" />
      <node concept="3EZMnI" id="3aRkDr2e_Fl" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2e_Fm" role="3F10Kt" />
        <node concept="3F0ifn" id="3aRkDr2e_Fn" role="3EZMnx">
          <property role="3F0ifm" value="name" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2e_Fo" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2e_Fp" role="3EZMnx">
          <property role="3F0ifm" value="'" />
          <node concept="11LMrY" id="3aRkDr2e_Fq" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="3aRkDr2e_Fr" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2e_Fs" role="3EZMnx">
          <property role="3F0ifm" value="'" />
          <node concept="11L4FC" id="3aRkDr2e_Ft" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRfu4" id="3aRkDr2e_Fu" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2e_Fv" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2e_Fw" role="3F10Kt" />
        <node concept="3F0ifn" id="3aRkDr2e_Fx" role="3EZMnx">
          <property role="3F0ifm" value="assocCls" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2e_Fy" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="3aRkDr2e_Fz" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i1Z" />
        </node>
        <node concept="2iRfu4" id="3aRkDr2e_F$" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2e_F_" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2e_FA" role="3F10Kt" />
        <node concept="3F0ifn" id="3aRkDr2e_FB" role="3EZMnx">
          <property role="3F0ifm" value="rolePath" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2e_FC" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="3aRkDr2e_FD" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i22" />
        </node>
        <node concept="2iRfu4" id="3aRkDr2e_FE" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2e_FJ" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2e_FK" role="3F10Kt" />
        <node concept="3EZMnI" id="3aRkDr2e_FL" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2e_FM" role="3F10Kt" />
          <node concept="3F0ifn" id="3aRkDr2e_FN" role="3EZMnx">
            <property role="3F0ifm" value="collect1" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2e_FO" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2e_FP" role="3EZMnx">
            <property role="3F0ifm" value="{" />
          </node>
          <node concept="2iRfu4" id="3aRkDr2e_FQ" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3aRkDr2e_FR" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2e_FS" role="3F10Kt" />
          <node concept="3TopCM" id="3aRkDr2e_FT" role="3F10Kt">
            <property role="1lJzqX" value="12" />
          </node>
          <node concept="3F2HdR" id="3aRkDr2e_FU" role="3EZMnx">
            <ref role="1NtTu8" to="zjlp:60E6kFO5i25" />
            <node concept="2iRkQZ" id="3aRkDr2e_FV" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="3aRkDr2e_FW" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2e_FX" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRkQZ" id="3aRkDr2e_FY" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2e_FZ" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2e_G0" role="3F10Kt" />
        <node concept="3F0ifn" id="3aRkDr2e_G1" role="3EZMnx">
          <property role="3F0ifm" value="sumAttr" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2e_G2" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2e_G3" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="3aRkDr2e_G4" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO9$VL" resolve="sumAttr" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2e_G5" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="3aRkDr2e_G6" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3aRkDr2fi0Z" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2fi10" role="3F10Kt" />
        <node concept="3EZMnI" id="3aRkDr2fi11" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2fi12" role="3F10Kt" />
          <node concept="3F0ifn" id="3aRkDr2fi13" role="3EZMnx">
            <property role="3F0ifm" value="collect2" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2fi14" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2fi15" role="3EZMnx">
            <property role="3F0ifm" value="{" />
          </node>
          <node concept="2iRfu4" id="3aRkDr2fi16" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3aRkDr2fi17" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2fi18" role="3F10Kt" />
          <node concept="3TopCM" id="3aRkDr2fi19" role="3F10Kt">
            <property role="1lJzqX" value="12" />
          </node>
          <node concept="3F2HdR" id="3aRkDr2fi1a" role="3EZMnx">
            <ref role="1NtTu8" to="zjlp:3aRkDr2chuo" />
            <node concept="2iRkQZ" id="3aRkDr2fi1b" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="3aRkDr2fi1c" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="3aRkDr2fi1d" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRkQZ" id="3aRkDr2fi1e" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2fi0Y" role="3EZMnx" />
      <node concept="3EZMnI" id="3aRkDr2e_G7" role="3EZMnx">
        <node concept="VPM3Z" id="3aRkDr2e_G8" role="3F10Kt" />
        <node concept="3EZMnI" id="3aRkDr2e_G9" role="3EZMnx">
          <node concept="VPM3Z" id="3aRkDr2e_Ga" role="3F10Kt" />
          <node concept="3F0ifn" id="3aRkDr2e_Gb" role="3EZMnx">
            <property role="3F0ifm" value="fixAttr" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2e_Gc" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0ifn" id="3aRkDr2e_Gd" role="3EZMnx">
            <property role="3F0ifm" value="{" />
          </node>
          <node concept="2iRfu4" id="3aRkDr2e_Ge" role="2iSdaV" />
        </node>
        <node concept="3F2HdR" id="3aRkDr2e_Gf" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i2c" />
          <node concept="2iRkQZ" id="3aRkDr2e_Gg" role="2czzBx" />
          <node concept="3TopCM" id="3aRkDr2e_Gh" role="3F10Kt">
            <property role="1lJzqX" value="10" />
          </node>
        </node>
        <node concept="3F0ifn" id="3aRkDr2e_Gi" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRkQZ" id="3aRkDr2e_Gj" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="3aRkDr2e_Gk" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rgh5Be$wBq">
    <property role="TrG5h" value="type5" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="60E6kFO5iYf" role="2wV5jI">
      <node concept="3F0ifn" id="60E6kFO5iYg" role="3EZMnx">
        <property role="3F0ifm" value="@Sumcontract" />
      </node>
      <node concept="2T_mXK" id="60E6kFO5iYh" role="3EZMnx" />
      <node concept="3EZMnI" id="60E6kFO5iYi" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iYj" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iYk" role="3EZMnx">
          <property role="3F0ifm" value="name" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iYl" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iYm" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFO5iYn" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iYo" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iYp" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO5iYq" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iYr" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iYs" role="3EZMnx">
          <property role="3F0ifm" value="assocCls" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iYt" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="60E6kFO5iYu" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i1Z" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iYv" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO5iYw" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iYx" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iYy" role="3EZMnx">
          <property role="3F0ifm" value="rolePath" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iYz" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="60E6kFO5iY$" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i22" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iY_" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO5iYA" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iYB" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iYC" role="3EZMnx">
          <property role="3F0ifm" value="collect" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iYD" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iYE" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
        <node concept="3F2HdR" id="60E6kFO5iYF" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i25" />
          <node concept="2iRfu4" id="60E6kFO5iYG" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iYH" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO5iYI" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iYJ" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iYK" role="3EZMnx">
          <property role="3F0ifm" value="sumAttr" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iYL" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iYM" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFO9$VU" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO9$VL" resolve="sumAttr" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iYO" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iYP" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO5iYQ" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iYR" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iYS" role="3EZMnx">
          <property role="3F0ifm" value="fixAttr" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iYT" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F2HdR" id="60E6kFO5iYU" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i2c" />
          <node concept="2iRfu4" id="60E6kFO5iYV" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iYW" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="60E6kFO5iYX" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rgh5Be$xLS">
    <property role="TrG5h" value="type6" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="60E6kFO5iYY" role="2wV5jI">
      <node concept="3F0ifn" id="60E6kFO5iYZ" role="3EZMnx">
        <property role="3F0ifm" value="@Sumcontract" />
      </node>
      <node concept="2T_mXK" id="60E6kFO5iZ0" role="3EZMnx" />
      <node concept="3EZMnI" id="60E6kFO5iZ1" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iZ2" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iZ3" role="3EZMnx">
          <property role="3F0ifm" value="name" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iZ4" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iZ5" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFO5iZ6" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iZ7" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iZ8" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO5iZ9" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iZa" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iZb" role="3EZMnx">
          <property role="3F0ifm" value="assocCls" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iZc" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="60E6kFO5iZd" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i1Z" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iZe" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO5iZf" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iZg" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iZh" role="3EZMnx">
          <property role="3F0ifm" value="rolePath" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iZi" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F1sOY" id="60E6kFO5iZj" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i22" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iZk" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO5iZl" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iZm" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iZn" role="3EZMnx">
          <property role="3F0ifm" value="collect" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iZo" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iZp" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
        <node concept="3F2HdR" id="60E6kFO5iZq" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i25" />
          <node concept="2iRfu4" id="60E6kFO5iZr" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iZs" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO5iZt" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iZu" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iZv" role="3EZMnx">
          <property role="3F0ifm" value="sumAttr" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iZw" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iZx" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFO9$VV" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO9$VL" resolve="sumAttr" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iZz" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iZ$" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="60E6kFO5iZ_" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO5iZA" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO5iZB" role="3EZMnx">
          <property role="3F0ifm" value="fixAttr" />
        </node>
        <node concept="3F0ifn" id="60E6kFO5iZC" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F2HdR" id="60E6kFO5iZD" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO5i2c" />
          <node concept="2iRfu4" id="60E6kFO5iZE" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="60E6kFO5iZF" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="60E6kFO5iZG" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="60E6kFO5i43">
    <property role="3GE5qa" value="SumConstraint" />
    <ref role="1XX52x" to="zjlp:60E6kFO5hR$" resolve="RolePath" />
    <node concept="3EZMnI" id="60E6kFO5iNX" role="2wV5jI">
      <node concept="3F0ifn" id="60E6kFO5iO2" role="3EZMnx">
        <property role="3F0ifm" value="@RolePath" />
      </node>
      <node concept="3F0ifn" id="60E6kFO9p85" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3EZMnI" id="60E6kFO9p86" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO9p87" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO9p88" role="3EZMnx">
          <property role="3F0ifm" value="r1=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO9p89" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFO9p8a" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO9oRc" resolve="r1" />
        </node>
        <node concept="3F0ifn" id="60E6kFO9p8b" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFO9p8c" role="2iSdaV" />
        <node concept="pkWqt" id="60E6kFO9p8d" role="pqm2j">
          <node concept="3clFbS" id="60E6kFO9p8e" role="2VODD2">
            <node concept="3clFbF" id="60E6kFO9p8f" role="3cqZAp">
              <node concept="3eOSWO" id="60E6kFO9p8g" role="3clFbG">
                <node concept="3cmrfG" id="60E6kFO9p8h" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="60E6kFO9p8i" role="3uHU7B">
                  <node concept="pncrf" id="60E6kFO9p8j" role="2Oq$k0" />
                  <node concept="3TrcHB" id="60E6kFO9p8k" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="60E6kFO9p8l" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO9p8m" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO9p8n" role="3EZMnx">
          <property role="3F0ifm" value=", r2=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO9p8o" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFO9p8p" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO9oRd" resolve="r2" />
        </node>
        <node concept="3F0ifn" id="60E6kFO9p8q" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFO9p8r" role="2iSdaV" />
        <node concept="pkWqt" id="60E6kFO9p8s" role="pqm2j">
          <node concept="3clFbS" id="60E6kFO9p8t" role="2VODD2">
            <node concept="3clFbF" id="60E6kFO9p8u" role="3cqZAp">
              <node concept="3eOSWO" id="60E6kFO9p8v" role="3clFbG">
                <node concept="3cmrfG" id="60E6kFO9p8w" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="60E6kFO9p8x" role="3uHU7B">
                  <node concept="pncrf" id="60E6kFO9p8y" role="2Oq$k0" />
                  <node concept="3TrcHB" id="60E6kFO9p8z" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="60E6kFO9p8$" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO9p8_" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO9p8A" role="3EZMnx">
          <property role="3F0ifm" value=", r3=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO9p8B" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFO9p8C" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO9oRe" resolve="r3" />
        </node>
        <node concept="3F0ifn" id="60E6kFO9p8D" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFO9p8E" role="2iSdaV" />
        <node concept="pkWqt" id="60E6kFO9p8F" role="pqm2j">
          <node concept="3clFbS" id="60E6kFO9p8G" role="2VODD2">
            <node concept="3clFbF" id="60E6kFO9p8H" role="3cqZAp">
              <node concept="3eOSWO" id="60E6kFO9p8I" role="3clFbG">
                <node concept="3cmrfG" id="60E6kFO9p8J" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="60E6kFO9p8K" role="3uHU7B">
                  <node concept="pncrf" id="60E6kFO9p8L" role="2Oq$k0" />
                  <node concept="3TrcHB" id="60E6kFO9p8M" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="60E6kFO9p8N" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="60E6kFO5iO0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="60E6kFO5iOg">
    <property role="3GE5qa" value="SumConstraint" />
    <ref role="1XX52x" to="zjlp:60E6kFO5hO8" resolve="AssocCls" />
    <node concept="3EZMnI" id="60E6kFO5iRC" role="2wV5jI">
      <node concept="3F0ifn" id="60E6kFO5iRJ" role="3EZMnx">
        <property role="3F0ifm" value="@AssocCls" />
      </node>
      <node concept="3F0ifn" id="60E6kFO5iRM" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3EZMnI" id="60E6kFO7$mm" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO7$mo" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO7$mu" role="3EZMnx">
          <property role="3F0ifm" value="as1=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO7$mx" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFO7$mA" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO7zDK" resolve="as1" />
        </node>
        <node concept="3F0ifn" id="60E6kFO7$mD" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFO7$mr" role="2iSdaV" />
        <node concept="pkWqt" id="60E6kFO7$np" role="pqm2j">
          <node concept="3clFbS" id="60E6kFO7$nq" role="2VODD2">
            <node concept="3clFbF" id="60E6kFO7CBx" role="3cqZAp">
              <node concept="3eOSWO" id="60E6kFO7G97" role="3clFbG">
                <node concept="3cmrfG" id="60E6kFO7G9b" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="60E6kFO7CTd" role="3uHU7B">
                  <node concept="pncrf" id="60E6kFO7CBw" role="2Oq$k0" />
                  <node concept="3TrcHB" id="60E6kFO7D90" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="60E6kFO7$mG" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO7$mI" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO7$mO" role="3EZMnx">
          <property role="3F0ifm" value=", as2=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO7$mR" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFO7$mW" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO7zDL" resolve="as2" />
        </node>
        <node concept="3F0ifn" id="60E6kFO7$mZ" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFO7$mL" role="2iSdaV" />
        <node concept="pkWqt" id="60E6kFO7GuZ" role="pqm2j">
          <node concept="3clFbS" id="60E6kFO7Gv0" role="2VODD2">
            <node concept="3clFbF" id="60E6kFO7Gvt" role="3cqZAp">
              <node concept="3eOSWO" id="60E6kFO7IZx" role="3clFbG">
                <node concept="3cmrfG" id="60E6kFO7IZ_" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="60E6kFO7GJ9" role="3uHU7B">
                  <node concept="pncrf" id="60E6kFO7Gvs" role="2Oq$k0" />
                  <node concept="3TrcHB" id="60E6kFO7GYW" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="60E6kFO7$n4" role="3EZMnx">
        <node concept="VPM3Z" id="60E6kFO7$n6" role="3F10Kt" />
        <node concept="3F0ifn" id="60E6kFO7$nc" role="3EZMnx">
          <property role="3F0ifm" value=", as3=" />
        </node>
        <node concept="3F0ifn" id="60E6kFO7$nf" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="3F0A7n" id="60E6kFO7$nk" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:60E6kFO7zDM" resolve="as3" />
        </node>
        <node concept="3F0ifn" id="60E6kFO7$nn" role="3EZMnx">
          <property role="3F0ifm" value="'" />
        </node>
        <node concept="2iRfu4" id="60E6kFO7$n9" role="2iSdaV" />
        <node concept="pkWqt" id="60E6kFO7JsR" role="pqm2j">
          <node concept="3clFbS" id="60E6kFO7JsS" role="2VODD2">
            <node concept="3clFbF" id="60E6kFO7Jtl" role="3cqZAp">
              <node concept="3eOSWO" id="60E6kFO7Sm5" role="3clFbG">
                <node concept="3cmrfG" id="60E6kFO7Sm9" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="60E6kFO7JJ1" role="3uHU7B">
                  <node concept="pncrf" id="60E6kFO7Jtk" role="2Oq$k0" />
                  <node concept="3TrcHB" id="60E6kFO7JYO" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="60E6kFO5iSa" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="2iRfu4" id="60E6kFO5iRF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="60E6kFO5iSc">
    <property role="3GE5qa" value="SumConstraint" />
    <ref role="1XX52x" to="zjlp:60E6kFO5hUZ" resolve="AttrCond" />
    <node concept="3EZMnI" id="60E6kFO5iV_" role="2wV5jI">
      <node concept="3F0ifn" id="60E6kFO5iVG" role="3EZMnx">
        <property role="3F0ifm" value="@AttrCond" />
      </node>
      <node concept="3F0ifn" id="60E6kFO5iVJ" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="PMmxH" id="60E6kFOdjA8" role="3EZMnx">
        <ref role="PMmxG" node="60E6kFOdjuM" resolve="type1" />
        <node concept="pkWqt" id="60E6kFOfFvH" role="pqm2j">
          <node concept="3clFbS" id="60E6kFOfFvI" role="2VODD2">
            <node concept="3clFbF" id="60E6kFOfFvL" role="3cqZAp">
              <node concept="3clFbC" id="60E6kFOfJG4" role="3clFbG">
                <node concept="3cmrfG" id="60E6kFOfKcI" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="60E6kFOfFLt" role="3uHU7B">
                  <node concept="pncrf" id="60E6kFOfFvK" role="2Oq$k0" />
                  <node concept="3TrcHB" id="60E6kFOfG5D" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="60E6kFOdjAa" role="3EZMnx">
        <ref role="PMmxG" node="60E6kFOdjyq" resolve="type2" />
        <node concept="pkWqt" id="60E6kFOfKqY" role="pqm2j">
          <node concept="3clFbS" id="60E6kFOfKqZ" role="2VODD2">
            <node concept="3clFbF" id="60E6kFOfKr2" role="3cqZAp">
              <node concept="3clFbC" id="60E6kFOfNe9" role="3clFbG">
                <node concept="3cmrfG" id="60E6kFOfNed" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="60E6kFOfKGI" role="3uHU7B">
                  <node concept="pncrf" id="60E6kFOfKr1" role="2Oq$k0" />
                  <node concept="3TrcHB" id="60E6kFOfL0U" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3aRkDr2bu7D" role="3EZMnx">
        <ref role="PMmxG" node="3aRkDr2btq5" resolve="AttrCondtype3" />
        <node concept="pkWqt" id="3aRkDr2bu9u" role="pqm2j">
          <node concept="3clFbS" id="3aRkDr2bu9v" role="2VODD2">
            <node concept="3clFbF" id="3aRkDr2bu9W" role="3cqZAp">
              <node concept="3clFbC" id="3aRkDr2bx4x" role="3clFbG">
                <node concept="3cmrfG" id="3aRkDr2bxUC" role="3uHU7w">
                  <property role="3cmrfH" value="3" />
                </node>
                <node concept="2OqwBi" id="3aRkDr2burC" role="3uHU7B">
                  <node concept="pncrf" id="3aRkDr2bu9V" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3aRkDr2buTp" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="3aRkDr2gnAb" role="3EZMnx">
        <ref role="PMmxG" node="3aRkDr2gmdK" resolve="AttrCondtype4" />
        <node concept="pkWqt" id="3aRkDr2gnCU" role="pqm2j">
          <node concept="3clFbS" id="3aRkDr2gnCV" role="2VODD2">
            <node concept="3clFbF" id="3aRkDr2gnDo" role="3cqZAp">
              <node concept="3clFbC" id="3aRkDr2gqye" role="3clFbG">
                <node concept="3cmrfG" id="3aRkDr2gr9o" role="3uHU7w">
                  <property role="3cmrfH" value="4" />
                </node>
                <node concept="2OqwBi" id="3aRkDr2gnV4" role="3uHU7B">
                  <node concept="pncrf" id="3aRkDr2gnDn" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3aRkDr2goaj" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:3aRkDr26oAp" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="60E6kFO5iWH" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="2iRfu4" id="60E6kFO5iVC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="60E6kFOac1Z">
    <ref role="1XX52x" to="zjlp:60E6kFOabYA" resolve="AttrRef" />
    <node concept="3EZMnI" id="60E6kFOac5n" role="2wV5jI">
      <node concept="3F0ifn" id="3aRkDr29$T1" role="3EZMnx">
        <property role="3F0ifm" value="@AttrRef(" />
      </node>
      <node concept="PMmxH" id="3aRkDr29$T4" role="3EZMnx">
        <ref role="PMmxG" node="3aRkDr29$Pw" resolve="MinLim" />
      </node>
      <node concept="3F0ifn" id="60E6kFObrzA" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="2iRfu4" id="60E6kFOac5q" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="60E6kFOdjuM">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AttrCondtype1" />
    <ref role="1XX52x" to="zjlp:60E6kFO5hUZ" resolve="AttrCond" />
    <node concept="3EZMnI" id="60E6kFOdjya" role="2wV5jI">
      <node concept="3F0ifn" id="60E6kFOdjyf" role="3EZMnx">
        <property role="3F0ifm" value="attr" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjyg" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjyh" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0A7n" id="60E6kFOdjyi" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:60E6kFO5hYn" resolve="attr" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjyj" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjyk" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjyl" role="3EZMnx">
        <property role="3F0ifm" value="minLim" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjym" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjyn" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjyp" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="2iRfu4" id="60E6kFOdjyd" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="60E6kFOdjyq">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AttrCondtype2" />
    <ref role="1XX52x" to="zjlp:60E6kFO5hUZ" resolve="AttrCond" />
    <node concept="3EZMnI" id="60E6kFOdj_M" role="2wV5jI">
      <node concept="3F0ifn" id="60E6kFOdj_Q" role="3EZMnx">
        <property role="3F0ifm" value="attr" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdj_R" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdj_S" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0A7n" id="60E6kFOdj_T" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:60E6kFO5hYn" resolve="attr" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdj_U" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjA1" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjA2" role="3EZMnx">
        <property role="3F0ifm" value="matchStr" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjA3" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjA4" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0A7n" id="60E6kFOdjA5" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:60E6kFO5hYt" resolve="matchStr" />
      </node>
      <node concept="3F0ifn" id="60E6kFOdjA6" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="2iRfu4" id="60E6kFOdj_P" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3aRkDr28lK8">
    <property role="3GE5qa" value="SumConstraint" />
    <ref role="1XX52x" to="zjlp:3aRkDr26tp$" resolve="FixAttr" />
    <node concept="3EZMnI" id="3aRkDr28lND" role="2wV5jI">
      <node concept="3F2HdR" id="3aRkDr28lNH" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:3aRkDr26tsX" resolve="attrRef" />
        <node concept="2iRkQZ" id="3aRkDr28lNJ" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="3aRkDr28lNG" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3aRkDr28Xmt">
    <property role="3GE5qa" value="SumConstraint" />
    <ref role="1XX52x" to="zjlp:3aRkDr26tt0" resolve="RolePathRefAttr" />
    <node concept="3EZMnI" id="3aRkDr28XpR" role="2wV5jI">
      <node concept="2iRkQZ" id="3aRkDr28XpU" role="2iSdaV" />
      <node concept="3F1sOY" id="3aRkDr28Xqm" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:3aRkDr26twp" resolve="rolePath" />
      </node>
      <node concept="3F2HdR" id="3aRkDr28Xqo" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:3aRkDr26tsX" resolve="attrRef" />
        <node concept="2iRkQZ" id="3aRkDr28Xqq" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="3aRkDr29$Pw">
    <property role="TrG5h" value="MinLim" />
    <ref role="1XX52x" to="zjlp:60E6kFOabYA" resolve="AttrRef" />
    <node concept="3EZMnI" id="3aRkDr29$SS" role="2wV5jI">
      <node concept="3F0ifn" id="3aRkDr29$SW" role="3EZMnx">
        <property role="3F0ifm" value="minLim" />
      </node>
      <node concept="3F0ifn" id="3aRkDr29$SX" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="3aRkDr29$SY" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0A7n" id="3aRkDr29$SZ" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:3aRkDr26twt" resolve="minLim" />
      </node>
      <node concept="3F0ifn" id="3aRkDr29$T0" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="2iRfu4" id="3aRkDr29$SV" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3aRkDr2aOCO">
    <property role="3GE5qa" value="SumConstraint" />
    <ref role="1XX52x" to="zjlp:3aRkDr26o3z" resolve="IfPart" />
    <node concept="3EZMnI" id="3aRkDr2aOGc" role="2wV5jI">
      <node concept="3F2HdR" id="3aRkDr2aOGg" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:3aRkDr26o6Z" resolve="conditions" />
        <node concept="2iRfu4" id="3aRkDr2aOGi" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="3aRkDr2aOGf" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="3aRkDr2btq5">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AttrCondtype3" />
    <ref role="1XX52x" to="zjlp:60E6kFO5hUZ" resolve="AttrCond" />
    <node concept="3EZMnI" id="3aRkDr2bttt" role="2wV5jI">
      <node concept="3F0ifn" id="3aRkDr2bttu" role="3EZMnx">
        <property role="3F0ifm" value="attr" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2bttv" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2bttw" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0A7n" id="3aRkDr2bttx" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:60E6kFO5hYn" resolve="attr" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2btty" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2bttz" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="3aRkDr2btt$" role="3EZMnx">
        <property role="3F0ifm" value="matchStr" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2btt_" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2bttA" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0A7n" id="3aRkDr2bttF" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:60E6kFO5hYt" resolve="matchStr" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2bttB" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="2iRfu4" id="3aRkDr2bttC" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="3aRkDr2gmdK">
    <property role="3GE5qa" value="SumConstraint" />
    <property role="TrG5h" value="AttrCondtype4" />
    <ref role="1XX52x" to="zjlp:60E6kFO5hUZ" resolve="AttrCond" />
    <node concept="3EZMnI" id="3aRkDr2gmUb" role="2wV5jI">
      <node concept="3F0ifn" id="3aRkDr2gmUc" role="3EZMnx">
        <property role="3F0ifm" value="attr" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2gmUd" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2gmUe" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0A7n" id="3aRkDr2gmUf" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:60E6kFO5hYn" resolve="attr" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2gmUg" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2gmUh" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0ifn" id="3aRkDr2gmUi" role="3EZMnx">
        <property role="3F0ifm" value="matchAttr" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2gmUj" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2gmUk" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="3F0A7n" id="3aRkDr2gmUl" role="3EZMnx">
        <ref role="1NtTu8" to="zjlp:3aRkDr26o71" resolve="matchAttr" />
      </node>
      <node concept="3F0ifn" id="3aRkDr2gmUm" role="3EZMnx">
        <property role="3F0ifm" value="'" />
      </node>
      <node concept="2iRfu4" id="3aRkDr2gmUn" role="2iSdaV" />
    </node>
  </node>
</model>

