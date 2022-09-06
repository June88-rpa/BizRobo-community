<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.7.0.4</version>
    </saved-by-versions>
    <comment/>
    <tags/>
    <referenced-types>
      <type name="貼り付けデータ"/>
      <type name="日付"/>
    </referenced-types>
    <referenced-snippets/>
    <triggers/>
    <typed-variables>
      <typed-variable name="貼り付けデータ" type-name="貼り付けデータ"/>
      <typed-variable name="日付" type-name="日付"/>
    </typed-variables>
    <global-variables>
      <variable name="日付"/>
    </global-variables>
    <parameters/>
    <return-variables/>
    <store-in-database-variables/>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">当月</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference" id="1">
          <property name="simpleTypeId" class="Integer">12</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">元データファイルパス</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="1"/>
        <property name="assignments" class="AttributeAssignments">
          <property name="value" class="AttributeAssignment">
            <property name="attributeValue" class="String">C:\temp\BizRobo!Community\20220831_umiさん\元データ.xlsx</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class" id="2">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="3">転記先ファイルパス</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="1"/>
        <property name="assignments" class="AttributeAssignments">
          <property name="value" class="AttributeAssignment">
            <property name="attributeValue" class="String">C:\temp\BizRobo!Community\20220831_umiさん\転記先.xlsx</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="2"/>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="4">転記Excel</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">150</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">貼り付け行</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">7</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">一致行あり</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">1</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="value" class="AttributeAssignment">
            <property name="attributeValue" class="String">false</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.BooleanAttributeType</property>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">得意先品番</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="1"/>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">貼り付けデータ</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">貼り付けデータ</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">日付</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">日付</property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="5">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="5"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="6">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="tags" class="RobotTagList"/>
  <property name="humanProcessingTime">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">FULL</property>
  </property>
  <property name="avoidExternalReExecution" idref="5"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="7"/>
    <steps class="ArrayList">
      <object class="Group" id="8">
        <name class="String">転記先ファイルを開く</name>
        <comment class="String">転記先ファイルを「変数として開く」
※変数はグローバルにチェック</comment>
        <blockBeginStep class="BlockBeginStep" id="9"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="10">
            <property name="name" class="String" id="11">Load File</property>
            <property name="stepAction" class="LoadFile">
              <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">転記先ファイルパス</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="26">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="12">
            <property name="name" class="String">Extract 転記 Excel</property>
            <property name="stepAction" class="ExtractSourceStepAction">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">転記Excel</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="13">
            <property name="name" class="String">Open 転記 Excel</property>
            <property name="stepAction" class="OpenVariable">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String" id="14">転記Excel</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="15"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="9"/>
            <to idref="10"/>
          </object>
          <object class="TransitionEdge">
            <from idref="10"/>
            <to idref="12"/>
          </object>
          <object class="TransitionEdge">
            <from idref="12"/>
            <to idref="13"/>
          </object>
          <object class="TransitionEdge">
            <from idref="13"/>
            <to idref="15"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="16">
        <property name="name" class="String">Assign 当月</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="EvaluateExpression" serializationversion="0">
                <property name="expression" class="String">now()</property>
              </element>
              <element class="FormatDate">
                <property name="pattern" class="String">yyyy/M/</property>
              </element>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="17"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">コンバータで当月の年月までの文字列を作成
