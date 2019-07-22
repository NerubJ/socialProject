<#import "parts/common.ftl" as c>


<@c.page>
    <h3>${userChannel.username}</h3>
    <#if !currentUser>
        <#if isSubscriber>
            <a class="btn btn-info" href="user/unsubscribe/${userChannel.id}">Unsubscribe</a>
        </#if>
    <#else>
        <a class="btn btn-info" href="user/subscribe/${userChannel.id}">Subscribe</a>
    </#if>
    <div class="container my-3">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Subscriptions</div>
                        <h3 class="card-text">
                            <a href="/user/subscriptions/${userChannel}/list">${subscriptionsCount}</a>
                        </h3>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Subscribers</div>
                        <h3 class="card-text">
                            <a href="/user/subscribers/${userChannel}/list">subscribersCount</a>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <#if isCurrentUser>
        <#include "parts/messageEdit.ftl">
    </#if>
    <#include "parts/messageList.ftl">
</@c.page>