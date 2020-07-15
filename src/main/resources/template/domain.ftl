<#import "function.ftl" as func>
<#assign class=model.variables.class>
package com.${vars.company}.${vars.project}.domain.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import java.io.Serializable;
import java.util.Date;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
/**
 * Description: ${model.tabComment}
 <#if vars.company??>
 * Copyright: ©${date?string("yyyy")} ${vars.company} All rights reserved.
 </#if>
 <#if vars.developer??>
 * @author ${vars.developer}
 </#if>
 * Created on: ${date?string("yyyy-MM-dd HH:mm:ss")}
 */

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="${class}", description="${model.tabComment}")
public class ${class} implements Serializable {
    private static final long serialVersionUID = 1L;


<#list model.columnList as columnModel>
    <#if (columnModel.isPK) >
    /**
    * ${columnModel.comment}
    */
    @TableId(value = "${columnModel.humpColumnName?uncap_first}", type = IdType.AUTO)
    private    ${columnModel.colType}    ${columnModel.humpColumnName?uncap_first};
    <#else>
    /**
    * ${columnModel.comment}
    */
    private    ${columnModel.colType}    ${columnModel.humpColumnName?uncap_first};
    </#if>
</#list>
}