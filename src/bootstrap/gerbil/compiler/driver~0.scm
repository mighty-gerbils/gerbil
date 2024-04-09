(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712573437)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp194988 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp194988))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp194989 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp194989))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path194894%_ _%fun194895%_)
        (with-output-to-file
         (cons 'path: (cons _%path194894%_ gxc#scheme-file-settings))
         _%fun194895%_)))
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
      (lambda (_%gerbil-libdir194889%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir194889%_)))
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
      (lambda (_%dir194887%_) (delete-file-or-directory _%dir194887%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath194861%_ _%opts194862%_)
        (if (string? _%srcpath194861%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194861%_)))
        (let ((_%outdir194864%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194862%_)))
              (_%invoke-gsc?194865%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194862%_)))
              (_%gsc-options194866%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194862%_)))
              (_%keep-scm?194867%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194862%_)))
              (_%verbosity194868%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194862%_)))
              (_%optimize194869%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts194862%_)))
              (_%debug194870%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts194862%_)))
              (_%gen-ssxi194871%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts194862%_))))
          (if _%outdir194864%_
              (let ((__tmp194990
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194864%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194990))
              '#!void)
          (if _%optimize194869%_
              (let ((__tmp194991
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194991))
              '#!void)
          (let ((__tmp194994
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath194861%_))
                   (gxc#compile-top-module
                    (let ((__tmp194995
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath194861%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp194995)))))
                (__tmp194993 (gxc#compile-timestamp))
                (__tmp194992
                 (cons 'compile-module (cons _%srcpath194861%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194994
             gxc#current-compile-output-dir
             _%outdir194864%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194865%_
             gxc#current-compile-gsc-options
             _%gsc-options194866%_
             gxc#current-compile-keep-scm
             _%keep-scm?194867%_
             gxc#current-compile-verbose
             _%verbosity194868%_
             gxc#current-compile-optimize
             _%optimize194869%_
             gxc#current-compile-debug
             _%debug194870%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi194871%_
             gxc#current-compile-timestamp
             __tmp194993
             gxc#current-compile-context
             __tmp194992
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath194880%_)
        (let ((_%opts194882%_ '()))
          (gxc#compile-module__% _%srcpath194880%_ _%opts194882%_))))
    (define gxc#compile-module
      (lambda _g194997_
        (let ((_g194996_ (let () (declare (not safe)) (##length _g194997_))))
          (cond ((let () (declare (not safe)) (##fx= _g194996_ 1))
                 (apply gxc#compile-module__0 _g194997_))
                ((let () (declare (not safe)) (##fx= _g194996_ 2))
                 (apply gxc#compile-module__% _g194997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g194997_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath194837%_ _%opts194838%_)
        (if (string? _%srcpath194837%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194837%_)))
        (let ((_%outdir194840%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194838%_)))
              (_%invoke-gsc?194841%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194838%_)))
              (_%gsc-options194842%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194838%_)))
              (_%keep-scm?194843%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194838%_)))
              (_%verbosity194844%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194838%_)))
              (_%debug194845%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts194838%_))))
          (if _%outdir194840%_
              (let ((__tmp194998
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194840%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194998))
              '#!void)
          (let ((__tmp195001
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath194837%_))
                   (gxc#compile-executable-module
                    (let ((__tmp195002
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath194837%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp195002))
                    _%opts194838%_)))
                (__tmp195000 (gxc#compile-timestamp))
                (__tmp194999 (cons 'compile-exe (cons _%srcpath194837%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195001
             gxc#current-compile-output-dir
             _%outdir194840%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194841%_
             gxc#current-compile-gsc-options
             _%gsc-options194842%_
             gxc#current-compile-keep-scm
             _%keep-scm?194843%_
             gxc#current-compile-verbose
             _%verbosity194844%_
             gxc#current-compile-debug
             _%debug194845%_
             gxc#current-compile-timestamp
             __tmp195000
             gxc#current-compile-context
             __tmp194999
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath194853%_)
        (let ((_%opts194855%_ '()))
          (gxc#compile-exe__% _%srcpath194853%_ _%opts194855%_))))
    (define gxc#compile-exe
      (lambda _g195004_
        (let ((_g195003_ (let () (declare (not safe)) (##length _g195004_))))
          (cond ((let () (declare (not safe)) (##fx= _g195003_ 1))
                 (apply gxc#compile-exe__0 _g195004_))
                ((let () (declare (not safe)) (##fx= _g195003_ 2))
                 (apply gxc#compile-exe__% _g195004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g195004_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx194833%_ _%opts194834%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts194834%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx194833%_
             _%opts194834%_)
            (gxc#compile-executable-module/separate
             _%ctx194833%_
             _%opts194834%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194635%_ _%opts194636%_)
        (letrec ((_%generate-stub194638%_
                  (lambda (_%builtin-modules194829%_)
                    (let ((_%mod-main194831%_
                           (gxc#find-runtime-symbol _%ctx194635%_ 'main)))
                      (let ((__tmp195005
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules194829%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp195005))
                      (let ((__tmp195006
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main194831%_
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
                        (##write __tmp195006))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194639%_
                  (lambda (_%gerbil-libdir194827%_)
                    (let ((__tmp195007
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir194827%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp195007 read))))
                 (_%replace-extension194640%_
                  (lambda (_%path194824%_ _%ext194825%_)
                    (string-append
                     (path-strip-extension _%path194824%_)
                     _%ext194825%_)))
                 (_%userlib-module?194641%_
                  (lambda (_%ctx194822%_)
                    (if (not (_%exclude-module?194643%_ _%ctx194822%_))
                        (not (_%libgerbil-module?194642%_ _%ctx194822%_))
                        '#f)))
                 (_%libgerbil-module?194642%_
                  (lambda (_%ctx194815%_)
                    (let ((_%id-str194817%_
                           (symbol->string
                            (##structure-ref
                             _%ctx194815%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (_%exclude-module?194643%_ _%id-str194817%_))
                          (let ((_%$e194819%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str194817%_))))
                            (if _%$e194819%_
                                _%$e194819%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str194817%_))))
                          '#f))))
                 (_%exclude-module?194643%_
                  (lambda (_%ctx-or-str194811%_)
                    (let ((_%str194813%_
                           (if (string? _%ctx-or-str194811%_)
                               _%ctx-or-str194811%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str194811%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str194813%_))))
                 (_%not-file-empty?194644%_
                  (lambda (_%path194809%_)
                    (not (gxc#file-empty? _%path194809%_))))
                 (_%fold-libgerbil-runtime-scm194645%_
                  (lambda (_%gerbil-staticdir194802%_ _%libgerbil-scm194803%_)
                    (let ((_%gerbil-runtime-scm194807%_
                           (let ((__tmp195008
                                  (lambda (_%rtm194805%_)
                                    (path-expand
                                     (let ((__tmp195009
                                            (let ((__tmp195010
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm194805%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp195010
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp195009 '".scm"))
                                     _%gerbil-staticdir194802%_))))
                             (declare (not safe))
                             (##map __tmp195008 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates194646%_
                       (append _%gerbil-runtime-scm194807%_
                               _%libgerbil-scm194803%_)))))
                 (_%remove-duplicates194646%_
                  (lambda (_%strlst194762%_)
                    (let _%loop194764%_ ((_%rest194766%_ _%strlst194762%_)
                                         (_%result194767%_ '()))
                      (let* ((_%rest194768194776%_ _%rest194766%_)
                             (_%else194770194784%_
                              (lambda () (reverse! _%result194767%_)))
                             (_%K194772194790%_
                              (lambda (_%rest194787%_ _%path194788%_)
                                (if (member _%path194788%_ _%result194767%_)
                                    (_%loop194764%_
                                     _%rest194787%_
                                     _%result194767%_)
                                    (_%loop194764%_
                                     _%rest194787%_
                                     (cons _%path194788%_
                                           _%result194767%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest194768194776%_))
                            (let ((_%hd194773194793%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest194768194776%_)))
                                  (_%tl194774194795%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest194768194776%_))))
                              (let* ((_%path194798%_ _%hd194773194793%_)
                                     (_%rest194800%_ _%tl194774194795%_))
                                (_%K194772194790%_
                                 _%rest194800%_
                                 _%path194798%_)))
                            (_%else194770194784%_))))))
                 (_%compile-stub194647%_
                  (lambda (_%output-scm194654%_ _%output-bin194655%_)
                    (let* ((_%gerbil-home194657%_
                            (let ((__tmp195011
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195011)))
                           (_%gerbil-libdir194659%_
                            (path-expand '"lib" _%gerbil-home194657%_))
                           (_%gerbil-staticdir194661%_
                            (path-expand '"static" _%gerbil-libdir194659%_))
                           (_%tmp194663%_
                            (path-expand
                             (let ((__tmp195012
                                    (let ((__tmp195013
                                           (gxc#compile-timestamp-nanos)))
                                      (declare (not safe))
                                      (##number->string __tmp195013))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp195012))
                             '"/tmp"))
                           (_%tmp-path194667%_
                            (lambda (_%f194665%_)
                              (path-expand
                               (path-strip-directory _%f194665%_)
                               _%tmp194663%_)))
                           (_%deps194669%_
                            (gxc#find-runtime-module-deps _%ctx194635%_))
                           (_%libgerbil-deps194671%_
                            (filter _%libgerbil-module?194642%_
                                    _%deps194669%_))
                           (_%libgerbil-scm194673%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps194671%_)))
                           (_%libgerbil-scm194675%_
                            (_%fold-libgerbil-runtime-scm194645%_
                             _%gerbil-staticdir194661%_
                             _%libgerbil-scm194673%_))
                           (_%libgerbil-c194681%_
                            (map (lambda (_%g194676194678%_)
                                   (_%replace-extension194640%_
                                    _%g194676194678%_
                                    '".c"))
                                 _%libgerbil-scm194675%_))
                           (_%libgerbil-o194687%_
                            (map (lambda (_%g194682194684%_)
                                   (_%replace-extension194640%_
                                    _%g194682194684%_
                                    '".o"))
                                 _%libgerbil-scm194675%_))
                           (_%src-deps194689%_
                            (filter _%userlib-module?194641%_ _%deps194669%_))
                           (_%src-deps-scm194691%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps194689%_)))
                           (_%src-deps-scm194693%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194644%_
                               _%src-deps-scm194691%_)))
                           (_%src-deps-scm194695%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194693%_)))
                           (_%src-deps-c194701%_
                            (let ((__tmp195014
                                   (lambda (_%g194696194698%_)
                                     (_%replace-extension194640%_
                                      _%g194696194698%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp195014 _%src-deps-scm194695%_)))
                           (_%src-deps-o194707%_
                            (let ((__tmp195015
                                   (lambda (_%g194702194704%_)
                                     (_%replace-extension194640%_
                                      _%g194702194704%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp195015 _%src-deps-scm194695%_)))
                           (_%src-bin-scm194709%_
                            (gxc#find-static-module-file _%ctx194635%_))
                           (_%src-bin-scm194711%_
                            (path-expand _%src-bin-scm194709%_))
                           (_%src-bin-c194713%_
                            (_%replace-extension194640%_
                             _%src-bin-scm194711%_
                             '".c"))
                           (_%src-bin-o194715%_
                            (_%replace-extension194640%_
                             _%src-bin-scm194711%_
                             '".o"))
                           (_%output-bin194717%_
                            (path-expand _%output-bin194655%_))
                           (_%output-scm194719%_
                            (path-expand _%output-scm194654%_))
                           (_%output-c194721%_
                            (_%replace-extension194640%_
                             _%output-scm194719%_
                             '".c"))
                           (_%output-o194723%_
                            (_%replace-extension194640%_
                             _%output-scm194719%_
                             '".o"))
                           (_%output_-c194725%_
                            (_%replace-extension194640%_
                             _%output-scm194719%_
                             '"_.c"))
                           (_%output_-o194727%_
                            (_%replace-extension194640%_
                             _%output-scm194719%_
                             '"_.o"))
                           (_%gsc-link-opts194729%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts194731%_ (gxc#gsc-cc-options__0))
                           (_%gsc-static-opts194733%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir194661%_))
                           (_%output-ld-opts194735%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts194737%_
                            (_%get-libgerbil-ld-opts194639%_
                             _%gerbil-libdir194659%_))
                           (_%rpath194739%_
                            (gxc#gerbil-rpath _%gerbil-libdir194659%_))
                           (_%builtin-modules194743%_
                            (_%remove-duplicates194646%_
                             (let ((__tmp195016
                                    (let ((__tmp195018
                                           (lambda (_%mod194741%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod194741%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp195017
                                           (cons _%ctx194635%_
                                                 _%deps194669%_)))
                                      (declare (not safe))
                                      (##map __tmp195018 __tmp195017))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp195016)))))
                      (letrec ((_%compile-obj194746%_
                                (lambda (_%scm-path194753%_ _%c-path194754%_)
                                  (let ((_%o-path194756%_
                                         (_%replace-extension194640%_
                                          _%c-path194754%_
                                          '".o")))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##file-exists?
                                                _%o-path194756%_))
                                             (or (not _%scm-path194753%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (file-newer?
                                                    _%scm-path194753%_
                                                    _%o-path194756%_))))
                                        (let ((__tmp195019
                                               (lambda ()
                                                 (gxc#invoke__%
                                                  '#f
                                                  absent-value
                                                  absent-value
                                                  (gxc#gerbil-gsc)
                                                  (cons '"-obj"
                                                        (let ((__tmp195020
                                                               (let ((__tmp195021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%c-path194754%_ '())))
                         (declare (not safe))
                         (__foldr1
                          cons
                          __tmp195021
                          _%gsc-static-opts194733%_))))
                  (declare (not safe))
                  (__foldr1 cons __tmp195020 _%gsc-cc-opts194731%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (__spawn __tmp195019))
                                        '#f)))))
                        (let ((__tmp195022
                               (lambda ()
                                 (let ((__tmp195023
                                        (path-directory _%output-bin194717%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp195023)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp195022))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194719%_
                         (lambda ()
                           (_%generate-stub194638%_
                            _%builtin-modules194743%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (begin
                              (let ((__tmp195024
                                     (lambda ()
                                       (create-directory _%tmp194663%_))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp195024))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               (gxc#gerbil-gsc)
                               (cons '"-link"
                                     (let ((__tmp195025
                                            (let ((__tmp195026
                                                   (let ((__tmp195027
                                                          (cons _%src-bin-scm194711%_
                                                                (cons _%output-scm194719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp195027
                                                      _%src-deps-scm194695%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp195026
                                               _%libgerbil-c194681%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp195025
                                        _%gsc-link-opts194729%_))))
                              (let ((__tmp195031
                                     (lambda (_%maybe-thread194751%_)
                                       (if _%maybe-thread194751%_
                                           (gxc#join! _%maybe-thread194751%_)
                                           '#f)))
                                    (__tmp195028
                                     (map _%compile-obj194746%_
                                          (let ((__tmp195029
                                                 (cons _%src-bin-scm194711%_
                                                       (cons _%output-scm194719%_
                                                             (cons '#f '())))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195029
                                             _%src-deps-scm194695%_))
                                          (let ((__tmp195030
                                                 (cons _%src-bin-c194713%_
                                                       (cons _%output-c194721%_
                                                             (cons _%output_-c194725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195030
                                             _%src-deps-c194701%_)))))
                                (declare (not safe))
                                (##for-each __tmp195031 __tmp195028))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               (gxc#gerbil-gsc)
                               (cons '"-obj"
                                     (let ((__tmp195032
                                            (let ((__tmp195033
                                                   (let ((__tmp195034
                                                          (cons _%src-bin-c194713%_
                                                                (cons _%output-c194721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%output_-c194725%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp195034
                                                      _%src-deps-c194701%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp195033
                                               _%gsc-static-opts194733%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp195032
                                        _%gsc-cc-opts194731%_))))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               (gxc#gerbil-gcc)
                               (cons '"-w"
                                     (cons '"-o"
                                           (cons _%output-bin194717%_
                                                 (let ((__tmp195035
                                                        (cons _%src-bin-o194715%_
                                                              (cons _%output-o194723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output_-o194727%_
                                  (let ((__tmp195036
                                         (let ((__tmp195037
                                                (let ((__tmp195039
                                                       (cons '"-L"
                                                             (cons _%gerbil-libdir194659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"-lgambit" _%libgerbil-ld-opts194737%_))))
              (__tmp195038
               (if (gxc#gerbil-enable-shared?)
                   (cons _%rpath194739%_ '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp195039
                                                   __tmp195038))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp195037
                                            _%output-ld-opts194735%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     cons
                                     __tmp195036
                                     _%libgerbil-o194687%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp195035
                                                    _%src-deps-o194707%_))))))
                              (let ((__tmp195040
                                     (cons _%output-c194721%_
                                           (cons _%output_-c194725%_
                                                 (cons _%output-o194723%_
                                                       (cons _%output_-o194727%_
                                                             '()))))))
                                (declare (not safe))
                                (##for-each delete-file __tmp195040)))
                            '#!void))))))
          (let* ((_%output-bin194649%_
                  (gxc#compile-exe-output-file _%ctx194635%_ _%opts194636%_))
                 (_%output-scm194651%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194649%_ '"__exe.scm"))))
            (_%compile-stub194647%_ _%output-scm194651%_ _%output-bin194649%_)
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194651%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194460%_ _%opts194461%_)
        (letrec ((_%reset-declare194463%_
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
                 (_%generate-stub194464%_
                  (lambda (_%deps194626%_)
                    (let ((_%mod-main194628%_
                           (gxc#find-runtime-symbol _%ctx194460%_ 'main))
                          (_%reset-decl194629%_ (_%reset-declare194463%_))
                          (_%user-decl194630%_ (_%user-declare194465%_)))
                      (for-each
                       (lambda (_%dep194632%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194629%_))
                         (newline)
                         (if _%user-decl194630%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194630%_))
                               (newline))
                             '#!void)
                         (let ((__tmp195041
                                (cons 'include (cons _%dep194632%_ '()))))
                           (declare (not safe))
                           (##write __tmp195041))
                         (newline))
                       _%deps194626%_)
                      (let ((__tmp195042
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp195042))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194465%_
                  (lambda ()
                    (let* ((_%gsc-opts194531%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194461%_)))
                           (_%gsc-prelude194533%_
                            (if _%gsc-opts194531%_
                                (member '"-prelude" _%gsc-opts194531%_)
                                '#f))
                           (_%gsc-prelude194535%_
                            (if _%gsc-prelude194533%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194533%_)))
                                '#f)))
                      (let _%lp194538%_ ((_%rest194540%_
                                          (cons _%gsc-prelude194535%_ '()))
                                         (_%user-decls194541%_ '()))
                        (let* ((_%rest194542194550%_ _%rest194540%_)
                               (_%else194544194558%_
                                (lambda ()
                                  (if (null? _%user-decls194541%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194541%_)))))
                               (_%K194546194614%_
                                (lambda (_%rest194561%_ _%expr194562%_)
                                  (let* ((_%expr194563194575%_ _%expr194562%_)
                                         (_%else194566194583%_
                                          (lambda ()
                                            (_%lp194538%_
                                             _%rest194561%_
                                             _%user-decls194541%_))))
                                    (let ((_%K194571194604%_
                                           (lambda (_%decls194602%_)
                                             (_%lp194538%_
                                              _%rest194561%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls194541%_
                                                 _%decls194602%_)))))
                                          (_%K194568194589%_
                                           (lambda (_%exprs194587%_)
                                             (_%lp194538%_
                                              (append _%exprs194587%_
                                                      _%rest194561%_)
                                              _%user-decls194541%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194563194575%_))
                                          (let ((_%tl194573194609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194563194575%_)))
                                                (_%hd194572194607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194563194575%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194572194607%_
                                                         'declare))
                                                (let ((_%decls194612%_
                                                       _%tl194573194609%_))
                                                  (_%K194571194604%_
                                                   _%decls194612%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194572194607%_
                                                             'begin))
                                                    (let ((_%exprs194597%_
                                                           _%tl194573194609%_))
                                                      (_%K194568194589%_
                                                       _%exprs194597%_))
                                                    (_%else194566194583%_))))
                                          (_%else194566194583%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194542194550%_))
                              (let ((_%hd194547194617%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194542194550%_)))
                                    (_%tl194548194619%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194542194550%_))))
                                (let* ((_%expr194622%_ _%hd194547194617%_)
                                       (_%rest194624%_ _%tl194548194619%_))
                                  (_%K194546194614%_
                                   _%rest194624%_
                                   _%expr194622%_)))
                              (_%else194544194558%_)))))))
                 (_%compile-stub194466%_
                  (lambda (_%output-scm194473%_ _%output-bin194474%_)
                    (let* ((_%gerbil-home194476%_
                            (let ((__tmp195043
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195043)))
                           (_%gerbil-libdir194478%_
                            (path-expand '"lib" _%gerbil-home194476%_))
                           (_%runtime194480%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194482%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194476%_))
                           (_%include-gambit-sharp194484%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194482%_
                               '"\")")))
                           (_%bin-scm194486%_
                            (gxc#find-static-module-file _%ctx194460%_))
                           (_%deps194488%_
                            (gxc#find-runtime-module-deps _%ctx194460%_))
                           (_%deps194490%_
                            (map gxc#find-static-module-file _%deps194488%_))
                           (_%deps194495%_
                            (let ((__tmp195044
                                   (lambda (_%$obj194492%_)
                                     (not (gxc#file-empty? _%$obj194492%_)))))
                              (declare (not safe))
                              (##filter __tmp195044 _%deps194490%_)))
                           (_%deps194499%_
                            (let ((__tmp195045
                                   (lambda (_%f194497%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f194497%_
                                             _%runtime194480%_))))))
                              (declare (not safe))
                              (##filter __tmp195045 _%deps194495%_)))
                           (_%output-base194501%_
                            (let ((__tmp195046
                                   (path-strip-extension
                                    _%output-scm194473%_)))
                              (declare (not safe))
                              (##string-append __tmp195046)))
                           (_%output-c194503%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194501%_ '".c")))
                           (_%output-o194505%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194501%_ '".o")))
                           (_%output-c_194507%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194501%_ '"_.c")))
                           (_%output-o_194509%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194501%_ '"_.o")))
                           (_%gsc-link-opts194511%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts194513%_ (gxc#gsc-cc-options__0))
                           (_%gsc-static-opts194515%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir194478%_)))
                           (_%output-ld-opts194517%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros194519%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194484%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194484%_
                                            '()))))
                           (_%gsc-link-opts194521%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194511%_
                               _%gsc-gx-macros194519%_)))
                           (_%rpath194523%_
                            (gxc#gerbil-rpath _%gerbil-libdir194478%_))
                           (_%default-ld-options194525%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp195047
                             (lambda ()
                               (let ((__tmp195048
                                      (path-directory _%output-bin194474%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp195048)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp195047))
                      (gxc#with-output-to-scheme-file
                       _%output-scm194473%_
                       (lambda ()
                         (_%generate-stub194464%_
                          (let ((__tmp195049
                                 (let ((__tmp195050
                                        (cons _%bin-scm194486%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp195050
                                    _%deps194499%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp195049 _%runtime194480%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (gxc#invoke__%
                             '#f
                             absent-value
                             absent-value
                             (gxc#gerbil-gsc)
                             (cons '"-link"
                                   (cons '"-o"
                                         (cons _%output-c_194507%_
                                               (let ((__tmp195051
                                                      (cons _%output-scm194473%_
                                                            '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp195051
                                                  _%gsc-link-opts194521%_))))))
                            (gxc#invoke__%
                             '#f
                             absent-value
                             absent-value
                             (gxc#gerbil-gsc)
                             (cons '"-obj"
                                   (let ((__tmp195052
                                          (let ((__tmp195053
                                                 (cons _%output-c194503%_
                                                       (cons _%output-c_194507%_
                                                             '()))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195053
                                             _%gsc-static-opts194515%_))))
                                     (declare (not safe))
                                     (__foldr1
                                      cons
                                      __tmp195052
                                      _%gsc-cc-opts194513%_))))
                            (gxc#invoke__%
                             '#f
                             absent-value
                             absent-value
                             (gxc#gerbil-gcc)
                             (cons '"-w"
                                   (cons '"-o"
                                         (cons _%output-bin194474%_
                                               (cons _%output-o194505%_
                                                     (cons _%output-o_194509%_
                                                           (let ((__tmp195054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195056
                                 (cons '"-L"
                                       (cons _%gerbil-libdir194478%_
                                             (cons '"-lgambit"
                                                   _%default-ld-options194525%_))))
                                (__tmp195055
                                 (if (gxc#gerbil-enable-shared?)
                                     (cons _%rpath194523%_ '())
                                     '())))
                            (declare (not safe))
                            (__foldr1 cons __tmp195056 __tmp195055))))
                     (declare (not safe))
                     (__foldr1
                      cons
                      __tmp195054
                      _%output-ld-opts194517%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '#!void)))))
          (let* ((_%output-bin194468%_
                  (gxc#compile-exe-output-file _%ctx194460%_ _%opts194461%_))
                 (_%output-scm194470%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194468%_ '"__exe.scm"))))
            (_%compile-stub194466%_ _%output-scm194470%_ _%output-bin194468%_)
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194470%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx194409%_ _%id194410%_)
        (let ((_%$e194456%_
               (let ((__tmp195058
                      (lambda (_%e194411194413%_)
                        (let* ((_%g194415194425%_ _%e194411194413%_)
                               (_%else194417194433%_ (lambda () '#f))
                               (_%K194419194437%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194415194425%_
                                 'gx#module-export::t))
                              (let* ((_%e194420194440%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194415194425%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194421194443%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194415194425%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194422194446%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194415194425%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194422194446%_ '0))
                                    (let ((_%e194423194449%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194415194425%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194451194453%_)
                                             (eq? _%g194451194453%_
                                                  _%id194410%_))
                                           _%e194423194449%_)
                                          (_%K194419194437%_)
                                          (_%else194417194433%_)))
                                    (_%else194417194433%_)))
                              (_%else194417194433%_)))))
                     (__tmp195057
                      (##structure-ref
                       _%ctx194409%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp195058 __tmp195057))))
          (if _%$e194456%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194456%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx194400%_ _%id194401%_)
        (let ((_%$e194403%_
               (gxc#find-export-binding _%ctx194400%_ _%id194401%_)))
          (if _%$e194403%_
              ((lambda (_%bind194406%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind194406%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id194401%_)))
                 (##structure-ref _%bind194406%_ '1 gx#binding::t '#f))
               _%$e194403%_)
              (let ((__tmp195059
                     (##structure-ref
                      _%ctx194400%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp195059
                 _%id194401%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx194266%_)
        (letrec* ((_%ht194268%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template194269%_
                   (lambda (_%in194345%_ _%phi194346%_)
                     (let ((_%iphi194348%_
                            (fx+ _%phi194346%_
                                 (##direct-structure-ref
                                  _%in194345%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports194349%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in194345%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp194351%_ ((_%rest194353%_ _%imports194349%_)
                                          (_%r194354%_ '()))
                         (let* ((_%rest194355194363%_ _%rest194353%_)
                                (_%else194357194371%_ (lambda () _%r194354%_))
                                (_%K194359194388%_
                                 (lambda (_%rest194374%_ _%in194375%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in194375%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi194348%_))
                                           (_%lp194351%_
                                            _%rest194374%_
                                            (cons _%in194375%_ _%r194354%_))
                                           (_%lp194351%_
                                            _%rest194374%_
                                            _%r194354%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in194375%_
                                              'gx#module-import::t))
                                           (let ((_%iphi194379%_
                                                  (fx+ _%phi194346%_
                                                       (##direct-structure-ref
                                                        _%in194375%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi194379%_))
                                                 (_%lp194351%_
                                                  _%rest194374%_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _%in194375%_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r194354%_))
                                                 (_%lp194351%_
                                                  _%rest194374%_
                                                  _%r194354%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194375%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi194382%_
                                                      (fx+ _%iphi194348%_
                                                           (##direct-structure-ref
                                                            _%in194375%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi194382%_))
                                                     (_%lp194351%_
                                                      _%rest194374%_
                                                      (cons (##direct-structure-ref
                                                             _%in194375%_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _%r194354%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi194382%_))
                                                         (_%lp194351%_
                                                          _%rest194374%_
                                                          (let ((__tmp195060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template194269%_
                          _%in194375%_
                          _%iphi194348%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r194354%_ __tmp195060)))
                 (_%lp194351%_ _%rest194374%_ _%r194354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp194351%_
                                                _%rest194374%_
                                                _%r194354%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest194355194363%_))
                               (let ((_%hd194360194391%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest194355194363%_)))
                                     (_%tl194361194393%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest194355194363%_))))
                                 (let* ((_%in194396%_ _%hd194360194391%_)
                                        (_%rest194398%_ _%tl194361194393%_))
                                   (_%K194359194388%_
                                    _%rest194398%_
                                    _%in194396%_)))
                               (_%else194357194371%_)))))))
                  (_%find-deps194270%_
                   (lambda (_%rest194278%_ _%deps194279%_)
                     (let* ((_%rest194280194288%_ _%rest194278%_)
                            (_%else194282194296%_ (lambda () _%deps194279%_))
                            (_%K194284194333%_
                             (lambda (_%rest194299%_ _%hd194300%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd194300%_
                                      'gx#module-context::t))
                                   (let ((_%id194303%_
                                          (##structure-ref
                                           _%hd194300%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports194304%_
                                          (##structure-ref
                                           _%hd194300%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht194268%_
                                            _%id194303%_))
                                         (_%find-deps194270%_
                                          _%rest194299%_
                                          _%deps194279%_)
                                         (let ((_%$e194307%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd194300%_))))
                                           (if _%$e194307%_
                                               ((lambda (_%pre194310%_)
                                                  (let ((_%xdeps194312%_
                                                         (_%find-deps194270%_
                                                          (cons _%pre194310%_
                                                                _%imports194304%_)
                                                          _%deps194279%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht194268%_
                                                       _%id194303%_
                                                       _%hd194300%_))
                                                    (_%find-deps194270%_
                                                     _%rest194299%_
                                                     (cons _%hd194300%_
                                                           _%xdeps194312%_))))
                                                _%$e194307%_)
                                               (let ((_%xdeps194315%_
                                                      (_%find-deps194270%_
                                                       _%imports194304%_
                                                       _%deps194279%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht194268%_
                                                    _%id194303%_
                                                    _%hd194300%_))
                                                 (_%find-deps194270%_
                                                  _%rest194299%_
                                                  (cons _%hd194300%_
                                                        _%xdeps194315%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd194300%_
                                          'gx#prelude-context::t))
                                       (let ((_%id194318%_
                                              (##structure-ref
                                               _%hd194300%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht194268%_
                                                _%id194318%_))
                                             (_%find-deps194270%_
                                              _%rest194299%_
                                              _%deps194279%_)
                                             (let ((_%xdeps194322%_
                                                    (_%find-deps194270%_
                                                     (##structure-ref
                                                      _%hd194300%_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _%deps194279%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht194268%_
                                                      _%id194318%_))
                                                   (_%find-deps194270%_
                                                    _%rest194299%_
                                                    _%xdeps194322%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht194268%_
                                                        _%id194318%_
                                                        _%hd194300%_))
                                                     (_%find-deps194270%_
                                                      _%rest194299%_
                                                      (cons _%hd194300%_
                                                            _%xdeps194322%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd194300%_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _%hd194300%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_%find-deps194270%_
                                                (cons (##direct-structure-ref
                                                       _%hd194300%_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _%rest194299%_)
                                                _%deps194279%_)
                                               (_%find-deps194270%_
                                                _%rest194299%_
                                                _%deps194279%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd194300%_
                                                  'gx#module-export::t))
                                               (_%find-deps194270%_
                                                (cons (##direct-structure-ref
                                                       _%hd194300%_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _%rest194299%_)
                                                _%deps194279%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd194300%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd194300%_
                         '2
                         gx#import-set::t
                         '#f))
               (_%find-deps194270%_
                (cons (##direct-structure-ref
                       _%hd194300%_
                       '1
                       gx#import-set::t
                       '#f)
                      _%rest194299%_)
                _%deps194279%_)
               (if (fxpositive?
                    (##direct-structure-ref
                     _%hd194300%_
                     '2
                     gx#import-set::t
                     '#f))
                   (let ((_%xdeps194329%_
                          (_%import-set-template194269%_ _%hd194300%_ '0)))
                     (_%find-deps194270%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest194299%_ _%xdeps194329%_))
                      _%deps194279%_))
                   (_%find-deps194270%_ _%rest194299%_ _%deps194279%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd194300%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest194280194288%_))
                           (let ((_%hd194285194336%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest194280194288%_)))
                                 (_%tl194286194338%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest194280194288%_))))
                             (let* ((_%hd194341%_ _%hd194285194336%_)
                                    (_%rest194343%_ _%tl194286194338%_))
                               (_%K194284194333%_
                                _%rest194343%_
                                _%hd194341%_)))
                           (_%else194282194296%_))))))
          (let ((__tmp195061
                 (filter gx#expander-context-id
                         (_%find-deps194270%_
                          (let ((_%$e194272%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx194266%_))))
                            (if _%$e194272%_
                                ((lambda (_%pre194275%_)
                                   (cons _%pre194275%_
                                         (##structure-ref
                                          _%ctx194266%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e194272%_)
                                (##structure-ref
                                 _%ctx194266%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp195061)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx194196%_)
        (let* ((_%context-id194198%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx194196%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx194196%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx194196%_)))
               (_%scm194200%_
                (let ((__tmp195062
                       (gxc#static-module-name _%context-id194198%_)))
                  (declare (not safe))
                  (##string-append __tmp195062 '".scm")))
               (_%dirs194202%_ (let () (declare (not safe)) (load-path)))
               (_%dirs194208%_
                (let ((_%user-libpath194204%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath194204%_
                      (let ((_%user-libpath194206%_
                             (path-expand '"lib" _%user-libpath194204%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath194206%_ _%dirs194202%_))
                            _%dirs194202%_
                            (cons _%user-libpath194206%_ _%dirs194202%_)))
                      _%dirs194202%_)))
               (_%dirs194218%_
                (let ((_%$e194210%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e194210%_
                      ((lambda (_%g194212194214%_)
                         (cons _%g194212194214%_ _%dirs194208%_))
                       _%$e194210%_)
                      _%dirs194208%_)))
               (_%dirs194224%_
                (map (lambda (_%g194219194221%_)
                       (path-expand '"static" _%g194219194221%_))
                     _%dirs194218%_)))
          (let _%lp194227%_ ((_%rest194229%_ _%dirs194224%_))
            (let* ((_%rest194230194238%_ _%rest194229%_)
                   (_%else194232194246%_
                    (lambda ()
                      (let ((__tmp195063
                             (##structure-ref
                              _%ctx194196%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp195063
                         _%scm194200%_))))
                   (_%K194234194254%_
                    (lambda (_%rest194249%_ _%dir194250%_)
                      (let ((_%path194252%_
                             (path-expand _%scm194200%_ _%dir194250%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194252%_))
                            _%path194252%_
                            (_%lp194227%_ _%rest194249%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest194230194238%_))
                  (let ((_%hd194235194257%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194230194238%_)))
                        (_%tl194236194259%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194230194238%_))))
                    (let* ((_%dir194262%_ _%hd194235194257%_)
                           (_%rest194264%_ _%tl194236194259%_))
                      (_%K194234194254%_ _%rest194264%_ _%dir194262%_)))
                  (_%else194232194246%_)))))))
    (define gxc#file-empty?
      (lambda (_%path194194%_)
        (zero? (let ((__tmp195064 (file-info _%path194194%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp195064)))))
    (define gxc#compile-top-module
      (lambda (_%ctx194183%_)
        (let ((__tmp195068
               (lambda ()
                 (let ((__tmp195069
                        (##structure-ref
                         _%ctx194183%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp195069))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp195070
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx194183%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp195070))
                     '#!void)
                 (gxc#collect-bindings _%ctx194183%_)
                 (if (null? (gxc#lift-nested-modules _%ctx194183%_))
                     (let* ((_%thr1194188%_
                             (let ((__tmp195071
                                    (lambda ()
                                      (gxc#compile-runtime-code
                                       _%ctx194183%_))))
                               (declare (not safe))
                               (__spawn __tmp195071)))
                            (_%thr2194191%_
                             (let ((__tmp195072
                                    (lambda ()
                                      (gxc#compile-meta-code _%ctx194183%_))))
                               (declare (not safe))
                               (__spawn __tmp195072))))
                       (gxc#join! _%thr1194188%_)
                       (gxc#join! _%thr2194191%_))
                     (begin
                       (gxc#compile-runtime-code _%ctx194183%_)
                       (gxc#compile-meta-code _%ctx194183%_)))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx194183%_)
                     '#!void)))
              (__tmp195067
               (let ((__obj194986
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj194986)
                 __obj194986))
              (__tmp195066 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp195065
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
           __tmp195068
           gx#current-expander-context
           _%ctx194183%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp195067
           gxc#current-compile-runtime-sections
           __tmp195066
           gxc#current-compile-runtime-names
           __tmp195065))))
    (define gxc#collect-bindings
      (lambda (_%ctx194181%_)
        (let ((__tmp195073
               (##structure-ref _%ctx194181%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp195073))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx194125%_)
        (letrec ((_%compile1194127%_
                  (lambda (_%ctx194168%_)
                    (let* ((_%code194170%_
                            (##structure-ref
                             _%ctx194168%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt194174%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code194170%_))
                                (let ((_%idstr194172%_
                                       (let ((__tmp195074
                                              (##structure-ref
                                               _%ctx194168%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp195074))))
                                  (declare (not safe))
                                  (##string-append _%idstr194172%_ '"~0"))
                                '#f)))
                      (if _%rt194174%_
                          (let ()
                            (let ((__tmp195075
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp195075
                               _%ctx194168%_
                               _%rt194174%_))
                            (_%generate-runtime-code194129%_
                             _%ctx194168%_
                             _%code194170%_))
                          (let ((_%path194179%_
                                 (gxc#compile-static-output-file
                                  _%ctx194168%_)))
                            (gxc#with-output-to-scheme-file
                             _%path194179%_
                             void)))
                      (_%generate-loader-code194130%_
                       _%ctx194168%_
                       _%code194170%_
                       _%rt194174%_))))
                 (_%context-timestamp194128%_
                  (lambda (_%ctx194166%_)
                    (let ((__tmp195076
                           (let ((__tmp195077
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx194166%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp195077 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp195076))))
                 (_%generate-runtime-code194129%_
                  (lambda (_%ctx194148%_ _%code194149%_)
                    (let* ((_%lifts194151%_ (box '()))
                           (_%runtime-code194154%_
                            (let ((__tmp195080
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code194149%_))))
                                  (__tmp195079
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp195078
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp195080
                               gx#current-expander-context
                               _%ctx194148%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts194151%_
                               gxc#current-compile-marks
                               __tmp195079
                               gxc#current-compile-identifiers
                               __tmp195078)))
                           (_%runtime-code194156%_
                            (if (null? (unbox _%lifts194151%_))
                                _%runtime-code194154%_
                                (cons 'begin
                                      (let ((__tmp195082
                                             (cons _%runtime-code194154%_ '()))
                                            (__tmp195081
                                             (reverse (unbox _%lifts194151%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195082
                                         __tmp195081)))))
                           (_%runtime-code194158%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (_%context-timestamp194128%_
                                                     _%ctx194148%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code194156%_ '()))))
                           (_%scm0194160%_
                            (gxc#compile-output-file _%ctx194148%_ '0 '".scm"))
                           (_%scms194163%_
                            (gxc#compile-static-output-file _%ctx194148%_)))
                      (let ((__tmp195083
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scm0194160%_
                                _%runtime-code194158%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp195083
                         gxc#current-compile-keep-scm
                         '#t))
                      (if (file-exists? _%scms194163%_)
                          (delete-file _%scms194163%_)
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"copy static module "
                         _%scm0194160%_
                         '" => "
                         _%scms194163%_))
                      (copy-file _%scm0194160%_ _%scms194163%_)
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-keep-scm))
                          '#!void
                          (delete-file _%scm0194160%_)))))
                 (_%generate-loader-code194130%_
                  (lambda (_%ctx194137%_ _%code194138%_ _%rt194139%_)
                    (let* ((_%loader-code194142%_
                            (let ((__tmp195084
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code194138%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp195084
                               gx#current-expander-context
                               _%ctx194137%_)))
                           (_%loader-code194144%_
                            (if _%rt194139%_
                                (cons 'begin
                                      (cons _%loader-code194142%_
                                            (cons (cons 'load-module
                                                        (cons _%rt194139%_
                                                              '()))
                                                  '())))
                                _%loader-code194142%_))
                           (__tmp195085
                            (lambda ()
                              (gxc#compile-scm-file__0
                               (gxc#compile-output-file
                                _%ctx194137%_
                                '#f
                                '".scm")
                               _%loader-code194144%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp195085
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let* ((_%all-modules194132%_
                  (cons _%ctx194125%_ (gxc#lift-nested-modules _%ctx194125%_)))
                 (__tmp195086
                  (lambda (_%ctx194134%_)
                    (let ((__tmp195087
                           (lambda () (_%compile1194127%_ _%ctx194134%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp195087
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp195086 _%all-modules194132%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx194020%_)
        (letrec ((_%compile-ssi194022%_
                  (lambda (_%code194093%_)
                    (let* ((_%path194095%_
                            (gxc#compile-output-file
                             _%ctx194020%_
                             '#f
                             '".ssi"))
                           (_%prelude194107%_
                            (let* ((_%super194097%_
                                    (##structure-ref
                                     _%ctx194020%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e194099%_
                                    (##structure-ref
                                     _%super194097%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e194099%_
                                  ((lambda (_%g194101194103%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g194101194103%_)))
                                   _%$e194099%_)
                                  ':<root>)))
                           (_%ns194109%_
                            (##structure-ref
                             _%ctx194020%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr194111%_
                            (symbol->string
                             (##structure-ref
                              _%ctx194020%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg194119%_
                            (let ((_%$e194113%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr194111%_ '#\/))))
                              (if _%$e194113%_
                                  ((lambda (_%x194116%_)
                                     (let ((__tmp195088
                                            (substring
                                             _%idstr194111%_
                                             '0
                                             _%x194116%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp195088)))
                                   _%$e194113%_)
                                  '#f)))
                           (_%rt194121%_
                            (let ((__tmp195089
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp195089 _%ctx194020%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path194095%_))
                      (gxc#with-output-to-scheme-file
                       _%path194095%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude194107%_))
                         (if _%pkg194119%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg194119%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns194109%_))
                         (newline)
                         (pretty-print _%code194093%_)
                         (if _%rt194121%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt194121%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi194023%_
                  (lambda (_%part194033%_)
                    (let* ((_%part194034194047%_ _%part194033%_)
                           (_%E194036194051%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part194034194047%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K194037194062%_
                            (lambda (_%code194054%_
                                     _%n194055%_
                                     _%phi194056%_
                                     _%phi-ctx194057%_)
                              (let ((_%code194060%_
                                     (let ((__tmp195090
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code194054%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp195090
                                        gx#current-expander-context
                                        _%phi-ctx194057%_
                                        gx#current-expander-phi
                                        _%phi194056%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx194020%_
                                  _%n194055%_
                                  '".scm")
                                 _%code194060%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part194034194047%_))
                          (let ((_%hd194038194065%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part194034194047%_)))
                                (_%tl194039194067%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part194034194047%_))))
                            (let ((_%phi-ctx194070%_ _%hd194038194065%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194039194067%_))
                                  (let ((_%hd194040194072%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194039194067%_)))
                                        (_%tl194041194074%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194039194067%_))))
                                    (let ((_%phi194077%_ _%hd194040194072%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl194041194074%_))
                                          (let ((_%hd194042194079%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl194041194074%_)))
                                                (_%tl194043194081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl194041194074%_))))
                                            (let ((_%n194084%_
                                                   _%hd194042194079%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl194043194081%_))
                                                  (let ((_%hd194044194086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl194043194081%_)))
                                                        (_%tl194045194088%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl194043194081%_))))
                                                    (let ((_%code194091%_
                                                           _%hd194044194086%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl194045194088%_))
                                                          (_%K194037194062%_
                                                           _%code194091%_
                                                           _%n194084%_
                                                           _%phi194077%_
                                                           _%phi-ctx194070%_)
                                                          (_%E194036194051%_))))
                                                  (_%E194036194051%_))))
                                          (_%E194036194051%_))))
                                  (_%E194036194051%_))))
                          (_%E194036194051%_))))))
          (let ((_g195091_ (gxc#generate-meta-code _%ctx194020%_)))
            (begin
              (let ((_g195092_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g195091_)
                           (##vector-length _g195091_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g195092_ 2)))
                    (error "Context expects 2 values" _g195092_)))
              (let ((_%ssi-code194025%_
                     (let () (declare (not safe)) (##vector-ref _g195091_ 0)))
                    (_%phi-code194026%_
                     (let () (declare (not safe)) (##vector-ref _g195091_ 1))))
                (begin
                  (_%compile-ssi194022%_ _%ssi-code194025%_)
                  (let ((_%threads194031%_
                         (map (lambda (_%code194028%_)
                                (let ((__tmp195093
                                       (lambda ()
                                         (_%compile-phi194023%_
                                          _%code194028%_))))
                                  (declare (not safe))
                                  (__spawn __tmp195093)))
                              _%phi-code194026%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads194031%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx194002%_)
        (let* ((_%path194004%_
                (gxc#compile-output-file _%ctx194002%_ '#f '".ssxi.ss"))
               (_%code194006%_
                (let ((__tmp195094
                       (##structure-ref
                        _%ctx194002%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp195094)))
               (_%idstr194008%_
                (symbol->string
                 (##structure-ref
                  _%ctx194002%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg194016%_
                (let ((_%$e194010%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr194008%_ '#\/))))
                  (if _%$e194010%_
                      ((lambda (_%x194013%_)
                         (let ((__tmp195095
                                (substring _%idstr194008%_ '0 _%x194013%_)))
                           (declare (not safe))
                           (##string->symbol __tmp195095)))
                       _%$e194010%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path194004%_))
          (gxc#with-output-to-scheme-file
           _%path194004%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg194016%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg194016%_))
                 '#!void)
             (newline)
             (pretty-print _%code194006%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx193995%_)
        (let* ((_%state193997%_
                (let ((__obj194987
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj194987 _%ctx193995%_)
                  __obj194987))
               (_%ssi-code193999%_
                (let ((__tmp195096
                       (##structure-ref
                        _%ctx193995%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state193997%_
                   __tmp195096))))
          (values _%ssi-code193999%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state193997%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx193988%_)
        (let ((_%lifts193990%_ (box '())))
          (let ((__tmp195099
                 (lambda ()
                   (let ((_%code193993%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx193988%_))))
                     (if (null? (unbox _%lifts193990%_))
                         _%code193993%_
                         (cons 'begin
                               (let ((__tmp195101 (cons _%code193993%_ '()))
                                     (__tmp195100
                                      (reverse (unbox _%lifts193990%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp195101 __tmp195100)))))))
                (__tmp195098
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp195097
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195099
             gxc#current-compile-lift
             _%lifts193990%_
             gxc#current-compile-marks
             __tmp195098
             gxc#current-compile-identifiers
             __tmp195097)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx193984%_)
        (let ((_%modules193986%_ (box '())))
          (let ((__tmp195102
                 (##structure-ref _%ctx193984%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules193986%_ __tmp195102))
          (reverse (unbox _%modules193986%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path193967%_ _%code193968%_ _%phi?193969%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path193967%_))
        (gxc#with-output-to-scheme-file
         _%path193967%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp195103
                                           (if _%phi?193969%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp195103)))))))
           (pretty-print _%code193968%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (gxc#gsc-compile-file _%path193967%_ _%phi?193969%_)
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path193967%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path193975%_ _%code193976%_)
        (let ((_%phi?193978%_ '#f))
          (gxc#compile-scm-file__%
           _%path193975%_
           _%code193976%_
           _%phi?193978%_))))
    (define gxc#compile-scm-file
      (lambda _g195105_
        (let ((_g195104_ (let () (declare (not safe)) (##length _g195105_))))
          (cond ((let () (declare (not safe)) (##fx= _g195104_ 2))
                 (apply gxc#compile-scm-file__0 _g195105_))
                ((let () (declare (not safe)) (##fx= _g195104_ 3))
                 (apply gxc#compile-scm-file__% _g195105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g195105_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?193868%_)
        (let _%lp193870%_ ((_%rest193872%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193873%_ '()))
          (let* ((_%rest193874193894%_ _%rest193872%_)
                 (_%else193878193902%_
                  (lambda ()
                    (if (and (not _%phi?193868%_)
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts193873%_)))
                        (reverse _%opts193873%_)))))
            (let ((_%K193888193945%_
                   (lambda (_%rest193943%_)
                     (_%lp193870%_ _%rest193943%_ _%opts193873%_)))
                  (_%K193883193927%_
                   (lambda (_%rest193925%_)
                     (_%lp193870%_ _%rest193925%_ _%opts193873%_)))
                  (_%K193880193909%_
                   (lambda (_%rest193906%_ _%opt193907%_)
                     (_%lp193870%_
                      _%rest193906%_
                      (cons _%opt193907%_ _%opts193873%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193874193894%_))
                  (let ((_%tl193890193950%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193874193894%_)))
                        (_%hd193889193948%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193874193894%_))))
                    (if (equal? _%hd193889193948%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193890193950%_))
                            (let* ((_%tl193892193953%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193890193950%_)))
                                   (_%rest193956%_ _%tl193892193953%_))
                              (_%K193888193945%_ _%rest193956%_))
                            (let ((_%opt193917%_ _%hd193889193948%_)
                                  (_%rest193919%_ _%tl193890193950%_))
                              (_%K193880193909%_
                               _%rest193919%_
                               _%opt193917%_)))
                        (if (equal? _%hd193889193948%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193890193950%_))
                                (let* ((_%tl193887193935%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193890193950%_)))
                                       (_%rest193938%_ _%tl193887193935%_))
                                  (_%K193883193927%_ _%rest193938%_))
                                (let ((_%opt193917%_ _%hd193889193948%_)
                                      (_%rest193919%_ _%tl193890193950%_))
                                  (_%K193880193909%_
                                   _%rest193919%_
                                   _%opt193917%_)))
                            (let ((_%opt193917%_ _%hd193889193948%_)
                                  (_%rest193919%_ _%tl193890193950%_))
                              (_%K193880193909%_
                               _%rest193919%_
                               _%opt193917%_)))))
                  (_%else193878193902%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?193962%_ '#f)) (gxc#gsc-link-options__% _%phi?193962%_))))
    (define gxc#gsc-link-options
      (lambda _g195107_
        (let ((_g195106_ (let () (declare (not safe)) (##length _g195107_))))
          (cond ((let () (declare (not safe)) (##fx= _g195106_ 0))
                 (apply gxc#gsc-link-options__0 _g195107_))
                ((let () (declare (not safe)) (##fx= _g195106_ 1))
                 (apply gxc#gsc-link-options__% _g195107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g195107_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?193769%_)
        (let _%lp193771%_ ((_%rest193773%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193774%_ '()))
          (let* ((_%rest193775193795%_ _%rest193773%_)
                 (_%else193779193803%_
                  (lambda ()
                    (if (and (not _%phi?193769%_)
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts193774%_)))
                        (reverse _%opts193774%_)))))
            (let ((_%K193789193842%_
                   (lambda (_%rest193839%_ _%opt193840%_)
                     (_%lp193771%_
                      _%rest193839%_
                      (cons _%opt193840%_
                            (cons '"-cc-options" _%opts193774%_)))))
                  (_%K193784193823%_
                   (lambda (_%rest193821%_)
                     (_%lp193771%_ _%rest193821%_ _%opts193774%_)))
                  (_%K193781193809%_
                   (lambda (_%rest193807%_)
                     (_%lp193771%_ _%rest193807%_ _%opts193774%_))))
              (if (let () (declare (not safe)) (##pair? _%rest193775193795%_))
                  (let ((_%tl193791193847%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193775193795%_)))
                        (_%hd193790193845%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193775193795%_))))
                    (if (equal? _%hd193790193845%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193791193847%_))
                            (let ((_%tl193793193852%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl193791193847%_)))
                                  (_%hd193792193850%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl193791193847%_))))
                              (let ((_%opt193855%_ _%hd193792193850%_)
                                    (_%rest193857%_ _%tl193793193852%_))
                                (_%K193789193842%_
                                 _%rest193857%_
                                 _%opt193855%_)))
                            (let ((_%rest193815%_ _%tl193791193847%_))
                              (_%K193781193809%_ _%rest193815%_)))
                        (if (equal? _%hd193790193845%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193791193847%_))
                                (let* ((_%tl193788193831%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193791193847%_)))
                                       (_%rest193834%_ _%tl193788193831%_))
                                  (_%K193784193823%_ _%rest193834%_))
                                (let ((_%rest193815%_ _%tl193791193847%_))
                                  (_%K193781193809%_ _%rest193815%_)))
                            (let ((_%rest193815%_ _%tl193791193847%_))
                              (_%K193781193809%_ _%rest193815%_)))))
                  (_%else193779193803%_)))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?193863%_ '#f)) (gxc#gsc-cc-options__% _%phi?193863%_))))
    (define gxc#gsc-cc-options
      (lambda _g195109_
        (let ((_g195108_ (let () (declare (not safe)) (##length _g195109_))))
          (cond ((let () (declare (not safe)) (##fx= _g195108_ 0))
                 (apply gxc#gsc-cc-options__0 _g195109_))
                ((let () (declare (not safe)) (##fx= _g195108_ 1))
                 (apply gxc#gsc-cc-options__% _g195109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g195109_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193764%_)
        (let ((_%user-staticdir193766%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193764%_
                       '" -I "
                       _%user-staticdir193766%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193676%_ ((_%rest193678%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193679%_ '()))
          (let* ((_%rest193680193700%_ _%rest193678%_)
                 (_%else193684193708%_ (lambda () _%opts193679%_)))
            (let ((_%K193694193751%_
                   (lambda (_%rest193749%_)
                     (_%lp193676%_ _%rest193749%_ _%opts193679%_)))
                  (_%K193689193729%_
                   (lambda (_%rest193726%_ _%opt193727%_)
                     (_%lp193676%_
                      _%rest193726%_
                      (let ((__tmp195110
                             (let ((__tmp195111
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt193727%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp195111))))
                        (declare (not safe))
                        (##append _%opts193679%_ __tmp195110)))))
                  (_%K193686193714%_
                   (lambda (_%rest193712%_)
                     (_%lp193676%_ _%rest193712%_ _%opts193679%_))))
              (if (let () (declare (not safe)) (##pair? _%rest193680193700%_))
                  (let ((_%tl193696193756%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193680193700%_)))
                        (_%hd193695193754%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193680193700%_))))
                    (if (equal? _%hd193695193754%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193696193756%_))
                            (let* ((_%tl193698193759%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193696193756%_)))
                                   (_%rest193762%_ _%tl193698193759%_))
                              (_%K193694193751%_ _%rest193762%_))
                            (let ((_%rest193720%_ _%tl193696193756%_))
                              (_%K193686193714%_ _%rest193720%_)))
                        (if (equal? _%hd193695193754%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193696193756%_))
                                (let ((_%tl193693193739%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193696193756%_)))
                                      (_%hd193692193737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193696193756%_))))
                                  (let ((_%opt193742%_ _%hd193692193737%_)
                                        (_%rest193744%_ _%tl193693193739%_))
                                    (_%K193689193729%_
                                     _%rest193744%_
                                     _%opt193742%_)))
                                (let ((_%rest193720%_ _%tl193696193756%_))
                                  (_%K193686193714%_ _%rest193720%_)))
                            (let ((_%rest193720%_ _%tl193696193756%_))
                              (_%K193686193714%_ _%rest193720%_)))))
                  (_%else193684193708%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str193673%_)
        (not (let () (declare (not safe)) (string-empty? _%str193673%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path193641%_ _%phi?193642%_)
        (letrec ((_%gsc-link-path193644%_
                  (lambda (_%base-path193665%_)
                    (let _%lp193667%_ ((_%n193669%_ '1))
                      (let ((_%path193671%_
                             (let ((__tmp195112 (number->string _%n193669%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path193665%_
                                '".o"
                                __tmp195112))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193671%_))
                            (_%lp193667%_ (+ _%n193669%_ '1))
                            _%path193671%_))))))
          (let* ((_%base-path193646%_ (path-strip-extension _%path193641%_))
                 (_%path-c193648%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193646%_ '".c")))
                 (_%path-o193650%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193646%_ '".o")))
                 (_%link-path193652%_
                  (_%gsc-link-path193644%_ _%base-path193646%_))
                 (_%link-path-c193654%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193652%_ '".c")))
                 (_%link-path-o193656%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193652%_ '".o")))
                 (_%gsc-link-opts193658%_
                  (gxc#gsc-link-options__% _%phi?193642%_))
                 (_%gsc-cc-opts193660%_ (gxc#gsc-cc-options__% _%phi?193642%_))
                 (_%gcc-ld-opts193662%_ (gxc#gcc-ld-options)))
            (gxc#invoke__%
             '#f
             '#t
             absent-value
             (gxc#gerbil-gsc)
             (cons '"-link"
                   (cons '"-flat"
                         (cons '"-o"
                               (cons _%link-path-c193654%_
                                     (let ((__tmp195113
                                            (cons _%path193641%_ '())))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp195113
                                        _%gsc-link-opts193658%_)))))))
            (gxc#invoke__%
             '#f
             '#t
             absent-value
             (gxc#gerbil-gsc)
             (cons '"-obj"
                   (cons '"-cc-options"
                         (cons '"-D___DYNAMIC"
                               (let ((__tmp195114
                                      (cons _%path-c193648%_
                                            (cons _%link-path-c193654%_ '()))))
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  __tmp195114
                                  _%gsc-cc-opts193660%_))))))
            (gxc#invoke__%
             '#f
             absent-value
             absent-value
             (gxc#gerbil-gcc)
             (cons '"-w"
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _%link-path193652%_
                                     (cons _%path-o193650%_
                                           (cons _%link-path-o193656%_
                                                 _%gcc-ld-opts193662%_)))))))
            (let ((__tmp195115
                   (cons _%path-c193648%_
                         (cons _%path-o193650%_
                               (cons _%link-path-c193654%_
                                     (cons _%link-path-o193656%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp195115))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193607%_ _%n193608%_ _%ext193609%_)
        (letrec ((_%module-relative-path193611%_
                  (lambda (_%ctx193639%_)
                    (path-strip-directory
                     (let ((__tmp195116
                            (##structure-ref
                             _%ctx193639%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp195116)))))
                 (_%module-source-directory193612%_
                  (lambda (_%ctx193635%_)
                    (path-directory
                     (let ((_%mpath193637%_
                            (##structure-ref
                             _%ctx193635%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath193637%_)
                           _%mpath193637%_
                           (last _%mpath193637%_))))))
                 (_%section-string193613%_
                  (lambda (_%n193629%_)
                    (if (number? _%n193629%_)
                        (number->string _%n193629%_)
                        (if (symbol? _%n193629%_)
                            (symbol->string _%n193629%_)
                            (if (string? _%n193629%_)
                                _%n193629%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n193629%_)))))))
                 (_%file-name193614%_
                  (lambda (_%path193627%_)
                    (if _%n193608%_
                        (string-append
                         _%path193627%_
                         '"~"
                         (_%section-string193613%_ _%n193608%_)
                         _%ext193609%_)
                        (string-append _%path193627%_ _%ext193609%_))))
                 (_%file-path193615%_
                  (lambda ()
                    (let ((_%$e193621%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193621%_
                          ((lambda (_%outdir193624%_)
                             (path-expand
                              (_%file-name193614%_
                               (let ((__tmp195117
                                      (##structure-ref
                                       _%ctx193607%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp195117)))
                              _%outdir193624%_))
                           _%$e193621%_)
                          (path-expand
                           (_%file-name193614%_
                            (_%module-relative-path193611%_ _%ctx193607%_))
                           (_%module-source-directory193612%_
                            _%ctx193607%_)))))))
          (let ((_%path193617%_ (_%file-path193615%_)))
            (let ((__tmp195118
                   (lambda ()
                     (let ((__tmp195119 (path-directory _%path193617%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195119)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195118))
            _%path193617%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193588%_)
        (letrec ((_%file-name193590%_
                  (lambda (_%id193605%_)
                    (let ((__tmp195120 (gxc#static-module-name _%id193605%_)))
                      (declare (not safe))
                      (##string-append __tmp195120 '".scm"))))
                 (_%file-path193591%_
                  (lambda ()
                    (let* ((_%file193597%_
                            (_%file-name193590%_
                             (##structure-ref
                              _%ctx193588%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e193599%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193599%_
                          ((lambda (_%outdir193602%_)
                             (path-expand
                              _%file193597%_
                              (path-expand '"static" _%outdir193602%_)))
                           _%$e193599%_)
                          (path-expand _%file193597%_ '"static"))))))
          (let ((_%path193593%_ (_%file-path193591%_)))
            (let ((__tmp195121
                   (lambda ()
                     (let ((__tmp195122 (path-directory _%path193593%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195122)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195121))
            _%path193593%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193581%_ _%opts193582%_)
        (let ((_%$e193584%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193582%_))))
          (if _%$e193584%_
              (values _%$e193584%_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx193581%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr193571%_)
        (if (string? _%idstr193571%_)
            (let* ((_%str193574%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr193571%_)))
                   (_%strs193576%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str193574%_ '#\/))))
              (declare (not safe))
              (string-join _%strs193576%_ '"__"))
            (if (symbol? _%idstr193571%_)
                (gxc#static-module-name (symbol->string _%idstr193571%_))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr193571%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp195123
               (let ((__tmp195124 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp195124 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp195123))))
    (define gxc#invoke__%
      (lambda (_%@@keywords193535%_
               _%stdout-redirection193531193536%_
               _%stderr-redirection193532193538%_
               _%program193540%_
               _%args193541%_)
        (let* ((_%stdout-redirection193543%_
                (if (eq? _%stdout-redirection193531193536%_ absent-value)
                    '#f
                    _%stdout-redirection193531193536%_))
               (_%stderr-redirection193545%_
                (if (eq? _%stderr-redirection193532193538%_ absent-value)
                    '#f
                    _%stderr-redirection193532193538%_)))
          (let ((__tmp195125 (cons _%program193540%_ _%args193541%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp195125))
          (let* ((_%proc193547%_
                  (open-process
                   (cons 'path:
                         (cons _%program193540%_
                               (cons 'arguments:
                                     (cons _%args193541%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193543%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193552%_
                  (if (or _%stdout-redirection193543%_
                          _%stderr-redirection193545%_)
                      (read-line _%proc193547%_ '#f)
                      '#f))
                 (_%status193555%_ (process-status _%proc193547%_)))
            (let () (declare (not safe)) (##close-port _%proc193547%_))
            (if (zero? _%status193555%_)
                '#!void
                (begin
                  (display _%output193552%_)
                  (let ((__tmp195126 (cons _%program193540%_ _%args193541%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp195126
                     _%status193555%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193560%_ . _%args193561%_)
        (apply gxc#invoke__%
               _%@@keywords193560%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193560%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193560%_
                  'stderr-redirection:
                  absent-value))
               _%args193561%_)))
    (define gxc#invoke
      (lambda _%args193533193567%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193533193567%_)))
    (define gxc#join!
      (lambda (_%thread193525%_)
        (let ((__tmp195128
               (lambda (_%exn193527%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn193527%_))
                     (let ((__tmp195129
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn193527%_))))
                       (declare (not safe))
                       (raise __tmp195129))
                     (let () (declare (not safe)) (raise _%exn193527%_)))))
              (__tmp195127 (lambda () (thread-join! _%thread193525%_))))
          (declare (not safe))
          (__with-catch __tmp195128 __tmp195127))))))
