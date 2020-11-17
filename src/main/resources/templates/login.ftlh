<#import "macro.ftlh" as m>
<#import "log.ftlh" as l>

<@m.page>
<b>Login page</b>
    <#if message??>
        ${message}
    </#if>
<@l.log "/login" />

<a href="/registration" >Add new user</a>

</@m.page>