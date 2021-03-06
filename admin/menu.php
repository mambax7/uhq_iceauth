<?php

/*
UHQ-IceAuth :: XOOPS Module for IceCast Authentication
Copyright (C) 2008-2013 :: Ian A. Underwood :: xoops@underwood-hq.org

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
*/

use Xoopsmodules\uhqiceauth;

require_once __DIR__ . '/../class/Helper.php';
//require_once __DIR__ . '/../include/common.php';
$helper = uhqiceauth\Helper::getInstance();

$pathIcon32 = \Xmf\Module\Admin::menuIconPath('');
$pathModIcon32 = $helper->getModule()->getInfo('modicons32');

// Assign goodies for Admin Menu

$adminmenu[] = [
    'title' => _MI_UHQICEAUTH_ADMENU_HOME,
    'link'  => 'admin/index.php',
    'icon'  => $pathIcon32 . '/home.png',
];

$adminmenu[] = [
    'title' => _MI_UHQICEAUTH_ADMENU_SUMMARY,
    'link'  => 'admin/summary.php',
    'icon'  => $pathModIcon32 . '/folder_blue.png',
];

$adminmenu[] = [
    'title' => _MI_UHQICEAUTH_ADMENU_MOUNTS,
    'link'  => 'admin/mountpoints.php',
    'icon'  => $pathModIcon32 . '/menu_srv.png',
];

$adminmenu[] = [
    'title' => _MI_UHQICEAUTH_ADMENU_INTRO,
    'link'  => 'admin/intros.php',
    'icon'  => $pathModIcon32 . '/menu_intro.png',
];

$adminmenu[] = [
    'title' => _MI_UHQICEAUTH_ADMENU_AUTHREC,
    'link'  => 'admin/authrec.php',
    'icon'  => $pathModIcon32 . '/menu_auth.png',
];

$adminmenu[] = [
    'title' => _MI_UHQICEAUTH_ADMENU_ACCTREC,
    'link'  => 'admin/acctrec.php',
    'icon'  => $pathModIcon32 . '/menu_acct.png',
];

$adminmenu[] = [
    'title' => _MI_UHQICEAUTH_ADMENU_MOUNTREC,
    'link'  => 'admin/mountrec.php',
    'icon'  => $pathModIcon32 . '/menu_mount.png',
];

$adminmenu[] = [
    'title' => _MI_UHQICEAUTH_ADMENU_STREAMPASS,
    'link'  => 'admin/streampass.php',
    'icon'  => $pathModIcon32 . '/menu_streampass.png',
];

$adminmenu[] = [
    'title' => _MI_UHQICEAUTH_ADMENU_UA,
    'link'  => 'admin/ua.php',
    'icon'  => $pathModIcon32 . '/menu_ua.png',
];

$adminmenu[] = [
    'title' => _MI_UHQICEAUTH_ADMENU_IPBAN,
    'link'  => 'admin/ipbans.php',
    'icon'  => $pathModIcon32 . '/menu_ipban.png',
];

$adminmenu[] = [
    'title' => _MI_UHQICEAUTH_ADMENU_ABOUT,
    'link'  => 'admin/about.php',
    'icon'  => $pathIcon32 . '/about.png',
];
