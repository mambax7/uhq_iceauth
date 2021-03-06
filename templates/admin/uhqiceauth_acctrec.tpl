<{if $data.duacount > 0}>
<p>
    <{$data.duacount}>
    <{if $data.duacount > 1}>
    <{$smarty.const._AM_UHQICEAUTH_AGENTS_PLU}>
    <{else}>
    <{$smarty.const._AM_UHQICEAUTH_AGENTS_ONE}>
    <{/if}>
</p>

<br>
<{if $data.listbyconn}>
<h4>
    <{$smarty.const._AM_UHQICEAUTH_STATS_TOP}> <{$data.listbyconn.limit}>
    <{$smarty.const._AM_UHQICEAUTH_STATS_AGENTCONN}>
    <{if $data.listbyconn.days}>
    (<{$smarty.const._AM_UHQICEAUTH_STATS_LAST}><{$data.listbyconn.days}><{$smarty.const._AM_UHQICEAUTH_STATS_DAYS}>)
    <{/if}>
</h4>
<table>
    <tr>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_USERAGENT}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_CONNECTS}></th>
    </tr>
    <{foreach item=list from=$data.listbyconn.ua}>
    <tr class="<{cycle values=" odd,even
    "}>">
    <td><{$list.useragent}></td>
    <td><{$list.total}></td>
    </tr>
    <{/foreach}>
</table>
<{/if}>

<br>
<{if $data.listbytime}>
<h4>
    <{$smarty.const._AM_UHQICEAUTH_STATS_TOP}> <{$data.listbytime.limit}>
    <{$smarty.const._AM_UHQICEAUTH_STATS_AGENTTIME}>
    <{if $data.listbytime.days}>
    (<{$smarty.const._AM_UHQICEAUTH_STATS_LAST}><{$data.listbytime.days}><{$smarty.const._AM_UHQICEAUTH_STATS_DAYS}>)
    <{/if}>
</h4>
<table>
    <tr>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_USERAGENT}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_TIME}></th>
    </tr>
    <{foreach item=list from=$data.listbytime.ua}>
    <tr class="<{cycle values=" odd,even
    "}>">
    <td><{$list.useragent}></td>
    <td><{$list.time}></td>
    </tr>
    <{/foreach}>
</table>
<{/if}>

<{else}>
<p><{$smarty.const._AM_UHQICEAUTH_AGENTS_NONE}></p>
<{/if}>

<br>
<hr>
<br>

<h3><{$smarty.const._AM_UHQICEAUTH_STATS_TTSL}></h3>
<table>
    <tr>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_INTERVAL}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_CONNECTS}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_TTSL}></th>
        <th><{$smarty.const._AM_UHQICEAUTH_LIST_AVGTTSL}></th>
    </tr>
    <{foreach item=list from=$data.ttsl}>
    <tr class="<{cycle values=" odd,even
    "}>">
    <td><{$list.name}></td>
    <td><{$list.count}></td>
    <td><{$list.ttsl}></td>
    <td><{$list.avg}></td>
    </tr>
    <{/foreach}>
</table>
