define storm::replace($file, $pattern, $replacement) {
    $pattern_no_slashes = regsubst($pattern, '/', '\\/', 'G', 'U')
    $replacement_no_slashes = regsubst($replacement, '/', '\\/', 'G', 'U')

    exec { "replace_${pattern}_${file}":
        command => "/usr/bin/perl -pi -e 's/${pattern_no_slashes}/${replacement_no_slashes}/' '${file}'",
        onlyif => "/usr/bin/perl -ne 'BEGIN { \$ret = 1; } \$ret = 0 if /${pattern_no_slashes}/ && ! /\\Q${replacement_no_slashes}\\E/; END { exit \$ret; }' '${file}'",
        alias => "exec_$name",
    }
}