ここでは「コンバータ」を使用して、下記の手順で変換
①エクスプレッションを評価：now()
②日付処理→日付の書式設定（yyyy/M/）</property>
        <property name="enabled" idref="6"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Group" id="18">
        <name class="String">転記元ファイルを開く</name>
        <comment class="String">転記元ファイルを読み取り専用で開く</comment>
        <blockBeginStep class="BlockBeginStep" id="19"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="20">
            <property name="name" idref="11"/>
            <property name="stepAction" class="LoadFile">
              <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">元データファイルパス</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="26">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="21">
            <property name="name" class="String">View as Excel</property>
            <property name="stepAction" class="ViewAsExcel"/>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="22"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="19"/>
            <to idref="20"/>
          </object>
          <object class="TransitionEdge">
            <from idref="20"/>
            <to idref="21"/>
          </object>
          <object class="TransitionEdge">
            <from idref="21"/>
            <to idref="22"/>
          </object>
        </edges>
      </object>
      <object class="BranchPoint" id="23"/>
      <object class="Transition" serializationversion="3" id="24">
        <property name="name" class="String">Loop Rows</property>
        <property name="stepAction" class="LoopInExcel">
          <property name="loopDirection" class="LoopInExcel$LoopDirection" id="25">
            <property name="enum-name" class="String">ROWS</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="ExcelElementFinder">
            <property name="detail" class="SpecifiedRangeCellFinderDetail">
              <property name="range" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Sheet1!</property>
              </property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="6"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Try" id="26"/>
      <object class="Transition" serializationversion="3" id="27">
        <property name="name" class="String" id="28">Test Value</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">iteration()==1</property>
          </property>
        </property>
        <property name="elementFinders" idref="17"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="6"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Group" id="29">
        <name class="String">年月日への変換</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="30"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="31">
            <property name="name" class="String">Extract R 1 年月日</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">当月_(.*)日</property>
                  </property>
                  <property name="outputExpression" class="String">$1</property>
                </element>
                <element class="EvaluateExpression" serializationversion="0">
                  <property name="expression" class="String">当月+INPUT</property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">日付.R1_年月日</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">1</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="32">
            <property name="name" class="String">Extract R 2 年月日</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">当月_(.*)日</property>
                  </property>
                  <property name="outputExpression" class="String">$1</property>
                </element>
                <element class="EvaluateExpression" serializationversion="0">
                  <property name="expression" class="String">当月+INPUT</property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">日付.R2_年月日</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">2</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="33">
            <property name="name" class="String">Extract R 3 年月日</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">当月_(.*)日</property>
                  </property>
                  <property name="outputExpression" class="String">$1</property>
                </element>
                <element class="EvaluateExpression" serializationversion="0">
                  <property name="expression" class="String">当月+INPUT</property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">日付.R3_年月日</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">3</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="34">
            <property name="name" class="String">Extract R 4 年月日</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">当月_(.*)日</property>
                  </property>
                  <property name="outputExpression" class="String">$1</property>
                </element>
                <element class="EvaluateExpression" serializationversion="0">
                  <property name="expression" class="String">当月+INPUT</property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">日付.R4_年月日</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">4</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="35">
            <property name="name" class="String">Extract R 5 年月日</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="AdvancedExtract2">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                    <property name="value" class="String">当月_(.*)日</property>
                  </property>
                  <property name="outputExpression" class="String">$1</property>
                </element>
                <element class="EvaluateExpression" serializationversion="0">
                  <property name="expression" class="String">当月+INPUT</property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">日付.R5_年月日</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">5</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="36"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="30"/>
            <to idref="31"/>
          </object>
          <object class="TransitionEdge">
            <from idref="31"/>
            <to idref="32"/>
          </object>
          <object class="TransitionEdge">
            <from idref="32"/>
            <to idref="33"/>
          </object>
          <object class="TransitionEdge">
            <from idref="33"/>
            <to idref="34"/>
          </object>
          <object class="TransitionEdge">
            <from idref="34"/>
            <to idref="35"/>
          </object>
          <object class="TransitionEdge">
            <from idref="35"/>
            <to idref="36"/>
          </object>
        </edges>
      </object>
      <object class="End" id="37"/>
      <object class="Group" id="38">
        <name class="String">転記データの抽出</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="39"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="40">
            <property name="name" class="String">Extract 品名</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">貼り付けデータ.品名</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange"/>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="41">
            <property name="name" class="String">Extract R 1 数量</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractNumber"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">貼り付けデータ.R1_数量</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">1</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="42">
            <property name="name" class="String">Extract R 2 数量</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractNumber"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">貼り付けデータ.R2_数量</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">2</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="43">
            <property name="name" class="String">Extract R 3 数量</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractNumber"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">貼り付けデータ.R3_数量</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">3</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="44">
            <property name="name" class="String">Extract R 4 数量</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractNumber"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">貼り付けデータ.R4_数量</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">4</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="45">
            <property name="name" class="String">Extract R 5 数量</property>
            <property name="stepAction" class="ExtractCell">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractNumber"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">貼り付けデータ.R5_数量</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">5</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="46"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="39"/>
            <to idref="40"/>
          </object>
          <object class="TransitionEdge">
            <from idref="40"/>
            <to idref="41"/>
          </object>
          <object class="TransitionEdge">
            <from idref="41"/>
            <to idref="42"/>
          </object>
          <object class="TransitionEdge">
            <from idref="42"/>
            <to idref="43"/>
          </object>
          <object class="TransitionEdge">
            <from idref="43"/>
            <to idref="44"/>
          </object>
          <object class="TransitionEdge">
            <from idref="44"/>
            <to idref="45"/>
          </object>
          <object class="TransitionEdge">
            <from idref="45"/>
            <to idref="46"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="47">
        <name class="String">フラグ・追加行の初期化</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="48"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="49">
            <property name="name" class="String">Assign 一致行あり(初期化)</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">false</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">一致行あり</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="50">
            <property name="name" class="String">Assign 貼り付け行(初期化)</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">0</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">貼り付け行</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="51"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="48"/>
            <to idref="49"/>
          </object>
          <object class="TransitionEdge">
            <from idref="49"/>
            <to idref="50"/>
          </object>
          <object class="TransitionEdge">
            <from idref="50"/>
            <to idref="51"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="52">
        <property name="name" class="String">カレントウィンドウ設定</property>
        <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
          <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
            <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
              <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                <property name="id" idref="14"/>
              </property>
            </property>
          </property>
        </property>
        <property name="elementFinders" idref="17"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="6"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="BranchPoint" id="53"/>
      <object class="Transition" serializationversion="3" id="54">
        <property name="name" class="String">Loop Rows</property>
        <property name="stepAction" class="LoopInExcel">
          <property name="loopDirection" idref="25"/>
          <property name="firstIndex" class="Integer">1</property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="ExcelElementFinder">
            <property name="detail" class="SpecifiedRangeCellFinderDetail">
              <property name="range" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Sheet1!</property>
              </property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="6"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Group" id="55">
        <name class="String">追加行の場所を見つける</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="56"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="57">
            <property name="name" class="String">Extract 得意先品番</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">得意先品番</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                  <property name="usage" class="ColumnFromRange"/>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Try" id="58"/>
          <object class="Transition" serializationversion="3" id="59">
            <property name="name" class="String">Test Value(品名チェック)</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">得意先品番==貼り付けデータ.品名</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="60">
            <property name="name" class="String">Assign 一致行あり</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">true</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">一致行あり</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="61">
            <property name="name" class="String">Test Value(追加判定)</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">一致行あり</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="62">
            <property name="name" class="String">Assign 貼り付け行</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="Expression" serializationversion="1">
                <property name="text" class="String">iteration()</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">貼り付け行</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="63">
            <property name="name" idref="28"/>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">false</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$BreakLoop"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="6"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="End" id="64"/>
        </steps>
        <blockEndStep class="BlockEndStep" id="65"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="56"/>
            <to idref="57"/>
          </object>
          <object class="TransitionEdge">
            <from idref="57"/>
            <to idref="58"/>
          </object>
          <object class="TransitionEdge">
            <from idref="58"/>
            <to idref="59"/>
          </object>
          <object class="TransitionEdge">
            <from idref="58"/>
            <to idref="61"/>
          </object>
          <object class="TransitionEdge">
            <from idref="59"/>
            <to idref="60"/>
          </object>
          <object class="TransitionEdge">
            <from idref="60"/>
            <to idref="65"/>
          </object>
          <object class="TransitionEdge">
            <from idref="61"/>
            <to idref="62"/>
          </object>
          <object class="TransitionEdge">
            <from idref="62"/>
            <to idref="63"/>
          </object>
          <object class="TransitionEdge">
            <from idref="63"/>
            <to idref="64"/>
          </object>
        </edges>
      </object>
      <object class="End" id="66"/>
      <object class="Group" id="67">
        <name class="String">転記処理</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="68"/>
        <steps class="ArrayList">
          <object class="Group" id="69">
            <name class="String">R1</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="70"/>
            <steps class="ArrayList">
              <object class="Try" id="71"/>
              <object class="Transition" serializationversion="3" id="72">
                <property name="name" class="String">Test Value(0以外の判定)</property>
                <property name="stepAction" class="TestValue" serializationversion="0">
                  <property name="condition" class="Expression" serializationversion="1">
                    <property name="text" class="String">貼り付けデータ.R1_数量 != 0</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="73">
                <property name="name" class="String" id="74">Insert Rows</property>
                <property name="stepAction" class="InsertRows">
                  <property name="insertWhereMode" class="InsertWhere" id="75">
                    <property name="enum-name" class="String">AFTER</property>
                  </property>
                  <property name="rangeName" class="DesiredElementName">
                    <property name="name" class="String" id="76">転記行</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="SpecifiedRangeCellFinderDetail">
                      <property name="range" class="Expression" serializationversion="1">
                        <property name="text" class="String">&gt;&gt;Sheet1!&lt;&lt;+(貼り付け行)</property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="77">
                <property name="name" class="String" id="78">Set Content of Cell</property>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">貼り付けデータ.品名</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="76"/>
                      </property>
                      <property name="usage" class="ColumnFromRange"/>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="79">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">日付.R1_年月日</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="76"/>
                      </property>
                      <property name="usage" class="ColumnFromRange">
                        <property name="columnId" class="ByIndexExcelColumnId">
                          <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                            <property name="value" class="Integer">1</property>
                          </property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="80">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">貼り付けデータ.R1_数量</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="76"/>
                      </property>
                      <property name="usage" class="ColumnFromRange">
                        <property name="columnId" class="ByIndexExcelColumnId">
                          <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                            <property name="value" class="Integer">3</property>
                          </property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="81">
                <property name="name" class="String">Assign Variable(貼り付け行カウントアップ)</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="Expression" serializationversion="1">
                    <property name="text" class="String">貼り付け行+1</property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">貼り付け行</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="82"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="70"/>
                <to idref="71"/>
              </object>
              <object class="TransitionEdge">
                <from idref="71"/>
                <to idref="72"/>
              </object>
              <object class="TransitionEdge">
                <from idref="71"/>
                <to idref="82"/>
              </object>
              <object class="TransitionEdge">
                <from idref="72"/>
                <to idref="73"/>
              </object>
              <object class="TransitionEdge">
                <from idref="73"/>
                <to idref="77"/>
              </object>
              <object class="TransitionEdge">
                <from idref="77"/>
                <to idref="79"/>
              </object>
              <object class="TransitionEdge">
                <from idref="79"/>
                <to idref="80"/>
              </object>
              <object class="TransitionEdge">
                <from idref="80"/>
                <to idref="81"/>
              </object>
              <object class="TransitionEdge">
                <from idref="81"/>
                <to idref="82"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="83">
            <name class="String">R2</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="84"/>
            <steps class="ArrayList">
              <object class="Try" id="85"/>
              <object class="Transition" serializationversion="3" id="86">
                <property name="name" class="String">Test Value(0以外の判定)</property>
                <property name="stepAction" class="TestValue" serializationversion="0">
                  <property name="condition" class="Expression" serializationversion="1">
                    <property name="text" class="String">貼り付けデータ.R2_数量 != 0</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="87">
                <property name="name" idref="74"/>
                <property name="stepAction" class="InsertRows">
                  <property name="insertWhereMode" idref="75"/>
                  <property name="rangeName" class="DesiredElementName">
                    <property name="name" class="String" id="88">転記行</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="SpecifiedRangeCellFinderDetail">
                      <property name="range" class="Expression" serializationversion="1">
                        <property name="text" class="String">&gt;&gt;Sheet1!&lt;&lt;+(貼り付け行)</property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="89">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">貼り付けデータ.品名</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="88"/>
                      </property>
                      <property name="usage" class="ColumnFromRange"/>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="90">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">日付.R2_年月日</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="88"/>
                      </property>
                      <property name="usage" class="ColumnFromRange">
                        <property name="columnId" class="ByIndexExcelColumnId">
                          <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                            <property name="value" class="Integer">1</property>
                          </property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="91">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">貼り付けデータ.R2_数量</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="88"/>
                      </property>
                      <property name="usage" class="ColumnFromRange">
                        <property name="columnId" class="ByIndexExcelColumnId">
                          <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                            <property name="value" class="Integer">3</property>
                          </property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="92">
                <property name="name" class="String">Assign Variable(貼り付け行カウントアップ)</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="Expression" serializationversion="1">
                    <property name="text" class="String">貼り付け行+1</property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">貼り付け行</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="93"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="84"/>
                <to idref="85"/>
              </object>
              <object class="TransitionEdge">
                <from idref="85"/>
                <to idref="86"/>
              </object>
              <object class="TransitionEdge">
                <from idref="85"/>
                <to idref="93"/>
              </object>
              <object class="TransitionEdge">
                <from idref="86"/>
                <to idref="87"/>
              </object>
              <object class="TransitionEdge">
                <from idref="87"/>
                <to idref="89"/>
              </object>
              <object class="TransitionEdge">
                <from idref="89"/>
                <to idref="90"/>
              </object>
              <object class="TransitionEdge">
                <from idref="90"/>
                <to idref="91"/>
              </object>
              <object class="TransitionEdge">
                <from idref="91"/>
                <to idref="92"/>
              </object>
              <object class="TransitionEdge">
                <from idref="92"/>
                <to idref="93"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="94">
            <name class="String">R3</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="95"/>
            <steps class="ArrayList">
              <object class="Try" id="96"/>
              <object class="Transition" serializationversion="3" id="97">
                <property name="name" class="String">Test Value(0以外の判定)</property>
                <property name="stepAction" class="TestValue" serializationversion="0">
                  <property name="condition" class="Expression" serializationversion="1">
                    <property name="text" class="String">貼り付けデータ.R3_数量 != 0</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="98">
                <property name="name" idref="74"/>
                <property name="stepAction" class="InsertRows">
                  <property name="insertWhereMode" idref="75"/>
                  <property name="rangeName" class="DesiredElementName">
                    <property name="name" class="String" id="99">転記行</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="SpecifiedRangeCellFinderDetail">
                      <property name="range" class="Expression" serializationversion="1">
                        <property name="text" class="String">&gt;&gt;Sheet1!&lt;&lt;+(貼り付け行)</property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="100">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">貼り付けデータ.品名</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="99"/>
                      </property>
                      <property name="usage" class="ColumnFromRange"/>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="101">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">日付.R3_年月日</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="99"/>
                      </property>
                      <property name="usage" class="ColumnFromRange">
                        <property name="columnId" class="ByIndexExcelColumnId">
                          <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                            <property name="value" class="Integer">1</property>
                          </property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="102">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">貼り付けデータ.R3_数量</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="99"/>
                      </property>
                      <property name="usage" class="ColumnFromRange">
                        <property name="columnId" class="ByIndexExcelColumnId">
                          <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                            <property name="value" class="Integer">3</property>
                          </property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="103">
                <property name="name" class="String">Assign Variable(貼り付け行カウントアップ)</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="Expression" serializationversion="1">
                    <property name="text" class="String">貼り付け行+1</property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">貼り付け行</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="104"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="95"/>
                <to idref="96"/>
              </object>
              <object class="TransitionEdge">
                <from idref="96"/>
                <to idref="97"/>
              </object>
              <object class="TransitionEdge">
                <from idref="96"/>
                <to idref="104"/>
              </object>
              <object class="TransitionEdge">
                <from idref="97"/>
                <to idref="98"/>
              </object>
              <object class="TransitionEdge">
                <from idref="98"/>
                <to idref="100"/>
              </object>
              <object class="TransitionEdge">
                <from idref="100"/>
                <to idref="101"/>
              </object>
              <object class="TransitionEdge">
                <from idref="101"/>
                <to idref="102"/>
              </object>
              <object class="TransitionEdge">
                <from idref="102"/>
                <to idref="103"/>
              </object>
              <object class="TransitionEdge">
                <from idref="103"/>
                <to idref="104"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="105">
            <name class="String">R4</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="106"/>
            <steps class="ArrayList">
              <object class="Try" id="107"/>
              <object class="Transition" serializationversion="3" id="108">
                <property name="name" class="String">Test Value(0以外の判定)</property>
                <property name="stepAction" class="TestValue" serializationversion="0">
                  <property name="condition" class="Expression" serializationversion="1">
                    <property name="text" class="String">貼り付けデータ.R4_数量 != 0</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="109">
                <property name="name" idref="74"/>
                <property name="stepAction" class="InsertRows">
                  <property name="insertWhereMode" idref="75"/>
                  <property name="rangeName" class="DesiredElementName">
                    <property name="name" class="String" id="110">転記行</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="SpecifiedRangeCellFinderDetail">
                      <property name="range" class="Expression" serializationversion="1">
                        <property name="text" class="String">&gt;&gt;Sheet1!&lt;&lt;+(貼り付け行)</property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="111">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">貼り付けデータ.品名</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="110"/>
                      </property>
                      <property name="usage" class="ColumnFromRange"/>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="112">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">日付.R4_年月日</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="110"/>
                      </property>
                      <property name="usage" class="ColumnFromRange">
                        <property name="columnId" class="ByIndexExcelColumnId">
                          <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                            <property name="value" class="Integer">1</property>
                          </property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="113">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">貼り付けデータ.R4_数量</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="110"/>
                      </property>
                      <property name="usage" class="ColumnFromRange">
                        <property name="columnId" class="ByIndexExcelColumnId">
                          <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                            <property name="value" class="Integer">3</property>
                          </property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="114">
                <property name="name" class="String">Assign Variable(貼り付け行カウントアップ)</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="Expression" serializationversion="1">
                    <property name="text" class="String">貼り付け行+1</property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">貼り付け行</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="115"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="106"/>
                <to idref="107"/>
              </object>
              <object class="TransitionEdge">
                <from idref="107"/>
                <to idref="108"/>
              </object>
              <object class="TransitionEdge">
                <from idref="107"/>
                <to idref="115"/>
              </object>
              <object class="TransitionEdge">
                <from idref="108"/>
                <to idref="109"/>
              </object>
              <object class="TransitionEdge">
                <from idref="109"/>
                <to idref="111"/>
              </object>
              <object class="TransitionEdge">
                <from idref="111"/>
                <to idref="112"/>
              </object>
              <object class="TransitionEdge">
                <from idref="112"/>
                <to idref="113"/>
              </object>
              <object class="TransitionEdge">
                <from idref="113"/>
                <to idref="114"/>
              </object>
              <object class="TransitionEdge">
                <from idref="114"/>
                <to idref="115"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="116">
            <name class="String">R5</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="117"/>
            <steps class="ArrayList">
              <object class="Try" id="118"/>
              <object class="Transition" serializationversion="3" id="119">
                <property name="name" class="String">Test Value(0以外の判定)</property>
                <property name="stepAction" class="TestValue" serializationversion="0">
                  <property name="condition" class="Expression" serializationversion="1">
                    <property name="text" class="String">貼り付けデータ.R5_数量 != 0</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="120">
                <property name="name" idref="74"/>
                <property name="stepAction" class="InsertRows">
                  <property name="insertWhereMode" idref="75"/>
                  <property name="rangeName" class="DesiredElementName">
                    <property name="name" class="String" id="121">転記行</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="SpecifiedRangeCellFinderDetail">
                      <property name="range" class="Expression" serializationversion="1">
                        <property name="text" class="String">&gt;&gt;Sheet1!&lt;&lt;+(貼り付け行)</property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="122">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">貼り付けデータ.品名</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="121"/>
                      </property>
                      <property name="usage" class="ColumnFromRange"/>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="123">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">日付.R5_年月日</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="121"/>
                      </property>
                      <property name="usage" class="ColumnFromRange">
                        <property name="columnId" class="ByIndexExcelColumnId">
                          <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                            <property name="value" class="Integer">1</property>
                          </property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="124">
                <property name="name" idref="78"/>
                <property name="stepAction" class="SetContentOfCell">
                  <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">貼り付けデータ.R5_数量</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="ExcelElementFinder">
                    <property name="detail" class="NamedRangeCellFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" idref="121"/>
                      </property>
                      <property name="usage" class="ColumnFromRange">
                        <property name="columnId" class="ByIndexExcelColumnId">
                          <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                            <property name="value" class="Integer">3</property>
                          </property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="6"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="125"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="117"/>
                <to idref="118"/>
              </object>
              <object class="TransitionEdge">
                <from idref="118"/>
                <to idref="119"/>
              </object>
              <object class="TransitionEdge">
                <from idref="118"/>
                <to idref="125"/>
              </object>
              <object class="TransitionEdge">
                <from idref="119"/>
                <to idref="120"/>
              </object>
              <object class="TransitionEdge">
                <from idref="120"/>
                <to idref="122"/>
              </object>
              <object class="TransitionEdge">
                <from idref="122"/>
                <to idref="123"/>
              </object>
              <object class="TransitionEdge">
                <from idref="123"/>
                <to idref="124"/>
              </object>
              <object class="TransitionEdge">
                <from idref="124"/>
                <to idref="125"/>
              </object>
            </edges>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="126"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="68"/>
            <to idref="69"/>
          </object>
          <object class="TransitionEdge">
            <from idref="69"/>
            <to idref="83"/>
          </object>
          <object class="TransitionEdge">
            <from idref="83"/>
            <to idref="94"/>
          </object>
          <object class="TransitionEdge">
            <from idref="94"/>
            <to idref="105"/>
          </object>
          <object class="TransitionEdge">
            <from idref="105"/>
            <to idref="116"/>
          </object>
          <object class="TransitionEdge">
            <from idref="116"/>
            <to idref="126"/>
          </object>
        </edges>
      </object>
      <object class="End" id="127"/>
      <object class="Transition" serializationversion="3" id="128">
        <property name="name" class="String">Write File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="3"/>
            </property>
          </property>
          <property name="fileContentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="4"/>
            </property>
          </property>
          <property name="fileEncoding" class="Encoding">
            <property name="encoding" class="String">Shift_JIS</property>
          </property>
          <property name="executeInRoboMaker" class="Boolean">true</property>
        </property>
        <property name="elementFinders" idref="17"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="6"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="129"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="8"/>
      </object>
      <object class="TransitionEdge">
        <from idref="8"/>
        <to idref="16"/>
      </object>
      <object class="TransitionEdge">
        <from idref="16"/>
        <to idref="18"/>
      </object>
      <object class="TransitionEdge">
        <from idref="18"/>
        <to idref="23"/>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="24"/>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="128"/>
      </object>
      <object class="TransitionEdge">
        <from idref="24"/>
        <to idref="26"/>
      </object>
      <object class="TransitionEdge">
        <from idref="26"/>
        <to idref="27"/>
      </object>
      <object class="TransitionEdge">
        <from idref="26"/>
        <to idref="38"/>
      </object>
      <object class="TransitionEdge">
        <from idref="27"/>
        <to idref="29"/>
      </object>
      <object class="TransitionEdge">
        <from idref="29"/>
        <to idref="37"/>
      </object>
      <object class="TransitionEdge">
        <from idref="38"/>
        <to idref="47"/>
      </object>
      <object class="TransitionEdge">
        <from idref="47"/>
        <to idref="52"/>
      </object>
      <object class="TransitionEdge">
        <from idref="52"/>
        <to idref="53"/>
      </object>
      <object class="TransitionEdge">
        <from idref="53"/>
        <to idref="54"/>
      </object>
      <object class="TransitionEdge">
        <from idref="53"/>
        <to idref="67"/>
      </object>
      <object class="TransitionEdge">
        <from idref="54"/>
        <to idref="55"/>
      </object>
      <object class="TransitionEdge">
        <from idref="55"/>
        <to idref="66"/>
      </object>
      <object class="TransitionEdge">
        <from idref="67"/>
        <to idref="127"/>
      </object>
      <object class="TransitionEdge">
        <from idref="128"/>
        <to idref="129"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="26"/>
</object>
