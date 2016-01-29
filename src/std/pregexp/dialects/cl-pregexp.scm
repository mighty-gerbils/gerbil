(scmxlate-rename-define
 (pregexp-reverse! #'nreverse)
 )

(scmxlate-postprocess
 (if (probe-file "pregexp.cl") (delete-file "pregexp.cl"))

 (rename-file "my-pregexp.scm" "pregexp.cl")
 )
