<#import "function.ftl" as func>
<#assign class=model.variables.class>
package com.${vars.company}.${vars.project}.po.${vars.module};

import java.util.Date;
import java.math.BigDecimal;
/**
 * Description: ${model.tabComment}
 <#if vars.company??>
 * Copyright: ©${date?string("yyyy")} ${vars.company}. All rights reserved.
 </#if>
 <#if vars.developer??>
 * @author ${vars.developer}
 </#if>
 * Created on: ${date?string("yyyy-MM-dd HH:mm:ss")}
 */
public class ${class}{
	private static final long serialVersionUID = 1L;
<#list model.columnList as columnModel>

	/**
     * ${columnModel.comment}
     */
	private	${columnModel.colType}	${columnModel.humpColumnName?uncap_first};
</#list>
<#list model.columnList as columnModel>

	public void set${columnModel.humpColumnName}(${columnModel.colType} ${columnModel.humpColumnName?uncap_first}) {
		this.${columnModel.humpColumnName?uncap_first} = ${columnModel.humpColumnName?uncap_first};
	}
	/**
	 * ${columnModel.comment}
	 * @return
	 */
	public ${columnModel.colType} get${columnModel.humpColumnName}() {
		return ${columnModel.humpColumnName?uncap_first};
	}
</#list>
}