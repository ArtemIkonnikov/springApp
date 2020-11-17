<#import "macro.ftlh" as m>

<@m.page>
<b>Add new User</b>
    <#if message??>
   ${message}
    </#if>
<form  method="post">
    <div><label> User Name : <input type="text" name="username"/> </label></div>
    <div><label> EMail : <input type="text" name="email"/> </label></div>
    <div><label> Password: <input type="password" name="password"/> </label></div>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <div><input type="submit" value="Sign In"/></div>
</form>
<a href="/login" >Login</a>
</@m.page>
