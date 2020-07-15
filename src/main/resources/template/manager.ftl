<#import "function.ftl" as func>
<#assign class=model.variables.class>
package com.${vars.company}.${vars.project}.manager;

import java.util.List;
import com.baomidou.mybatisplus.extension.service.IService;
import com.${vars.company}.${vars.project}.domain.entity.${class?cap_first};
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
public interface ${class}Manager extends IService<${class}>{

}