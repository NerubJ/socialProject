<#import "parts/common.ftl" as c>


<@c.page>
    <div>
        <div>
            <form method="get" action="/main" class="form-inline mb-3">
                <input type="text" name="filter" class="form-control" value="${filter?if_exists}" placeholder="Search tag"/>
                <button type="submit" class="btn btn-primary ml-2">Search</button>
            </form>
        </div>
    </div>

<#include "parts/messageEdit.ftl">

<#include "parts/messageList.ftl">
</@c.page>