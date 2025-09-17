<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9e3b84a1-c926-42b3-b197-35d6a88f79c9(UDML.OCL.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="llqa" ref="r:07f872a1-4dfc-4d97-aca0-5f625ab13a16(UDML.core.textGen)" />
    <import index="zjlp" ref="r:11d1b621-783c-4c2f-aeba-6f180102f9eb(UDML.OCL.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233924848298" name="jetbrains.mps.lang.textGen.structure.OperationCall" flags="ng" index="1bDJIP">
        <reference id="1234190664409" name="function" index="1rvKf6" />
        <child id="1234191323697" name="parameter" index="1ryhcI" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="4rgh5Beyb5Z">
    <ref role="WuzLi" to="zjlp:2M42Z5XzacA" resolve="Sumcontract" />
    <node concept="11bSqf" id="4rgh5Beyb60" role="11c4hB">
      <node concept="3clFbS" id="4rgh5Beyb61" role="2VODD2">
        <node concept="lc7rE" id="3QRtJrmAIvU" role="3cqZAp">
          <node concept="1bDJIP" id="3QRtJrmAIAR" role="lcghm">
            <ref role="1rvKf6" to="llqa:3QRtJrm5awu" resolve="genCommaAnnotation" />
            <node concept="117lpO" id="4MzzjozI_DI" role="1ryhcI" />
          </node>
        </node>
        <node concept="lc7rE" id="6IAV$c7jFB2" role="3cqZAp">
          <node concept="l9hG8" id="6IAV$c7jFB3" role="lcghm">
            <node concept="2OqwBi" id="6IAV$c7jFB4" role="lb14g">
              <node concept="2OqwBi" id="6IAV$c7jFB5" role="2Oq$k0">
                <node concept="117lpO" id="6IAV$c7jFB6" role="2Oq$k0" />
                <node concept="2yIwOk" id="6IAV$c7jFB7" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="6IAV$c7jFB8" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4rgh5BeyspR" role="lcghm">
            <property role="lacIc" value="(" />
          </node>
        </node>
        <node concept="3clFbH" id="4rgh5BeypNd" role="3cqZAp" />
        <node concept="3clFbJ" id="4rgh5BeyiOV" role="3cqZAp">
          <node concept="3clFbC" id="4rgh5Beymd_" role="3clFbw">
            <node concept="2OqwBi" id="4rgh5Beyj9d" role="3uHU7B">
              <node concept="117lpO" id="4rgh5BeyiT9" role="2Oq$k0" />
              <node concept="3TrcHB" id="4rgh5Beyjz7" role="2OqNvi">
                <ref role="3TsBF5" to="zjlp:4rgh5Bev78t" resolve="type" />
              </node>
            </node>
            <node concept="3cmrfG" id="4rgh5Beym2t" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="3clFbS" id="4rgh5BeyiOX" role="3clFbx">
            <node concept="lc7rE" id="4rgh5BeymSZ" role="3cqZAp">
              <node concept="la8eA" id="4rgh5BeysT0" role="lcghm">
                <property role="lacIc" value="p0 =" />
              </node>
              <node concept="l9hG8" id="4rgh5BeyuMf" role="lcghm">
                <node concept="2YIFZM" id="4rgh5BeyzuW" role="lb14g">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="2OqwBi" id="4rgh5Bey$aB" role="37wK5m">
                    <node concept="117lpO" id="4rgh5BeyzMs" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4rgh5Bey$Gg" role="2OqNvi">
                      <ref role="3TsBF5" to="zjlp:2M42Z5XzLrw" resolve="p0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="4rgh5BeyB2y" role="lcghm">
                <property role="lacIc" value=", min =" />
              </node>
              <node concept="l9hG8" id="4rgh5BeyByf" role="lcghm">
                <node concept="2YIFZM" id="4rgh5BeyCXy" role="lb14g">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="2OqwBi" id="4rgh5BeyEqf" role="37wK5m">
                    <node concept="117lpO" id="4rgh5BeyE24" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4rgh5BeyEOZ" role="2OqNvi">
                      <ref role="3TsBF5" to="zjlp:2M42Z5XzaOK" resolve="min" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4rgh5BeyGAA" role="3eNLev">
            <node concept="3clFbC" id="4rgh5BeyKMO" role="3eO9$A">
              <node concept="3cmrfG" id="4rgh5BeyLmO" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="2OqwBi" id="4rgh5BeyHxd" role="3uHU7B">
                <node concept="117lpO" id="4rgh5BeyHkv" role="2Oq$k0" />
                <node concept="3TrcHB" id="4rgh5BeyIxx" role="2OqNvi">
                  <ref role="3TsBF5" to="zjlp:4rgh5Bev78t" resolve="type" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4rgh5BeyGAC" role="3eOfB_">
              <node concept="lc7rE" id="4rgh5BeyL_y" role="3cqZAp">
                <node concept="la8eA" id="4rgh5BeyL_z" role="lcghm">
                  <property role="lacIc" value="p0 =" />
                </node>
                <node concept="l9hG8" id="4rgh5BeyL_$" role="lcghm">
                  <node concept="2YIFZM" id="4rgh5BeyL__" role="lb14g">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="2OqwBi" id="4rgh5BeyL_A" role="37wK5m">
                      <node concept="117lpO" id="4rgh5BeyL_B" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4rgh5BeyL_C" role="2OqNvi">
                        <ref role="3TsBF5" to="zjlp:2M42Z5XzLrw" resolve="p0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="la8eA" id="4rgh5BeyL_D" role="lcghm">
                  <property role="lacIc" value=", max =" />
                </node>
                <node concept="l9hG8" id="4rgh5BeyL_E" role="lcghm">
                  <node concept="2YIFZM" id="4rgh5BeyL_F" role="lb14g">
                    <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="2OqwBi" id="4rgh5BeyL_G" role="37wK5m">
                      <node concept="117lpO" id="4rgh5BeyL_H" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4rgh5BeyL_I" role="2OqNvi">
                        <ref role="3TsBF5" to="zjlp:2M42Z5Xzb5w" resolve="max" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="4rgh5BeyQ4D" role="3cqZAp">
          <node concept="la8eA" id="4rgh5BeyRFN" role="lcghm">
            <property role="lacIc" value=")" />
          </node>
          <node concept="l8MVK" id="4rgh5BezfhO" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
</model>

