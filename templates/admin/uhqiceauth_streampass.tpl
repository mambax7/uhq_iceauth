<{if $data.spcount > 0}>
<p>
    <{$data.spcount}>
    <{if $data.spcount > 1}>
    <{$smarty.const._AM_UHQICEAUTH_SP_PLU}>
    <{else}>
    <{$smarty.const._AM_UHQICEAUTH_SP_ONE}>
    <{/if}>
</p>
<table>
    <tr>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_UN}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_PW}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_DATESET}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_DATEUSED}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_ACT}></th>
    </tr>
    <{foreach item=list from=$data.spdata.list}>
    <tr class="<{cycle values=" odd,even
    "}>">
    <td><{$list.un}></td>
    <td><{$list.pw}></td>
    <td><{$list.added}></td>
    <td><{$list.used}></td>
    <td>
        <a href="streampass.php?op=del&user=<{$list.un}>"><{$smarty.const._AM_UHQICEAUTH_LIST_ACT_DEL}></a>
    </td>
    </tr>
    <{/foreach}>
</table>
<{else}>
<p><{$smarty.const._AM_UHQICEAUTH_SP_NONE}></p>
<{/if}>
