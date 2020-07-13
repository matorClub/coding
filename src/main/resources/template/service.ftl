<#import "function.ftl" as func>
<#assign class=model.variables.class>
package com.${vars.company}.${vars.project}.service.${vars.module};

import java.util.List;
import com.${vars.company}.${vars.project}.model.po.${vars.module}.${class?cap_first};
/**
 * Description: ${model.tabComment} Service
 <#if vars.company??>
 * Copyright: ©${date?string("yyyy")} ${vars.company}. All rights reserved.
 </#if>
 <#if vars.developer??>
 * @author ${vars.developer}
 </#if>
 * Created on: ${date?string("yyyy-MM-dd HH:mm:ss")}
 */
public interface ${class}Service {

    int save(${class?cap_first} ${class?uncap_first});

    int delete(Long id);

    int update(${class?cap_first} ${class?uncap_first});

    ${class?cap_first} findOne(Long id);

    List<${class?cap_first}> findAll(List<Long> item);

    List<${class?cap_first}> find(${class?cap_first} ${class?uncap_first});
}