<#import "macro.ftlh" as m>
<#import "log.ftlh" as l>
<@m.page>

<b>List of users</b>

<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>EMail</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
    <tr>
        <td>${user.username}</td>
        <td>${user.email}</td>
    </tr>
    </#list>
    </tbody>
</table>

<a href="/main">Main page</a>

<div>
    <@l.logout />
</div>
</@m.page>