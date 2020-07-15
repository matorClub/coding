<#import "function.ftl" as func>
<#assign class=model.variables.class>
<#assign company=vars.company>
<#assign project=vars.project>
<#assign module=vars.module>
<#assign type="club."+company+"."+project+".po."+class>
<#assign tableName=model.tableName>
<#assign colList=model.columnList>
<#assign commonList=model.commonList>
<#assign pk=func.getPk(model) >
<#assign pkType=func.getPkType(model) >
<#assign pkVar=func.getPkVar(model) >

<#-- mpper_xml -->
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="club.${vars.company}.${vars.project}.dao.${class}Mapper">

    <resultMap id="Result" type="${type}">
    <#list colList as col>
        <#if (col.isPK) >
            <id property="${col.humpColumnName?uncap_first}" column="${col.columnName}" />
        <#else>
            <result property="${col.humpColumnName?uncap_first}" column="${col.columnName}" />
        </#if>
    </#list>
    </resultMap>
    
    <sql id="columns">
        <#list colList as col>${col.columnName}<#if col_has_next>,</#if></#list>
    </sql>
    
    <sql id="dynamicWhere">
        <where>
        <#list colList as col>
            <if test="${col.humpColumnName?uncap_first} != null"> AND ${col.columnName}  =<#noparse>#{</#noparse>${col.humpColumnName?uncap_first}} </if>
        </#list>
        </where>
    </sql>

    <insert id="save" useGeneratedKeys="true" keyProperty="id">
        INSERT INTO ${tableName}
        <trim prefix="(" suffix=")" suffixOverrides=",">
        <#list colList as col>
            <if test="${col.humpColumnName?uncap_first} != null"> ${col.columnName}, </if>
        </#list>
        </trim>
        VALUES
        <trim prefix="(" suffix=")" suffixOverrides=",">
        <#list colList as col>
            <if test="${col.humpColumnName?uncap_first} != null"> <#noparse>#{</#noparse>${col.humpColumnName?uncap_first}}, </if>
        </#list>
        </trim>
    </insert>
    
    <delete id="delete" parameterType="${pkType}">
        DELETE FROM ${tableName} 
        WHERE ${pk}=<#noparse>#{</#noparse>${pk}}
    </delete>
    
    <update id="update">
        UPDATE ${tableName}
        <set>
        <#list commonList as col>
            <if test="${col.humpColumnName?uncap_first} != null"> ${col.columnName}  =<#noparse>#{</#noparse>${col.humpColumnName?uncap_first}}, </if>
        </#list>
        </set>
        WHERE ${pk}=<#noparse>#{</#noparse>${pk}}
    </update>
    
    <select id="findOne" parameterType="${pkType}" resultMap="Result">
        SELECT <include refid="columns"/>
        FROM ${tableName}
        WHERE ${pk}=<#noparse>#{</#noparse>${pk}}
    </select>
    
    <select id="findAll" parameterType="${pkType}" resultMap="Result">
        SELECT <include refid="columns"/>
        FROM ${tableName}
        <if test="list != null">
        WHERE ${pk} IN
        <foreach item="item" index="index" collection="list" open="(" separator="," close=")">  
                <#noparse>#{</#noparse>item}
        </foreach>
        </if>
    </select>
    
    <select id="find" parameterType="${type}" resultMap="Result">
        SELECT <include refid="columns"/>
        FROM ${tableName}
        <include refid="dynamicWhere"/>
    </select>
</mapper>
