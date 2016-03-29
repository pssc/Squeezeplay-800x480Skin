
--[[
=head1 NAME

applets.800x480Skin.800x480SkinMeta 

=head1 DESCRIPTION

See L<applets.800x480Skin.800x480SkinApplet>.

=head1 FUNCTIONS

See L<jive.AppletMeta> for a description of standard applet meta functions.

=cut
--]]


local oo            = require("loop.simple")

local AppletMeta    = require("jive.AppletMeta")

local appletManager = appletManager
local jiveMain      = jiveMain


module(...)
oo.class(_M, AppletMeta)


function jiveVersion(self)
	return 1, 1
end

function defaultSettings(self)
	return {}
end

function registerApplet(self)
	jiveMain:registerSkin(self:string("TOUCH_800x480_SKIN"), "800x480Skin", "skin")
end

function configureApplet(self)
	appletManager:callService("addVUMeter","analog",self:string("vu_analog_b_standard"),"applets/800x480Skin/images/UNOFFICIAL/VUMeter/336x156_f25_vu_analog_b_standard.png")
	appletManager:callService("addVUMeter","analog",self:string("vu_analog_w_standard"),"applets/800x480Skin/images/UNOFFICIAL/VUMeter/400x256_f25_vu_analog_w_standard.png")
end


--[[

=head1 LICENSE

Copyright 2010 Logitech. All Rights Reserved.

This file is licensed under BSD. Please see the LICENSE file for details.

=cut
--]]

