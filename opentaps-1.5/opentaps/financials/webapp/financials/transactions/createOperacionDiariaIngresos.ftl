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
 *  
-->

<@import location="component://opentaps-common/webapp/common/includes/lib/opentapsFormMacros.ftl"/>
<form method="POST" name="createOperacionDiariaIngresos" action="${creaOpDiariaIngresos}"> <#-- action set by the screen -->
  <input type="hidden" name="organizationPartyId" value="${organizationPartyId}"/>
  <input type="hidden" name="glFiscalTypeId" value="ACTUAL"/>
  <div class="form" style="border:0">
    <table class="fourColumnForm" style="border:0">
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialDocumentType titleClass="requiredField"/>
        <@inputSelectCell list=listDocumentos?if_exists displayField="descripcion" name="Tipo_Documento" default=idTipoDoc?if_exists key="acctgTransTypeId" />
      </tr>
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsGlFiscalType titleClass="requiredField"/>
        <@inputSelectCell list=listFiscalTypes?if_exists displayField="description" name="Tipo_Fiscal" default=glFiscalTypeId?if_exists key="glFiscalTypeId"/>
      </tr>      
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsTransactionDate />
        <@inputDateTimeCell name="Fecha_Transaccion" default=Static["org.ofbiz.base.util.UtilDateTime"].nowTimestamp() />
      </tr>
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsAccountigDate titleClass="requiredField"/>
        <@inputDateTimeCell name="Fecha_Contable" default=Static["org.ofbiz.base.util.UtilDateTime"].nowTimestamp() />
      </tr>      
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsReferenceDocument />
        <@inputTextCell name="Referencia_Documento" maxlength=60  />
      </tr>
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsSequence />
        <@inputTextCell name="Secuencia" maxlength=60  />
      </tr>
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsCatalogType />
        <@inputTextCell name="Tipo_Catalogo" maxlength=60  />
      </tr>  
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsProduct />
        <@inputSelectCell list=listProducts?if_exists displayField="description" name="Id_Producto" default=productId?if_exists key="productId"/>
      </tr>
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsCaption />
        <@inputSelectCell list=listRubros?if_exists displayField="description" name="Rubro" default=productCategoryId?if_exists key="productCategoryId"/>
      </tr>         
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsType />
        <@inputSelectCell list=listTipos?if_exists displayField="description" name="Tipo" default=productCategoryId?if_exists key="productCategoryId"/>
      </tr> 
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsClass />
        <@inputSelectCell list=listClases?if_exists displayField="description" name="Clase" default=productCategoryId?if_exists key="productCategoryId"/>
      </tr>    
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsConcept />
        <@inputSelectCell list=listConceptos?if_exists displayField="description" name="Concepto" default=productCategoryId?if_exists key="productCategoryId"/>
      </tr>    
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsN5 />
        <@inputSelectCell list=listN5?if_exists displayField="description" name="N5" default=productCategoryId?if_exists key="productCategoryId"/>
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsFederalEntity />
      	<@padresGeo name="EntidadFederativa" geoCode="MEX" hijoName="Region" nietos="Municipio,Localidad"/>
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsRegion />
      	<@padresGeo name="Region" hijoName="Municipio" nietos="Localidad"/>
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsTown />
      	<@padresGeo name="Municipio" hijoName="Localidad"/>
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsLocality />
      	<@padresGeo name="Localidad" />
      </tr>  
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsUnderSpecificSource />
        <@inputSelectCell list=listaSubfuente?if_exists displayField="description" name="Sub_Fuente_Especifica" default=enumId?if_exists key="enumId"/>
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsExecutingUnit />
        <@inputSelectCell list=listaUnidades?if_exists displayField="groupName" name="Unidad_Ejecutora" default=enumId?if_exists key="partyId"/>
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsIdPay />
      	<@inputTextCell name="Id_Pago" maxlength=60  />
      </tr>                                  
      <tr>                             
      <tr>
        <@displayTitleCell title=uiLabelMap.CommonAmount titleClass="requiredField" />
        <@inputTextCell size="10" name="Monto" />
      </tr>
      <@inputSubmitRow title=uiLabelMap.CommonCreate />
    </table>
  </div>
</form>