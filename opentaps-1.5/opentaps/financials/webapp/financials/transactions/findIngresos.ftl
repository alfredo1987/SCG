<#--
 * Copyright (c) Open Source Strategies, Inc.
 *
 * Opentaps is free software: you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Opentaps is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with Opentaps.  If not, see <http://www.gnu.org/licenses/>.
-->

<@import location="component://opentaps-common/webapp/common/includes/lib/opentapsFormMacros.ftl"/>

<form name="findAcctgTransForm" method="post" action="">
  <@inputHidden name="performFind" value="Y"/>
  <table class="twoColumnForm">
    <tbody>
       <@inputTextRow title=uiLabelMap.FinancialsTransactionId name="findAcctgTransId" size="20" maxlength="20"/>
      
      <@inputAutoCompletePartyRow title="${uiLabelMap.FinancialsTransactionsAreaEjecutora}" name="partyId" />
      <@inputSelectRow title=uiLabelMap.FinancialsGlFiscalType required=false list=glFiscalTypes  displayField="glFiscalTypeId" name="glFiscalTypeId" default="" />
     <!-- <@inputRangeRow title=uiLabelMap.FinancialsPostedDate fromName="postedAmountFrom" thruName="postedAmountThru" size=10/>-->
        <@displayTitleCell title="${uiLabelMap.FinancialsPostedDate}" />
        <@inputDateRangeCell fromName="desde" thruName="hasta" />
      <@inputSubmitRow title=uiLabelMap.CommonFind />
    </tbody>
  </table>
</form>
