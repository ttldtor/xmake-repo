package("bits")
    set_kind("library", {headeronly = true})
    set_homepage("https://github.com/ttldtor/bits")
    set_description("Library for bit manipulation")
    set_license("BSL-1.0")

    add_urls("https://github.com/ttldtor/bits/archive/refs/tags/$(version).tar.gz",
             "https://github.com/ttldtor/bits.git")

    add_versions("v0.1.0", "d2fdf2f63f62a1e9f77a0c228fe4ad0234a6d4d8a4e4f24ffb6c478d2c7a876f")

    on_install(function (package)
        os.cp("include/bits", package:installdir("include"))
    end)
package_end()