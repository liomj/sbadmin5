<{include file="db:profile_breadcrumbs.tpl"}>
<div>(<{$total_users}>)</div>
<{if $users}>
    <table class="table table-hover table-striped">
        <tr>
            <{foreach item=caption from=$captions}>
                <th><{$caption}></th>
            <{/foreach}>
        </tr>
        <{foreach item=user from=$users}>
            <tr class="<{cycle values='odd, even'}>">
                <{foreach item=fieldvalue from=$user.output}>
                    <td><{$fieldvalue}></td>
                <{/foreach}>
            </tr>
        <{/foreach}>
    </table>
    <{$nav}>
<{else}>
    <div class="errorMsg">
        <{$smarty.const._PROFILE_MA_NOUSERSFOUND}>
    </div>
<{/if}>
