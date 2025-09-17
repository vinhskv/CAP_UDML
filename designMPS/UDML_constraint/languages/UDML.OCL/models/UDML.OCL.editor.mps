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
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
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
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="1919c723-b60b-4592-9318-9ce96d91da44" name="de.itemis.mps.editor.celllayout">
      <concept id="4682418030828725523" name="de.itemis.mps.editor.celllayout.structure.HorizontalLineCell" flags="ng" index="2T_mXK" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="2M42Z5Xiv9C">
    <ref role="1XX52x" to="zjlp:4DevkBtIvIj" resolve="OCL" />
    <node concept="3EZMnI" id="2M42Z5XiwfY" role="2wV5jI">
      <node concept="3F0ifn" id="2M42Z5XiwBs" role="3EZMnx">
        <property role="3F0ifm" value="OCL" />
      </node>
      <node concept="2iRkQZ" id="2M42Z5Xiwg1" role="2iSdaV" />
    </node>
  </node>
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
            <node concept="3clFbF" id="4rgh5BevdUE" role="3cqZAp">
              <node concept="3clFbC" id="4rgh5BevkIa" role="3clFbG">
                <node concept="2OqwBi" id="4rgh5BeveCI" role="3uHU7B">
                  <node concept="pncrf" id="4rgh5BevdUD" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4rgh5BevhzM" role="2OqNvi">
                    <ref role="3TsBF5" to="zjlp:4rgh5Bev78t" resolve="type" />
                  </node>
                </node>
                <node concept="3cmrfG" id="4rgh5BevjtR" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
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
                    <ref role="3TsBF5" to="zjlp:4rgh5Bev78t" resolve="type" />
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
                    <ref role="3TsBF5" to="zjlp:4rgh5Bev78t" resolve="type" />
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
                    <ref role="3TsBF5" to="zjlp:4rgh5Bev78t" resolve="type" />
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
                    <ref role="3TsBF5" to="zjlp:4rgh5Bev78t" resolve="type" />
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
                    <ref role="3TsBF5" to="zjlp:4rgh5Bev78t" resolve="type" />
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
    <property role="TrG5h" value="Min" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="4rgh5Bev5bM" role="2wV5jI">
      <node concept="3F0ifn" id="4rgh5Bev5bN" role="3EZMnx">
        <property role="3F0ifm" value="Sumcontract" />
      </node>
      <node concept="2T_mXK" id="4rgh5Bev5bO" role="3EZMnx" />
      <node concept="3EZMnI" id="4rgh5Bev5bP" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Bev5bQ" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Bev5bR" role="3EZMnx">
          <property role="3F0ifm" value="p0" />
        </node>
        <node concept="3F0ifn" id="4rgh5Bev5bS" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Bev5bT" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzLrw" resolve="p0" />
        </node>
        <node concept="2iRfu4" id="4rgh5Bev5bU" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Bev5bV" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Bev5bW" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Bev5bX" role="3EZMnx">
          <property role="3F0ifm" value="min" />
        </node>
        <node concept="3F0ifn" id="4rgh5Bev5bY" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Bev5bZ" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzaOK" resolve="min" />
        </node>
        <node concept="2iRfu4" id="4rgh5Bev5c0" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="4rgh5Bev5ce" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rgh5Bev5zD">
    <property role="TrG5h" value="Max" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="4rgh5Bev5L3" role="2wV5jI">
      <node concept="3F0ifn" id="4rgh5Bev5L4" role="3EZMnx">
        <property role="3F0ifm" value="Sumcontract" />
      </node>
      <node concept="2T_mXK" id="4rgh5Bev5L5" role="3EZMnx" />
      <node concept="3EZMnI" id="4rgh5Bev5L6" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Bev5L7" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Bev5L8" role="3EZMnx">
          <property role="3F0ifm" value="p0" />
        </node>
        <node concept="3F0ifn" id="4rgh5Bev5L9" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Bev5La" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzLrw" resolve="p0" />
        </node>
        <node concept="2iRfu4" id="4rgh5Bev5Lb" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Bev5Li" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Bev5Lj" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Bev5Lk" role="3EZMnx">
          <property role="3F0ifm" value="max" />
        </node>
        <node concept="2iRfu4" id="4rgh5Bev5Ll" role="2iSdaV" />
        <node concept="3F0ifn" id="4rgh5Bev5Lm" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Bev5Ln" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5Xzb5w" resolve="max" />
        </node>
      </node>
      <node concept="2iRkQZ" id="4rgh5Bev5Lv" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rgh5Be$pEp">
    <property role="TrG5h" value="type3" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="4rgh5Be$qgP" role="2wV5jI">
      <node concept="3F0ifn" id="4rgh5Be$qgQ" role="3EZMnx">
        <property role="3F0ifm" value="Sumcontract" />
      </node>
      <node concept="2T_mXK" id="4rgh5Be$qgR" role="3EZMnx" />
      <node concept="3EZMnI" id="4rgh5Be$qgS" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$qgT" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$qgU" role="3EZMnx">
          <property role="3F0ifm" value="p0" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$qgV" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$qgW" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzLrw" resolve="p0" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$qgX" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Be$rL7" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$rL9" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$rLb" role="3EZMnx">
          <property role="3F0ifm" value="max2" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$s2z" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$sjI" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzbsV" resolve="max2" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$rLc" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Be$qgY" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$qgZ" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$qh0" role="3EZMnx">
          <property role="3F0ifm" value="max" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$qh1" role="2iSdaV" />
        <node concept="3F0ifn" id="4rgh5Be$qh2" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$qh3" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5Xzb5w" resolve="max" />
        </node>
      </node>
      <node concept="3EZMnI" id="4rgh5Be$sCt" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$sCv" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$sJD" role="3EZMnx">
          <property role="3F0ifm" value="l" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$sN2" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$t4r" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzcUC" resolve="l" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$sCy" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="4rgh5Be$qh4" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rgh5Be$tig">
    <property role="TrG5h" value="type4" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="4rgh5Be$tTn" role="2wV5jI">
      <node concept="3F0ifn" id="4rgh5Be$tTo" role="3EZMnx">
        <property role="3F0ifm" value="Sumcontract" />
      </node>
      <node concept="2T_mXK" id="4rgh5Be$tTp" role="3EZMnx" />
      <node concept="3EZMnI" id="4rgh5Be$tTq" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$tTr" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$tTs" role="3EZMnx">
          <property role="3F0ifm" value="p0" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$tTt" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$tTu" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzLrw" resolve="p0" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$tTv" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Be$tTw" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$tTx" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$tTy" role="3EZMnx">
          <property role="3F0ifm" value="min" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$tTz" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$tT$" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzaOK" resolve="min" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$tT_" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Be$uHO" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$uHQ" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$vdD" role="3EZMnx">
          <property role="3F0ifm" value="conditionalMax" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$vh2" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$wt7" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:4rgh5Be$vye" resolve="conditionalMax" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$uHT" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Be$tTA" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$tTB" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$tTC" role="3EZMnx">
          <property role="3F0ifm" value="max" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$tTD" role="2iSdaV" />
        <node concept="3F0ifn" id="4rgh5Be$tTE" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$tTF" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5Xzb5w" resolve="max" />
        </node>
      </node>
      <node concept="3EZMnI" id="4rgh5Be$tTG" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$tTH" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$tTI" role="3EZMnx">
          <property role="3F0ifm" value="l" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$tTJ" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$tTK" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzcUC" resolve="l" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$tTL" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="4rgh5Be$tTM" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rgh5Be$wBq">
    <property role="TrG5h" value="type5" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="4rgh5Be$wSY" role="2wV5jI">
      <node concept="3F0ifn" id="4rgh5Be$wSZ" role="3EZMnx">
        <property role="3F0ifm" value="Sumcontract" />
      </node>
      <node concept="2T_mXK" id="4rgh5Be$wT0" role="3EZMnx" />
      <node concept="3EZMnI" id="4rgh5Be$wT1" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$wT2" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$wT3" role="3EZMnx">
          <property role="3F0ifm" value="p0" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$wT4" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$wT5" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzLrw" resolve="p0" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$wT6" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Be$xw3" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$xw4" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$xw5" role="3EZMnx">
          <property role="3F0ifm" value="min" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$xw6" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$xw7" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzaOK" resolve="min" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$xw8" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Be$wT7" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$wT8" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$wT9" role="3EZMnx">
          <property role="3F0ifm" value="max2" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$wTa" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$wTb" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzbsV" resolve="max2" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$wTc" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Be$wTj" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$wTk" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$wTl" role="3EZMnx">
          <property role="3F0ifm" value="li" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$wTm" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$wTn" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5Xzdi5" resolve="li" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$wTo" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="4rgh5Be$wTp" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="4rgh5Be$xLS">
    <property role="TrG5h" value="type6" />
    <ref role="1XX52x" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="3EZMnI" id="4rgh5Be$yKs" role="2wV5jI">
      <node concept="3F0ifn" id="4rgh5Be$yKt" role="3EZMnx">
        <property role="3F0ifm" value="Sumcontract" />
      </node>
      <node concept="2T_mXK" id="4rgh5Be$yKu" role="3EZMnx" />
      <node concept="3EZMnI" id="4rgh5Be$yKv" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$yKw" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$yKx" role="3EZMnx">
          <property role="3F0ifm" value="m1" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$yKy" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$yKz" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzbRH" resolve="message" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$yK$" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4rgh5Be$zGc" role="3EZMnx">
        <node concept="VPM3Z" id="4rgh5Be$zGe" role="3F10Kt" />
        <node concept="3F0ifn" id="4rgh5Be$zJP" role="3EZMnx">
          <property role="3F0ifm" value="min" />
        </node>
        <node concept="3F0ifn" id="4rgh5Be$zQL" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0A7n" id="4rgh5Be$$8b" role="3EZMnx">
          <ref role="1NtTu8" to="zjlp:2M42Z5XzaOK" resolve="min" />
        </node>
        <node concept="2iRfu4" id="4rgh5Be$zGh" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="4rgh5Be$yKR" role="2iSdaV" />
    </node>
  </node>
</model>

