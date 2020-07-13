<#import "function.ftl" as func>
<#assign class=model.variables.class>
<#assign colList=model.columnList>
package com.${vars.company}.${vars.project}.core.orm.${vars.module}.domain;

import java.util.*;

import com.${vars.company}.${vars.project}.core.orm.${vars.module}.po.${class}Po;
import com.suixingpay.common.core.orm.domain.Domain;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * Description: ${model.tabComment} Domain
 <#if vars.company??>
 * Copyright: ©${date?string("yyyy")} ${vars.company}. All rights reserved.
 </#if>
 <#if vars.developer??>
 * @author ${vars.developer}
 </#if>
 * Created on: ${date?string("yyyy-MM-dd HH:mm:ss")}
 */
public class ${class} extends ${class}Po implements Domain {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	 /**
	  * Returns a string representation of the object.
	  */
	 @Override
	 public String toString(){
		return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
	 }
	 
	 
	
}