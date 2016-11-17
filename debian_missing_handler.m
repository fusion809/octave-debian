## Copyright (C) 2013 Mike Miller <mtmiller@debian.org>
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Octave; see the file COPYING.  If not, see
## <http://www.gnu.org/licenses/>.

## This file was modified for Debian from the original file available at:
## https://savannah.gnu.org/file/distro_missing_handler.m?file_id=29104
## by Rafael Laboiissiere <rafael@laboissiere.net>

## -*- texinfo -*-
## @deftypefn {Function File} {@var{msg} =} debian_missing_handler (@var{name})
## Debian-specific hook function for the missing component handler
## (see missing_component_hook).
## @end deftypefn

function msg = debian_missing_handler (name)
  switch (name)
    case "info-file"
      msg = "please install the Debian package \"octave-info\" to get the Octave manual";
    case "mkoctfile"
      msg = "please install the Debian package \"liboctave-dev\" to get the mkoctfile command";
    otherwise
      msg = [];
  endswitch
endfunction
