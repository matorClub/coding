<#import "function.ftl" as func>
<#assign class=model.variables.class>
package club.${vars.company}.${vars.project}.manager.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

import com.${vars.company}.${vars.project}.manager.${class?cap_first}Manager;
import com.${vars.company}.${vars.project}.domain.entity.${class?cap_first};
import com.${vars.company}.${vars.project}.dao.${class?cap_first}Mapper;

/**
 * Description: ${model.tabComment} Service
 <#if vars.company??>
 * Copyright: ©${date?string("yyyy")} ${vars.company} All rights reserved.
 </#if>
 <#if vars.developer??>
 * @author ${vars.developer}
 </#if>
 * Created on: ${date?string("yyyy-MM-dd HH:mm:ss")}
 */
@Service
public class ${class}ManagerImpl extends ServiceImpl<${class}Mapper, ${class}> implements ${class}Manager {
    @Resource
    private ${class}Mapper ${class?uncap_first}Mapper;



}