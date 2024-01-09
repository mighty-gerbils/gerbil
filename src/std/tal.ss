;; See ./tal/README.org for the implementation.
(import (only-in :std/sxml/tal/syntax
		 define-TAL current-tal-output-port
		 current-tal:on-error tal:write))
(export define-TAL current-tal-output-port current-tal:on-error tal:write)
