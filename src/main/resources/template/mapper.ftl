<#import "function.ftl" as func>
<#assign class=model.variables.class>
package com.${vars.company}.${vars.project}.dao;

import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.${vars.company}.${vars.project}.domain.entity.${class?cap_first};

/**
 * Description: ${model.tabComment} Mapper
 <#if vars.company??>
 * Copyright: ©${date?string("yyyy")} ${vars.company} All rights reserved.
 </#if>
 <#if vars.developer??>
 * @author ${vars.developer}
 </#if>
 * Created on: ${date?string("yyyy-MM-dd HH:mm:ss")}
 */
public interface ${class?cap_first}Mapper extends BaseMapper<${class?cap_first}>  {

    int save(${class?cap_first} ${class?uncap_first});

    int delete(Long id);

    int update(${class?cap_first} ${class?uncap_first});

    ${class?cap_first} findOne(Long id);

    List<${class?cap_first}> findAll(List<Long> item);

    List<${class?cap_first}> find(${class?cap_first} ${class?uncap_first});
}