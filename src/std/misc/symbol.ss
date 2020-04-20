(export symbol<?)

(def (symbol<? a b)
  (string<? (symbol->string a)
            (symbol->string b)))
