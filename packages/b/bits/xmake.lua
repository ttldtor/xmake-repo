-- Copyright (c) 2025 ttldtor.
-- SPDX-License-Identifier: BSL-1.0

package("bits")
    set_kind("library", {headeronly = true})
    set_homepage("https://github.com/ttldtor/bits")
    set_description("Library for bit manipulation")
    set_license("BSL-1.0")

    add_urls("https://github.com/ttldtor/bits/archive/refs/tags/bits-$(version).tar.gz",
             "https://github.com/ttldtor/bits.git")

    add_versions("v0.1.0", "d2fdf2f63f62a1e9f77a0c228fe4ad0234a6d4d8a4e4f24ffb6c478d2c7a876f")
    add_versions("v0.2.0", "463bdfc86486185948f5abf800b5d74992b3c032465da068dd11f6485d69a726")
    add_versions("v0.3.0", "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed")
    add_versions("v1.0.0", "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed")

    on_install(function (package)
        os.cp("include/bits", package:installdir("include"))
    end)
package_end()