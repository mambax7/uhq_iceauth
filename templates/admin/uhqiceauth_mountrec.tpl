<{if $data.mlcount > 0}>
<p>
    <{$data.mlcount}>
    <{if $data.lmcount > 1}>
    <{$smarty.const._AM_UHQICEAUTH_MOUNTS_PLU}>
    <{else}>
    <{$smarty.const._AM_UHQICEAUTH_MOUNTS_ONE}>
    <{/if}>
</p>
<p><b>
    <{if $data.mldata.sort == "DESC"}>
    <{$smarty.const._AM_UHQICEAUTH_STATS_LAST}>
    <{else}>
    <{$smarty.const._AM_UHQICEAUTH_STATS_FIRST}>
    <{/if}>
    <{$data.mldata.limit}> <{$smarty.const._AM_UHQICEAUTH_STATS_MPREC}></b>
</p>
<table>
    <tr>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_HASH}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_TIME}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_SVR}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_LOG}></th>
    </tr>
    <{foreach item=list from=$data.mldata.list}>
    <tr class="<{cycle values=" odd,even
    "}>">
    <td><{$list.sequence}></td>
    <td nowrap><{$list.logtime}></td>
    <td><{$list.server}>:<{$list.port}><{$list.mount}></td>
    <td>
        <{if $list.action == "A"}>
        <{$smarty.const._AM_UHQICEAUTH_MOUNTACT_A}>
        <{else}>
        <{$smarty.const._AM_UHQICEAUTH_MOUNTACT_R}>
        <{/if}>
    </td>
    </tr>
    <{/foreach}>
</table>
<{else}>
<{$smarty.const._AM_UHQICEAUTH_MOUNTS_NONE}>
<{/if}>

<br><br>
<hr>
<br>

<{if $data.amcount > 0}>
<p><{$data.amcount}>
    <{if $data.amcount > 1}>
    <{$smarty.const._AM_UHQICEAUTH_AMOUNTS_PLU}>
    <{else}>
    <{$smarty.const._AM_UHQICEAUTH_AMOUNTS_ONE}>
    <{/if}>
</p>
<table>
    <tr>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_TIME}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_MOUNT}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_ACT}></th>
    </tr>
    <{foreach item=list from=$data.amdata.mount}>
    <tr class="<{cycle values=" odd,even
    "}>">
    <td><{$list.starttime}></td>
    <td><{$list.server}>:<{$list.port}><{$list.mount}></td>
    <td>
        <a href='mountrec.php?op=clearmount&server=<{$list.server}>&port=<{$list.port}>&mount=<{$list.mount}>'
           title='Remove Stale Entry'><img src='<{xoModuleIcons16 delete.png}>'></a>
    </td>
    </tr>
    <{/foreach}>
</table>
<{else}>
<{$smarty.const._AM_UHQICEAUTH_AMOUNTS_NONE}>
<{/if}>
