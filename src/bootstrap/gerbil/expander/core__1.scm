(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g7883_|
    (gx#make-syntax-quote
     'expander-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7884_|
    (gx#make-syntax-quote
     'make-expander-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7885_|
    (gx#make-syntax-quote
     'expander-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7886_|
    (gx#make-syntax-quote
     'expander-context-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7887_|
    (gx#make-syntax-quote
     'expander-context-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7888_|
    (gx#make-syntax-quote
     'expander-context-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7889_|
    (gx#make-syntax-quote
     'expander-context-table-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7890_|
    (gx#make-syntax-quote
     'root-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7891_|
    (gx#make-syntax-quote
     'make-root-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7892_|
    (gx#make-syntax-quote 'root-context? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7893_|
    (gx#make-syntax-quote
     'expander-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7894_|
    (gx#make-syntax-quote
     'phi-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7895_|
    (gx#make-syntax-quote
     'make-phi-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7896_|
    (gx#make-syntax-quote 'phi-context? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7897_|
    (gx#make-syntax-quote
     'phi-context-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7898_|
    (gx#make-syntax-quote
     'phi-context-up
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7899_|
    (gx#make-syntax-quote
     'phi-context-down
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7900_|
    (gx#make-syntax-quote
     'phi-context-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7901_|
    (gx#make-syntax-quote
     'phi-context-up-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7902_|
    (gx#make-syntax-quote
     'phi-context-down-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7903_|
    (gx#make-syntax-quote
     'top-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7904_|
    (gx#make-syntax-quote
     'make-top-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7905_|
    (gx#make-syntax-quote 'top-context? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7906_|
    (gx#make-syntax-quote 'phi-context #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7907_|
    (gx#make-syntax-quote
     'module-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7908_|
    (gx#make-syntax-quote
     'make-module-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7909_|
    (gx#make-syntax-quote
     'module-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7910_|
    (gx#make-syntax-quote
     'module-context-ns
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7911_|
    (gx#make-syntax-quote
     'module-context-path
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7912_|
    (gx#make-syntax-quote
     'module-context-import
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7913_|
    (gx#make-syntax-quote
     'module-context-export
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7914_|
    (gx#make-syntax-quote
     'module-context-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7915_|
    (gx#make-syntax-quote
     'module-context-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7916_|
    (gx#make-syntax-quote
     'module-context-ns-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7917_|
    (gx#make-syntax-quote
     'module-context-path-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7918_|
    (gx#make-syntax-quote
     'module-context-import-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7919_|
    (gx#make-syntax-quote
     'module-context-export-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7920_|
    (gx#make-syntax-quote
     'module-context-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7921_|
    (gx#make-syntax-quote
     'module-context-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7922_|
    (gx#make-syntax-quote 'top-context #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7923_|
    (gx#make-syntax-quote
     'prelude-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7924_|
    (gx#make-syntax-quote
     'make-prelude-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7925_|
    (gx#make-syntax-quote
     'prelude-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7926_|
    (gx#make-syntax-quote
     'prelude-context-path
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7927_|
    (gx#make-syntax-quote
     'prelude-context-import
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7928_|
    (gx#make-syntax-quote
     'prelude-context-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7929_|
    (gx#make-syntax-quote
     'prelude-context-path-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7930_|
    (gx#make-syntax-quote
     'prelude-context-import-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7931_|
    (gx#make-syntax-quote
     'prelude-context-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7932_|
    (gx#make-syntax-quote
     'local-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7933_|
    (gx#make-syntax-quote
     'make-local-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7934_|
    (gx#make-syntax-quote
     'local-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7935_|
    (gx#make-syntax-quote 'binding::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7936_|
    (gx#make-syntax-quote 'make-binding #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7937_|
    (gx#make-syntax-quote 'binding? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7938_|
    (gx#make-syntax-quote 'binding-id #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7939_|
    (gx#make-syntax-quote 'binding-key #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7940_|
    (gx#make-syntax-quote 'binding-phi #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7941_|
    (gx#make-syntax-quote
     'binding-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7942_|
    (gx#make-syntax-quote
     'binding-key-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7943_|
    (gx#make-syntax-quote
     'binding-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7944_|
    (gx#make-syntax-quote
     'runtime-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7945_|
    (gx#make-syntax-quote
     'make-runtime-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7946_|
    (gx#make-syntax-quote
     'runtime-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7947_|
    (gx#make-syntax-quote 'binding #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7948_|
    (gx#make-syntax-quote
     'local-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7949_|
    (gx#make-syntax-quote
     'make-local-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7950_|
    (gx#make-syntax-quote
     'local-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7951_|
    (gx#make-syntax-quote
     'runtime-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7952_|
    (gx#make-syntax-quote
     'top-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7953_|
    (gx#make-syntax-quote
     'make-top-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7954_|
    (gx#make-syntax-quote 'top-binding? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7955_|
    (gx#make-syntax-quote
     'module-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7956_|
    (gx#make-syntax-quote
     'make-module-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7957_|
    (gx#make-syntax-quote
     'module-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7958_|
    (gx#make-syntax-quote
     'module-binding-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7959_|
    (gx#make-syntax-quote
     'module-binding-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7960_|
    (gx#make-syntax-quote 'top-binding #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7961_|
    (gx#make-syntax-quote
     'extern-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7962_|
    (gx#make-syntax-quote
     'make-extern-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7963_|
    (gx#make-syntax-quote
     'extern-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7964_|
    (gx#make-syntax-quote
     'syntax-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7965_|
    (gx#make-syntax-quote
     'make-syntax-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7966_|
    (gx#make-syntax-quote
     'syntax-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7967_|
    (gx#make-syntax-quote
     'syntax-binding-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7968_|
    (gx#make-syntax-quote
     'syntax-binding-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7969_|
    (gx#make-syntax-quote
     'import-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7970_|
    (gx#make-syntax-quote
     'make-import-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7971_|
    (gx#make-syntax-quote
     'import-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7972_|
    (gx#make-syntax-quote
     'import-binding-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7973_|
    (gx#make-syntax-quote
     'import-binding-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7974_|
    (gx#make-syntax-quote
     'import-binding-weak?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7975_|
    (gx#make-syntax-quote
     'import-binding-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7976_|
    (gx#make-syntax-quote
     'import-binding-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7977_|
    (gx#make-syntax-quote
     'import-binding-weak?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7978_|
    (gx#make-syntax-quote
     'alias-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7979_|
    (gx#make-syntax-quote
     'make-alias-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7980_|
    (gx#make-syntax-quote
     'alias-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7981_|
    (gx#make-syntax-quote
     'alias-binding-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7982_|
    (gx#make-syntax-quote
     'alias-binding-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7983_|
    (gx#make-syntax-quote 'expander::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7984_|
    (gx#make-syntax-quote 'make-expander #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7985_|
    (gx#make-syntax-quote 'expander? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7986_|
    (gx#make-syntax-quote 'expander-e #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7987_|
    (gx#make-syntax-quote
     'expander-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7988_|
    (gx#make-syntax-quote
     'core-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7989_|
    (gx#make-syntax-quote
     'make-core-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7990_|
    (gx#make-syntax-quote
     'core-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7991_|
    (gx#make-syntax-quote
     'core-expander-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7992_|
    (gx#make-syntax-quote
     'core-expander-compile-top
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7993_|
    (gx#make-syntax-quote
     'core-expander-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7994_|
    (gx#make-syntax-quote
     'core-expander-compile-top-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7995_|
    (gx#make-syntax-quote 'expander #f (gx#current-expander-context) '()))
  (define |gx[1]#_g7996_|
    (gx#make-syntax-quote
     'expression-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7997_|
    (gx#make-syntax-quote
     'make-expression-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7998_|
    (gx#make-syntax-quote
     'expression-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g7999_|
    (gx#make-syntax-quote 'core-expander #f (gx#current-expander-context) '()))
  (define |gx[1]#_g8000_|
    (gx#make-syntax-quote
     'special-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8001_|
    (gx#make-syntax-quote
     'make-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8002_|
    (gx#make-syntax-quote 'special-form? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g8003_|
    (gx#make-syntax-quote
     'definition-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8004_|
    (gx#make-syntax-quote
     'make-definition-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8005_|
    (gx#make-syntax-quote
     'definition-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8006_|
    (gx#make-syntax-quote 'special-form #f (gx#current-expander-context) '()))
  (define |gx[1]#_g8007_|
    (gx#make-syntax-quote
     'top-special-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8008_|
    (gx#make-syntax-quote
     'make-top-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8009_|
    (gx#make-syntax-quote
     'top-special-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8010_|
    (gx#make-syntax-quote
     'module-special-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8011_|
    (gx#make-syntax-quote
     'make-module-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8012_|
    (gx#make-syntax-quote
     'module-special-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8013_|
    (gx#make-syntax-quote
     'top-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8014_|
    (gx#make-syntax-quote
     'feature-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8015_|
    (gx#make-syntax-quote
     'make-feature-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8016_|
    (gx#make-syntax-quote
     'feature-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8017_|
    (gx#make-syntax-quote
     'private-feature-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8018_|
    (gx#make-syntax-quote
     'make-private-feature-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8019_|
    (gx#make-syntax-quote
     'private-feature-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8020_|
    (gx#make-syntax-quote
     'feature-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8021_|
    (gx#make-syntax-quote
     'reserved-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8022_|
    (gx#make-syntax-quote
     'make-reserved-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8023_|
    (gx#make-syntax-quote
     'reserved-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8024_|
    (gx#make-syntax-quote
     'macro-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8025_|
    (gx#make-syntax-quote
     'make-macro-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8026_|
    (gx#make-syntax-quote
     'macro-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8027_|
    (gx#make-syntax-quote
     'rename-macro-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8028_|
    (gx#make-syntax-quote
     'make-rename-macro-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8029_|
    (gx#make-syntax-quote
     'rename-macro-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8030_|
    (gx#make-syntax-quote
     'macro-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8031_|
    (gx#make-syntax-quote
     'user-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8032_|
    (gx#make-syntax-quote
     'make-user-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8033_|
    (gx#make-syntax-quote
     'user-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8034_|
    (gx#make-syntax-quote
     'user-expander-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8035_|
    (gx#make-syntax-quote
     'user-expander-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8036_|
    (gx#make-syntax-quote
     'user-expander-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8037_|
    (gx#make-syntax-quote
     'user-expander-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8038_|
    (gx#make-syntax-quote
     'expander-mark::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8039_|
    (gx#make-syntax-quote
     'make-expander-mark
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8040_|
    (gx#make-syntax-quote
     'expander-mark?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8041_|
    (gx#make-syntax-quote
     'expander-mark-subst
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8042_|
    (gx#make-syntax-quote
     'expander-mark-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8043_|
    (gx#make-syntax-quote
     'expander-mark-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8044_|
    (gx#make-syntax-quote
     'expander-mark-trace
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8045_|
    (gx#make-syntax-quote
     'expander-mark-subst-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8046_|
    (gx#make-syntax-quote
     'expander-mark-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8047_|
    (gx#make-syntax-quote
     'expander-mark-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8048_|
    (gx#make-syntax-quote
     'expander-mark-trace-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8049_|
    (gx#make-syntax-quote
     'syntax-error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8050_|
    (gx#make-syntax-quote 'error::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g8051_|
    (gx#make-syntax-quote
     'make-syntax-error
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8052_|
    (gx#make-syntax-quote 'syntax-error? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g8053_|
    (gx#make-syntax-quote
     'syntax-error-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8054_|
    (gx#make-syntax-quote
     'syntax-error-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8055_|
    (gx#make-syntax-quote
     'syntax-error-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8056_|
    (gx#make-syntax-quote
     'syntax-error-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8057_|
    (gx#make-syntax-quote
     'syntax-error-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8058_|
    (gx#make-syntax-quote
     'syntax-error-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g8059_|
    (gx#make-syntax-quote '<error> #f (gx#current-expander-context) '()))
  (begin
    (define |gx[:0:]#expander-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7883_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g7883_|
                   (cons |gx[1]#_g7884_|
                         (cons |gx[1]#_g7885_|
                               (cons (cons |gx[1]#_g7886_|
                                           (cons |gx[1]#_g7887_| '()))
                                     (cons (cons |gx[1]#_g7888_|
                                                 (cons |gx[1]#_g7889_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expander-context::t
        '#f
        'expander-context
        ':init!
        '()
        '(id table))))
    (define |gx[:0:]#root-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7890_|
       'expander-identifiers:
       (cons |gx[1]#_g7883_|
             (cons |gx[1]#_g7890_|
                   (cons |gx[1]#_g7891_|
                         (cons |gx[1]#_g7892_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#root-context::t
        |gx[1]#_g7893_|
        'root-context
        '#f
        '()
        '())))
    (define |gx[:0:]#phi-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7894_|
       'expander-identifiers:
       (cons |gx[1]#_g7883_|
             (cons |gx[1]#_g7894_|
                   (cons |gx[1]#_g7895_|
                         (cons |gx[1]#_g7896_|
                               (cons (cons |gx[1]#_g7897_|
                                           (cons |gx[1]#_g7898_|
                                                 (cons |gx[1]#_g7899_| '())))
                                     (cons (cons |gx[1]#_g7900_|
                                                 (cons |gx[1]#_g7901_|
                                                       (cons |gx[1]#_g7902_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#context-phi::t
        |gx[1]#_g7893_|
        'phi-context
        '#f
        '()
        '(super up down))))
    (define |gx[:0:]#top-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7903_|
       'expander-identifiers:
       (cons |gx[1]#_g7894_|
             (cons |gx[1]#_g7903_|
                   (cons |gx[1]#_g7904_|
                         (cons |gx[1]#_g7905_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-context::t
        |gx[1]#_g7906_|
        'top-context
        '#f
        '()
        '())))
    (define |gx[:0:]#module-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7907_|
       'expander-identifiers:
       (cons |gx[1]#_g7903_|
             (cons |gx[1]#_g7907_|
                   (cons |gx[1]#_g7908_|
                         (cons |gx[1]#_g7909_|
                               (cons (cons |gx[1]#_g7910_|
                                           (cons |gx[1]#_g7911_|
                                                 (cons |gx[1]#_g7912_|
                                                       (cons |gx[1]#_g7913_|
                                                             (cons |gx[1]#_g7914_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g7915_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g7916_|
                                                 (cons |gx[1]#_g7917_|
                                                       (cons |gx[1]#_g7918_|
                                                             (cons |gx[1]#_g7919_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g7920_|
                                 (cons |gx[1]#_g7921_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-context::t
        |gx[1]#_g7922_|
        'module-context
        '#f
        '()
        '(ns path import export e code))))
    (define |gx[:0:]#prelude-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7923_|
       'expander-identifiers:
       (cons |gx[1]#_g7903_|
             (cons |gx[1]#_g7923_|
                   (cons |gx[1]#_g7924_|
                         (cons |gx[1]#_g7925_|
                               (cons (cons |gx[1]#_g7926_|
                                           (cons |gx[1]#_g7927_|
                                                 (cons |gx[1]#_g7928_| '())))
                                     (cons (cons |gx[1]#_g7929_|
                                                 (cons |gx[1]#_g7930_|
                                                       (cons |gx[1]#_g7931_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#prelude-context::t
        |gx[1]#_g7922_|
        'prelude-context
        '#f
        '()
        '(path import e))))
    (define |gx[:0:]#local-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7932_|
       'expander-identifiers:
       (cons |gx[1]#_g7894_|
             (cons |gx[1]#_g7932_|
                   (cons |gx[1]#_g7933_|
                         (cons |gx[1]#_g7934_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-context::t
        |gx[1]#_g7906_|
        'local-context
        '#f
        '()
        '())))
    (define |gx[:0:]#binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7935_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g7935_|
                   (cons |gx[1]#_g7936_|
                         (cons |gx[1]#_g7937_|
                               (cons (cons |gx[1]#_g7938_|
                                           (cons |gx[1]#_g7939_|
                                                 (cons |gx[1]#_g7940_| '())))
                                     (cons (cons |gx[1]#_g7941_|
                                                 (cons |gx[1]#_g7942_|
                                                       (cons |gx[1]#_g7943_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#binding::t
        '#f
        'binding
        '#f
        '()
        '(id key phi))))
    (define |gx[:0:]#runtime-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7944_|
       'expander-identifiers:
       (cons |gx[1]#_g7935_|
             (cons |gx[1]#_g7944_|
                   (cons |gx[1]#_g7945_|
                         (cons |gx[1]#_g7946_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#runtime-binding::t
        |gx[1]#_g7947_|
        'runtime-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#local-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7948_|
       'expander-identifiers:
       (cons |gx[1]#_g7944_|
             (cons |gx[1]#_g7948_|
                   (cons |gx[1]#_g7949_|
                         (cons |gx[1]#_g7950_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-binding::t
        |gx[1]#_g7951_|
        'local-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#top-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7952_|
       'expander-identifiers:
       (cons |gx[1]#_g7944_|
             (cons |gx[1]#_g7952_|
                   (cons |gx[1]#_g7953_|
                         (cons |gx[1]#_g7954_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-binding::t
        |gx[1]#_g7951_|
        'top-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#module-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7955_|
       'expander-identifiers:
       (cons |gx[1]#_g7952_|
             (cons |gx[1]#_g7955_|
                   (cons |gx[1]#_g7956_|
                         (cons |gx[1]#_g7957_|
                               (cons (cons |gx[1]#_g7958_| '())
                                     (cons (cons |gx[1]#_g7959_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-binding::t
        |gx[1]#_g7960_|
        'module-binding
        '#f
        '()
        '(context))))
    (define |gx[:0:]#extern-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7961_|
       'expander-identifiers:
       (cons |gx[1]#_g7952_|
             (cons |gx[1]#_g7961_|
                   (cons |gx[1]#_g7962_|
                         (cons |gx[1]#_g7963_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#extern-binding::t
        |gx[1]#_g7960_|
        'extern-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#syntax-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7964_|
       'expander-identifiers:
       (cons |gx[1]#_g7935_|
             (cons |gx[1]#_g7964_|
                   (cons |gx[1]#_g7965_|
                         (cons |gx[1]#_g7966_|
                               (cons (cons |gx[1]#_g7967_| '())
                                     (cons (cons |gx[1]#_g7968_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-binding::t
        |gx[1]#_g7947_|
        'syntax-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#import-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7969_|
       'expander-identifiers:
       (cons |gx[1]#_g7935_|
             (cons |gx[1]#_g7969_|
                   (cons |gx[1]#_g7970_|
                         (cons |gx[1]#_g7971_|
                               (cons (cons |gx[1]#_g7972_|
                                           (cons |gx[1]#_g7973_|
                                                 (cons |gx[1]#_g7974_| '())))
                                     (cons (cons |gx[1]#_g7975_|
                                                 (cons |gx[1]#_g7976_|
                                                       (cons |gx[1]#_g7977_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-binding::t
        |gx[1]#_g7947_|
        'import-binding
        '#f
        '((final: . #t))
        '(e context weak?))))
    (define |gx[:0:]#alias-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7978_|
       'expander-identifiers:
       (cons |gx[1]#_g7935_|
             (cons |gx[1]#_g7978_|
                   (cons |gx[1]#_g7979_|
                         (cons |gx[1]#_g7980_|
                               (cons (cons |gx[1]#_g7981_| '())
                                     (cons (cons |gx[1]#_g7982_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#alias-binding::t
        |gx[1]#_g7947_|
        'alias-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7983_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g7983_|
                   (cons |gx[1]#_g7984_|
                         (cons |gx[1]#_g7985_|
                               (cons (cons |gx[1]#_g7986_| '())
                                     (cons (cons |gx[1]#_g7987_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expander::t
        '#f
        'expander
        '#f
        '()
        '(e))))
    (define |gx[:0:]#core-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7988_|
       'expander-identifiers:
       (cons |gx[1]#_g7983_|
             (cons |gx[1]#_g7988_|
                   (cons |gx[1]#_g7989_|
                         (cons |gx[1]#_g7990_|
                               (cons (cons |gx[1]#_g7991_|
                                           (cons |gx[1]#_g7992_| '()))
                                     (cons (cons |gx[1]#_g7993_|
                                                 (cons |gx[1]#_g7994_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-expander::t
        |gx[1]#_g7995_|
        'core-expander
        '#f
        '()
        '(id compile-top))))
    (define |gx[:0:]#expression-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g7996_|
       'expander-identifiers:
       (cons |gx[1]#_g7988_|
             (cons |gx[1]#_g7996_|
                   (cons |gx[1]#_g7997_|
                         (cons |gx[1]#_g7998_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expression-form::t
        |gx[1]#_g7999_|
        'expression-form
        '#f
        '()
        '())))
    (define |gx[:0:]#special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8000_|
       'expander-identifiers:
       (cons |gx[1]#_g7988_|
             (cons |gx[1]#_g8000_|
                   (cons |gx[1]#_g8001_|
                         (cons |gx[1]#_g8002_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#special-form::t
        |gx[1]#_g7999_|
        'special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#definition-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8003_|
       'expander-identifiers:
       (cons |gx[1]#_g8000_|
             (cons |gx[1]#_g8003_|
                   (cons |gx[1]#_g8004_|
                         (cons |gx[1]#_g8005_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#definition-form::t
        |gx[1]#_g8006_|
        'definition-form
        '#f
        '()
        '())))
    (define |gx[:0:]#top-special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8007_|
       'expander-identifiers:
       (cons |gx[1]#_g8000_|
             (cons |gx[1]#_g8007_|
                   (cons |gx[1]#_g8008_|
                         (cons |gx[1]#_g8009_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-special-form::t
        |gx[1]#_g8006_|
        'top-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#module-special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8010_|
       'expander-identifiers:
       (cons |gx[1]#_g8007_|
             (cons |gx[1]#_g8010_|
                   (cons |gx[1]#_g8011_|
                         (cons |gx[1]#_g8012_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-special-form::t
        |gx[1]#_g8013_|
        'module-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#feature-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8014_|
       'expander-identifiers:
       (cons |gx[1]#_g7983_|
             (cons |gx[1]#_g8014_|
                   (cons |gx[1]#_g8015_|
                         (cons |gx[1]#_g8016_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#feature-expander::t
        |gx[1]#_g7995_|
        'feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#private-feature-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8017_|
       'expander-identifiers:
       (cons |gx[1]#_g8014_|
             (cons |gx[1]#_g8017_|
                   (cons |gx[1]#_g8018_|
                         (cons |gx[1]#_g8019_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#private-feature-expander::t
        |gx[1]#_g8020_|
        'private-feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#reserved-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8021_|
       'expander-identifiers:
       (cons |gx[1]#_g7983_|
             (cons |gx[1]#_g8021_|
                   (cons |gx[1]#_g8022_|
                         (cons |gx[1]#_g8023_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#reserved-expander::t
        |gx[1]#_g7995_|
        'reserved-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#macro-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8024_|
       'expander-identifiers:
       (cons |gx[1]#_g7983_|
             (cons |gx[1]#_g8024_|
                   (cons |gx[1]#_g8025_|
                         (cons |gx[1]#_g8026_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-macro::t
        |gx[1]#_g7995_|
        'macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#rename-macro-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8027_|
       'expander-identifiers:
       (cons |gx[1]#_g8024_|
             (cons |gx[1]#_g8027_|
                   (cons |gx[1]#_g8028_|
                         (cons |gx[1]#_g8029_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#rename-macro-expander::t
        |gx[1]#_g8030_|
        'rename-macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#user-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8031_|
       'expander-identifiers:
       (cons |gx[1]#_g8024_|
             (cons |gx[1]#_g8031_|
                   (cons |gx[1]#_g8032_|
                         (cons |gx[1]#_g8033_|
                               (cons (cons |gx[1]#_g8034_|
                                           (cons |gx[1]#_g8035_| '()))
                                     (cons (cons |gx[1]#_g8036_|
                                                 (cons |gx[1]#_g8037_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#macro-expander::t
        |gx[1]#_g8030_|
        'user-expander
        '#f
        '()
        '(context phi))))
    (define |gx[:0:]#expander-mark|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8038_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g8038_|
                   (cons |gx[1]#_g8039_|
                         (cons |gx[1]#_g8040_|
                               (cons (cons |gx[1]#_g8041_|
                                           (cons |gx[1]#_g8042_|
                                                 (cons |gx[1]#_g8043_|
                                                       (cons |gx[1]#_g8044_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g8045_|
                                                 (cons |gx[1]#_g8046_|
                                                       (cons |gx[1]#_g8047_|
                                                             (cons |gx[1]#_g8048_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expander-mark::t
        '#f
        'expander-mark
        '#f
        '()
        '(subst context phi trace))))
    (define |gx[:0:]#syntax-error|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g8049_|
       'expander-identifiers:
       (cons |gx[1]#_g8050_|
             (cons |gx[1]#_g8049_|
                   (cons |gx[1]#_g8051_|
                         (cons |gx[1]#_g8052_|
                               (cons (cons |gx[1]#_g8053_|
                                           (cons |gx[1]#_g8054_|
                                                 (cons |gx[1]#_g8055_| '())))
                                     (cons (cons |gx[1]#_g8056_|
                                                 (cons |gx[1]#_g8057_|
                                                       (cons |gx[1]#_g8058_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-error::t
        |gx[1]#_g8059_|
        'syntax-error
        '#f
        '()
        '(context marks phi))))))
