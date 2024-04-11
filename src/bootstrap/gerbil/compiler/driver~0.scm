(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712786285)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp197449 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp197449))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp197450 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp197450))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path197306%_ _%fun197307%_)
        (with-output-to-file
         (cons 'path: (cons _%path197306%_ gxc#scheme-file-settings))
         _%fun197307%_)))
    (define gxc#+gerbil-gsc+ '#f)
    (define gxc#gerbil-gsc
      (lambda ()
        (if gxc#+gerbil-gsc+
            '#!void
            (set! gxc#+gerbil-gsc+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_GSC" gxc#default-gerbil-gsc))))
        gxc#+gerbil-gsc+))
    (define gxc#+gerbil-gcc+ '#f)
    (define gxc#gerbil-gcc
      (lambda ()
        (if gxc#+gerbil-gcc+
            '#!void
            (set! gxc#+gerbil-gcc+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_GCC" gxc#default-gerbil-gcc))))
        gxc#+gerbil-gcc+))
    (define gxc#+gerbil-ar+ '#f)
    (define gxc#gerbil-ar
      (lambda ()
        (if gxc#+gerbil-ar+
            '#!void
            (set! gxc#+gerbil-ar+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_AR" gxc#default-gerbil-ar))))
        gxc#+gerbil-ar+))
    (define gxc#gerbil-rpath
      (lambda (_%gerbil-libdir197301%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir197301%_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/mop-system-classes"
        "gerbil/runtime/error"
        "gerbil/runtime/interface"
        "gerbil/runtime/hash"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/loader"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_%dir197299%_) (delete-file-or-directory _%dir197299%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath197272%_ _%opts197273%_)
        (if (string? _%srcpath197272%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath197272%_)))
        (let ((_%outdir197275%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts197273%_)))
              (_%invoke-gsc?197276%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts197273%_)))
              (_%gsc-options197277%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts197273%_)))
              (_%keep-scm?197278%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts197273%_)))
              (_%verbosity197279%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts197273%_)))
              (_%optimize197280%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts197273%_)))
              (_%debug197281%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts197273%_)))
              (_%gen-ssxi197282%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts197273%_)))
              (_%parallel?197283%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts197273%_))))
          (if _%outdir197275%_
              (let ((__tmp197451
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir197275%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp197451))
              '#!void)
          (if _%optimize197280%_
              (let ((__tmp197452
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp197452))
              '#!void)
          (let ((__tmp197455
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath197272%_))
                   (gxc#compile-top-module
                    (let ((__tmp197456
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath197272%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp197456)))))
                (__tmp197454 (gxc#compile-timestamp))
                (__tmp197453
                 (cons 'compile-module (cons _%srcpath197272%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp197455
             gxc#current-compile-output-dir
             _%outdir197275%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?197276%_
             gxc#current-compile-gsc-options
             _%gsc-options197277%_
             gxc#current-compile-keep-scm
             _%keep-scm?197278%_
             gxc#current-compile-verbose
             _%verbosity197279%_
             gxc#current-compile-optimize
             _%optimize197280%_
             gxc#current-compile-debug
             _%debug197281%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi197282%_
             gxc#current-compile-timestamp
             __tmp197454
             gxc#current-compile-context
             __tmp197453
             gxc#current-compile-parallel
             _%parallel?197283%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath197292%_)
        (let ((_%opts197294%_ '()))
          (gxc#compile-module__% _%srcpath197292%_ _%opts197294%_))))
    (define gxc#compile-module
      (lambda _g197458_
        (let ((_g197457_ (let () (declare (not safe)) (##length _g197458_))))
          (cond ((let () (declare (not safe)) (##fx= _g197457_ 1))
                 (apply gxc#compile-module__0 _g197458_))
                ((let () (declare (not safe)) (##fx= _g197457_ 2))
                 (apply gxc#compile-module__% _g197458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g197458_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath197247%_ _%opts197248%_)
        (if (string? _%srcpath197247%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath197247%_)))
        (let ((_%outdir197250%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts197248%_)))
              (_%invoke-gsc?197251%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts197248%_)))
              (_%gsc-options197252%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts197248%_)))
              (_%keep-scm?197253%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts197248%_)))
              (_%verbosity197254%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts197248%_)))
              (_%debug197255%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts197248%_)))
              (_%parallel?197256%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts197248%_))))
          (if _%outdir197250%_
              (let ((__tmp197459
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir197250%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp197459))
              '#!void)
          (let ((__tmp197462
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath197247%_))
                   (gxc#compile-executable-module
                    (let ((__tmp197463
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath197247%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp197463))
                    _%opts197248%_)))
                (__tmp197461 (gxc#compile-timestamp))
                (__tmp197460 (cons 'compile-exe (cons _%srcpath197247%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp197462
             gxc#current-compile-output-dir
             _%outdir197250%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?197251%_
             gxc#current-compile-gsc-options
             _%gsc-options197252%_
             gxc#current-compile-keep-scm
             _%keep-scm?197253%_
             gxc#current-compile-verbose
             _%verbosity197254%_
             gxc#current-compile-debug
             _%debug197255%_
             gxc#current-compile-timestamp
             __tmp197461
             gxc#current-compile-context
             __tmp197460
             gxc#current-compile-parallel
             _%parallel?197256%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath197264%_)
        (let ((_%opts197266%_ '()))
          (gxc#compile-exe__% _%srcpath197264%_ _%opts197266%_))))
    (define gxc#compile-exe
      (lambda _g197465_
        (let ((_g197464_ (let () (declare (not safe)) (##length _g197465_))))
          (cond ((let () (declare (not safe)) (##fx= _g197464_ 1))
                 (apply gxc#compile-exe__0 _g197465_))
                ((let () (declare (not safe)) (##fx= _g197464_ 2))
                 (apply gxc#compile-exe__% _g197465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g197465_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx197243%_ _%opts197244%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts197244%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx197243%_
             _%opts197244%_)
            (gxc#compile-executable-module/separate
             _%ctx197243%_
             _%opts197244%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx197033%_ _%opts197034%_)
        (letrec ((_%generate-stub197036%_
                  (lambda (_%builtin-modules197239%_)
                    (let ((_%mod-main197241%_
                           (gxc#find-runtime-symbol _%ctx197033%_ 'main)))
                      (let ((__tmp197466
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules197239%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp197466))
                      (let ((__tmp197467
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main197241%_
                                                       (cons (cons 'cdr
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons 'command-line '()) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons 'lambda
                               (cons '()
                                     (cons (cons 'with-catch
                                                 (cons 'void
                                                       (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons 'force-output
                                             (cons (cons 'current-output-port
                                                         '())
                                                   '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons 'with-catch
                                                       (cons 'void
                                                             (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons '()
                                       (cons (cons 'force-output
                                                   (cons (cons 'current-error-port
                                                               '())
                                                         '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp197467))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts197037%_
                  (lambda (_%gerbil-libdir197237%_)
                    (let ((__tmp197468
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir197237%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp197468 read))))
                 (_%replace-extension197038%_
                  (lambda (_%path197234%_ _%ext197235%_)
                    (string-append
                     (path-strip-extension _%path197234%_)
                     _%ext197235%_)))
                 (_%userlib-module?197039%_
                  (lambda (_%ctx197232%_)
                    (if (not (_%exclude-module?197041%_ _%ctx197232%_))
                        (not (_%libgerbil-module?197040%_ _%ctx197232%_))
                        '#f)))
                 (_%libgerbil-module?197040%_
                  (lambda (_%ctx197225%_)
                    (let ((_%id-str197227%_
                           (symbol->string
                            (##structure-ref
                             _%ctx197225%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (_%exclude-module?197041%_ _%id-str197227%_))
                          (let ((_%$e197229%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str197227%_))))
                            (if _%$e197229%_
                                _%$e197229%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str197227%_))))
                          '#f))))
                 (_%exclude-module?197041%_
                  (lambda (_%ctx-or-str197221%_)
                    (let ((_%str197223%_
                           (if (string? _%ctx-or-str197221%_)
                               _%ctx-or-str197221%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str197221%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str197223%_))))
                 (_%not-file-empty?197042%_
                  (lambda (_%path197219%_)
                    (not (gxc#file-empty? _%path197219%_))))
                 (_%fold-libgerbil-runtime-scm197043%_
                  (lambda (_%gerbil-staticdir197212%_ _%libgerbil-scm197213%_)
                    (let ((_%gerbil-runtime-scm197217%_
                           (let ((__tmp197469
                                  (lambda (_%rtm197215%_)
                                    (path-expand
                                     (let ((__tmp197470
                                            (let ((__tmp197471
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm197215%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp197471
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp197470 '".scm"))
                                     _%gerbil-staticdir197212%_))))
                             (declare (not safe))
                             (##map __tmp197469 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates197044%_
                       (append _%gerbil-runtime-scm197217%_
                               _%libgerbil-scm197213%_)))))
                 (_%remove-duplicates197044%_
                  (lambda (_%strlst197172%_)
                    (let _%loop197174%_ ((_%rest197176%_ _%strlst197172%_)
                                         (_%result197177%_ '()))
                      (let* ((_%rest197178197186%_ _%rest197176%_)
                             (_%else197180197194%_
                              (lambda () (reverse! _%result197177%_)))
                             (_%K197182197200%_
                              (lambda (_%rest197197%_ _%path197198%_)
                                (if (member _%path197198%_ _%result197177%_)
                                    (_%loop197174%_
                                     _%rest197197%_
                                     _%result197177%_)
                                    (_%loop197174%_
                                     _%rest197197%_
                                     (cons _%path197198%_
                                           _%result197177%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest197178197186%_))
                            (let ((_%hd197183197203%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197178197186%_)))
                                  (_%tl197184197205%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197178197186%_))))
                              (let* ((_%path197208%_ _%hd197183197203%_)
                                     (_%rest197210%_ _%tl197184197205%_))
                                (_%K197182197200%_
                                 _%rest197210%_
                                 _%path197208%_)))
                            (_%else197180197194%_))))))
                 (_%compile-stub197045%_
                  (lambda (_%output-scm197052%_ _%output-bin197053%_)
                    (let* ((_%gerbil-home197055%_
                            (let ((__tmp197472
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp197472)))
                           (_%gerbil-libdir197057%_
                            (path-expand '"lib" _%gerbil-home197055%_))
                           (_%gerbil-staticdir197059%_
                            (path-expand '"static" _%gerbil-libdir197057%_))
                           (_%deps197061%_
                            (gxc#find-runtime-module-deps _%ctx197033%_))
                           (_%libgerbil-deps197063%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?197040%_
                               _%deps197061%_)))
                           (_%libgerbil-scm197065%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps197063%_)))
                           (_%libgerbil-scm197067%_
                            (_%fold-libgerbil-runtime-scm197043%_
                             _%gerbil-staticdir197059%_
                             _%libgerbil-scm197065%_))
                           (_%libgerbil-c197073%_
                            (map (lambda (_%g197068197070%_)
                                   (_%replace-extension197038%_
                                    _%g197068197070%_
                                    '".c"))
                                 _%libgerbil-scm197067%_))
                           (_%libgerbil-o197079%_
                            (map (lambda (_%g197074197076%_)
                                   (_%replace-extension197038%_
                                    _%g197074197076%_
                                    '".o"))
                                 _%libgerbil-scm197067%_))
                           (_%src-deps197081%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?197039%_
                               _%deps197061%_)))
                           (_%src-deps-scm197083%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps197081%_)))
                           (_%src-deps-scm197085%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?197042%_
                               _%src-deps-scm197083%_)))
                           (_%src-deps-scm197087%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm197085%_)))
                           (_%src-deps-c197093%_
                            (let ((__tmp197473
                                   (lambda (_%g197088197090%_)
                                     (_%replace-extension197038%_
                                      _%g197088197090%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp197473 _%src-deps-scm197087%_)))
                           (_%src-deps-o197099%_
                            (let ((__tmp197474
                                   (lambda (_%g197094197096%_)
                                     (_%replace-extension197038%_
                                      _%g197094197096%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp197474 _%src-deps-scm197087%_)))
                           (_%src-bin-scm197101%_
                            (gxc#find-static-module-file _%ctx197033%_))
                           (_%src-bin-scm197103%_
                            (path-expand _%src-bin-scm197101%_))
                           (_%src-bin-c197105%_
                            (_%replace-extension197038%_
                             _%src-bin-scm197103%_
                             '".c"))
                           (_%src-bin-o197107%_
                            (_%replace-extension197038%_
                             _%src-bin-scm197103%_
                             '".o"))
                           (_%output-bin197109%_
                            (path-expand _%output-bin197053%_))
                           (_%output-scm197111%_
                            (path-expand _%output-scm197052%_))
                           (_%output-c197113%_
                            (_%replace-extension197038%_
                             _%output-scm197111%_
                             '".c"))
                           (_%output-o197115%_
                            (_%replace-extension197038%_
                             _%output-scm197111%_
                             '".o"))
                           (_%output_-c197117%_
                            (_%replace-extension197038%_
                             _%output-scm197111%_
                             '"_.c"))
                           (_%output_-o197119%_
                            (_%replace-extension197038%_
                             _%output-scm197111%_
                             '"_.o"))
                           (_%gsc-link-opts197121%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts197123%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts197125%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir197059%_))
                           (_%output-ld-opts197127%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts197129%_
                            (_%get-libgerbil-ld-opts197037%_
                             _%gerbil-libdir197057%_))
                           (_%rpath197131%_
                            (gxc#gerbil-rpath _%gerbil-libdir197057%_))
                           (_%builtin-modules197135%_
                            (_%remove-duplicates197044%_
                             (let ((__tmp197475
                                    (let ((__tmp197477
                                           (lambda (_%mod197133%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod197133%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp197476
                                           (cons _%ctx197033%_
                                                 _%deps197061%_)))
                                      (declare (not safe))
                                      (##map __tmp197477 __tmp197476))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp197475)))))
                      (letrec ((_%compile-obj197138%_
                                (lambda (_%scm-path197145%_ _%c-path197146%_)
                                  (let* ((_%o-path197148%_
                                          (_%replace-extension197038%_
                                           _%c-path197146%_
                                           '".o"))
                                         (_%lock197150%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path197148%_
                                             '".lock")))
                                         (_%locked197152%_ '#f)
                                         (_%unlock197155%_
                                          (lambda ()
                                            (close-port _%locked197152%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock197150%_)))))
                                    (let _%retry197158%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock197150%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry197158%_))
                                          (begin
                                            (set! _%locked197152%_
                                                  (let ((__tmp197478
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock197150%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp197478)))
                                            (if _%locked197152%_
                                                '#!void
                                                (_%retry197158%_)))))
                                    (let ((__tmp197480
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path197148%_)))
                                                     (not _%scm-path197145%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path197145%_
                                                        _%o-path197148%_)))
                                                 (let ((_%gsc-cc-opts197169%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp197481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp197482 (cons _%c-path197146%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp197482
                            _%gsc-static-opts197125%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp197481 _%gsc-cc-opts197169%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp197479
                                           (lambda () (_%unlock197155%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp197480
                                       __tmp197479))))))
                        (let ((__tmp197483
                               (lambda ()
                                 (let ((__tmp197484
                                        (path-directory _%output-bin197109%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp197484)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp197483))
                        (gxc#with-output-to-scheme-file
                         _%output-scm197111%_
                         (lambda ()
                           (_%generate-stub197036%_
                            _%builtin-modules197135%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it197143%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp197485
                                                   (let ((__tmp197486
                                                          (let ((__tmp197487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm197103%_
                               (cons _%output-scm197111%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp197487 _%src-deps-scm197087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp197486
                                                      _%libgerbil-c197073%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp197485
                                               _%gsc-link-opts197121%_))))
                                     (for-each
                                      _%compile-obj197138%_
                                      (let ((__tmp197488
                                             (cons _%src-bin-scm197103%_
                                                   (cons _%output-scm197111%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp197488
                                         _%src-deps-scm197087%_))
                                      (let ((__tmp197489
                                             (cons _%src-bin-c197105%_
                                                   (cons _%output-c197113%_
                                                         (cons _%output_-c197117%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp197489
                                         _%src-deps-c197093%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin197109%_
                                                        (let ((__tmp197490
                                                               (cons _%src-bin-o197107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o197115%_
                                   (cons _%output_-o197119%_
                                         (let ((__tmp197491
                                                (let ((__tmp197492
                                                       (let ((__tmp197494
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir197057%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts197129%_))))
                     (__tmp197493
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath197131%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp197494 __tmp197493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp197492
                                                   _%output-ld-opts197127%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp197491
                                            _%libgerbil-o197079%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp197490 _%src-deps-o197099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp197495
                                            (cons _%output-c197113%_
                                                  (cons _%output_-c197117%_
                                                        (cons _%output-o197115%_
                                                              (cons _%output_-o197119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp197495)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it197143%_))
                                  (_%compile-it197143%_)))
                            '#!void))))))
          (let* ((_%output-bin197047%_
                  (gxc#compile-exe-output-file _%ctx197033%_ _%opts197034%_))
                 (_%output-scm197049%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin197047%_ '"__exe.scm"))))
            (_%compile-stub197045%_
             _%output-scm197049%_
             _%output-bin197047%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx196855%_ _%opts196856%_)
        (letrec ((_%reset-declare196858%_
                  (lambda ()
                    '(declare
                       (gambit-scheme)
                       (block)
                       (core)
                       (inline)
                       (inline-primitives)
                       (inlining-limit 350)
                       (constant-fold)
                       (lambda-lift)
                       (standard-bindings)
                       (extended-bindings)
                       (run-time-bindings)
                       (safe)
                       (interrupts-enabled)
                       (proper-tail-calls)
                       (not generative-lambda)
                       (optimize-dead-local-variables)
                       (optimize-dead-definitions)
                       (generic)
                       (mostly-fixnum-flonum))))
                 (_%generate-stub196859%_
                  (lambda (_%deps197024%_)
                    (let ((_%mod-main197026%_
                           (gxc#find-runtime-symbol _%ctx196855%_ 'main))
                          (_%reset-decl197027%_ (_%reset-declare196858%_))
                          (_%user-decl197028%_ (_%user-declare196860%_)))
                      (for-each
                       (lambda (_%dep197030%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl197027%_))
                         (newline)
                         (if _%user-decl197028%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl197028%_))
                               (newline))
                             '#!void)
                         (let ((__tmp197496
                                (cons 'include (cons _%dep197030%_ '()))))
                           (declare (not safe))
                           (##write __tmp197496))
                         (newline))
                       _%deps197024%_)
                      (let ((__tmp197497
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main197026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp197497))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare196860%_
                  (lambda ()
                    (let* ((_%gsc-opts196929%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts196856%_)))
                           (_%gsc-prelude196931%_
                            (if _%gsc-opts196929%_
                                (member '"-prelude" _%gsc-opts196929%_)
                                '#f))
                           (_%gsc-prelude196933%_
                            (if _%gsc-prelude196931%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude196931%_)))
                                '#f)))
                      (let _%lp196936%_ ((_%rest196938%_
                                          (cons _%gsc-prelude196933%_ '()))
                                         (_%user-decls196939%_ '()))
                        (let* ((_%rest196940196948%_ _%rest196938%_)
                               (_%else196942196956%_
                                (lambda ()
                                  (if (null? _%user-decls196939%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls196939%_)))))
                               (_%K196944197012%_
                                (lambda (_%rest196959%_ _%expr196960%_)
                                  (let* ((_%expr196961196973%_ _%expr196960%_)
                                         (_%else196964196981%_
                                          (lambda ()
                                            (_%lp196936%_
                                             _%rest196959%_
                                             _%user-decls196939%_))))
                                    (let ((_%K196969197002%_
                                           (lambda (_%decls197000%_)
                                             (_%lp196936%_
                                              _%rest196959%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls196939%_
                                                 _%decls197000%_)))))
                                          (_%K196966196987%_
                                           (lambda (_%exprs196985%_)
                                             (_%lp196936%_
                                              (append _%exprs196985%_
                                                      _%rest196959%_)
                                              _%user-decls196939%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr196961196973%_))
                                          (let ((_%tl196971197007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr196961196973%_)))
                                                (_%hd196970197005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr196961196973%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd196970197005%_
                                                         'declare))
                                                (let ((_%decls197010%_
                                                       _%tl196971197007%_))
                                                  (_%K196969197002%_
                                                   _%decls197010%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd196970197005%_
                                                             'begin))
                                                    (let ((_%exprs196995%_
                                                           _%tl196971197007%_))
                                                      (_%K196966196987%_
                                                       _%exprs196995%_))
                                                    (_%else196964196981%_))))
                                          (_%else196964196981%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest196940196948%_))
                              (let ((_%hd196945197015%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest196940196948%_)))
                                    (_%tl196946197017%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest196940196948%_))))
                                (let* ((_%expr197020%_ _%hd196945197015%_)
                                       (_%rest197022%_ _%tl196946197017%_))
                                  (_%K196944197012%_
                                   _%rest197022%_
                                   _%expr197020%_)))
                              (_%else196942196956%_)))))))
                 (_%compile-stub196861%_
                  (lambda (_%output-scm196868%_ _%output-bin196869%_)
                    (let* ((_%gerbil-home196871%_
                            (let ((__tmp197498
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp197498)))
                           (_%gerbil-libdir196873%_
                            (path-expand '"lib" _%gerbil-home196871%_))
                           (_%runtime196875%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp196877%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home196871%_))
                           (_%include-gambit-sharp196879%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp196877%_
                               '"\")")))
                           (_%bin-scm196881%_
                            (gxc#find-static-module-file _%ctx196855%_))
                           (_%deps196883%_
                            (gxc#find-runtime-module-deps _%ctx196855%_))
                           (_%deps196885%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps196883%_)))
                           (_%deps196890%_
                            (let ((__tmp197499
                                   (lambda (_%$obj196887%_)
                                     (not (gxc#file-empty? _%$obj196887%_)))))
                              (declare (not safe))
                              (##filter __tmp197499 _%deps196885%_)))
                           (_%deps196894%_
                            (let ((__tmp197500
                                   (lambda (_%f196892%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f196892%_
                                             _%runtime196875%_))))))
                              (declare (not safe))
                              (##filter __tmp197500 _%deps196890%_)))
                           (_%output-base196896%_
                            (let ((__tmp197501
                                   (path-strip-extension
                                    _%output-scm196868%_)))
                              (declare (not safe))
                              (##string-append __tmp197501)))
                           (_%output-c196898%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196896%_ '".c")))
                           (_%output-o196900%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196896%_ '".o")))
                           (_%output-c_196902%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196896%_ '"_.c")))
                           (_%output-o_196904%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196896%_ '"_.o")))
                           (_%gsc-link-opts196906%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts196908%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts196910%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir196873%_)))
                           (_%output-ld-opts196912%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros196914%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp196879%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp196879%_
                                            '()))))
                           (_%gsc-link-opts196916%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts196906%_
                               _%gsc-gx-macros196914%_)))
                           (_%rpath196918%_
                            (gxc#gerbil-rpath _%gerbil-libdir196873%_))
                           (_%default-ld-options196920%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp197502
                             (lambda ()
                               (let ((__tmp197503
                                      (path-directory _%output-bin196869%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp197503)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp197502))
                      (gxc#with-output-to-scheme-file
                       _%output-scm196868%_
                       (lambda ()
                         (_%generate-stub196859%_
                          (let ((__tmp197504
                                 (let ((__tmp197505
                                        (cons _%bin-scm196881%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp197505
                                    _%deps196894%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp197504 _%runtime196875%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it196926%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_196902%_
                                                      (let ((__tmp197506
                                                             (cons _%output-scm196868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp197506 _%gsc-link-opts196916%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp197507
                                                 (let ((__tmp197508
                                                        (cons _%output-c196898%_
                                                              (cons _%output-c_196902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp197508
                                                    _%gsc-static-opts196910%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp197507
                                             _%gsc-cc-opts196908%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin196869%_
                                                      (cons _%output-o196900%_
                                                            (cons _%output-o_196904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp197509
                                 (let ((__tmp197511
                                        (cons '"-L"
                                              (cons _%gerbil-libdir196873%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options196920%_))))
                                       (__tmp197510
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath196918%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp197511 __tmp197510))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp197509
                             _%output-ld-opts196912%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it196926%_))
                                (_%compile-it196926%_)))
                          '#!void)))))
          (let* ((_%output-bin196863%_
                  (gxc#compile-exe-output-file _%ctx196855%_ _%opts196856%_))
                 (_%output-scm196865%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin196863%_ '"__exe.scm"))))
            (_%compile-stub196861%_
             _%output-scm196865%_
             _%output-bin196863%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx196804%_ _%id196805%_)
        (let ((_%$e196851%_
               (let ((__tmp197513
                      (lambda (_%e196806196808%_)
                        (let* ((_%g196810196820%_ _%e196806196808%_)
                               (_%else196812196828%_ (lambda () '#f))
                               (_%K196814196832%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g196810196820%_
                                 'gx#module-export::t))
                              (let* ((_%e196815196835%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g196810196820%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e196816196838%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g196810196820%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e196817196841%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g196810196820%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e196817196841%_ '0))
                                    (let ((_%e196818196844%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g196810196820%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g196846196848%_)
                                             (eq? _%g196846196848%_
                                                  _%id196805%_))
                                           _%e196818196844%_)
                                          (_%K196814196832%_)
                                          (_%else196812196828%_)))
                                    (_%else196812196828%_)))
                              (_%else196812196828%_)))))
                     (__tmp197512
                      (##structure-ref
                       _%ctx196804%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp197513 __tmp197512))))
          (if _%$e196851%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e196851%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx196795%_ _%id196796%_)
        (let ((_%$e196798%_
               (gxc#find-export-binding _%ctx196795%_ _%id196796%_)))
          (if _%$e196798%_
              ((lambda (_%bind196801%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind196801%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id196796%_)))
                 (##structure-ref _%bind196801%_ '1 gx#binding::t '#f))
               _%$e196798%_)
              (let ((__tmp197514
                     (##structure-ref
                      _%ctx196795%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp197514
                 _%id196796%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx196661%_)
        (letrec* ((_%ht196663%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template196664%_
                   (lambda (_%in196740%_ _%phi196741%_)
                     (let ((_%iphi196743%_
                            (fx+ _%phi196741%_
                                 (##direct-structure-ref
                                  _%in196740%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports196744%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in196740%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp196746%_ ((_%rest196748%_ _%imports196744%_)
                                          (_%r196749%_ '()))
                         (let* ((_%rest196750196758%_ _%rest196748%_)
                                (_%else196752196766%_ (lambda () _%r196749%_))
                                (_%K196754196783%_
                                 (lambda (_%rest196769%_ _%in196770%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in196770%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi196743%_))
                                           (_%lp196746%_
                                            _%rest196769%_
                                            (cons _%in196770%_ _%r196749%_))
                                           (_%lp196746%_
                                            _%rest196769%_
                                            _%r196749%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in196770%_
                                              'gx#module-import::t))
                                           (let ((_%iphi196774%_
                                                  (fx+ _%phi196741%_
                                                       (##direct-structure-ref
                                                        _%in196770%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi196774%_))
                                                 (_%lp196746%_
                                                  _%rest196769%_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _%in196770%_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r196749%_))
                                                 (_%lp196746%_
                                                  _%rest196769%_
                                                  _%r196749%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in196770%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi196777%_
                                                      (fx+ _%iphi196743%_
                                                           (##direct-structure-ref
                                                            _%in196770%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi196777%_))
                                                     (_%lp196746%_
                                                      _%rest196769%_
                                                      (cons (##direct-structure-ref
                                                             _%in196770%_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _%r196749%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi196777%_))
                                                         (_%lp196746%_
                                                          _%rest196769%_
                                                          (let ((__tmp197515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template196664%_
                          _%in196770%_
                          _%iphi196743%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r196749%_ __tmp197515)))
                 (_%lp196746%_ _%rest196769%_ _%r196749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp196746%_
                                                _%rest196769%_
                                                _%r196749%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest196750196758%_))
                               (let ((_%hd196755196786%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest196750196758%_)))
                                     (_%tl196756196788%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest196750196758%_))))
                                 (let* ((_%in196791%_ _%hd196755196786%_)
                                        (_%rest196793%_ _%tl196756196788%_))
                                   (_%K196754196783%_
                                    _%rest196793%_
                                    _%in196791%_)))
                               (_%else196752196766%_)))))))
                  (_%find-deps196665%_
                   (lambda (_%rest196673%_ _%deps196674%_)
                     (let* ((_%rest196675196683%_ _%rest196673%_)
                            (_%else196677196691%_ (lambda () _%deps196674%_))
                            (_%K196679196728%_
                             (lambda (_%rest196694%_ _%hd196695%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd196695%_
                                      'gx#module-context::t))
                                   (let ((_%id196698%_
                                          (##structure-ref
                                           _%hd196695%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports196699%_
                                          (##structure-ref
                                           _%hd196695%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht196663%_
                                            _%id196698%_))
                                         (_%find-deps196665%_
                                          _%rest196694%_
                                          _%deps196674%_)
                                         (let ((_%$e196702%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd196695%_))))
                                           (if _%$e196702%_
                                               ((lambda (_%pre196705%_)
                                                  (let ((_%xdeps196707%_
                                                         (_%find-deps196665%_
                                                          (cons _%pre196705%_
                                                                _%imports196699%_)
                                                          _%deps196674%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht196663%_
                                                       _%id196698%_
                                                       _%hd196695%_))
                                                    (_%find-deps196665%_
                                                     _%rest196694%_
                                                     (cons _%hd196695%_
                                                           _%xdeps196707%_))))
                                                _%$e196702%_)
                                               (let ((_%xdeps196710%_
                                                      (_%find-deps196665%_
                                                       _%imports196699%_
                                                       _%deps196674%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht196663%_
                                                    _%id196698%_
                                                    _%hd196695%_))
                                                 (_%find-deps196665%_
                                                  _%rest196694%_
                                                  (cons _%hd196695%_
                                                        _%xdeps196710%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd196695%_
                                          'gx#prelude-context::t))
                                       (let ((_%id196713%_
                                              (##structure-ref
                                               _%hd196695%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht196663%_
                                                _%id196713%_))
                                             (_%find-deps196665%_
                                              _%rest196694%_
                                              _%deps196674%_)
                                             (let ((_%xdeps196717%_
                                                    (_%find-deps196665%_
                                                     (##structure-ref
                                                      _%hd196695%_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _%deps196674%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht196663%_
                                                      _%id196713%_))
                                                   (_%find-deps196665%_
                                                    _%rest196694%_
                                                    _%xdeps196717%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht196663%_
                                                        _%id196713%_
                                                        _%hd196695%_))
                                                     (_%find-deps196665%_
                                                      _%rest196694%_
                                                      (cons _%hd196695%_
                                                            _%xdeps196717%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd196695%_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _%hd196695%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_%find-deps196665%_
                                                (cons (##direct-structure-ref
                                                       _%hd196695%_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _%rest196694%_)
                                                _%deps196674%_)
                                               (_%find-deps196665%_
                                                _%rest196694%_
                                                _%deps196674%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd196695%_
                                                  'gx#module-export::t))
                                               (_%find-deps196665%_
                                                (cons (##direct-structure-ref
                                                       _%hd196695%_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _%rest196694%_)
                                                _%deps196674%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd196695%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd196695%_
                         '2
                         gx#import-set::t
                         '#f))
               (_%find-deps196665%_
                (cons (##direct-structure-ref
                       _%hd196695%_
                       '1
                       gx#import-set::t
                       '#f)
                      _%rest196694%_)
                _%deps196674%_)
               (if (fxpositive?
                    (##direct-structure-ref
                     _%hd196695%_
                     '2
                     gx#import-set::t
                     '#f))
                   (let ((_%xdeps196724%_
                          (_%import-set-template196664%_ _%hd196695%_ '0)))
                     (_%find-deps196665%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest196694%_ _%xdeps196724%_))
                      _%deps196674%_))
                   (_%find-deps196665%_ _%rest196694%_ _%deps196674%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd196695%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest196675196683%_))
                           (let ((_%hd196680196731%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest196675196683%_)))
                                 (_%tl196681196733%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest196675196683%_))))
                             (let* ((_%hd196736%_ _%hd196680196731%_)
                                    (_%rest196738%_ _%tl196681196733%_))
                               (_%K196679196728%_
                                _%rest196738%_
                                _%hd196736%_)))
                           (_%else196677196691%_))))))
          (let ((__tmp197516
                 (filter gx#expander-context-id
                         (_%find-deps196665%_
                          (let ((_%$e196667%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx196661%_))))
                            (if _%$e196667%_
                                ((lambda (_%pre196670%_)
                                   (cons _%pre196670%_
                                         (##structure-ref
                                          _%ctx196661%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e196667%_)
                                (##structure-ref
                                 _%ctx196661%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp197516)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx196591%_)
        (let* ((_%context-id196593%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx196591%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx196591%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx196591%_)))
               (_%scm196595%_
                (let ((__tmp197517
                       (gxc#static-module-name _%context-id196593%_)))
                  (declare (not safe))
                  (##string-append __tmp197517 '".scm")))
               (_%dirs196597%_ (let () (declare (not safe)) (load-path)))
               (_%dirs196603%_
                (let ((_%user-libpath196599%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath196599%_
                      (let ((_%user-libpath196601%_
                             (path-expand '"lib" _%user-libpath196599%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath196601%_ _%dirs196597%_))
                            _%dirs196597%_
                            (cons _%user-libpath196601%_ _%dirs196597%_)))
                      _%dirs196597%_)))
               (_%dirs196613%_
                (let ((_%$e196605%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e196605%_
                      ((lambda (_%g196607196609%_)
                         (cons _%g196607196609%_ _%dirs196603%_))
                       _%$e196605%_)
                      _%dirs196603%_)))
               (_%dirs196619%_
                (let ((__tmp197518
                       (lambda (_%g196614196616%_)
                         (path-expand '"static" _%g196614196616%_))))
                  (declare (not safe))
                  (##map __tmp197518 _%dirs196613%_))))
          (let _%lp196622%_ ((_%rest196624%_ _%dirs196619%_))
            (let* ((_%rest196625196633%_ _%rest196624%_)
                   (_%else196627196641%_
                    (lambda ()
                      (let ((__tmp197519
                             (##structure-ref
                              _%ctx196591%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp197519
                         _%scm196595%_))))
                   (_%K196629196649%_
                    (lambda (_%rest196644%_ _%dir196645%_)
                      (let ((_%path196647%_
                             (path-expand _%scm196595%_ _%dir196645%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path196647%_))
                            _%path196647%_
                            (_%lp196622%_ _%rest196644%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest196625196633%_))
                  (let ((_%hd196630196652%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest196625196633%_)))
                        (_%tl196631196654%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest196625196633%_))))
                    (let* ((_%dir196657%_ _%hd196630196652%_)
                           (_%rest196659%_ _%tl196631196654%_))
                      (_%K196629196649%_ _%rest196659%_ _%dir196657%_)))
                  (_%else196627196641%_)))))))
    (define gxc#file-empty?
      (lambda (_%path196589%_)
        (zero? (let ((__tmp197520 (file-info _%path196589%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp197520)))))
    (define gxc#compile-top-module
      (lambda (_%ctx196585%_)
        (let ((__tmp197524
               (lambda ()
                 (let ((__tmp197525
                        (##structure-ref
                         _%ctx196585%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp197525))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp197526
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx196585%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp197526))
                     '#!void)
                 (gxc#collect-bindings _%ctx196585%_)
                 (gxc#compile-runtime-code _%ctx196585%_)
                 (gxc#compile-meta-code _%ctx196585%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx196585%_)
                     '#!void)))
              (__tmp197523
               (let ((__obj197447
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj197447)
                 __obj197447))
              (__tmp197522 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp197521
               (let ()
                 (declare (not safe))
                 (make-hash-table__%
                  '#f
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197524
           gx#current-expander-context
           _%ctx196585%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp197523
           gxc#current-compile-runtime-sections
           __tmp197522
           gxc#current-compile-runtime-names
           __tmp197521))))
    (define gxc#collect-bindings
      (lambda (_%ctx196583%_)
        (let ((__tmp197527
               (##structure-ref _%ctx196583%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp197527))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx196531%_)
        (letrec ((_%compile1196533%_
                  (lambda (_%ctx196572%_)
                    (let* ((_%code196574%_
                            (##structure-ref
                             _%ctx196572%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm196578%_
                            (let ((_%idstr196576%_
                                   (let ((__tmp197528
                                          (##structure-ref
                                           _%ctx196572%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp197528))))
                              (declare (not safe))
                              (##string-append _%idstr196576%_ '"~0")))
                           (_%rtc?196580%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code196574%_))))
                      (if _%rtc?196580%_
                          (let ((__tmp197529
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp197529
                             _%ctx196572%_
                             _%rtm196578%_))
                          '#!void)
                      (_%generate-runtime-code196535%_
                       _%ctx196572%_
                       _%code196574%_
                       (if _%rtc?196580%_ _%rtm196578%_ '#f)))))
                 (_%context-timestamp196534%_
                  (lambda (_%ctx196570%_)
                    (let ((__tmp197530
                           (let ((__tmp197531
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx196570%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp197531 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp197530))))
                 (_%generate-runtime-code196535%_
                  (lambda (_%ctx196542%_ _%code196543%_ _%rtm196544%_)
                    (let* ((_%runtime-code?196546%_ (if _%rtm196544%_ '#t '#f))
                           (_%lifts196548%_ (box '()))
                           (_%runtime-code196551%_
                            (if _%runtime-code?196546%_
                                (let ((__tmp197534
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code196543%_))))
                                      (__tmp197533
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp197532
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp197534
                                   gx#current-expander-context
                                   _%ctx196542%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts196548%_
                                   gxc#current-compile-marks
                                   __tmp197533
                                   gxc#current-compile-identifiers
                                   __tmp197532))
                                '#f))
                           (_%runtime-code196553%_
                            (if _%runtime-code?196546%_
                                (if (null? (unbox _%lifts196548%_))
                                    _%runtime-code196551%_
                                    (cons 'begin
                                          (let ((__tmp197536
                                                 (cons _%runtime-code196551%_
                                                       '()))
                                                (__tmp197535
                                                 (reverse (unbox _%lifts196548%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp197536
                                             __tmp197535))))
                                '#f))
                           (_%runtime-code196555%_
                            (if _%runtime-code?196546%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp196534%_
                                                         _%ctx196542%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code196553%_ '())))
                                '#f))
                           (_%loader-code196558%_
                            (let ((__tmp197537
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code196543%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp197537
                               gx#current-expander-context
                               _%ctx196542%_)))
                           (_%loader-code196560%_
                            (cons 'begin
                                  (cons _%loader-code196558%_
                                        (cons (if _%runtime-code?196546%_
                                                  (cons 'load-module
                                                        (cons _%rtm196544%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0196562%_
                            (gxc#compile-output-file _%ctx196542%_ '0 '".scm"))
                           (_%scmrt196564%_
                            (gxc#compile-output-file
                             _%ctx196542%_
                             '#f
                             '".scm"))
                           (_%scms196566%_
                            (gxc#compile-static-output-file _%ctx196542%_)))
                      (if _%runtime-code?196546%_
                          (gxc#compile-scm-file__0
                           _%scm0196562%_
                           _%runtime-code196555%_)
                          '#!void)
                      (let ((__tmp197538
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt196564%_
                                _%loader-code196560%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp197538
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms196566%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms196566%_))
                          '#!void)
                      (if _%runtime-code?196546%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0196562%_ _%scms196566%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms196566%_ void)))))))
          (let* ((_%all-modules196537%_
                  (cons _%ctx196531%_ (gxc#lift-nested-modules _%ctx196531%_)))
                 (__tmp197539
                  (lambda (_%ctx196539%_)
                    (let ((__tmp197540
                           (lambda () (_%compile1196533%_ _%ctx196539%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp197540
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp197539 _%all-modules196537%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx196431%_)
        (letrec ((_%compile-ssi196433%_
                  (lambda (_%code196499%_)
                    (let* ((_%path196501%_
                            (gxc#compile-output-file
                             _%ctx196431%_
                             '#f
                             '".ssi"))
                           (_%prelude196513%_
                            (let* ((_%super196503%_
                                    (##structure-ref
                                     _%ctx196431%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e196505%_
                                    (##structure-ref
                                     _%super196503%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e196505%_
                                  ((lambda (_%g196507196509%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g196507196509%_)))
                                   _%$e196505%_)
                                  ':<root>)))
                           (_%ns196515%_
                            (##structure-ref
                             _%ctx196431%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr196517%_
                            (symbol->string
                             (##structure-ref
                              _%ctx196431%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg196525%_
                            (let ((_%$e196519%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr196517%_ '#\/))))
                              (if _%$e196519%_
                                  ((lambda (_%x196522%_)
                                     (let ((__tmp197541
                                            (substring
                                             _%idstr196517%_
                                             '0
                                             _%x196522%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp197541)))
                                   _%$e196519%_)
                                  '#f)))
                           (_%rt196527%_
                            (let ((__tmp197542
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp197542 _%ctx196431%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path196501%_))
                      (gxc#with-output-to-scheme-file
                       _%path196501%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude196513%_))
                         (if _%pkg196525%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg196525%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns196515%_))
                         (newline)
                         (pretty-print _%code196499%_)
                         (if _%rt196527%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt196527%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi196434%_
                  (lambda (_%part196439%_)
                    (let* ((_%part196440196453%_ _%part196439%_)
                           (_%E196442196457%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part196440196453%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K196443196468%_
                            (lambda (_%code196460%_
                                     _%n196461%_
                                     _%phi196462%_
                                     _%phi-ctx196463%_)
                              (let ((_%code196466%_
                                     (let ((__tmp197543
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code196460%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp197543
                                        gx#current-expander-context
                                        _%phi-ctx196463%_
                                        gx#current-expander-phi
                                        _%phi196462%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx196431%_
                                  _%n196461%_
                                  '".scm")
                                 _%code196466%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part196440196453%_))
                          (let ((_%hd196444196471%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part196440196453%_)))
                                (_%tl196445196473%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part196440196453%_))))
                            (let ((_%phi-ctx196476%_ _%hd196444196471%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl196445196473%_))
                                  (let ((_%hd196446196478%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl196445196473%_)))
                                        (_%tl196447196480%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl196445196473%_))))
                                    (let ((_%phi196483%_ _%hd196446196478%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl196447196480%_))
                                          (let ((_%hd196448196485%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl196447196480%_)))
                                                (_%tl196449196487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl196447196480%_))))
                                            (let ((_%n196490%_
                                                   _%hd196448196485%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl196449196487%_))
                                                  (let ((_%hd196450196492%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl196449196487%_)))
                                                        (_%tl196451196494%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl196449196487%_))))
                                                    (let ((_%code196497%_
                                                           _%hd196450196492%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl196451196494%_))
                                                          (_%K196443196468%_
                                                           _%code196497%_
                                                           _%n196490%_
                                                           _%phi196483%_
                                                           _%phi-ctx196476%_)
                                                          (_%E196442196457%_))))
                                                  (_%E196442196457%_))))
                                          (_%E196442196457%_))))
                                  (_%E196442196457%_))))
                          (_%E196442196457%_))))))
          (let ((_g197544_ (gxc#generate-meta-code _%ctx196431%_)))
            (begin
              (let ((_g197545_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g197544_)
                           (##vector-length _g197544_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g197545_ 2)))
                    (error "Context expects 2 values" _g197545_)))
              (let ((_%ssi-code196436%_
                     (let () (declare (not safe)) (##vector-ref _g197544_ 0)))
                    (_%phi-code196437%_
                     (let () (declare (not safe)) (##vector-ref _g197544_ 1))))
                (begin
                  (_%compile-ssi196433%_ _%ssi-code196436%_)
                  (for-each _%compile-phi196434%_ _%phi-code196437%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx196413%_)
        (let* ((_%path196415%_
                (gxc#compile-output-file _%ctx196413%_ '#f '".ssxi.ss"))
               (_%code196417%_
                (let ((__tmp197546
                       (##structure-ref
                        _%ctx196413%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp197546)))
               (_%idstr196419%_
                (symbol->string
                 (##structure-ref
                  _%ctx196413%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg196427%_
                (let ((_%$e196421%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr196419%_ '#\/))))
                  (if _%$e196421%_
                      ((lambda (_%x196424%_)
                         (let ((__tmp197547
                                (substring _%idstr196419%_ '0 _%x196424%_)))
                           (declare (not safe))
                           (##string->symbol __tmp197547)))
                       _%$e196421%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path196415%_))
          (gxc#with-output-to-scheme-file
           _%path196415%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg196427%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg196427%_))
                 '#!void)
             (newline)
             (pretty-print _%code196417%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx196406%_)
        (let* ((_%state196408%_
                (let ((__obj197448
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj197448 _%ctx196406%_)
                  __obj197448))
               (_%ssi-code196410%_
                (let ((__tmp197548
                       (##structure-ref
                        _%ctx196406%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state196408%_
                   __tmp197548))))
          (values _%ssi-code196410%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state196408%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx196399%_)
        (let ((_%lifts196401%_ (box '())))
          (let ((__tmp197551
                 (lambda ()
                   (let ((_%code196404%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx196399%_))))
                     (if (null? (unbox _%lifts196401%_))
                         _%code196404%_
                         (cons 'begin
                               (let ((__tmp197553 (cons _%code196404%_ '()))
                                     (__tmp197552
                                      (reverse (unbox _%lifts196401%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp197553 __tmp197552)))))))
                (__tmp197550
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp197549
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp197551
             gxc#current-compile-lift
             _%lifts196401%_
             gxc#current-compile-marks
             __tmp197550
             gxc#current-compile-identifiers
             __tmp197549)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx196395%_)
        (let ((_%modules196397%_ (box '())))
          (let ((__tmp197554
                 (##structure-ref _%ctx196395%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules196397%_ __tmp197554))
          (reverse (unbox _%modules196397%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path196375%_ _%code196376%_ _%phi?196377%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path196375%_))
        (gxc#with-output-to-scheme-file
         _%path196375%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp197555
                                           (if _%phi?196377%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp197555)))))))
           (pretty-print _%code196376%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it196381%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path196375%_ _%phi?196377%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp197556
                         (cons 'compile-file (cons _%path196375%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it196381%_ __tmp197556))
                  (_%compile-it196381%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path196386%_ _%code196387%_)
        (let ((_%phi?196389%_ '#f))
          (gxc#compile-scm-file__%
           _%path196386%_
           _%code196387%_
           _%phi?196389%_))))
    (define gxc#compile-scm-file
      (lambda _g197558_
        (let ((_g197557_ (let () (declare (not safe)) (##length _g197558_))))
          (cond ((let () (declare (not safe)) (##fx= _g197557_ 2))
                 (apply gxc#compile-scm-file__0 _g197558_))
                ((let () (declare (not safe)) (##fx= _g197557_ 3))
                 (apply gxc#compile-scm-file__% _g197558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g197558_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?196276%_)
        (let _%lp196278%_ ((_%rest196280%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts196281%_ '()))
          (let* ((_%rest196282196302%_ _%rest196280%_)
                 (_%else196286196310%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts196281%_)))
                        (reverse _%opts196281%_)))))
            (let ((_%K196296196353%_
                   (lambda (_%rest196351%_)
                     (_%lp196278%_ _%rest196351%_ _%opts196281%_)))
                  (_%K196291196335%_
                   (lambda (_%rest196333%_)
                     (_%lp196278%_ _%rest196333%_ _%opts196281%_)))
                  (_%K196288196317%_
                   (lambda (_%rest196314%_ _%opt196315%_)
                     (_%lp196278%_
                      _%rest196314%_
                      (cons _%opt196315%_ _%opts196281%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest196282196302%_))
                  (let ((_%tl196298196358%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest196282196302%_)))
                        (_%hd196297196356%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest196282196302%_))))
                    (if (equal? _%hd196297196356%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl196298196358%_))
                            (let* ((_%tl196300196361%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl196298196358%_)))
                                   (_%rest196364%_ _%tl196300196361%_))
                              (_%K196296196353%_ _%rest196364%_))
                            (let ((_%opt196325%_ _%hd196297196356%_)
                                  (_%rest196327%_ _%tl196298196358%_))
                              (_%K196288196317%_
                               _%rest196327%_
                               _%opt196325%_)))
                        (if (equal? _%hd196297196356%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl196298196358%_))
                                (let* ((_%tl196295196343%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl196298196358%_)))
                                       (_%rest196346%_ _%tl196295196343%_))
                                  (_%K196291196335%_ _%rest196346%_))
                                (let ((_%opt196325%_ _%hd196297196356%_)
                                      (_%rest196327%_ _%tl196298196358%_))
                                  (_%K196288196317%_
                                   _%rest196327%_
                                   _%opt196325%_)))
                            (let ((_%opt196325%_ _%hd196297196356%_)
                                  (_%rest196327%_ _%tl196298196358%_))
                              (_%K196288196317%_
                               _%rest196327%_
                               _%opt196325%_)))))
                  (_%else196286196310%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?196370%_ '#f)) (gxc#gsc-link-options__% _%phi?196370%_))))
    (define gxc#gsc-link-options
      (lambda _g197560_
        (let ((_g197559_ (let () (declare (not safe)) (##length _g197560_))))
          (cond ((let () (declare (not safe)) (##fx= _g197559_ 0))
                 (apply gxc#gsc-link-options__0 _g197560_))
                ((let () (declare (not safe)) (##fx= _g197559_ 1))
                 (apply gxc#gsc-link-options__% _g197560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g197560_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords196125%_ _%static?196121196126%_ _%phi?196128%_)
        (let ((_%static?196130%_
               (if (eq? _%static?196121196126%_ absent-value)
                   '#f
                   _%static?196121196126%_)))
          (if _%phi?196128%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp196132%_ ((_%rest196134%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts196135%_ '()))
                (let* ((_%rest196136196162%_ _%rest196134%_)
                       (_%else196141196170%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts196135%_)))
                              (reverse! _%opts196135%_)))))
                  (let ((_%K196156196233%_
                         (lambda (_%rest196230%_ _%opt196231%_)
                           (if _%static?196130%_
                               (_%lp196132%_
                                _%rest196230%_
                                (cons _%opt196231%_
                                      (cons '"-cc-options" _%opts196135%_)))
                               (_%lp196132%_ _%rest196230%_ _%opts196135%_))))
                        (_%K196151196210%_
                         (lambda (_%rest196207%_ _%opt196208%_)
                           (_%lp196132%_
                            _%rest196207%_
                            (cons _%opt196208%_
                                  (cons '"-cc-options" _%opts196135%_)))))
                        (_%K196146196190%_
                         (lambda (_%rest196188%_)
                           (_%lp196132%_ _%rest196188%_ _%opts196135%_)))
                        (_%K196143196176%_
                         (lambda (_%rest196174%_)
                           (_%lp196132%_ _%rest196174%_ _%opts196135%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest196136196162%_))
                        (let ((_%tl196158196238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest196136196162%_)))
                              (_%hd196157196236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest196136196162%_))))
                          (if (equal? _%hd196157196236%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl196158196238%_))
                                  (let ((_%tl196160196243%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl196158196238%_)))
                                        (_%hd196159196241%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl196158196238%_))))
                                    (if (equal? _%hd196159196241%_ '"-Bstatic")
                                        (let ((_%opt196246%_
                                               _%hd196159196241%_)
                                              (_%rest196248%_
                                               _%tl196160196243%_))
                                          (_%K196156196233%_
                                           _%rest196248%_
                                           _%opt196246%_))
                                        (let ((_%opt196223%_
                                               _%hd196159196241%_)
                                              (_%rest196225%_
                                               _%tl196160196243%_))
                                          (_%K196151196210%_
                                           _%rest196225%_
                                           _%opt196223%_))))
                                  (let ((_%rest196182%_ _%tl196158196238%_))
                                    (_%K196143196176%_ _%rest196182%_)))
                              (if (equal? _%hd196157196236%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl196158196238%_))
                                      (let* ((_%tl196150196198%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl196158196238%_)))
                                             (_%rest196201%_
                                              _%tl196150196198%_))
                                        (_%K196146196190%_ _%rest196201%_))
                                      (let ((_%rest196182%_
                                             _%tl196158196238%_))
                                        (_%K196143196176%_ _%rest196182%_)))
                                  (let ((_%rest196182%_ _%tl196158196238%_))
                                    (_%K196143196176%_ _%rest196182%_)))))
                        (_%else196141196170%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords196253%_ _%static?196121196254%_)
        (let ((_%phi?196256%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords196253%_
           _%static?196121196254%_
           _%phi?196256%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g197562_
        (let ((_g197561_ (let () (declare (not safe)) (##length _g197562_))))
          (cond ((let () (declare (not safe)) (##fx= _g197561_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g197562_))
                ((let () (declare (not safe)) (##fx= _g197561_ 3))
                 (apply gxc#gsc-cc-options__%__% _g197562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g197562_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords196265%_ . _%args196266%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords196265%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords196265%_
                  'static:
                  absent-value))
               _%args196266%_)))
    (define gxc#gsc-cc-options
      (lambda _%args196122196272%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args196122196272%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords195970%_ _%static?195966195971%_ _%phi?195973%_)
        (let ((_%static?195975%_
               (if (eq? _%static?195966195971%_ absent-value)
                   '#f
                   _%static?195966195971%_)))
          (if _%phi?195973%_
              '()
              (let _%lp195977%_ ((_%rest195979%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts195980%_ '()))
                (let* ((_%rest195981196007%_ _%rest195979%_)
                       (_%else195986196015%_
                        (lambda () (reverse! _%opts195980%_))))
                  (let ((_%K196001196078%_
                         (lambda (_%rest196075%_ _%opt196076%_)
                           (if _%static?195975%_
                               (_%lp195977%_
                                _%rest196075%_
                                (cons _%opt196076%_
                                      (cons '"-ld-options" _%opts195980%_)))
                               (_%lp195977%_ _%rest196075%_ _%opts195980%_))))
                        (_%K195996196055%_
                         (lambda (_%rest196052%_ _%opt196053%_)
                           (_%lp195977%_
                            _%rest196052%_
                            (cons _%opt196053%_
                                  (cons '"-ld-options" _%opts195980%_)))))
                        (_%K195991196035%_
                         (lambda (_%rest196033%_)
                           (_%lp195977%_ _%rest196033%_ _%opts195980%_)))
                        (_%K195988196021%_
                         (lambda (_%rest196019%_)
                           (_%lp195977%_ _%rest196019%_ _%opts195980%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest195981196007%_))
                        (let ((_%tl196003196083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest195981196007%_)))
                              (_%hd196002196081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest195981196007%_))))
                          (if (equal? _%hd196002196081%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl196003196083%_))
                                  (let ((_%tl196005196088%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl196003196083%_)))
                                        (_%hd196004196086%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl196003196083%_))))
                                    (if (equal? _%hd196004196086%_ '"-static")
                                        (let ((_%opt196091%_
                                               _%hd196004196086%_)
                                              (_%rest196093%_
                                               _%tl196005196088%_))
                                          (_%K196001196078%_
                                           _%rest196093%_
                                           _%opt196091%_))
                                        (let ((_%opt196068%_
                                               _%hd196004196086%_)
                                              (_%rest196070%_
                                               _%tl196005196088%_))
                                          (_%K195996196055%_
                                           _%rest196070%_
                                           _%opt196068%_))))
                                  (let ((_%rest196027%_ _%tl196003196083%_))
                                    (_%K195988196021%_ _%rest196027%_)))
                              (if (equal? _%hd196002196081%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl196003196083%_))
                                      (let* ((_%tl195995196043%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl196003196083%_)))
                                             (_%rest196046%_
                                              _%tl195995196043%_))
                                        (_%K195991196035%_ _%rest196046%_))
                                      (let ((_%rest196027%_
                                             _%tl196003196083%_))
                                        (_%K195988196021%_ _%rest196027%_)))
                                  (let ((_%rest196027%_ _%tl196003196083%_))
                                    (_%K195988196021%_ _%rest196027%_)))))
                        (_%else195986196015%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords196098%_ _%static?195966196099%_)
        (let ((_%phi?196101%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords196098%_
           _%static?195966196099%_
           _%phi?196101%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g197564_
        (let ((_g197563_ (let () (declare (not safe)) (##length _g197564_))))
          (cond ((let () (declare (not safe)) (##fx= _g197563_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g197564_))
                ((let () (declare (not safe)) (##fx= _g197563_ 3))
                 (apply gxc#gsc-ld-options__%__% _g197564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g197564_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords196110%_ . _%args196111%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords196110%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords196110%_
                  'static:
                  absent-value))
               _%args196111%_)))
    (define gxc#gsc-ld-options
      (lambda _%args195967196117%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args195967196117%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir195961%_)
        (let ((_%user-staticdir195963%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir195961%_
                       '" -I "
                       _%user-staticdir195963%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp195873%_ ((_%rest195875%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts195876%_ '()))
          (let* ((_%rest195877195897%_ _%rest195875%_)
                 (_%else195881195905%_ (lambda () _%opts195876%_)))
            (let ((_%K195891195948%_
                   (lambda (_%rest195946%_)
                     (_%lp195873%_ _%rest195946%_ _%opts195876%_)))
                  (_%K195886195926%_
                   (lambda (_%rest195923%_ _%opt195924%_)
                     (_%lp195873%_
                      _%rest195923%_
                      (let ((__tmp197565
                             (let ((__tmp197566
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt195924%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp197566))))
                        (declare (not safe))
                        (##append _%opts195876%_ __tmp197565)))))
                  (_%K195883195911%_
                   (lambda (_%rest195909%_)
                     (_%lp195873%_ _%rest195909%_ _%opts195876%_))))
              (if (let () (declare (not safe)) (##pair? _%rest195877195897%_))
                  (let ((_%tl195893195953%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195877195897%_)))
                        (_%hd195892195951%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195877195897%_))))
                    (if (equal? _%hd195892195951%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl195893195953%_))
                            (let* ((_%tl195895195956%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl195893195953%_)))
                                   (_%rest195959%_ _%tl195895195956%_))
                              (_%K195891195948%_ _%rest195959%_))
                            (let ((_%rest195917%_ _%tl195893195953%_))
                              (_%K195883195911%_ _%rest195917%_)))
                        (if (equal? _%hd195892195951%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl195893195953%_))
                                (let ((_%tl195890195936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl195893195953%_)))
                                      (_%hd195889195934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl195893195953%_))))
                                  (let ((_%opt195939%_ _%hd195889195934%_)
                                        (_%rest195941%_ _%tl195890195936%_))
                                    (_%K195886195926%_
                                     _%rest195941%_
                                     _%opt195939%_)))
                                (let ((_%rest195917%_ _%tl195893195953%_))
                                  (_%K195883195911%_ _%rest195917%_)))
                            (let ((_%rest195917%_ _%tl195893195953%_))
                              (_%K195883195911%_ _%rest195917%_)))))
                  (_%else195881195905%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str195870%_)
        (not (let () (declare (not safe)) (string-empty? _%str195870%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path195863%_ _%phi?195864%_)
        (let ((_%gsc-link-opts195866%_
               (gxc#gsc-link-options__% _%phi?195864%_))
              (_%gsc-cc-opts195867%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?195864%_))
              (_%gsc-ld-opts195868%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?195864%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp197567
                  (let ((__tmp197568
                         (let ((__tmp197569 (cons _%path195863%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp197569
                            _%gsc-link-opts195866%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp197568 _%gsc-ld-opts195868%_))))
             (declare (not safe))
             (__foldr1 cons __tmp197567 _%gsc-cc-opts195867%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx195829%_ _%n195830%_ _%ext195831%_)
        (letrec ((_%module-relative-path195833%_
                  (lambda (_%ctx195861%_)
                    (path-strip-directory
                     (let ((__tmp197570
                            (##structure-ref
                             _%ctx195861%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp197570)))))
                 (_%module-source-directory195834%_
                  (lambda (_%ctx195857%_)
                    (path-directory
                     (let ((_%mpath195859%_
                            (##structure-ref
                             _%ctx195857%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath195859%_)
                           _%mpath195859%_
                           (last _%mpath195859%_))))))
                 (_%section-string195835%_
                  (lambda (_%n195851%_)
                    (if (number? _%n195851%_)
                        (number->string _%n195851%_)
                        (if (symbol? _%n195851%_)
                            (symbol->string _%n195851%_)
                            (if (string? _%n195851%_)
                                _%n195851%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n195851%_)))))))
                 (_%file-name195836%_
                  (lambda (_%path195849%_)
                    (if _%n195830%_
                        (string-append
                         _%path195849%_
                         '"~"
                         (_%section-string195835%_ _%n195830%_)
                         _%ext195831%_)
                        (string-append _%path195849%_ _%ext195831%_))))
                 (_%file-path195837%_
                  (lambda ()
                    (let ((_%$e195843%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e195843%_
                          ((lambda (_%outdir195846%_)
                             (path-expand
                              (_%file-name195836%_
                               (let ((__tmp197571
                                      (##structure-ref
                                       _%ctx195829%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp197571)))
                              _%outdir195846%_))
                           _%$e195843%_)
                          (path-expand
                           (_%file-name195836%_
                            (_%module-relative-path195833%_ _%ctx195829%_))
                           (_%module-source-directory195834%_
                            _%ctx195829%_)))))))
          (let ((_%path195839%_ (_%file-path195837%_)))
            (let ((__tmp197572
                   (lambda ()
                     (let ((__tmp197573 (path-directory _%path195839%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp197573)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp197572))
            _%path195839%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx195810%_)
        (letrec ((_%file-name195812%_
                  (lambda (_%id195827%_)
                    (let ((__tmp197574 (gxc#static-module-name _%id195827%_)))
                      (declare (not safe))
                      (##string-append __tmp197574 '".scm"))))
                 (_%file-path195813%_
                  (lambda ()
                    (let* ((_%file195819%_
                            (_%file-name195812%_
                             (##structure-ref
                              _%ctx195810%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e195821%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e195821%_
                          ((lambda (_%outdir195824%_)
                             (path-expand
                              _%file195819%_
                              (path-expand '"static" _%outdir195824%_)))
                           _%$e195821%_)
                          (path-expand _%file195819%_ '"static"))))))
          (let ((_%path195815%_ (_%file-path195813%_)))
            (let ((__tmp197575
                   (lambda ()
                     (let ((__tmp197576 (path-directory _%path195815%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp197576)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp197575))
            _%path195815%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx195803%_ _%opts195804%_)
        (let ((_%$e195806%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts195804%_))))
          (if _%$e195806%_
              (values _%$e195806%_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx195803%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr195793%_)
        (if (string? _%idstr195793%_)
            (let* ((_%str195796%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr195793%_)))
                   (_%strs195798%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str195796%_ '#\/))))
              (declare (not safe))
              (string-join _%strs195798%_ '"__"))
            (if (symbol? _%idstr195793%_)
                (gxc#static-module-name (symbol->string _%idstr195793%_))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr195793%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp197577
               (let ((__tmp197578 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp197578 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp197577))))
    (define gxc#invoke__%
      (lambda (_%@@keywords195757%_
               _%stdout-redirection195753195758%_
               _%stderr-redirection195754195760%_
               _%program195762%_
               _%args195763%_)
        (let* ((_%stdout-redirection195765%_
                (if (eq? _%stdout-redirection195753195758%_ absent-value)
                    '#f
                    _%stdout-redirection195753195758%_))
               (_%stderr-redirection195767%_
                (if (eq? _%stderr-redirection195754195760%_ absent-value)
                    '#f
                    _%stderr-redirection195754195760%_)))
          (let ((__tmp197579 (cons _%program195762%_ _%args195763%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp197579))
          (let* ((_%proc195769%_
                  (open-process
                   (cons 'path:
                         (cons _%program195762%_
                               (cons 'arguments:
                                     (cons _%args195763%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection195765%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection195767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output195774%_
                  (if (or _%stdout-redirection195765%_
                          _%stderr-redirection195767%_)
                      (read-line _%proc195769%_ '#f)
                      '#f))
                 (_%status195777%_ (process-status _%proc195769%_)))
            (let () (declare (not safe)) (##close-port _%proc195769%_))
            (if (zero? _%status195777%_)
                '#!void
                (begin
                  (display _%output195774%_)
                  (let ((__tmp197580 (cons _%program195762%_ _%args195763%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp197580
                     _%status195777%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords195782%_ . _%args195783%_)
        (apply gxc#invoke__%
               _%@@keywords195782%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords195782%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords195782%_
                  'stderr-redirection:
                  absent-value))
               _%args195783%_)))
    (define gxc#invoke
      (lambda _%args195755195789%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args195755195789%_)))))
