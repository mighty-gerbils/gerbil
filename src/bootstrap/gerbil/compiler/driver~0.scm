(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1734215277)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp202784 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp202784))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp202785 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp202785))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path202641%_ _%fun202642%_)
        (with-output-to-file
         (cons 'path: (cons _%path202641%_ gxc#scheme-file-settings))
         _%fun202642%_)))
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
      (lambda (_%gerbil-libdir202636%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir202636%_)))
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
      (lambda (_%dir202634%_) (delete-file-or-directory _%dir202634%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath202590%_ _%opts202591%_)
        (if (string? _%srcpath202590%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath202590%_)))
        (let* ((_%outdir202593%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts202591%_)))
               (_%invoke-gsc?202595%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts202591%_)))
               (_%target202600%_
                (let ((_%$e202597%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts202591%_))))
                  (if _%$e202597%_ _%$e202597%_ 'C)))
               (_%gsc-options202605%_
                (append (cons '"-target"
                              (cons (symbol->string _%target202600%_) '()))
                        (let ((_%$e202602%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts202591%_))))
                          (if _%$e202602%_ _%$e202602%_ '()))))
               (_%keep-scm?202607%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts202591%_)))
               (_%verbosity202609%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts202591%_)))
               (_%optimize202611%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts202591%_)))
               (_%debug202613%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts202591%_)))
               (_%gen-ssxi202615%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts202591%_)))
               (_%parallel?202617%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts202591%_))))
          (if _%outdir202593%_
              (let ((__tmp202786
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir202593%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202786))
              '#!void)
          (if _%optimize202611%_
              (let ((__tmp202787
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202787))
              '#!void)
          (let ((__tmp202790
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath202590%_))
                   (gxc#compile-top-module
                    (let ((__tmp202791
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath202590%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp202791)))))
                (__tmp202789 (gxc#compile-timestamp))
                (__tmp202788
                 (cons 'compile-module (cons _%srcpath202590%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202790
             gxc#current-compile-output-dir
             _%outdir202593%_
             gx#current-compilation-target
             _%target202600%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?202595%_
             gxc#current-compile-gsc-options
             _%gsc-options202605%_
             gxc#current-compile-keep-scm
             _%keep-scm?202607%_
             gxc#current-compile-verbose
             _%verbosity202609%_
             gxc#current-compile-optimize
             _%optimize202611%_
             gxc#current-compile-debug
             _%debug202613%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi202615%_
             gxc#current-compile-timestamp
             __tmp202789
             gxc#current-compile-context
             __tmp202788
             gxc#current-compile-parallel
             _%parallel?202617%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath202627%_)
        (let ((_%opts202629%_ '()))
          (gxc#compile-module__% _%srcpath202627%_ _%opts202629%_))))
    (define gxc#compile-module
      (lambda _g202793_
        (let ((_g202792_ (let () (declare (not safe)) (##length _g202793_))))
          (cond ((let () (declare (not safe)) (##fx= _g202792_ 1))
                 (apply gxc#compile-module__0 _g202793_))
                ((let () (declare (not safe)) (##fx= _g202792_ 2))
                 (apply gxc#compile-module__% _g202793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g202793_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath202550%_ _%opts202551%_)
        (if (string? _%srcpath202550%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath202550%_)))
        (let* ((_%outdir202553%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts202551%_)))
               (_%invoke-gsc?202555%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts202551%_)))
               (_%target202560%_
                (let ((_%$e202557%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts202551%_))))
                  (if _%$e202557%_ _%$e202557%_ 'C)))
               (_%gsc-options202565%_
                (append (cons '"-target"
                              (cons (symbol->string _%target202560%_) '()))
                        (let ((_%$e202562%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts202551%_))))
                          (if _%$e202562%_ _%$e202562%_ '()))))
               (_%keep-scm?202567%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts202551%_)))
               (_%verbosity202569%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts202551%_)))
               (_%debug202571%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts202551%_)))
               (_%parallel?202573%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts202551%_))))
          (if _%outdir202553%_
              (let ((__tmp202794
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir202553%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202794))
              '#!void)
          (let ((__tmp202797
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath202550%_))
                   (gxc#compile-executable-module
                    (let ((__tmp202798
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath202550%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp202798))
                    _%opts202551%_)))
                (__tmp202796 (gxc#compile-timestamp))
                (__tmp202795 (cons 'compile-exe (cons _%srcpath202550%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202797
             gxc#current-compile-output-dir
             _%outdir202553%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?202555%_
             gx#current-compilation-target
             _%target202560%_
             gxc#current-compile-gsc-options
             _%gsc-options202565%_
             gxc#current-compile-keep-scm
             _%keep-scm?202567%_
             gxc#current-compile-verbose
             _%verbosity202569%_
             gxc#current-compile-debug
             _%debug202571%_
             gxc#current-compile-timestamp
             __tmp202796
             gxc#current-compile-context
             __tmp202795
             gxc#current-compile-parallel
             _%parallel?202573%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath202582%_)
        (let ((_%opts202584%_ '()))
          (gxc#compile-exe__% _%srcpath202582%_ _%opts202584%_))))
    (define gxc#compile-exe
      (lambda _g202800_
        (let ((_g202799_ (let () (declare (not safe)) (##length _g202800_))))
          (cond ((let () (declare (not safe)) (##fx= _g202799_ 1))
                 (apply gxc#compile-exe__0 _g202800_))
                ((let () (declare (not safe)) (##fx= _g202799_ 2))
                 (apply gxc#compile-exe__% _g202800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g202800_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx202546%_ _%opts202547%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts202547%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx202546%_
             _%opts202547%_)
            (gxc#compile-executable-module/separate
             _%ctx202546%_
             _%opts202547%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx202336%_ _%opts202337%_)
        (letrec ((_%generate-stub202339%_
                  (lambda (_%builtin-modules202542%_)
                    (let ((_%mod-main202544%_
                           (gxc#find-runtime-symbol _%ctx202336%_ 'main)))
                      (let ((__tmp202801
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules202542%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp202801))
                      (let ((__tmp202802
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main202544%_
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
                        (##write __tmp202802))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts202340%_
                  (lambda (_%gerbil-libdir202540%_)
                    (let ((__tmp202803
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir202540%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp202803 read))))
                 (_%replace-extension202341%_
                  (lambda (_%path202537%_ _%ext202538%_)
                    (string-append
                     (path-strip-extension _%path202537%_)
                     _%ext202538%_)))
                 (_%userlib-module?202342%_
                  (lambda (_%ctx202535%_)
                    (if (_%exclude-module?202344%_ _%ctx202535%_)
                        '#f
                        (not (_%libgerbil-module?202343%_ _%ctx202535%_)))))
                 (_%libgerbil-module?202343%_
                  (lambda (_%ctx202528%_)
                    (let ((_%id-str202530%_
                           (symbol->string
                            (##structure-ref
                             _%ctx202528%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?202344%_ _%id-str202530%_)
                          '#f
                          (let ((_%$e202532%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str202530%_))))
                            (if _%$e202532%_
                                _%$e202532%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str202530%_))))))))
                 (_%exclude-module?202344%_
                  (lambda (_%ctx-or-str202524%_)
                    (let ((_%str202526%_
                           (if (string? _%ctx-or-str202524%_)
                               _%ctx-or-str202524%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str202524%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str202526%_))))
                 (_%not-file-empty?202345%_
                  (lambda (_%path202522%_)
                    (not (gxc#file-empty? _%path202522%_))))
                 (_%fold-libgerbil-runtime-scm202346%_
                  (lambda (_%gerbil-staticdir202515%_ _%libgerbil-scm202516%_)
                    (let ((_%gerbil-runtime-scm202520%_
                           (let ((__tmp202804
                                  (lambda (_%rtm202518%_)
                                    (path-expand
                                     (let ((__tmp202805
                                            (let ((__tmp202806
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm202518%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp202806
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp202805 '".scm"))
                                     _%gerbil-staticdir202515%_))))
                             (declare (not safe))
                             (##map __tmp202804 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates202347%_
                       (append _%gerbil-runtime-scm202520%_
                               _%libgerbil-scm202516%_)))))
                 (_%remove-duplicates202347%_
                  (lambda (_%strlst202475%_)
                    (let _%loop202477%_ ((_%rest202479%_ _%strlst202475%_)
                                         (_%result202480%_ '()))
                      (let* ((_%rest202481202489%_ _%rest202479%_)
                             (_%else202483202497%_
                              (lambda () (reverse! _%result202480%_)))
                             (_%K202485202503%_
                              (lambda (_%rest202500%_ _%path202501%_)
                                (if (member _%path202501%_ _%result202480%_)
                                    (_%loop202477%_
                                     _%rest202500%_
                                     _%result202480%_)
                                    (_%loop202477%_
                                     _%rest202500%_
                                     (cons _%path202501%_
                                           _%result202480%_))))))
                        (if (pair? _%rest202481202489%_)
                            (let ((_%hd202486202506%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest202481202489%_)))
                                  (_%tl202487202508%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest202481202489%_))))
                              (let* ((_%path202511%_ _%hd202486202506%_)
                                     (_%rest202513%_ _%tl202487202508%_))
                                (_%K202485202503%_
                                 _%rest202513%_
                                 _%path202511%_)))
                            (_%else202483202497%_))))))
                 (_%compile-stub202348%_
                  (lambda (_%output-scm202355%_ _%output-bin202356%_)
                    (let* ((_%gerbil-home202358%_
                            (let ((__tmp202807
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp202807)))
                           (_%gerbil-libdir202360%_
                            (path-expand '"lib" _%gerbil-home202358%_))
                           (_%gerbil-staticdir202362%_
                            (path-expand '"static" _%gerbil-libdir202360%_))
                           (_%deps202364%_
                            (gxc#find-runtime-module-deps _%ctx202336%_))
                           (_%libgerbil-deps202366%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?202343%_
                               _%deps202364%_)))
                           (_%libgerbil-scm202368%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps202366%_)))
                           (_%libgerbil-scm202370%_
                            (_%fold-libgerbil-runtime-scm202346%_
                             _%gerbil-staticdir202362%_
                             _%libgerbil-scm202368%_))
                           (_%libgerbil-c202376%_
                            (map (lambda (_%g202371202373%_)
                                   (_%replace-extension202341%_
                                    _%g202371202373%_
                                    '".c"))
                                 _%libgerbil-scm202370%_))
                           (_%libgerbil-o202382%_
                            (map (lambda (_%g202377202379%_)
                                   (_%replace-extension202341%_
                                    _%g202377202379%_
                                    '".o"))
                                 _%libgerbil-scm202370%_))
                           (_%src-deps202384%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?202342%_
                               _%deps202364%_)))
                           (_%src-deps-scm202386%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps202384%_)))
                           (_%src-deps-scm202388%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?202345%_
                               _%src-deps-scm202386%_)))
                           (_%src-deps-scm202390%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm202388%_)))
                           (_%src-deps-c202396%_
                            (let ((__tmp202808
                                   (lambda (_%g202391202393%_)
                                     (_%replace-extension202341%_
                                      _%g202391202393%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp202808 _%src-deps-scm202390%_)))
                           (_%src-deps-o202402%_
                            (let ((__tmp202809
                                   (lambda (_%g202397202399%_)
                                     (_%replace-extension202341%_
                                      _%g202397202399%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp202809 _%src-deps-scm202390%_)))
                           (_%src-bin-scm202404%_
                            (gxc#find-static-module-file _%ctx202336%_))
                           (_%src-bin-scm202406%_
                            (path-expand _%src-bin-scm202404%_))
                           (_%src-bin-c202408%_
                            (_%replace-extension202341%_
                             _%src-bin-scm202406%_
                             '".c"))
                           (_%src-bin-o202410%_
                            (_%replace-extension202341%_
                             _%src-bin-scm202406%_
                             '".o"))
                           (_%output-bin202412%_
                            (path-expand _%output-bin202356%_))
                           (_%output-scm202414%_
                            (path-expand _%output-scm202355%_))
                           (_%output-c202416%_
                            (_%replace-extension202341%_
                             _%output-scm202414%_
                             '".c"))
                           (_%output-o202418%_
                            (_%replace-extension202341%_
                             _%output-scm202414%_
                             '".o"))
                           (_%output_-c202420%_
                            (_%replace-extension202341%_
                             _%output-scm202414%_
                             '"_.c"))
                           (_%output_-o202422%_
                            (_%replace-extension202341%_
                             _%output-scm202414%_
                             '"_.o"))
                           (_%gsc-link-opts202424%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts202426%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts202428%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir202362%_))
                           (_%output-ld-opts202430%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts202432%_
                            (_%get-libgerbil-ld-opts202340%_
                             _%gerbil-libdir202360%_))
                           (_%rpath202434%_
                            (gxc#gerbil-rpath _%gerbil-libdir202360%_))
                           (_%builtin-modules202438%_
                            (_%remove-duplicates202347%_
                             (let ((__tmp202810
                                    (let ((__tmp202812
                                           (lambda (_%mod202436%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod202436%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp202811
                                           (cons _%ctx202336%_
                                                 _%deps202364%_)))
                                      (declare (not safe))
                                      (##map __tmp202812 __tmp202811))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp202810)))))
                      (letrec ((_%compile-obj202441%_
                                (lambda (_%scm-path202448%_ _%c-path202449%_)
                                  (let* ((_%o-path202451%_
                                          (_%replace-extension202341%_
                                           _%c-path202449%_
                                           '".o"))
                                         (_%lock202453%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path202451%_
                                             '".lock")))
                                         (_%locked202455%_ '#f)
                                         (_%unlock202458%_
                                          (lambda ()
                                            (close-port _%locked202455%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock202453%_)))))
                                    (let _%retry202461%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock202453%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry202461%_))
                                          (begin
                                            (set! _%locked202455%_
                                                  (let ((__tmp202813
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock202453%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp202813)))
                                            (if _%locked202455%_
                                                '#!void
                                                (_%retry202461%_)))))
                                    (let ((__tmp202815
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path202451%_)))
                                                     (not _%scm-path202448%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path202448%_
                                                        _%o-path202451%_)))
                                                 (let ((_%gsc-cc-opts202472%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp202816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp202817 (cons _%c-path202449%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp202817
                            _%gsc-static-opts202428%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202816 _%gsc-cc-opts202472%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp202814
                                           (lambda () (_%unlock202458%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp202815
                                       __tmp202814))))))
                        (let ((__tmp202818
                               (lambda ()
                                 (let ((__tmp202819
                                        (path-directory _%output-bin202412%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp202819)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp202818))
                        (gxc#with-output-to-scheme-file
                         _%output-scm202414%_
                         (lambda ()
                           (_%generate-stub202339%_
                            _%builtin-modules202438%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it202446%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp202820
                                                   (let ((__tmp202821
                                                          (let ((__tmp202822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm202406%_
                               (cons _%output-scm202414%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202822 _%src-deps-scm202390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp202821
                                                      _%libgerbil-c202376%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp202820
                                               _%gsc-link-opts202424%_))))
                                     (for-each
                                      _%compile-obj202441%_
                                      (let ((__tmp202823
                                             (cons _%src-bin-scm202406%_
                                                   (cons _%output-scm202414%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp202823
                                         _%src-deps-scm202390%_))
                                      (let ((__tmp202824
                                             (cons _%src-bin-c202408%_
                                                   (cons _%output-c202416%_
                                                         (cons _%output_-c202420%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp202824
                                         _%src-deps-c202396%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin202412%_
                                                        (let ((__tmp202825
                                                               (cons _%src-bin-o202410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o202418%_
                                   (cons _%output_-o202422%_
                                         (let ((__tmp202826
                                                (let ((__tmp202827
                                                       (let ((__tmp202829
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir202360%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts202432%_))))
                     (__tmp202828
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath202434%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp202829 __tmp202828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp202827
                                                   _%output-ld-opts202430%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp202826
                                            _%libgerbil-o202382%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp202825 _%src-deps-o202402%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp202830
                                            (cons _%output-c202416%_
                                                  (cons _%output_-c202420%_
                                                        (cons _%output-o202418%_
                                                              (cons _%output_-o202422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp202830)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it202446%_))
                                  (_%compile-it202446%_)))
                            '#!void))))))
          (let* ((_%output-bin202350%_
                  (gxc#compile-exe-output-file _%ctx202336%_ _%opts202337%_))
                 (_%output-scm202352%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin202350%_ '"__exe.scm"))))
            (_%compile-stub202348%_
             _%output-scm202352%_
             _%output-bin202350%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx202158%_ _%opts202159%_)
        (letrec ((_%reset-declare202161%_
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
                 (_%generate-stub202162%_
                  (lambda (_%deps202327%_)
                    (let ((_%mod-main202329%_
                           (gxc#find-runtime-symbol _%ctx202158%_ 'main))
                          (_%reset-decl202330%_ (_%reset-declare202161%_))
                          (_%user-decl202331%_ (_%user-declare202163%_)))
                      (for-each
                       (lambda (_%dep202333%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl202330%_))
                         (newline)
                         (if _%user-decl202331%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl202331%_))
                               (newline))
                             '#!void)
                         (let ((__tmp202831
                                (cons 'include (cons _%dep202333%_ '()))))
                           (declare (not safe))
                           (##write __tmp202831))
                         (newline))
                       _%deps202327%_)
                      (let ((__tmp202832
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main202329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp202832))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare202163%_
                  (lambda ()
                    (let* ((_%gsc-opts202232%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts202159%_)))
                           (_%gsc-prelude202234%_
                            (if _%gsc-opts202232%_
                                (member '"-prelude" _%gsc-opts202232%_)
                                '#f))
                           (_%gsc-prelude202236%_
                            (if _%gsc-prelude202234%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude202234%_)))
                                '#f)))
                      (let _%lp202239%_ ((_%rest202241%_
                                          (cons _%gsc-prelude202236%_ '()))
                                         (_%user-decls202242%_ '()))
                        (let* ((_%rest202243202251%_ _%rest202241%_)
                               (_%else202245202259%_
                                (lambda ()
                                  (if (null? _%user-decls202242%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls202242%_)))))
                               (_%K202247202315%_
                                (lambda (_%rest202262%_ _%expr202263%_)
                                  (let* ((_%expr202264202276%_ _%expr202263%_)
                                         (_%else202267202284%_
                                          (lambda ()
                                            (_%lp202239%_
                                             _%rest202262%_
                                             _%user-decls202242%_))))
                                    (let ((_%K202272202305%_
                                           (lambda (_%decls202303%_)
                                             (_%lp202239%_
                                              _%rest202262%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls202242%_
                                                 _%decls202303%_)))))
                                          (_%K202269202290%_
                                           (lambda (_%exprs202288%_)
                                             (_%lp202239%_
                                              (append _%exprs202288%_
                                                      _%rest202262%_)
                                              _%user-decls202242%_))))
                                      (if (pair? _%expr202264202276%_)
                                          (let ((_%tl202274202310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr202264202276%_)))
                                                (_%hd202273202308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr202264202276%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd202273202308%_
                                                         'declare))
                                                (let ((_%decls202313%_
                                                       _%tl202274202310%_))
                                                  (_%K202272202305%_
                                                   _%decls202313%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd202273202308%_
                                                             'begin))
                                                    (let ((_%exprs202298%_
                                                           _%tl202274202310%_))
                                                      (_%K202269202290%_
                                                       _%exprs202298%_))
                                                    (_%else202267202284%_))))
                                          (_%else202267202284%_)))))))
                          (if (pair? _%rest202243202251%_)
                              (let ((_%hd202248202318%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest202243202251%_)))
                                    (_%tl202249202320%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest202243202251%_))))
                                (let* ((_%expr202323%_ _%hd202248202318%_)
                                       (_%rest202325%_ _%tl202249202320%_))
                                  (_%K202247202315%_
                                   _%rest202325%_
                                   _%expr202323%_)))
                              (_%else202245202259%_)))))))
                 (_%compile-stub202164%_
                  (lambda (_%output-scm202171%_ _%output-bin202172%_)
                    (let* ((_%gerbil-home202174%_
                            (let ((__tmp202833
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp202833)))
                           (_%gerbil-libdir202176%_
                            (path-expand '"lib" _%gerbil-home202174%_))
                           (_%runtime202178%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp202180%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home202174%_))
                           (_%include-gambit-sharp202182%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp202180%_
                               '"\")")))
                           (_%bin-scm202184%_
                            (gxc#find-static-module-file _%ctx202158%_))
                           (_%deps202186%_
                            (gxc#find-runtime-module-deps _%ctx202158%_))
                           (_%deps202188%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps202186%_)))
                           (_%deps202193%_
                            (let ((__tmp202834
                                   (lambda (_%$obj202190%_)
                                     (not (gxc#file-empty? _%$obj202190%_)))))
                              (declare (not safe))
                              (##filter __tmp202834 _%deps202188%_)))
                           (_%deps202197%_
                            (let ((__tmp202835
                                   (lambda (_%f202195%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f202195%_
                                             _%runtime202178%_))))))
                              (declare (not safe))
                              (##filter __tmp202835 _%deps202193%_)))
                           (_%output-base202199%_
                            (let ((__tmp202836
                                   (path-strip-extension
                                    _%output-scm202171%_)))
                              (declare (not safe))
                              (##string-append __tmp202836)))
                           (_%output-c202201%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202199%_ '".c")))
                           (_%output-o202203%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202199%_ '".o")))
                           (_%output-c_202205%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202199%_ '"_.c")))
                           (_%output-o_202207%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202199%_ '"_.o")))
                           (_%gsc-link-opts202209%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts202211%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts202213%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir202176%_)))
                           (_%output-ld-opts202215%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros202217%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp202182%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp202182%_
                                            '()))))
                           (_%gsc-link-opts202219%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts202209%_
                               _%gsc-gx-macros202217%_)))
                           (_%rpath202221%_
                            (gxc#gerbil-rpath _%gerbil-libdir202176%_))
                           (_%default-ld-options202223%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp202837
                             (lambda ()
                               (let ((__tmp202838
                                      (path-directory _%output-bin202172%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp202838)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp202837))
                      (gxc#with-output-to-scheme-file
                       _%output-scm202171%_
                       (lambda ()
                         (_%generate-stub202162%_
                          (let ((__tmp202839
                                 (let ((__tmp202840
                                        (cons _%bin-scm202184%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp202840
                                    _%deps202197%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp202839 _%runtime202178%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it202229%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_202205%_
                                                      (let ((__tmp202841
                                                             (cons _%output-scm202171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp202841 _%gsc-link-opts202219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp202842
                                                 (let ((__tmp202843
                                                        (cons _%output-c202201%_
                                                              (cons _%output-c_202205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp202843
                                                    _%gsc-static-opts202213%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp202842
                                             _%gsc-cc-opts202211%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin202172%_
                                                      (cons _%output-o202203%_
                                                            (cons _%output-o_202207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp202844
                                 (let ((__tmp202846
                                        (cons '"-L"
                                              (cons _%gerbil-libdir202176%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options202223%_))))
                                       (__tmp202845
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath202221%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp202846 __tmp202845))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp202844
                             _%output-ld-opts202215%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it202229%_))
                                (_%compile-it202229%_)))
                          '#!void)))))
          (let* ((_%output-bin202166%_
                  (gxc#compile-exe-output-file _%ctx202158%_ _%opts202159%_))
                 (_%output-scm202168%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin202166%_ '"__exe.scm"))))
            (_%compile-stub202164%_
             _%output-scm202168%_
             _%output-bin202166%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx202107%_ _%id202108%_)
        (let ((_%$e202154%_
               (let ((__tmp202848
                      (lambda (_%e202109202111%_)
                        (let* ((_%g202113202123%_ _%e202109202111%_)
                               (_%else202115202131%_ (lambda () '#f))
                               (_%K202117202135%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g202113202123%_
                                 'gx#module-export::t))
                              (let* ((_%e202118202138%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202113202123%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e202119202141%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202113202123%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e202120202144%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202113202123%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e202120202144%_ '0))
                                    (let ((_%e202121202147%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g202113202123%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g202149202151%_)
                                             (eq? _%g202149202151%_
                                                  _%id202108%_))
                                           _%e202121202147%_)
                                          (_%K202117202135%_)
                                          (_%else202115202131%_)))
                                    (_%else202115202131%_)))
                              (_%else202115202131%_)))))
                     (__tmp202847
                      (##structure-ref
                       _%ctx202107%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp202848 __tmp202847))))
          (if _%$e202154%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e202154%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx202098%_ _%id202099%_)
        (let ((_%$e202101%_
               (gxc#find-export-binding _%ctx202098%_ _%id202099%_)))
          (if _%$e202101%_
              ((lambda (_%bind202104%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind202104%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id202099%_)))
                 (##structure-ref _%bind202104%_ '1 gx#binding::t '#f))
               _%$e202101%_)
              (let ((__tmp202849
                     (##structure-ref
                      _%ctx202098%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp202849
                 _%id202099%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx201964%_)
        (letrec* ((_%ht201966%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template201967%_
                   (lambda (_%in202043%_ _%phi202044%_)
                     (let ((_%iphi202046%_
                            (fx+ _%phi202044%_
                                 (##direct-structure-ref
                                  _%in202043%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports202047%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in202043%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp202049%_ ((_%rest202051%_ _%imports202047%_)
                                          (_%r202052%_ '()))
                         (let* ((_%rest202053202061%_ _%rest202051%_)
                                (_%else202055202069%_ (lambda () _%r202052%_))
                                (_%K202057202086%_
                                 (lambda (_%rest202072%_ _%in202073%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in202073%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi202046%_))
                                           (_%lp202049%_
                                            _%rest202072%_
                                            (cons _%in202073%_ _%r202052%_))
                                           (_%lp202049%_
                                            _%rest202072%_
                                            _%r202052%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in202073%_
                                              'gx#module-import::t))
                                           (let ((_%iphi202077%_
                                                  (fx+ _%phi202044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in202073%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi202077%_))
                                                 (_%lp202049%_
                                                  _%rest202072%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in202073%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r202052%_))
                                                 (_%lp202049%_
                                                  _%rest202072%_
                                                  _%r202052%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in202073%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi202080%_
                                                      (fx+ _%iphi202046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in202073%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi202080%_))
                                                     (_%lp202049%_
                                                      _%rest202072%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in202073%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r202052%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi202080%_))
                                                         (_%lp202049%_
                                                          _%rest202072%_
                                                          (let ((__tmp202850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template201967%_
                          _%in202073%_
                          _%iphi202046%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r202052%_ __tmp202850)))
                 (_%lp202049%_ _%rest202072%_ _%r202052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp202049%_
                                                _%rest202072%_
                                                _%r202052%_)))))))
                           (if (pair? _%rest202053202061%_)
                               (let ((_%hd202058202089%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest202053202061%_)))
                                     (_%tl202059202091%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest202053202061%_))))
                                 (let* ((_%in202094%_ _%hd202058202089%_)
                                        (_%rest202096%_ _%tl202059202091%_))
                                   (_%K202057202086%_
                                    _%rest202096%_
                                    _%in202094%_)))
                               (_%else202055202069%_)))))))
                  (_%find-deps201968%_
                   (lambda (_%rest201976%_ _%deps201977%_)
                     (let* ((_%rest201978201986%_ _%rest201976%_)
                            (_%else201980201994%_ (lambda () _%deps201977%_))
                            (_%K201982202031%_
                             (lambda (_%rest201997%_ _%hd201998%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd201998%_
                                      'gx#module-context::t))
                                   (let ((_%id202001%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201998%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports202002%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201998%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht201966%_
                                            _%id202001%_))
                                         (_%find-deps201968%_
                                          _%rest201997%_
                                          _%deps201977%_)
                                         (let ((_%$e202005%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd201998%_))))
                                           (if _%$e202005%_
                                               ((lambda (_%pre202008%_)
                                                  (let ((_%xdeps202010%_
                                                         (_%find-deps201968%_
                                                          (cons _%pre202008%_
                                                                _%imports202002%_)
                                                          _%deps201977%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht201966%_
                                                       _%id202001%_
                                                       _%hd201998%_))
                                                    (_%find-deps201968%_
                                                     _%rest201997%_
                                                     (cons _%hd201998%_
                                                           _%xdeps202010%_))))
                                                _%$e202005%_)
                                               (let ((_%xdeps202013%_
                                                      (_%find-deps201968%_
                                                       _%imports202002%_
                                                       _%deps201977%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht201966%_
                                                    _%id202001%_
                                                    _%hd201998%_))
                                                 (_%find-deps201968%_
                                                  _%rest201997%_
                                                  (cons _%hd201998%_
                                                        _%xdeps202013%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd201998%_
                                          'gx#prelude-context::t))
                                       (let ((_%id202016%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd201998%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht201966%_
                                                _%id202016%_))
                                             (_%find-deps201968%_
                                              _%rest201997%_
                                              _%deps201977%_)
                                             (let ((_%xdeps202020%_
                                                    (_%find-deps201968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd201998%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps201977%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht201966%_
                                                      _%id202016%_))
                                                   (_%find-deps201968%_
                                                    _%rest201997%_
                                                    _%xdeps202020%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht201966%_
                                                        _%id202016%_
                                                        _%hd201998%_))
                                                     (_%find-deps201968%_
                                                      _%rest201997%_
                                                      (cons _%hd201998%_
                                                            _%xdeps202020%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd201998%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd201998%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps201968%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201998%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201997%_)
                                                _%deps201977%_)
                                               (_%find-deps201968%_
                                                _%rest201997%_
                                                _%deps201977%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd201998%_
                                                  'gx#module-export::t))
                                               (_%find-deps201968%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201998%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201997%_)
                                                _%deps201977%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd201998%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd201998%_ '2 '#f '#f)))
               (_%find-deps201968%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd201998%_ '1 '#f '#f))
                      _%rest201997%_)
                _%deps201977%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd201998%_ '2 '#f '#f)))
                   (let ((_%xdeps202027%_
                          (_%import-set-template201967%_ _%hd201998%_ '0)))
                     (_%find-deps201968%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest201997%_ _%xdeps202027%_))
                      _%deps201977%_))
                   (_%find-deps201968%_ _%rest201997%_ _%deps201977%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd201998%_))))))))))
                       (if (pair? _%rest201978201986%_)
                           (let ((_%hd201983202034%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest201978201986%_)))
                                 (_%tl201984202036%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest201978201986%_))))
                             (let* ((_%hd202039%_ _%hd201983202034%_)
                                    (_%rest202041%_ _%tl201984202036%_))
                               (_%K201982202031%_
                                _%rest202041%_
                                _%hd202039%_)))
                           (_%else201980201994%_))))))
          (let ((__tmp202851
                 (filter gx#expander-context-id
                         (_%find-deps201968%_
                          (let ((_%$e201970%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx201964%_))))
                            (if _%$e201970%_
                                ((lambda (_%pre201973%_)
                                   (cons _%pre201973%_
                                         (##structure-ref
                                          _%ctx201964%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e201970%_)
                                (##structure-ref
                                 _%ctx201964%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp202851)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx201894%_)
        (let* ((_%context-id201896%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx201894%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx201894%_ '1 '#f '#f))
                    (string->symbol _%ctx201894%_)))
               (_%scm201898%_
                (let ((__tmp202852
                       (gxc#static-module-name _%context-id201896%_)))
                  (declare (not safe))
                  (##string-append __tmp202852 '".scm")))
               (_%dirs201900%_ (let () (declare (not safe)) (load-path)))
               (_%dirs201906%_
                (let ((_%user-libpath201902%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath201902%_
                      (let ((_%user-libpath201904%_
                             (path-expand '"lib" _%user-libpath201902%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath201904%_ _%dirs201900%_))
                            _%dirs201900%_
                            (cons _%user-libpath201904%_ _%dirs201900%_)))
                      _%dirs201900%_)))
               (_%dirs201916%_
                (let ((_%$e201908%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e201908%_
                      ((lambda (_%g201910201912%_)
                         (cons _%g201910201912%_ _%dirs201906%_))
                       _%$e201908%_)
                      _%dirs201906%_)))
               (_%dirs201922%_
                (let ((__tmp202853
                       (lambda (_%g201917201919%_)
                         (path-expand '"static" _%g201917201919%_))))
                  (declare (not safe))
                  (##map __tmp202853 _%dirs201916%_))))
          (let _%lp201925%_ ((_%rest201927%_ _%dirs201922%_))
            (let* ((_%rest201928201936%_ _%rest201927%_)
                   (_%else201930201944%_
                    (lambda ()
                      (let ((__tmp202854
                             (##structure-ref
                              _%ctx201894%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp202854
                         _%scm201898%_))))
                   (_%K201932201952%_
                    (lambda (_%rest201947%_ _%dir201948%_)
                      (let ((_%path201950%_
                             (path-expand _%scm201898%_ _%dir201948%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path201950%_))
                            _%path201950%_
                            (_%lp201925%_ _%rest201947%_))))))
              (if (pair? _%rest201928201936%_)
                  (let ((_%hd201933201955%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201928201936%_)))
                        (_%tl201934201957%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201928201936%_))))
                    (let* ((_%dir201960%_ _%hd201933201955%_)
                           (_%rest201962%_ _%tl201934201957%_))
                      (_%K201932201952%_ _%rest201962%_ _%dir201960%_)))
                  (_%else201930201944%_)))))))
    (define gxc#file-empty?
      (lambda (_%path201892%_)
        (zero? (let ((__tmp202855 (file-info _%path201892%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp202855)))))
    (define gxc#compile-top-module
      (lambda (_%ctx201888%_)
        (let ((__tmp202859
               (lambda ()
                 (let ((__tmp202860
                        (##structure-ref
                         _%ctx201888%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp202860))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp202861
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx201888%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp202861))
                     '#!void)
                 (gxc#collect-bindings _%ctx201888%_)
                 (gxc#compile-runtime-code _%ctx201888%_)
                 (gxc#compile-meta-code _%ctx201888%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx201888%_)
                     '#!void)))
              (__tmp202858
               (let ((__obj202782
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj202782))
                 __obj202782))
              (__tmp202857 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp202856
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
           __tmp202859
           gx#current-expander-context
           _%ctx201888%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp202858
           gxc#current-compile-runtime-sections
           __tmp202857
           gxc#current-compile-runtime-names
           __tmp202856))))
    (define gxc#collect-bindings
      (lambda (_%ctx201886%_)
        (let ((__tmp202862
               (##structure-ref _%ctx201886%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp202862))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx201834%_)
        (letrec ((_%compile1201836%_
                  (lambda (_%ctx201875%_)
                    (let* ((_%code201877%_
                            (##structure-ref
                             _%ctx201875%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm201881%_
                            (let ((_%idstr201879%_
                                   (let ((__tmp202863
                                          (##structure-ref
                                           _%ctx201875%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp202863))))
                              (declare (not safe))
                              (##string-append _%idstr201879%_ '"~0")))
                           (_%rtc?201883%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code201877%_))))
                      (if _%rtc?201883%_
                          (let ((__tmp202864
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp202864
                             _%ctx201875%_
                             _%rtm201881%_))
                          '#!void)
                      (_%generate-runtime-code201838%_
                       _%ctx201875%_
                       _%code201877%_
                       (if _%rtc?201883%_ _%rtm201881%_ '#f)))))
                 (_%context-timestamp201837%_
                  (lambda (_%ctx201873%_)
                    (let ((__tmp202865
                           (let ((__tmp202866
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx201873%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp202866 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp202865))))
                 (_%generate-runtime-code201838%_
                  (lambda (_%ctx201845%_ _%code201846%_ _%rtm201847%_)
                    (let* ((_%runtime-code?201849%_ (if _%rtm201847%_ '#t '#f))
                           (_%lifts201851%_ (box '()))
                           (_%runtime-code201854%_
                            (if _%runtime-code?201849%_
                                (let ((__tmp202869
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code201846%_))))
                                      (__tmp202868
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp202867
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp202869
                                   gx#current-expander-context
                                   _%ctx201845%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts201851%_
                                   gxc#current-compile-marks
                                   __tmp202868
                                   gxc#current-compile-identifiers
                                   __tmp202867))
                                '#f))
                           (_%runtime-code201856%_
                            (if _%runtime-code?201849%_
                                (if (null? (unbox _%lifts201851%_))
                                    _%runtime-code201854%_
                                    (cons 'begin
                                          (let ((__tmp202871
                                                 (cons _%runtime-code201854%_
                                                       '()))
                                                (__tmp202870
                                                 (reverse (unbox _%lifts201851%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp202871
                                             __tmp202870))))
                                '#f))
                           (_%runtime-code201858%_
                            (if _%runtime-code?201849%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp201837%_
                                                         _%ctx201845%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code201856%_ '())))
                                '#f))
                           (_%loader-code201861%_
                            (let ((__tmp202872
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code201846%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp202872
                               gx#current-expander-context
                               _%ctx201845%_)))
                           (_%loader-code201863%_
                            (cons 'begin
                                  (cons _%loader-code201861%_
                                        (cons (if _%runtime-code?201849%_
                                                  (cons 'load-module
                                                        (cons _%rtm201847%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0201865%_
                            (gxc#compile-output-file _%ctx201845%_ '0 '".scm"))
                           (_%scmrt201867%_
                            (gxc#compile-output-file
                             _%ctx201845%_
                             '#f
                             '".scm"))
                           (_%scms201869%_
                            (gxc#compile-static-output-file _%ctx201845%_)))
                      (if _%runtime-code?201849%_
                          (gxc#compile-scm-file__0
                           _%scm0201865%_
                           _%runtime-code201858%_)
                          '#!void)
                      (let ((__tmp202873
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt201867%_
                                _%loader-code201863%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp202873
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms201869%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms201869%_))
                          '#!void)
                      (if _%runtime-code?201849%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0201865%_ _%scms201869%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms201869%_ void)))))))
          (let* ((_%all-modules201840%_
                  (cons _%ctx201834%_ (gxc#lift-nested-modules _%ctx201834%_)))
                 (__tmp202874
                  (lambda (_%ctx201842%_)
                    (let ((__tmp202875
                           (lambda () (_%compile1201836%_ _%ctx201842%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp202875
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp202874 _%all-modules201840%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx201734%_)
        (letrec ((_%compile-ssi201736%_
                  (lambda (_%code201802%_)
                    (let* ((_%path201804%_
                            (gxc#compile-output-file
                             _%ctx201734%_
                             '#f
                             '".ssi"))
                           (_%prelude201816%_
                            (let* ((_%super201806%_
                                    (##structure-ref
                                     _%ctx201734%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e201808%_
                                    (##structure-ref
                                     _%super201806%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e201808%_
                                  ((lambda (_%g201810201812%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g201810201812%_)))
                                   _%$e201808%_)
                                  ':<root>)))
                           (_%ns201818%_
                            (##structure-ref
                             _%ctx201734%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr201820%_
                            (symbol->string
                             (##structure-ref
                              _%ctx201734%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg201828%_
                            (let ((_%$e201822%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr201820%_ '#\/))))
                              (if _%$e201822%_
                                  ((lambda (_%x201825%_)
                                     (let ((__tmp202876
                                            (substring
                                             _%idstr201820%_
                                             '0
                                             _%x201825%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp202876)))
                                   _%$e201822%_)
                                  '#f)))
                           (_%rt201830%_
                            (let ((__tmp202877
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp202877 _%ctx201734%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path201804%_))
                      (gxc#with-output-to-scheme-file
                       _%path201804%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude201816%_))
                         (if _%pkg201828%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg201828%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns201818%_))
                         (newline)
                         (pretty-print _%code201802%_)
                         (if _%rt201830%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt201830%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi201737%_
                  (lambda (_%part201742%_)
                    (let* ((_%part201743201756%_ _%part201742%_)
                           (_%E201745201760%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part201743201756%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K201746201771%_
                            (lambda (_%code201763%_
                                     _%n201764%_
                                     _%phi201765%_
                                     _%phi-ctx201766%_)
                              (let ((_%code201769%_
                                     (let ((__tmp202878
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code201763%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp202878
                                        gx#current-expander-context
                                        _%phi-ctx201766%_
                                        gx#current-expander-phi
                                        _%phi201765%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx201734%_
                                  _%n201764%_
                                  '".scm")
                                 _%code201769%_
                                 '#t)))))
                      (if (pair? _%part201743201756%_)
                          (let ((_%hd201747201774%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part201743201756%_)))
                                (_%tl201748201776%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part201743201756%_))))
                            (let ((_%phi-ctx201779%_ _%hd201747201774%_))
                              (if (pair? _%tl201748201776%_)
                                  (let ((_%hd201749201781%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201748201776%_)))
                                        (_%tl201750201783%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201748201776%_))))
                                    (let ((_%phi201786%_ _%hd201749201781%_))
                                      (if (pair? _%tl201750201783%_)
                                          (let ((_%hd201751201788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl201750201783%_)))
                                                (_%tl201752201790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl201750201783%_))))
                                            (let ((_%n201793%_
                                                   _%hd201751201788%_))
                                              (if (pair? _%tl201752201790%_)
                                                  (let ((_%hd201753201795%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl201752201790%_)))
                                                        (_%tl201754201797%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl201752201790%_))))
                                                    (let ((_%code201800%_
                                                           _%hd201753201795%_))
                                                      (if (null? _%tl201754201797%_)
                                                          (_%K201746201771%_
                                                           _%code201800%_
                                                           _%n201793%_
                                                           _%phi201786%_
                                                           _%phi-ctx201779%_)
                                                          (_%E201745201760%_))))
                                                  (_%E201745201760%_))))
                                          (_%E201745201760%_))))
                                  (_%E201745201760%_))))
                          (_%E201745201760%_))))))
          (let ((_g202879_ (gxc#generate-meta-code _%ctx201734%_)))
            (begin
              (let ((_g202880_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g202879_)
                           (##values-length _g202879_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g202880_ 2)))
                    (error "Context expects 2 values" _g202880_)))
              (let ((_%ssi-code201739%_
                     (let () (declare (not safe)) (##values-ref _g202879_ 0)))
                    (_%phi-code201740%_
                     (let () (declare (not safe)) (##values-ref _g202879_ 1))))
                (begin
                  (_%compile-ssi201736%_ _%ssi-code201739%_)
                  (for-each _%compile-phi201737%_ _%phi-code201740%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx201716%_)
        (let* ((_%path201718%_
                (gxc#compile-output-file _%ctx201716%_ '#f '".ssxi.ss"))
               (_%code201720%_
                (let ((__tmp202881
                       (##structure-ref
                        _%ctx201716%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp202881)))
               (_%idstr201722%_
                (symbol->string
                 (##structure-ref
                  _%ctx201716%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg201730%_
                (let ((_%$e201724%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr201722%_ '#\/))))
                  (if _%$e201724%_
                      ((lambda (_%x201727%_)
                         (let ((__tmp202882
                                (substring _%idstr201722%_ '0 _%x201727%_)))
                           (declare (not safe))
                           (##string->symbol __tmp202882)))
                       _%$e201724%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path201718%_))
          (gxc#with-output-to-scheme-file
           _%path201718%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg201730%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg201730%_))
                 '#!void)
             (newline)
             (pretty-print _%code201720%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx201709%_)
        (let* ((_%state201711%_
                (let ((__obj202783
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj202783 _%ctx201709%_))
                  __obj202783))
               (_%ssi-code201713%_
                (let ((__tmp202883
                       (##structure-ref
                        _%ctx201709%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state201711%_
                   __tmp202883))))
          (values _%ssi-code201713%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state201711%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx201702%_)
        (let ((_%lifts201704%_ (box '())))
          (let ((__tmp202886
                 (lambda ()
                   (let ((_%code201707%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx201702%_))))
                     (if (null? (unbox _%lifts201704%_))
                         _%code201707%_
                         (cons 'begin
                               (let ((__tmp202888 (cons _%code201707%_ '()))
                                     (__tmp202887
                                      (reverse (unbox _%lifts201704%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp202888 __tmp202887)))))))
                (__tmp202885
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp202884
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202886
             gxc#current-compile-lift
             _%lifts201704%_
             gxc#current-compile-marks
             __tmp202885
             gxc#current-compile-identifiers
             __tmp202884)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx201698%_)
        (let ((_%modules201700%_ (box '())))
          (let ((__tmp202889
                 (##structure-ref _%ctx201698%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules201700%_ __tmp202889))
          (reverse (unbox _%modules201700%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path201678%_ _%code201679%_ _%phi?201680%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path201678%_))
        (gxc#with-output-to-scheme-file
         _%path201678%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp202890
                                           (if _%phi?201680%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp202890)))))))
           (pretty-print _%code201679%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it201684%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path201678%_ _%phi?201680%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp202891
                         (cons 'compile-file (cons _%path201678%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it201684%_ __tmp202891))
                  (_%compile-it201684%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path201689%_ _%code201690%_)
        (let ((_%phi?201692%_ '#f))
          (gxc#compile-scm-file__%
           _%path201689%_
           _%code201690%_
           _%phi?201692%_))))
    (define gxc#compile-scm-file
      (lambda _g202893_
        (let ((_g202892_ (let () (declare (not safe)) (##length _g202893_))))
          (cond ((let () (declare (not safe)) (##fx= _g202892_ 2))
                 (apply gxc#compile-scm-file__0 _g202893_))
                ((let () (declare (not safe)) (##fx= _g202892_ 3))
                 (apply gxc#compile-scm-file__% _g202893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g202893_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?201579%_)
        (let _%lp201581%_ ((_%rest201583%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts201584%_ '()))
          (let* ((_%rest201585201605%_ _%rest201583%_)
                 (_%else201589201613%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts201584%_)))
                        (reverse _%opts201584%_)))))
            (let ((_%K201599201656%_
                   (lambda (_%rest201654%_)
                     (_%lp201581%_ _%rest201654%_ _%opts201584%_)))
                  (_%K201594201638%_
                   (lambda (_%rest201636%_)
                     (_%lp201581%_ _%rest201636%_ _%opts201584%_)))
                  (_%K201591201620%_
                   (lambda (_%rest201617%_ _%opt201618%_)
                     (_%lp201581%_
                      _%rest201617%_
                      (cons _%opt201618%_ _%opts201584%_)))))
              (if (pair? _%rest201585201605%_)
                  (let ((_%tl201601201661%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201585201605%_)))
                        (_%hd201600201659%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201585201605%_))))
                    (if (equal? _%hd201600201659%_ '"-cc-options")
                        (if (pair? _%tl201601201661%_)
                            (let* ((_%tl201603201664%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl201601201661%_)))
                                   (_%rest201667%_ _%tl201603201664%_))
                              (_%K201599201656%_ _%rest201667%_))
                            (let ((_%opt201628%_ _%hd201600201659%_)
                                  (_%rest201630%_ _%tl201601201661%_))
                              (_%K201591201620%_
                               _%rest201630%_
                               _%opt201628%_)))
                        (if (equal? _%hd201600201659%_ '"-ld-options")
                            (if (pair? _%tl201601201661%_)
                                (let* ((_%tl201598201646%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl201601201661%_)))
                                       (_%rest201649%_ _%tl201598201646%_))
                                  (_%K201594201638%_ _%rest201649%_))
                                (let ((_%opt201628%_ _%hd201600201659%_)
                                      (_%rest201630%_ _%tl201601201661%_))
                                  (_%K201591201620%_
                                   _%rest201630%_
                                   _%opt201628%_)))
                            (let ((_%opt201628%_ _%hd201600201659%_)
                                  (_%rest201630%_ _%tl201601201661%_))
                              (_%K201591201620%_
                               _%rest201630%_
                               _%opt201628%_)))))
                  (_%else201589201613%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?201673%_ '#f)) (gxc#gsc-link-options__% _%phi?201673%_))))
    (define gxc#gsc-link-options
      (lambda _g202895_
        (let ((_g202894_ (let () (declare (not safe)) (##length _g202895_))))
          (cond ((let () (declare (not safe)) (##fx= _g202894_ 0))
                 (apply gxc#gsc-link-options__0 _g202895_))
                ((let () (declare (not safe)) (##fx= _g202894_ 1))
                 (apply gxc#gsc-link-options__% _g202895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g202895_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords201428%_ _%static?201424201429%_ _%phi?201431%_)
        (let ((_%static?201433%_
               (if (eq? _%static?201424201429%_ absent-value)
                   '#f
                   _%static?201424201429%_)))
          (if _%phi?201431%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp201435%_ ((_%rest201437%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts201438%_ '()))
                (let* ((_%rest201439201465%_ _%rest201437%_)
                       (_%else201444201473%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts201438%_)))
                              (reverse! _%opts201438%_)))))
                  (let ((_%K201459201536%_
                         (lambda (_%rest201533%_ _%opt201534%_)
                           (if _%static?201433%_
                               (_%lp201435%_
                                _%rest201533%_
                                (cons _%opt201534%_
                                      (cons '"-cc-options" _%opts201438%_)))
                               (_%lp201435%_ _%rest201533%_ _%opts201438%_))))
                        (_%K201454201513%_
                         (lambda (_%rest201510%_ _%opt201511%_)
                           (_%lp201435%_
                            _%rest201510%_
                            (cons _%opt201511%_
                                  (cons '"-cc-options" _%opts201438%_)))))
                        (_%K201449201493%_
                         (lambda (_%rest201491%_)
                           (_%lp201435%_ _%rest201491%_ _%opts201438%_)))
                        (_%K201446201479%_
                         (lambda (_%rest201477%_)
                           (_%lp201435%_ _%rest201477%_ _%opts201438%_))))
                    (if (pair? _%rest201439201465%_)
                        (let ((_%tl201461201541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest201439201465%_)))
                              (_%hd201460201539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest201439201465%_))))
                          (if (equal? _%hd201460201539%_ '"-cc-options")
                              (if (pair? _%tl201461201541%_)
                                  (let ((_%tl201463201546%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201461201541%_)))
                                        (_%hd201462201544%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201461201541%_))))
                                    (if (equal? _%hd201462201544%_ '"-Bstatic")
                                        (let ((_%opt201549%_
                                               _%hd201462201544%_)
                                              (_%rest201551%_
                                               _%tl201463201546%_))
                                          (_%K201459201536%_
                                           _%rest201551%_
                                           _%opt201549%_))
                                        (let ((_%opt201526%_
                                               _%hd201462201544%_)
                                              (_%rest201528%_
                                               _%tl201463201546%_))
                                          (_%K201454201513%_
                                           _%rest201528%_
                                           _%opt201526%_))))
                                  (let ((_%rest201485%_ _%tl201461201541%_))
                                    (_%K201446201479%_ _%rest201485%_)))
                              (if (equal? _%hd201460201539%_ '"-ld-options")
                                  (if (pair? _%tl201461201541%_)
                                      (let* ((_%tl201453201501%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl201461201541%_)))
                                             (_%rest201504%_
                                              _%tl201453201501%_))
                                        (_%K201449201493%_ _%rest201504%_))
                                      (let ((_%rest201485%_
                                             _%tl201461201541%_))
                                        (_%K201446201479%_ _%rest201485%_)))
                                  (let ((_%rest201485%_ _%tl201461201541%_))
                                    (_%K201446201479%_ _%rest201485%_)))))
                        (_%else201444201473%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords201556%_ _%static?201424201557%_)
        (let ((_%phi?201559%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords201556%_
           _%static?201424201557%_
           _%phi?201559%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g202897_
        (let ((_g202896_ (let () (declare (not safe)) (##length _g202897_))))
          (cond ((let () (declare (not safe)) (##fx= _g202896_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g202897_))
                ((let () (declare (not safe)) (##fx= _g202896_ 3))
                 (apply gxc#gsc-cc-options__%__% _g202897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g202897_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords201568%_ . _%args201569%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords201568%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201568%_
                  'static:
                  absent-value))
               _%args201569%_)))
    (define gxc#gsc-cc-options
      (lambda _%args201425201575%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args201425201575%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords201273%_ _%static?201269201274%_ _%phi?201276%_)
        (let ((_%static?201278%_
               (if (eq? _%static?201269201274%_ absent-value)
                   '#f
                   _%static?201269201274%_)))
          (if _%phi?201276%_
              '()
              (let _%lp201280%_ ((_%rest201282%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts201283%_ '()))
                (let* ((_%rest201284201310%_ _%rest201282%_)
                       (_%else201289201318%_
                        (lambda () (reverse! _%opts201283%_))))
                  (let ((_%K201304201381%_
                         (lambda (_%rest201378%_ _%opt201379%_)
                           (if _%static?201278%_
                               (_%lp201280%_
                                _%rest201378%_
                                (cons _%opt201379%_
                                      (cons '"-ld-options" _%opts201283%_)))
                               (_%lp201280%_ _%rest201378%_ _%opts201283%_))))
                        (_%K201299201358%_
                         (lambda (_%rest201355%_ _%opt201356%_)
                           (_%lp201280%_
                            _%rest201355%_
                            (cons _%opt201356%_
                                  (cons '"-ld-options" _%opts201283%_)))))
                        (_%K201294201338%_
                         (lambda (_%rest201336%_)
                           (_%lp201280%_ _%rest201336%_ _%opts201283%_)))
                        (_%K201291201324%_
                         (lambda (_%rest201322%_)
                           (_%lp201280%_ _%rest201322%_ _%opts201283%_))))
                    (if (pair? _%rest201284201310%_)
                        (let ((_%tl201306201386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest201284201310%_)))
                              (_%hd201305201384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest201284201310%_))))
                          (if (equal? _%hd201305201384%_ '"-ld-options")
                              (if (pair? _%tl201306201386%_)
                                  (let ((_%tl201308201391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201306201386%_)))
                                        (_%hd201307201389%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201306201386%_))))
                                    (if (equal? _%hd201307201389%_ '"-static")
                                        (let ((_%opt201394%_
                                               _%hd201307201389%_)
                                              (_%rest201396%_
                                               _%tl201308201391%_))
                                          (_%K201304201381%_
                                           _%rest201396%_
                                           _%opt201394%_))
                                        (let ((_%opt201371%_
                                               _%hd201307201389%_)
                                              (_%rest201373%_
                                               _%tl201308201391%_))
                                          (_%K201299201358%_
                                           _%rest201373%_
                                           _%opt201371%_))))
                                  (let ((_%rest201330%_ _%tl201306201386%_))
                                    (_%K201291201324%_ _%rest201330%_)))
                              (if (equal? _%hd201305201384%_ '"-cc-options")
                                  (if (pair? _%tl201306201386%_)
                                      (let* ((_%tl201298201346%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl201306201386%_)))
                                             (_%rest201349%_
                                              _%tl201298201346%_))
                                        (_%K201294201338%_ _%rest201349%_))
                                      (let ((_%rest201330%_
                                             _%tl201306201386%_))
                                        (_%K201291201324%_ _%rest201330%_)))
                                  (let ((_%rest201330%_ _%tl201306201386%_))
                                    (_%K201291201324%_ _%rest201330%_)))))
                        (_%else201289201318%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords201401%_ _%static?201269201402%_)
        (let ((_%phi?201404%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords201401%_
           _%static?201269201402%_
           _%phi?201404%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g202899_
        (let ((_g202898_ (let () (declare (not safe)) (##length _g202899_))))
          (cond ((let () (declare (not safe)) (##fx= _g202898_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g202899_))
                ((let () (declare (not safe)) (##fx= _g202898_ 3))
                 (apply gxc#gsc-ld-options__%__% _g202899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g202899_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords201413%_ . _%args201414%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords201413%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201413%_
                  'static:
                  absent-value))
               _%args201414%_)))
    (define gxc#gsc-ld-options
      (lambda _%args201270201420%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args201270201420%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir201264%_)
        (let ((_%user-staticdir201266%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir201264%_
                       '" -I "
                       _%user-staticdir201266%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp201176%_ ((_%rest201178%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts201179%_ '()))
          (let* ((_%rest201180201200%_ _%rest201178%_)
                 (_%else201184201208%_ (lambda () _%opts201179%_)))
            (let ((_%K201194201251%_
                   (lambda (_%rest201249%_)
                     (_%lp201176%_ _%rest201249%_ _%opts201179%_)))
                  (_%K201189201229%_
                   (lambda (_%rest201226%_ _%opt201227%_)
                     (_%lp201176%_
                      _%rest201226%_
                      (let ((__tmp202900
                             (let ((__tmp202901
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt201227%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp202901))))
                        (declare (not safe))
                        (##append _%opts201179%_ __tmp202900)))))
                  (_%K201186201214%_
                   (lambda (_%rest201212%_)
                     (_%lp201176%_ _%rest201212%_ _%opts201179%_))))
              (if (pair? _%rest201180201200%_)
                  (let ((_%tl201196201256%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201180201200%_)))
                        (_%hd201195201254%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201180201200%_))))
                    (if (equal? _%hd201195201254%_ '"-cc-options")
                        (if (pair? _%tl201196201256%_)
                            (let* ((_%tl201198201259%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl201196201256%_)))
                                   (_%rest201262%_ _%tl201198201259%_))
                              (_%K201194201251%_ _%rest201262%_))
                            (let ((_%rest201220%_ _%tl201196201256%_))
                              (_%K201186201214%_ _%rest201220%_)))
                        (if (equal? _%hd201195201254%_ '"-ld-options")
                            (if (pair? _%tl201196201256%_)
                                (let ((_%tl201193201239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201196201256%_)))
                                      (_%hd201192201237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201196201256%_))))
                                  (let ((_%opt201242%_ _%hd201192201237%_)
                                        (_%rest201244%_ _%tl201193201239%_))
                                    (_%K201189201229%_
                                     _%rest201244%_
                                     _%opt201242%_)))
                                (let ((_%rest201220%_ _%tl201196201256%_))
                                  (_%K201186201214%_ _%rest201220%_)))
                            (let ((_%rest201220%_ _%tl201196201256%_))
                              (_%K201186201214%_ _%rest201220%_)))))
                  (_%else201184201208%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str201173%_)
        (not (let () (declare (not safe)) (string-empty? _%str201173%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path201166%_ _%phi?201167%_)
        (let ((_%gsc-link-opts201169%_
               (gxc#gsc-link-options__% _%phi?201167%_))
              (_%gsc-cc-opts201170%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?201167%_))
              (_%gsc-ld-opts201171%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?201167%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp202902
                  (let ((__tmp202903
                         (let ((__tmp202904 (cons _%path201166%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp202904
                            _%gsc-link-opts201169%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202903 _%gsc-ld-opts201171%_))))
             (declare (not safe))
             (__foldr1 cons __tmp202902 _%gsc-cc-opts201170%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx201132%_ _%n201133%_ _%ext201134%_)
        (letrec ((_%module-relative-path201136%_
                  (lambda (_%ctx201164%_)
                    (path-strip-directory
                     (let ((__tmp202905
                            (##structure-ref
                             _%ctx201164%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp202905)))))
                 (_%module-source-directory201137%_
                  (lambda (_%ctx201160%_)
                    (path-directory
                     (let ((_%mpath201162%_
                            (##structure-ref
                             _%ctx201160%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath201162%_)
                           _%mpath201162%_
                           (last _%mpath201162%_))))))
                 (_%section-string201138%_
                  (lambda (_%n201154%_)
                    (if (number? _%n201154%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n201154%_))
                        (if (symbol? _%n201154%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n201154%_))
                            (if (string? _%n201154%_)
                                _%n201154%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n201154%_)))))))
                 (_%file-name201139%_
                  (lambda (_%path201152%_)
                    (if _%n201133%_
                        (string-append
                         _%path201152%_
                         '"~"
                         (_%section-string201138%_ _%n201133%_)
                         _%ext201134%_)
                        (string-append _%path201152%_ _%ext201134%_))))
                 (_%file-path201140%_
                  (lambda ()
                    (let ((_%$e201146%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e201146%_
                          ((lambda (_%outdir201149%_)
                             (path-expand
                              (_%file-name201139%_
                               (let ((__tmp202906
                                      (##structure-ref
                                       _%ctx201132%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp202906)))
                              _%outdir201149%_))
                           _%$e201146%_)
                          (path-expand
                           (_%file-name201139%_
                            (_%module-relative-path201136%_ _%ctx201132%_))
                           (_%module-source-directory201137%_
                            _%ctx201132%_)))))))
          (let ((_%path201142%_ (_%file-path201140%_)))
            (let ((__tmp202907
                   (lambda ()
                     (let ((__tmp202908 (path-directory _%path201142%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202908)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202907))
            _%path201142%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx201113%_)
        (letrec ((_%file-name201115%_
                  (lambda (_%id201130%_)
                    (let ((__tmp202909 (gxc#static-module-name _%id201130%_)))
                      (declare (not safe))
                      (##string-append __tmp202909 '".scm"))))
                 (_%file-path201116%_
                  (lambda ()
                    (let* ((_%file201122%_
                            (_%file-name201115%_
                             (##structure-ref
                              _%ctx201113%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e201124%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e201124%_
                          ((lambda (_%outdir201127%_)
                             (path-expand
                              _%file201122%_
                              (path-expand '"static" _%outdir201127%_)))
                           _%$e201124%_)
                          (path-expand _%file201122%_ '"static"))))))
          (let ((_%path201118%_ (_%file-path201116%_)))
            (let ((__tmp202910
                   (lambda ()
                     (let ((__tmp202911 (path-directory _%path201118%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202911)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202910))
            _%path201118%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx201106%_ _%opts201107%_)
        (let ((_%$e201109%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts201107%_))))
          (if _%$e201109%_
              _%$e201109%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx201106%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr201096%_)
        (if (string? _%idstr201096%_)
            (let* ((_%str201099%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr201096%_)))
                   (_%strs201101%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str201099%_ '#\/))))
              (declare (not safe))
              (string-join _%strs201101%_ '"__"))
            (if (symbol? _%idstr201096%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr201096%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr201096%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp202912
               (let ((__tmp202913 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp202913 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp202912))))
    (define gxc#invoke__%
      (lambda (_%@@keywords201060%_
               _%stdout-redirection201056201061%_
               _%stderr-redirection201057201063%_
               _%program201065%_
               _%args201066%_)
        (let* ((_%stdout-redirection201068%_
                (if (eq? _%stdout-redirection201056201061%_ absent-value)
                    '#f
                    _%stdout-redirection201056201061%_))
               (_%stderr-redirection201070%_
                (if (eq? _%stderr-redirection201057201063%_ absent-value)
                    '#f
                    _%stderr-redirection201057201063%_)))
          (let ((__tmp202914 (cons _%program201065%_ _%args201066%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp202914))
          (let* ((_%proc201072%_
                  (open-process
                   (cons 'path:
                         (cons _%program201065%_
                               (cons 'arguments:
                                     (cons _%args201066%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection201068%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection201070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output201077%_
                  (if (or _%stdout-redirection201068%_
                          _%stderr-redirection201070%_)
                      (read-line _%proc201072%_ '#f)
                      '#f))
                 (_%status201080%_ (process-status _%proc201072%_)))
            (let () (declare (not safe)) (##close-port _%proc201072%_))
            (if (zero? _%status201080%_)
                '#!void
                (begin
                  (display _%output201077%_)
                  (let ((__tmp202915 (cons _%program201065%_ _%args201066%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp202915
                     _%status201080%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords201085%_ . _%args201086%_)
        (apply gxc#invoke__%
               _%@@keywords201085%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201085%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201085%_
                  'stderr-redirection:
                  absent-value))
               _%args201086%_)))
    (define gxc#invoke
      (lambda _%args201058201092%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args201058201092%_)))))
