<#import "function.ftl" as func>
<#assign class=model.variables.class>
package com.${vars.company}.${vars.project}.service.impl;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import java.util.List;

import com.${vars.company}.${vars.project}.service.${vars.module}.${class?cap_first}Service;
import com.${vars.company}.${vars.project}.model.po.${vars.module}.${class?cap_first};
import com.${vars.company}.${vars.project}.dao.${vars.module}.${class?cap_first}Mapper;

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
@Service
public class ${class}ServiceImpl implements ${class}Service {
	@Resource
	private ${class}Mapper ${class?uncap_first}Mapper;


    @Override
    public int save(${class?cap_first} ${class?uncap_first}){

        return ${class?uncap_first}Mapper.save(${class?uncap_first});
    }

    @Override
    public int delete(Long id){

        return ${class?uncap_first}Mapper.delete(id);
    }

    @Override
    public int update(${class?cap_first} ${class?uncap_first}){

        return ${class?uncap_first}Mapper.update(${class?uncap_first});
    }

    @Override
    public ${class?cap_first} findOne(Long id){

        return ${class?uncap_first}Mapper.findOne(id);
    }

    @Override
    public List<${class?cap_first}> findAll(List<Long> item)
    {

        return ${class?uncap_first}Mapper.findAll(item);
    }

    @Override
    public List<${class?cap_first}> find(${class?cap_first} ${class?uncap_first}){

        return ${class?uncap_first}Mapper.find(${class?uncap_first});
    }
}