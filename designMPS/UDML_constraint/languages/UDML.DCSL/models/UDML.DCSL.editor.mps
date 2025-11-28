<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9b91cd91-594b-4b61-b8b6-930af6b8af1e(UDML.DCSL.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="1919c723-b60b-4592-9318-9ce96d91da44" name="de.itemis.mps.editor.celllayout" version="0" />
    <use id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram" version="1" />
  </languages>
  <imports>
    <import index="ykvp" ref="r:1569ac16-88e0-467b-a0a7-2cc4247ddc9c(UDML.DCSL.structure)" implicit="true" />
    <import index="c9i8" ref="r:ea7fc89c-ba23-4010-88b5-8d2a6c306986(UDML.core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
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
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="1919c723-b60b-4592-9318-9ce96d91da44" name="de.itemis.mps.editor.celllayout">
      <concept id="4682418030828725523" name="de.itemis.mps.editor.celllayout.structure.HorizontalLineCell" flags="ng" index="2T_mXK" />
    </language>
    <language id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram">
      <concept id="6237710625713195816" name="de.itemis.mps.editor.diagram.structure.CellModel_DiagramNode" flags="ng" index="2ZK4vF">
        <child id="5885378216888005965" name="boxID" index="NKQk3" />
        <child id="1315262826372527521" name="editor" index="1ytjkN" />
      </concept>
      <concept id="8587703283519920118" name="de.itemis.mps.editor.diagram.structure.ThisNodeExpression" flags="ng" index="1Pxb5l" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3QRtJrmAH4w">
    <ref role="1XX52x" to="ykvp:3QRtJrmAH3l" resolve="Associate" />
    <node concept="3EZMnI" id="1w2LIuq6zNi" role="2wV5jI">
      <node concept="2iRkQZ" id="1w2LIuq6zNl" role="2iSdaV" />
      <node concept="3EZMnI" id="1w2LIuq7ka9" role="3EZMnx">
        <node concept="2iRfu4" id="1w2LIuq7kaa" role="2iSdaV" />
        <node concept="VPM3Z" id="1w2LIuq7kab" role="3F10Kt" />
        <node concept="3F0ifn" id="1w2LIuq7kbl" role="3EZMnx">
          <property role="3F0ifm" value="Associate" />
        </node>
        <node concept="3F0ifn" id="1w2LIuq7kbx" role="3EZMnx">
          <property role="3F0ifm" value="=" />
        </node>
        <node concept="3F0ifn" id="1w2LIuq7kcU" role="3EZMnx">
          <property role="3F0ifm" value="@AssocEnd" />
        </node>
        <node concept="3F0ifn" id="1w2LIuq7kdX" role="3EZMnx" />
        <node concept="3F0ifn" id="1w2LIuq7keW" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
      </node>
      <node concept="3EZMnI" id="1w2LIuq8MW5" role="3EZMnx">
        <node concept="3EZMnI" id="1w2LIuq8Nw7" role="3EZMnx">
          <node concept="VPM3Z" id="1w2LIuq8Nw9" role="3F10Kt" />
          <node concept="3F0ifn" id="1w2LIuq8NwX" role="3EZMnx">
            <property role="3F0ifm" value="type" />
          </node>
          <node concept="3F0ifn" id="1w2LIuq8Nxl" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="1iCGBv" id="1w2LIuq8NxQ" role="3EZMnx">
            <ref role="1NtTu8" to="ykvp:1w2LIuq6zlU" resolve="type" />
            <node concept="1sVBvm" id="1w2LIuq8NxS" role="1sWHZn">
              <node concept="3SHvHV" id="1w2LIuq8NyA" role="2wV5jI" />
            </node>
          </node>
          <node concept="2iRfu4" id="1w2LIuq8Nwc" role="2iSdaV" />
        </node>
        <node concept="lj46D" id="3CgoCDq73M8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="3CgoCDq73M9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="3CgoCDq73Ma" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="1w2LIuq8MW7" role="3F10Kt" />
        <node concept="l2Vlx" id="1w2LIuq8MWa" role="2iSdaV" />
        <node concept="3EZMnI" id="1w2LIuq8Nm9" role="3EZMnx">
          <node concept="VPM3Z" id="1w2LIuq8Nmb" role="3F10Kt" />
          <node concept="3F0ifn" id="1w2LIuq8No7" role="3EZMnx">
            <property role="3F0ifm" value="cardMin" />
          </node>
          <node concept="3F0ifn" id="1w2LIuq8Noj" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0A7n" id="1w2LIuq8Nqw" role="3EZMnx">
            <ref role="1NtTu8" to="ykvp:1w2LIuq6zbl" resolve="cardMin" />
          </node>
          <node concept="2iRfu4" id="1w2LIuq8Nme" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="1w2LIuq8Nrp" role="3EZMnx">
          <node concept="VPM3Z" id="1w2LIuq8Nrr" role="3F10Kt" />
          <node concept="3F0ifn" id="1w2LIuq8NsM" role="3EZMnx">
            <property role="3F0ifm" value="cardMax" />
          </node>
          <node concept="3F0ifn" id="1w2LIuq8NsP" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0A7n" id="1w2LIuq8NtF" role="3EZMnx">
            <ref role="1NtTu8" to="ykvp:1w2LIuq6zcI" resolve="cardMax" />
          </node>
          <node concept="2iRfu4" id="1w2LIuq8Nru" role="2iSdaV" />
        </node>
      </node>
      <node concept="3EZMnI" id="1w2LIuq7kjz" role="3EZMnx">
        <node concept="VPM3Z" id="1w2LIuq7kj_" role="3F10Kt" />
        <node concept="3F0ifn" id="1w2LIuq7kjB" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="2iRfu4" id="1w2LIuq7kjC" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3QRtJrmAH4C">
    <property role="3GE5qa" value="annotation" />
    <ref role="1XX52x" to="ykvp:3QRtJrmAH2F" resolve="DAssoc" />
    <node concept="2ZK4vF" id="1w2LIuq6bCx" role="2wV5jI">
      <node concept="3EZMnI" id="1w2LIuq6bFU" role="1ytjkN">
        <node concept="3EZMnI" id="1w2LIuq6bKV" role="3EZMnx">
          <node concept="VPM3Z" id="1w2LIuq6bKX" role="3F10Kt" />
          <node concept="3F0ifn" id="1w2LIuq6bOx" role="3EZMnx">
            <property role="3F0ifm" value="&lt;&lt;meta-attribute" />
          </node>
          <node concept="2iRfu4" id="1w2LIuq6bL0" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="1w2LIuq6bPW" role="3EZMnx">
          <node concept="VPM3Z" id="1w2LIuq6bPY" role="3F10Kt" />
          <node concept="3F0ifn" id="1w2LIuq6bQ0" role="3EZMnx">
            <property role="3F0ifm" value="@Association" />
          </node>
          <node concept="2iRfu4" id="1w2LIuq6bQ1" role="2iSdaV" />
        </node>
        <node concept="2T_mXK" id="1w2LIuq6bT9" role="3EZMnx" />
        <node concept="3EZMnI" id="1w2LIuq6bU5" role="3EZMnx">
          <node concept="VPM3Z" id="1w2LIuq6bU7" role="3F10Kt" />
          <node concept="3F0ifn" id="1w2LIuq6bVG" role="3EZMnx">
            <property role="3F0ifm" value="ascType" />
          </node>
          <node concept="3F0ifn" id="1w2LIuq6bWd" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0A7n" id="1w2LIuq6bWR" role="3EZMnx">
            <ref role="1NtTu8" to="ykvp:3QRtJrmAH2O" resolve="ascType" />
          </node>
          <node concept="2iRfu4" id="1w2LIuq6bUa" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="1w2LIuq6c1F" role="3EZMnx">
          <node concept="VPM3Z" id="1w2LIuq6c1H" role="3F10Kt" />
          <node concept="3F0ifn" id="1w2LIuq6c2y" role="3EZMnx">
            <property role="3F0ifm" value="endType" />
          </node>
          <node concept="3F0ifn" id="1w2LIuq6c2L" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0A7n" id="1w2LIuq6c3r" role="3EZMnx">
            <ref role="1NtTu8" to="ykvp:3QRtJrmAH2P" resolve="endType" />
          </node>
          <node concept="2iRfu4" id="1w2LIuq6c1K" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="1w2LIuq6c51" role="3EZMnx">
          <node concept="VPM3Z" id="1w2LIuq6c53" role="3F10Kt" />
          <node concept="3F0ifn" id="1w2LIuq6c73" role="3EZMnx">
            <property role="3F0ifm" value="dependsOn" />
          </node>
          <node concept="2iRfu4" id="1w2LIuq6c56" role="2iSdaV" />
          <node concept="3F0ifn" id="1w2LIuq6c7H" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0A7n" id="1w2LIuq6c8P" role="3EZMnx">
            <ref role="1NtTu8" to="ykvp:3QRtJrmAH2Q" resolve="dependsOn" />
          </node>
        </node>
        <node concept="3EZMnI" id="1w2LIuq6c9I" role="3EZMnx">
          <node concept="VPM3Z" id="1w2LIuq6c9K" role="3F10Kt" />
          <node concept="3F0ifn" id="1w2LIuq6cbh" role="3EZMnx">
            <property role="3F0ifm" value="derivedFrom" />
          </node>
          <node concept="3F0ifn" id="1w2LIuq6cbt" role="3EZMnx">
            <property role="3F0ifm" value="=" />
          </node>
          <node concept="3F0A7n" id="1w2LIuq6ccQ" role="3EZMnx">
            <ref role="1NtTu8" to="ykvp:3QRtJrmAH2R" resolve="derivedFrom" />
          </node>
          <node concept="2iRfu4" id="1w2LIuq6c9N" role="2iSdaV" />
        </node>
        <node concept="3F2HdR" id="1w2LIuq7k5y" role="3EZMnx">
          <ref role="1NtTu8" to="ykvp:1w2LIuq6WnI" resolve="associate" />
          <node concept="2iRkQZ" id="1w2LIuq7k5$" role="2czzBx" />
          <node concept="3F0ifn" id="1w2LIuq7k7n" role="2czzBI" />
        </node>
        <node concept="2iRkQZ" id="1w2LIuq6bFX" role="2iSdaV" />
      </node>
      <node concept="1Pxb5l" id="1w2LIuq6bDO" role="NKQk3" />
    </node>
    <node concept="PMmxH" id="3QRtJrmC91w" role="6VMZX">
      <ref role="PMmxG" to="c9i8:4MzzjozvuHf" resolve="target_annotable" />
    </node>
  </node>
  <node concept="24kQdi" id="3QRtJrmAHcF">
    <property role="3GE5qa" value="annotation" />
    <ref role="1XX52x" to="ykvp:3QRtJrmAH2V" resolve="DAttr" />
    <node concept="3EZMnI" id="3CgoCDqf$pU" role="2wV5jI">
      <node concept="2ZK4vF" id="3CgoCDqf$pY" role="3EZMnx">
        <node concept="3EZMnI" id="3CgoCDqf$rq" role="1ytjkN">
          <node concept="3EZMnI" id="3CgoCDqf$sx" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$sz" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$sD" role="3EZMnx">
              <property role="3F0ifm" value="&lt;&lt;meta-attribute&gt;&gt;" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$sA" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$sG" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$sI" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$sM" role="3EZMnx">
              <property role="3F0ifm" value="@Attribute" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$sL" role="2iSdaV" />
          </node>
          <node concept="2T_mXK" id="3CgoCDqfNKs" role="3EZMnx" />
          <node concept="3EZMnI" id="3CgoCDqf$sP" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$sR" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$sV" role="3EZMnx">
              <property role="3F0ifm" value="name" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$tA" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$tD" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:3QRtJrmAK7W" resolve="namedcsl" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$sU" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$tH" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$tJ" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$tN" role="3EZMnx">
              <property role="3F0ifm" value="type" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$tQ" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F1sOY" id="3QRtJrmAKaA" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:3QRtJrmAK7V" resolve="type" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$tM" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$tW" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$tY" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$u4" role="3EZMnx">
              <property role="3F0ifm" value="id" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$u7" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$ua" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4WP" resolve="id" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$u1" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$ud" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$uf" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$uj" role="3EZMnx">
              <property role="3F0ifm" value="unique" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$um" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$up" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4WT" resolve="unique" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$ui" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$us" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$uu" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$uy" role="3EZMnx">
              <property role="3F0ifm" value="auto" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$u_" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$uC" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4WR" resolve="auto" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$ux" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$uG" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$uI" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$uM" role="3EZMnx">
              <property role="3F0ifm" value="mutable" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$uQ" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$uT" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4WU" resolve="mutable" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$uL" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$uW" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$uY" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$v2" role="3EZMnx">
              <property role="3F0ifm" value="optional" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$v5" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$v8" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4WV" resolve="optional" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$v1" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$vb" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$vd" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$vh" role="3EZMnx">
              <property role="3F0ifm" value="length" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$vk" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$vn" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4WW" resolve="lenght" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$vg" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$vr" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$vt" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$vx" role="3EZMnx">
              <property role="3F0ifm" value="min" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$vw" role="2iSdaV" />
            <node concept="3F0ifn" id="3CgoCDqf$wc" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$wf" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4WX" resolve="min" />
            </node>
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$wi" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$wk" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$wo" role="3EZMnx">
              <property role="3F0ifm" value="max" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$wr" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$wu" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4WZ" resolve="max" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$wn" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$wx" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$wz" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$wB" role="3EZMnx">
              <property role="3F0ifm" value="serialisable" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$wE" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$wJ" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4X0" resolve="serialisable" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$wA" role="2iSdaV" />
          </node>
          <node concept="2iRkQZ" id="3CgoCDqf$rt" role="2iSdaV" />
          <node concept="VPM3Z" id="3CgoCDqf$ru" role="3F10Kt" />
        </node>
        <node concept="1Pxb5l" id="3CgoCDqf$qi" role="NKQk3" />
      </node>
      <node concept="2iRkQZ" id="3CgoCDqf$pX" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="3QRtJrmC94v" role="6VMZX">
      <ref role="PMmxG" to="c9i8:4MzzjozvuHf" resolve="target_annotable" />
    </node>
  </node>
  <node concept="24kQdi" id="3QRtJrmAHfq">
    <property role="3GE5qa" value="annotation" />
    <ref role="1XX52x" to="ykvp:3QRtJrmAH33" resolve="DClass" />
    <node concept="3EZMnI" id="3CgoCDqf$wO" role="2wV5jI">
      <node concept="2ZK4vF" id="3CgoCDqf$wS" role="3EZMnx">
        <node concept="3EZMnI" id="3CgoCDqf$xP" role="1ytjkN">
          <node concept="3EZMnI" id="3CgoCDqf$yi" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$yk" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$yo" role="3EZMnx">
              <property role="3F0ifm" value="&lt;&lt;meta-attribute&gt;&gt;" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$yn" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqfNJE" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqfNJG" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqfNJI" role="3EZMnx">
              <property role="3F0ifm" value="@Class" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqfNJJ" role="2iSdaV" />
          </node>
          <node concept="2T_mXK" id="3CgoCDqfNJL" role="3EZMnx" />
          <node concept="3EZMnI" id="3CgoCDqf$ys" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$yu" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$yy" role="3EZMnx">
              <property role="3F0ifm" value="serialisable" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$y_" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$yC" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4X5" resolve="serialisable" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$yx" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$yF" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$yH" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$yL" role="3EZMnx">
              <property role="3F0ifm" value="mutable" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$yO" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$yR" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4X6" resolve="mutable" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$yK" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="3CgoCDqf$yV" role="3EZMnx">
            <node concept="VPM3Z" id="3CgoCDqf$yX" role="3F10Kt" />
            <node concept="3F0ifn" id="3CgoCDqf$z1" role="3EZMnx">
              <property role="3F0ifm" value="singleton" />
            </node>
            <node concept="3F0ifn" id="3CgoCDqf$z5" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="3CgoCDqf$za" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4X7" resolve="singleton" />
            </node>
            <node concept="2iRfu4" id="3CgoCDqf$z0" role="2iSdaV" />
          </node>
          <node concept="2iRkQZ" id="3CgoCDqf$xS" role="2iSdaV" />
          <node concept="VPM3Z" id="3CgoCDqf$xT" role="3F10Kt" />
        </node>
        <node concept="1Pxb5l" id="3CgoCDqf$xc" role="NKQk3" />
      </node>
      <node concept="2iRkQZ" id="3CgoCDqf$wR" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="3QRtJrmC97u" role="6VMZX">
      <ref role="PMmxG" to="c9i8:4MzzjozvuHf" resolve="target_annotable" />
    </node>
  </node>
  <node concept="24kQdi" id="3QRtJrmAHkM">
    <property role="3GE5qa" value="annotation" />
    <ref role="1XX52x" to="ykvp:3QRtJrmAH3c" resolve="DOtp" />
    <node concept="3EZMnI" id="7RutGRSb5w1" role="2wV5jI">
      <node concept="2ZK4vF" id="7RutGRSb5w5" role="3EZMnx">
        <node concept="3EZMnI" id="7RutGRSb5yI" role="1ytjkN">
          <node concept="3EZMnI" id="7RutGRSb5ze" role="3EZMnx">
            <node concept="VPM3Z" id="7RutGRSb5zg" role="3F10Kt" />
            <node concept="2iRfu4" id="7RutGRSb5zj" role="2iSdaV" />
            <node concept="3F0ifn" id="3CgoCDqfNIY" role="3EZMnx">
              <property role="3F0ifm" value="&lt;&lt;meta-attribute&gt;&gt;" />
            </node>
          </node>
          <node concept="3EZMnI" id="7PsJh6NsrWg" role="3EZMnx">
            <node concept="VPM3Z" id="7PsJh6NsrWi" role="3F10Kt" />
            <node concept="3F0ifn" id="7PsJh6NsrWk" role="3EZMnx">
              <property role="3F0ifm" value="@Operation" />
            </node>
            <node concept="2iRfu4" id="7PsJh6NsrWl" role="2iSdaV" />
          </node>
          <node concept="2T_mXK" id="7RutGRSb6f8" role="3EZMnx" />
          <node concept="3EZMnI" id="7RutGRSb6fb" role="3EZMnx">
            <node concept="VPM3Z" id="7RutGRSb6fd" role="3F10Kt" />
            <node concept="3F0ifn" id="7RutGRSb6fh" role="3EZMnx">
              <property role="3F0ifm" value="requires" />
            </node>
            <node concept="3F0ifn" id="7RutGRSb6fk" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="7RutGRSb6fp" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4Xa" resolve="requires" />
            </node>
            <node concept="2iRfu4" id="7RutGRSb6fg" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="7RutGRSb6fu" role="3EZMnx">
            <node concept="VPM3Z" id="7RutGRSb6fw" role="3F10Kt" />
            <node concept="3F0ifn" id="7RutGRSb6f$" role="3EZMnx">
              <property role="3F0ifm" value="effect" />
            </node>
            <node concept="3F0ifn" id="7RutGRSb6fB" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="7RutGRSb6fE" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4Xb" resolve="effect" />
            </node>
            <node concept="2iRfu4" id="7RutGRSb6fz" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="7RutGRSb6fI" role="3EZMnx">
            <node concept="VPM3Z" id="7RutGRSb6fK" role="3F10Kt" />
            <node concept="3F0ifn" id="7RutGRSb6fO" role="3EZMnx">
              <property role="3F0ifm" value="type" />
            </node>
            <node concept="3F0ifn" id="7RutGRSb6fR" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F0A7n" id="7RutGRSb6fU" role="3EZMnx">
              <ref role="1NtTu8" to="ykvp:7RutGRSb4Xc" resolve="type" />
            </node>
            <node concept="2iRfu4" id="7RutGRSb6fN" role="2iSdaV" />
          </node>
          <node concept="2iRkQZ" id="7RutGRSb5yL" role="2iSdaV" />
          <node concept="VPM3Z" id="7RutGRSb5yM" role="3F10Kt" />
        </node>
        <node concept="1Pxb5l" id="7RutGRSb5wp" role="NKQk3" />
      </node>
      <node concept="2iRkQZ" id="7RutGRSb5w4" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="3QRtJrmC9bc" role="6VMZX">
      <ref role="PMmxG" to="c9i8:4MzzjozvuHf" resolve="target_annotable" />
    </node>
  </node>
</model>

