package("bits")
    set_kind("library", {headeronly = true})
    set_homepage("https://github.com/ttldtor/bits")
    set_description("Library for bit manipulation")
    set_license("BSL-1.0")

    add_urls("https://github.com/ttldtor/bits.git", {branch = "default"})

    on_install(function (package)
        os.cp("include", package:installdir())
    end)
package_end()