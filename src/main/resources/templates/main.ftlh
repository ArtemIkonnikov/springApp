<#import "macro.ftlh" as m>
<#import "log.ftlh" as l>
<@m.page>

<b>Welcome ${user.username}!</b>

<div>Your email : ${user.email}</div>

<a href="/userList">List of users</a>

<div>
<@l.logout />
</div>
</@m.page>