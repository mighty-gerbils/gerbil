(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1733868043)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp202544 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp202544))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp202545 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp202545))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path202401%_ _%fun202402%_)
        (with-output-to-file
         (cons 'path: (cons _%path202401%_ gxc#scheme-file-settings))
         _%fun202402%_)))
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
      (lambda (_%gerbil-libdir202396%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir202396%_)))
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
      (lambda (_%dir202394%_) (delete-file-or-directory _%dir202394%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath202367%_ _%opts202368%_)
        (if (string? _%srcpath202367%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath202367%_)))
        (let ((_%outdir202370%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts202368%_)))
              (_%invoke-gsc?202371%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts202368%_)))
              (_%gsc-options202372%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts202368%_)))
              (_%keep-scm?202373%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts202368%_)))
              (_%verbosity202374%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts202368%_)))
              (_%optimize202375%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts202368%_)))
              (_%debug202376%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts202368%_)))
              (_%gen-ssxi202377%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts202368%_)))
              (_%parallel?202378%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts202368%_))))
          (if _%outdir202370%_
              (let ((__tmp202546
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir202370%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202546))
              '#!void)
          (if _%optimize202375%_
              (let ((__tmp202547
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202547))
              '#!void)
          (let ((__tmp202550
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath202367%_))
                   (gxc#compile-top-module
                    (let ((__tmp202551
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath202367%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp202551)))))
                (__tmp202549 (gxc#compile-timestamp))
                (__tmp202548
                 (cons 'compile-module (cons _%srcpath202367%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202550
             gxc#current-compile-output-dir
             _%outdir202370%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?202371%_
             gxc#current-compile-gsc-options
             _%gsc-options202372%_
             gxc#current-compile-keep-scm
             _%keep-scm?202373%_
             gxc#current-compile-verbose
             _%verbosity202374%_
             gxc#current-compile-optimize
             _%optimize202375%_
             gxc#current-compile-debug
             _%debug202376%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi202377%_
             gxc#current-compile-timestamp
             __tmp202549
             gxc#current-compile-context
             __tmp202548
             gxc#current-compile-parallel
             _%parallel?202378%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath202387%_)
        (let ((_%opts202389%_ '()))
          (gxc#compile-module__% _%srcpath202387%_ _%opts202389%_))))
    (define gxc#compile-module
      (lambda _g202553_
        (let ((_g202552_ (let () (declare (not safe)) (##length _g202553_))))
          (cond ((let () (declare (not safe)) (##fx= _g202552_ 1))
                 (apply gxc#compile-module__0 _g202553_))
                ((let () (declare (not safe)) (##fx= _g202552_ 2))
                 (apply gxc#compile-module__% _g202553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g202553_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath202342%_ _%opts202343%_)
        (if (string? _%srcpath202342%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath202342%_)))
        (let ((_%outdir202345%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts202343%_)))
              (_%invoke-gsc?202346%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts202343%_)))
              (_%gsc-options202347%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts202343%_)))
              (_%keep-scm?202348%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts202343%_)))
              (_%verbosity202349%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts202343%_)))
              (_%debug202350%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts202343%_)))
              (_%parallel?202351%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts202343%_))))
          (if _%outdir202345%_
              (let ((__tmp202554
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir202345%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202554))
              '#!void)
          (let ((__tmp202557
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath202342%_))
                   (gxc#compile-executable-module
                    (let ((__tmp202558
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath202342%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp202558))
                    _%opts202343%_)))
                (__tmp202556 (gxc#compile-timestamp))
                (__tmp202555 (cons 'compile-exe (cons _%srcpath202342%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202557
             gxc#current-compile-output-dir
             _%outdir202345%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?202346%_
             gxc#current-compile-gsc-options
             _%gsc-options202347%_
             gxc#current-compile-keep-scm
             _%keep-scm?202348%_
             gxc#current-compile-verbose
             _%verbosity202349%_
             gxc#current-compile-debug
             _%debug202350%_
             gxc#current-compile-timestamp
             __tmp202556
             gxc#current-compile-context
             __tmp202555
             gxc#current-compile-parallel
             _%parallel?202351%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath202359%_)
        (let ((_%opts202361%_ '()))
          (gxc#compile-exe__% _%srcpath202359%_ _%opts202361%_))))
    (define gxc#compile-exe
      (lambda _g202560_
        (let ((_g202559_ (let () (declare (not safe)) (##length _g202560_))))
          (cond ((let () (declare (not safe)) (##fx= _g202559_ 1))
                 (apply gxc#compile-exe__0 _g202560_))
                ((let () (declare (not safe)) (##fx= _g202559_ 2))
                 (apply gxc#compile-exe__% _g202560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g202560_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx202338%_ _%opts202339%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts202339%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx202338%_
             _%opts202339%_)
            (gxc#compile-executable-module/separate
             _%ctx202338%_
             _%opts202339%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx202128%_ _%opts202129%_)
        (letrec ((_%generate-stub202131%_
                  (lambda (_%builtin-modules202334%_)
                    (let ((_%mod-main202336%_
                           (gxc#find-runtime-symbol _%ctx202128%_ 'main)))
                      (let ((__tmp202561
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules202334%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp202561))
                      (let ((__tmp202562
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main202336%_
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
                        (##write __tmp202562))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts202132%_
                  (lambda (_%gerbil-libdir202332%_)
                    (let ((__tmp202563
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir202332%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp202563 read))))
                 (_%replace-extension202133%_
                  (lambda (_%path202329%_ _%ext202330%_)
                    (string-append
                     (path-strip-extension _%path202329%_)
                     _%ext202330%_)))
                 (_%userlib-module?202134%_
                  (lambda (_%ctx202327%_)
                    (if (_%exclude-module?202136%_ _%ctx202327%_)
                        '#f
                        (not (_%libgerbil-module?202135%_ _%ctx202327%_)))))
                 (_%libgerbil-module?202135%_
                  (lambda (_%ctx202320%_)
                    (let ((_%id-str202322%_
                           (symbol->string
                            (##structure-ref
                             _%ctx202320%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?202136%_ _%id-str202322%_)
                          '#f
                          (let ((_%$e202324%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str202322%_))))
                            (if _%$e202324%_
                                _%$e202324%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str202322%_))))))))
                 (_%exclude-module?202136%_
                  (lambda (_%ctx-or-str202316%_)
                    (let ((_%str202318%_
                           (if (string? _%ctx-or-str202316%_)
                               _%ctx-or-str202316%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str202316%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str202318%_))))
                 (_%not-file-empty?202137%_
                  (lambda (_%path202314%_)
                    (not (gxc#file-empty? _%path202314%_))))
                 (_%fold-libgerbil-runtime-scm202138%_
                  (lambda (_%gerbil-staticdir202307%_ _%libgerbil-scm202308%_)
                    (let ((_%gerbil-runtime-scm202312%_
                           (let ((__tmp202564
                                  (lambda (_%rtm202310%_)
                                    (path-expand
                                     (let ((__tmp202565
                                            (let ((__tmp202566
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm202310%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp202566
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp202565 '".scm"))
                                     _%gerbil-staticdir202307%_))))
                             (declare (not safe))
                             (##map __tmp202564 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates202139%_
                       (append _%gerbil-runtime-scm202312%_
                               _%libgerbil-scm202308%_)))))
                 (_%remove-duplicates202139%_
                  (lambda (_%strlst202267%_)
                    (let _%loop202269%_ ((_%rest202271%_ _%strlst202267%_)
                                         (_%result202272%_ '()))
                      (let* ((_%rest202273202281%_ _%rest202271%_)
                             (_%else202275202289%_
                              (lambda () (reverse! _%result202272%_)))
                             (_%K202277202295%_
                              (lambda (_%rest202292%_ _%path202293%_)
                                (if (member _%path202293%_ _%result202272%_)
                                    (_%loop202269%_
                                     _%rest202292%_
                                     _%result202272%_)
                                    (_%loop202269%_
                                     _%rest202292%_
                                     (cons _%path202293%_
                                           _%result202272%_))))))
                        (if (pair? _%rest202273202281%_)
                            (let ((_%hd202278202298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest202273202281%_)))
                                  (_%tl202279202300%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest202273202281%_))))
                              (let* ((_%path202303%_ _%hd202278202298%_)
                                     (_%rest202305%_ _%tl202279202300%_))
                                (_%K202277202295%_
                                 _%rest202305%_
                                 _%path202303%_)))
                            (_%else202275202289%_))))))
                 (_%compile-stub202140%_
                  (lambda (_%output-scm202147%_ _%output-bin202148%_)
                    (let* ((_%gerbil-home202150%_
                            (let ((__tmp202567
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp202567)))
                           (_%gerbil-libdir202152%_
                            (path-expand '"lib" _%gerbil-home202150%_))
                           (_%gerbil-staticdir202154%_
                            (path-expand '"static" _%gerbil-libdir202152%_))
                           (_%deps202156%_
                            (gxc#find-runtime-module-deps _%ctx202128%_))
                           (_%libgerbil-deps202158%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?202135%_
                               _%deps202156%_)))
                           (_%libgerbil-scm202160%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps202158%_)))
                           (_%libgerbil-scm202162%_
                            (_%fold-libgerbil-runtime-scm202138%_
                             _%gerbil-staticdir202154%_
                             _%libgerbil-scm202160%_))
                           (_%libgerbil-c202168%_
                            (map (lambda (_%g202163202165%_)
                                   (_%replace-extension202133%_
                                    _%g202163202165%_
                                    '".c"))
                                 _%libgerbil-scm202162%_))
                           (_%libgerbil-o202174%_
                            (map (lambda (_%g202169202171%_)
                                   (_%replace-extension202133%_
                                    _%g202169202171%_
                                    '".o"))
                                 _%libgerbil-scm202162%_))
                           (_%src-deps202176%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?202134%_
                               _%deps202156%_)))
                           (_%src-deps-scm202178%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps202176%_)))
                           (_%src-deps-scm202180%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?202137%_
                               _%src-deps-scm202178%_)))
                           (_%src-deps-scm202182%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm202180%_)))
                           (_%src-deps-c202188%_
                            (let ((__tmp202568
                                   (lambda (_%g202183202185%_)
                                     (_%replace-extension202133%_
                                      _%g202183202185%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp202568 _%src-deps-scm202182%_)))
                           (_%src-deps-o202194%_
                            (let ((__tmp202569
                                   (lambda (_%g202189202191%_)
                                     (_%replace-extension202133%_
                                      _%g202189202191%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp202569 _%src-deps-scm202182%_)))
                           (_%src-bin-scm202196%_
                            (gxc#find-static-module-file _%ctx202128%_))
                           (_%src-bin-scm202198%_
                            (path-expand _%src-bin-scm202196%_))
                           (_%src-bin-c202200%_
                            (_%replace-extension202133%_
                             _%src-bin-scm202198%_
                             '".c"))
                           (_%src-bin-o202202%_
                            (_%replace-extension202133%_
                             _%src-bin-scm202198%_
                             '".o"))
                           (_%output-bin202204%_
                            (path-expand _%output-bin202148%_))
                           (_%output-scm202206%_
                            (path-expand _%output-scm202147%_))
                           (_%output-c202208%_
                            (_%replace-extension202133%_
                             _%output-scm202206%_
                             '".c"))
                           (_%output-o202210%_
                            (_%replace-extension202133%_
                             _%output-scm202206%_
                             '".o"))
                           (_%output_-c202212%_
                            (_%replace-extension202133%_
                             _%output-scm202206%_
                             '"_.c"))
                           (_%output_-o202214%_
                            (_%replace-extension202133%_
                             _%output-scm202206%_
                             '"_.o"))
                           (_%gsc-link-opts202216%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts202218%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts202220%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir202154%_))
                           (_%output-ld-opts202222%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts202224%_
                            (_%get-libgerbil-ld-opts202132%_
                             _%gerbil-libdir202152%_))
                           (_%rpath202226%_
                            (gxc#gerbil-rpath _%gerbil-libdir202152%_))
                           (_%builtin-modules202230%_
                            (_%remove-duplicates202139%_
                             (let ((__tmp202570
                                    (let ((__tmp202572
                                           (lambda (_%mod202228%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod202228%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp202571
                                           (cons _%ctx202128%_
                                                 _%deps202156%_)))
                                      (declare (not safe))
                                      (##map __tmp202572 __tmp202571))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp202570)))))
                      (letrec ((_%compile-obj202233%_
                                (lambda (_%scm-path202240%_ _%c-path202241%_)
                                  (let* ((_%o-path202243%_
                                          (_%replace-extension202133%_
                                           _%c-path202241%_
                                           '".o"))
                                         (_%lock202245%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path202243%_
                                             '".lock")))
                                         (_%locked202247%_ '#f)
                                         (_%unlock202250%_
                                          (lambda ()
                                            (close-port _%locked202247%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock202245%_)))))
                                    (let _%retry202253%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock202245%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry202253%_))
                                          (begin
                                            (set! _%locked202247%_
                                                  (let ((__tmp202573
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock202245%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp202573)))
                                            (if _%locked202247%_
                                                '#!void
                                                (_%retry202253%_)))))
                                    (let ((__tmp202575
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path202243%_)))
                                                     (not _%scm-path202240%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path202240%_
                                                        _%o-path202243%_)))
                                                 (let ((_%gsc-cc-opts202264%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp202576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp202577 (cons _%c-path202241%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp202577
                            _%gsc-static-opts202220%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202576 _%gsc-cc-opts202264%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp202574
                                           (lambda () (_%unlock202250%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp202575
                                       __tmp202574))))))
                        (let ((__tmp202578
                               (lambda ()
                                 (let ((__tmp202579
                                        (path-directory _%output-bin202204%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp202579)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp202578))
                        (gxc#with-output-to-scheme-file
                         _%output-scm202206%_
                         (lambda ()
                           (_%generate-stub202131%_
                            _%builtin-modules202230%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it202238%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp202580
                                                   (let ((__tmp202581
                                                          (let ((__tmp202582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm202198%_
                               (cons _%output-scm202206%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202582 _%src-deps-scm202182%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp202581
                                                      _%libgerbil-c202168%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp202580
                                               _%gsc-link-opts202216%_))))
                                     (for-each
                                      _%compile-obj202233%_
                                      (let ((__tmp202583
                                             (cons _%src-bin-scm202198%_
                                                   (cons _%output-scm202206%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp202583
                                         _%src-deps-scm202182%_))
                                      (let ((__tmp202584
                                             (cons _%src-bin-c202200%_
                                                   (cons _%output-c202208%_
                                                         (cons _%output_-c202212%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp202584
                                         _%src-deps-c202188%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin202204%_
                                                        (let ((__tmp202585
                                                               (cons _%src-bin-o202202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o202210%_
                                   (cons _%output_-o202214%_
                                         (let ((__tmp202586
                                                (let ((__tmp202587
                                                       (let ((__tmp202589
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir202152%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts202224%_))))
                     (__tmp202588
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath202226%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp202589 __tmp202588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp202587
                                                   _%output-ld-opts202222%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp202586
                                            _%libgerbil-o202174%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp202585 _%src-deps-o202194%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp202590
                                            (cons _%output-c202208%_
                                                  (cons _%output_-c202212%_
                                                        (cons _%output-o202210%_
                                                              (cons _%output_-o202214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp202590)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it202238%_))
                                  (_%compile-it202238%_)))
                            '#!void))))))
          (let* ((_%output-bin202142%_
                  (gxc#compile-exe-output-file _%ctx202128%_ _%opts202129%_))
                 (_%output-scm202144%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin202142%_ '"__exe.scm"))))
            (_%compile-stub202140%_
             _%output-scm202144%_
             _%output-bin202142%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx201950%_ _%opts201951%_)
        (letrec ((_%reset-declare201953%_
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
                 (_%generate-stub201954%_
                  (lambda (_%deps202119%_)
                    (let ((_%mod-main202121%_
                           (gxc#find-runtime-symbol _%ctx201950%_ 'main))
                          (_%reset-decl202122%_ (_%reset-declare201953%_))
                          (_%user-decl202123%_ (_%user-declare201955%_)))
                      (for-each
                       (lambda (_%dep202125%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl202122%_))
                         (newline)
                         (if _%user-decl202123%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl202123%_))
                               (newline))
                             '#!void)
                         (let ((__tmp202591
                                (cons 'include (cons _%dep202125%_ '()))))
                           (declare (not safe))
                           (##write __tmp202591))
                         (newline))
                       _%deps202119%_)
                      (let ((__tmp202592
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main202121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp202592))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare201955%_
                  (lambda ()
                    (let* ((_%gsc-opts202024%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts201951%_)))
                           (_%gsc-prelude202026%_
                            (if _%gsc-opts202024%_
                                (member '"-prelude" _%gsc-opts202024%_)
                                '#f))
                           (_%gsc-prelude202028%_
                            (if _%gsc-prelude202026%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude202026%_)))
                                '#f)))
                      (let _%lp202031%_ ((_%rest202033%_
                                          (cons _%gsc-prelude202028%_ '()))
                                         (_%user-decls202034%_ '()))
                        (let* ((_%rest202035202043%_ _%rest202033%_)
                               (_%else202037202051%_
                                (lambda ()
                                  (if (null? _%user-decls202034%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls202034%_)))))
                               (_%K202039202107%_
                                (lambda (_%rest202054%_ _%expr202055%_)
                                  (let* ((_%expr202056202068%_ _%expr202055%_)
                                         (_%else202059202076%_
                                          (lambda ()
                                            (_%lp202031%_
                                             _%rest202054%_
                                             _%user-decls202034%_))))
                                    (let ((_%K202064202097%_
                                           (lambda (_%decls202095%_)
                                             (_%lp202031%_
                                              _%rest202054%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls202034%_
                                                 _%decls202095%_)))))
                                          (_%K202061202082%_
                                           (lambda (_%exprs202080%_)
                                             (_%lp202031%_
                                              (append _%exprs202080%_
                                                      _%rest202054%_)
                                              _%user-decls202034%_))))
                                      (if (pair? _%expr202056202068%_)
                                          (let ((_%tl202066202102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr202056202068%_)))
                                                (_%hd202065202100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr202056202068%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd202065202100%_
                                                         'declare))
                                                (let ((_%decls202105%_
                                                       _%tl202066202102%_))
                                                  (_%K202064202097%_
                                                   _%decls202105%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd202065202100%_
                                                             'begin))
                                                    (let ((_%exprs202090%_
                                                           _%tl202066202102%_))
                                                      (_%K202061202082%_
                                                       _%exprs202090%_))
                                                    (_%else202059202076%_))))
                                          (_%else202059202076%_)))))))
                          (if (pair? _%rest202035202043%_)
                              (let ((_%hd202040202110%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest202035202043%_)))
                                    (_%tl202041202112%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest202035202043%_))))
                                (let* ((_%expr202115%_ _%hd202040202110%_)
                                       (_%rest202117%_ _%tl202041202112%_))
                                  (_%K202039202107%_
                                   _%rest202117%_
                                   _%expr202115%_)))
                              (_%else202037202051%_)))))))
                 (_%compile-stub201956%_
                  (lambda (_%output-scm201963%_ _%output-bin201964%_)
                    (let* ((_%gerbil-home201966%_
                            (let ((__tmp202593
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp202593)))
                           (_%gerbil-libdir201968%_
                            (path-expand '"lib" _%gerbil-home201966%_))
                           (_%runtime201970%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp201972%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home201966%_))
                           (_%include-gambit-sharp201974%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp201972%_
                               '"\")")))
                           (_%bin-scm201976%_
                            (gxc#find-static-module-file _%ctx201950%_))
                           (_%deps201978%_
                            (gxc#find-runtime-module-deps _%ctx201950%_))
                           (_%deps201980%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps201978%_)))
                           (_%deps201985%_
                            (let ((__tmp202594
                                   (lambda (_%$obj201982%_)
                                     (not (gxc#file-empty? _%$obj201982%_)))))
                              (declare (not safe))
                              (##filter __tmp202594 _%deps201980%_)))
                           (_%deps201989%_
                            (let ((__tmp202595
                                   (lambda (_%f201987%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f201987%_
                                             _%runtime201970%_))))))
                              (declare (not safe))
                              (##filter __tmp202595 _%deps201985%_)))
                           (_%output-base201991%_
                            (let ((__tmp202596
                                   (path-strip-extension
                                    _%output-scm201963%_)))
                              (declare (not safe))
                              (##string-append __tmp202596)))
                           (_%output-c201993%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201991%_ '".c")))
                           (_%output-o201995%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201991%_ '".o")))
                           (_%output-c_201997%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201991%_ '"_.c")))
                           (_%output-o_201999%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201991%_ '"_.o")))
                           (_%gsc-link-opts202001%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts202003%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts202005%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir201968%_)))
                           (_%output-ld-opts202007%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros202009%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp201974%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp201974%_
                                            '()))))
                           (_%gsc-link-opts202011%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts202001%_
                               _%gsc-gx-macros202009%_)))
                           (_%rpath202013%_
                            (gxc#gerbil-rpath _%gerbil-libdir201968%_))
                           (_%default-ld-options202015%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp202597
                             (lambda ()
                               (let ((__tmp202598
                                      (path-directory _%output-bin201964%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp202598)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp202597))
                      (gxc#with-output-to-scheme-file
                       _%output-scm201963%_
                       (lambda ()
                         (_%generate-stub201954%_
                          (let ((__tmp202599
                                 (let ((__tmp202600
                                        (cons _%bin-scm201976%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp202600
                                    _%deps201989%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp202599 _%runtime201970%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it202021%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_201997%_
                                                      (let ((__tmp202601
                                                             (cons _%output-scm201963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp202601 _%gsc-link-opts202011%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp202602
                                                 (let ((__tmp202603
                                                        (cons _%output-c201993%_
                                                              (cons _%output-c_201997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp202603
                                                    _%gsc-static-opts202005%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp202602
                                             _%gsc-cc-opts202003%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin201964%_
                                                      (cons _%output-o201995%_
                                                            (cons _%output-o_201999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp202604
                                 (let ((__tmp202606
                                        (cons '"-L"
                                              (cons _%gerbil-libdir201968%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options202015%_))))
                                       (__tmp202605
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath202013%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp202606 __tmp202605))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp202604
                             _%output-ld-opts202007%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it202021%_))
                                (_%compile-it202021%_)))
                          '#!void)))))
          (let* ((_%output-bin201958%_
                  (gxc#compile-exe-output-file _%ctx201950%_ _%opts201951%_))
                 (_%output-scm201960%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin201958%_ '"__exe.scm"))))
            (_%compile-stub201956%_
             _%output-scm201960%_
             _%output-bin201958%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx201899%_ _%id201900%_)
        (let ((_%$e201946%_
               (let ((__tmp202608
                      (lambda (_%e201901201903%_)
                        (let* ((_%g201905201915%_ _%e201901201903%_)
                               (_%else201907201923%_ (lambda () '#f))
                               (_%K201909201927%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g201905201915%_
                                 'gx#module-export::t))
                              (let* ((_%e201910201930%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201905201915%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e201911201933%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201905201915%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e201912201936%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201905201915%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e201912201936%_ '0))
                                    (let ((_%e201913201939%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g201905201915%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g201941201943%_)
                                             (eq? _%g201941201943%_
                                                  _%id201900%_))
                                           _%e201913201939%_)
                                          (_%K201909201927%_)
                                          (_%else201907201923%_)))
                                    (_%else201907201923%_)))
                              (_%else201907201923%_)))))
                     (__tmp202607
                      (##structure-ref
                       _%ctx201899%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp202608 __tmp202607))))
          (if _%$e201946%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e201946%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx201890%_ _%id201891%_)
        (let ((_%$e201893%_
               (gxc#find-export-binding _%ctx201890%_ _%id201891%_)))
          (if _%$e201893%_
              ((lambda (_%bind201896%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind201896%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id201891%_)))
                 (##structure-ref _%bind201896%_ '1 gx#binding::t '#f))
               _%$e201893%_)
              (let ((__tmp202609
                     (##structure-ref
                      _%ctx201890%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp202609
                 _%id201891%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx201756%_)
        (letrec* ((_%ht201758%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template201759%_
                   (lambda (_%in201835%_ _%phi201836%_)
                     (let ((_%iphi201838%_
                            (fx+ _%phi201836%_
                                 (##direct-structure-ref
                                  _%in201835%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports201839%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in201835%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp201841%_ ((_%rest201843%_ _%imports201839%_)
                                          (_%r201844%_ '()))
                         (let* ((_%rest201845201853%_ _%rest201843%_)
                                (_%else201847201861%_ (lambda () _%r201844%_))
                                (_%K201849201878%_
                                 (lambda (_%rest201864%_ _%in201865%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in201865%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi201838%_))
                                           (_%lp201841%_
                                            _%rest201864%_
                                            (cons _%in201865%_ _%r201844%_))
                                           (_%lp201841%_
                                            _%rest201864%_
                                            _%r201844%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in201865%_
                                              'gx#module-import::t))
                                           (let ((_%iphi201869%_
                                                  (fx+ _%phi201836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in201865%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi201869%_))
                                                 (_%lp201841%_
                                                  _%rest201864%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in201865%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r201844%_))
                                                 (_%lp201841%_
                                                  _%rest201864%_
                                                  _%r201844%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in201865%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi201872%_
                                                      (fx+ _%iphi201838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in201865%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi201872%_))
                                                     (_%lp201841%_
                                                      _%rest201864%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in201865%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r201844%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi201872%_))
                                                         (_%lp201841%_
                                                          _%rest201864%_
                                                          (let ((__tmp202610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template201759%_
                          _%in201865%_
                          _%iphi201838%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r201844%_ __tmp202610)))
                 (_%lp201841%_ _%rest201864%_ _%r201844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp201841%_
                                                _%rest201864%_
                                                _%r201844%_)))))))
                           (if (pair? _%rest201845201853%_)
                               (let ((_%hd201850201881%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest201845201853%_)))
                                     (_%tl201851201883%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest201845201853%_))))
                                 (let* ((_%in201886%_ _%hd201850201881%_)
                                        (_%rest201888%_ _%tl201851201883%_))
                                   (_%K201849201878%_
                                    _%rest201888%_
                                    _%in201886%_)))
                               (_%else201847201861%_)))))))
                  (_%find-deps201760%_
                   (lambda (_%rest201768%_ _%deps201769%_)
                     (let* ((_%rest201770201778%_ _%rest201768%_)
                            (_%else201772201786%_ (lambda () _%deps201769%_))
                            (_%K201774201823%_
                             (lambda (_%rest201789%_ _%hd201790%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd201790%_
                                      'gx#module-context::t))
                                   (let ((_%id201793%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201790%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports201794%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201790%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht201758%_
                                            _%id201793%_))
                                         (_%find-deps201760%_
                                          _%rest201789%_
                                          _%deps201769%_)
                                         (let ((_%$e201797%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd201790%_))))
                                           (if _%$e201797%_
                                               ((lambda (_%pre201800%_)
                                                  (let ((_%xdeps201802%_
                                                         (_%find-deps201760%_
                                                          (cons _%pre201800%_
                                                                _%imports201794%_)
                                                          _%deps201769%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht201758%_
                                                       _%id201793%_
                                                       _%hd201790%_))
                                                    (_%find-deps201760%_
                                                     _%rest201789%_
                                                     (cons _%hd201790%_
                                                           _%xdeps201802%_))))
                                                _%$e201797%_)
                                               (let ((_%xdeps201805%_
                                                      (_%find-deps201760%_
                                                       _%imports201794%_
                                                       _%deps201769%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht201758%_
                                                    _%id201793%_
                                                    _%hd201790%_))
                                                 (_%find-deps201760%_
                                                  _%rest201789%_
                                                  (cons _%hd201790%_
                                                        _%xdeps201805%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd201790%_
                                          'gx#prelude-context::t))
                                       (let ((_%id201808%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd201790%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht201758%_
                                                _%id201808%_))
                                             (_%find-deps201760%_
                                              _%rest201789%_
                                              _%deps201769%_)
                                             (let ((_%xdeps201812%_
                                                    (_%find-deps201760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd201790%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps201769%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht201758%_
                                                      _%id201808%_))
                                                   (_%find-deps201760%_
                                                    _%rest201789%_
                                                    _%xdeps201812%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht201758%_
                                                        _%id201808%_
                                                        _%hd201790%_))
                                                     (_%find-deps201760%_
                                                      _%rest201789%_
                                                      (cons _%hd201790%_
                                                            _%xdeps201812%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd201790%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd201790%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps201760%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201790%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201789%_)
                                                _%deps201769%_)
                                               (_%find-deps201760%_
                                                _%rest201789%_
                                                _%deps201769%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd201790%_
                                                  'gx#module-export::t))
                                               (_%find-deps201760%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201790%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201789%_)
                                                _%deps201769%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd201790%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd201790%_ '2 '#f '#f)))
               (_%find-deps201760%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd201790%_ '1 '#f '#f))
                      _%rest201789%_)
                _%deps201769%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd201790%_ '2 '#f '#f)))
                   (let ((_%xdeps201819%_
                          (_%import-set-template201759%_ _%hd201790%_ '0)))
                     (_%find-deps201760%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest201789%_ _%xdeps201819%_))
                      _%deps201769%_))
                   (_%find-deps201760%_ _%rest201789%_ _%deps201769%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd201790%_))))))))))
                       (if (pair? _%rest201770201778%_)
                           (let ((_%hd201775201826%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest201770201778%_)))
                                 (_%tl201776201828%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest201770201778%_))))
                             (let* ((_%hd201831%_ _%hd201775201826%_)
                                    (_%rest201833%_ _%tl201776201828%_))
                               (_%K201774201823%_
                                _%rest201833%_
                                _%hd201831%_)))
                           (_%else201772201786%_))))))
          (let ((__tmp202611
                 (filter gx#expander-context-id
                         (_%find-deps201760%_
                          (let ((_%$e201762%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx201756%_))))
                            (if _%$e201762%_
                                ((lambda (_%pre201765%_)
                                   (cons _%pre201765%_
                                         (##structure-ref
                                          _%ctx201756%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e201762%_)
                                (##structure-ref
                                 _%ctx201756%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp202611)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx201686%_)
        (let* ((_%context-id201688%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx201686%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx201686%_ '1 '#f '#f))
                    (string->symbol _%ctx201686%_)))
               (_%scm201690%_
                (let ((__tmp202612
                       (gxc#static-module-name _%context-id201688%_)))
                  (declare (not safe))
                  (##string-append __tmp202612 '".scm")))
               (_%dirs201692%_ (let () (declare (not safe)) (load-path)))
               (_%dirs201698%_
                (let ((_%user-libpath201694%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath201694%_
                      (let ((_%user-libpath201696%_
                             (path-expand '"lib" _%user-libpath201694%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath201696%_ _%dirs201692%_))
                            _%dirs201692%_
                            (cons _%user-libpath201696%_ _%dirs201692%_)))
                      _%dirs201692%_)))
               (_%dirs201708%_
                (let ((_%$e201700%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e201700%_
                      ((lambda (_%g201702201704%_)
                         (cons _%g201702201704%_ _%dirs201698%_))
                       _%$e201700%_)
                      _%dirs201698%_)))
               (_%dirs201714%_
                (let ((__tmp202613
                       (lambda (_%g201709201711%_)
                         (path-expand '"static" _%g201709201711%_))))
                  (declare (not safe))
                  (##map __tmp202613 _%dirs201708%_))))
          (let _%lp201717%_ ((_%rest201719%_ _%dirs201714%_))
            (let* ((_%rest201720201728%_ _%rest201719%_)
                   (_%else201722201736%_
                    (lambda ()
                      (let ((__tmp202614
                             (##structure-ref
                              _%ctx201686%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp202614
                         _%scm201690%_))))
                   (_%K201724201744%_
                    (lambda (_%rest201739%_ _%dir201740%_)
                      (let ((_%path201742%_
                             (path-expand _%scm201690%_ _%dir201740%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path201742%_))
                            _%path201742%_
                            (_%lp201717%_ _%rest201739%_))))))
              (if (pair? _%rest201720201728%_)
                  (let ((_%hd201725201747%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201720201728%_)))
                        (_%tl201726201749%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201720201728%_))))
                    (let* ((_%dir201752%_ _%hd201725201747%_)
                           (_%rest201754%_ _%tl201726201749%_))
                      (_%K201724201744%_ _%rest201754%_ _%dir201752%_)))
                  (_%else201722201736%_)))))))
    (define gxc#file-empty?
      (lambda (_%path201684%_)
        (zero? (let ((__tmp202615 (file-info _%path201684%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp202615)))))
    (define gxc#compile-top-module
      (lambda (_%ctx201680%_)
        (let ((__tmp202619
               (lambda ()
                 (let ((__tmp202620
                        (##structure-ref
                         _%ctx201680%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp202620))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp202621
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx201680%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp202621))
                     '#!void)
                 (gxc#collect-bindings _%ctx201680%_)
                 (gxc#compile-runtime-code _%ctx201680%_)
                 (gxc#compile-meta-code _%ctx201680%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx201680%_)
                     '#!void)))
              (__tmp202618
               (let ((__obj202542
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj202542))
                 __obj202542))
              (__tmp202617 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp202616
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
           __tmp202619
           gx#current-expander-context
           _%ctx201680%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp202618
           gxc#current-compile-runtime-sections
           __tmp202617
           gxc#current-compile-runtime-names
           __tmp202616))))
    (define gxc#collect-bindings
      (lambda (_%ctx201678%_)
        (let ((__tmp202622
               (##structure-ref _%ctx201678%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp202622))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx201626%_)
        (letrec ((_%compile1201628%_
                  (lambda (_%ctx201667%_)
                    (let* ((_%code201669%_
                            (##structure-ref
                             _%ctx201667%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm201673%_
                            (let ((_%idstr201671%_
                                   (let ((__tmp202623
                                          (##structure-ref
                                           _%ctx201667%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp202623))))
                              (declare (not safe))
                              (##string-append _%idstr201671%_ '"~0")))
                           (_%rtc?201675%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code201669%_))))
                      (if _%rtc?201675%_
                          (let ((__tmp202624
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp202624
                             _%ctx201667%_
                             _%rtm201673%_))
                          '#!void)
                      (_%generate-runtime-code201630%_
                       _%ctx201667%_
                       _%code201669%_
                       (if _%rtc?201675%_ _%rtm201673%_ '#f)))))
                 (_%context-timestamp201629%_
                  (lambda (_%ctx201665%_)
                    (let ((__tmp202625
                           (let ((__tmp202626
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx201665%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp202626 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp202625))))
                 (_%generate-runtime-code201630%_
                  (lambda (_%ctx201637%_ _%code201638%_ _%rtm201639%_)
                    (let* ((_%runtime-code?201641%_ (if _%rtm201639%_ '#t '#f))
                           (_%lifts201643%_ (box '()))
                           (_%runtime-code201646%_
                            (if _%runtime-code?201641%_
                                (let ((__tmp202629
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code201638%_))))
                                      (__tmp202628
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp202627
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp202629
                                   gx#current-expander-context
                                   _%ctx201637%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts201643%_
                                   gxc#current-compile-marks
                                   __tmp202628
                                   gxc#current-compile-identifiers
                                   __tmp202627))
                                '#f))
                           (_%runtime-code201648%_
                            (if _%runtime-code?201641%_
                                (if (null? (unbox _%lifts201643%_))
                                    _%runtime-code201646%_
                                    (cons 'begin
                                          (let ((__tmp202631
                                                 (cons _%runtime-code201646%_
                                                       '()))
                                                (__tmp202630
                                                 (reverse (unbox _%lifts201643%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp202631
                                             __tmp202630))))
                                '#f))
                           (_%runtime-code201650%_
                            (if _%runtime-code?201641%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp201629%_
                                                         _%ctx201637%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code201648%_ '())))
                                '#f))
                           (_%loader-code201653%_
                            (let ((__tmp202632
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code201638%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp202632
                               gx#current-expander-context
                               _%ctx201637%_)))
                           (_%loader-code201655%_
                            (cons 'begin
                                  (cons _%loader-code201653%_
                                        (cons (if _%runtime-code?201641%_
                                                  (cons 'load-module
                                                        (cons _%rtm201639%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0201657%_
                            (gxc#compile-output-file _%ctx201637%_ '0 '".scm"))
                           (_%scmrt201659%_
                            (gxc#compile-output-file
                             _%ctx201637%_
                             '#f
                             '".scm"))
                           (_%scms201661%_
                            (gxc#compile-static-output-file _%ctx201637%_)))
                      (if _%runtime-code?201641%_
                          (gxc#compile-scm-file__0
                           _%scm0201657%_
                           _%runtime-code201650%_)
                          '#!void)
                      (let ((__tmp202633
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt201659%_
                                _%loader-code201655%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp202633
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms201661%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms201661%_))
                          '#!void)
                      (if _%runtime-code?201641%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0201657%_ _%scms201661%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms201661%_ void)))))))
          (let* ((_%all-modules201632%_
                  (cons _%ctx201626%_ (gxc#lift-nested-modules _%ctx201626%_)))
                 (__tmp202634
                  (lambda (_%ctx201634%_)
                    (let ((__tmp202635
                           (lambda () (_%compile1201628%_ _%ctx201634%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp202635
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp202634 _%all-modules201632%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx201526%_)
        (letrec ((_%compile-ssi201528%_
                  (lambda (_%code201594%_)
                    (let* ((_%path201596%_
                            (gxc#compile-output-file
                             _%ctx201526%_
                             '#f
                             '".ssi"))
                           (_%prelude201608%_
                            (let* ((_%super201598%_
                                    (##structure-ref
                                     _%ctx201526%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e201600%_
                                    (##structure-ref
                                     _%super201598%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e201600%_
                                  ((lambda (_%g201602201604%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g201602201604%_)))
                                   _%$e201600%_)
                                  ':<root>)))
                           (_%ns201610%_
                            (##structure-ref
                             _%ctx201526%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr201612%_
                            (symbol->string
                             (##structure-ref
                              _%ctx201526%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg201620%_
                            (let ((_%$e201614%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr201612%_ '#\/))))
                              (if _%$e201614%_
                                  ((lambda (_%x201617%_)
                                     (let ((__tmp202636
                                            (substring
                                             _%idstr201612%_
                                             '0
                                             _%x201617%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp202636)))
                                   _%$e201614%_)
                                  '#f)))
                           (_%rt201622%_
                            (let ((__tmp202637
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp202637 _%ctx201526%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path201596%_))
                      (gxc#with-output-to-scheme-file
                       _%path201596%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude201608%_))
                         (if _%pkg201620%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg201620%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns201610%_))
                         (newline)
                         (pretty-print _%code201594%_)
                         (if _%rt201622%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt201622%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi201529%_
                  (lambda (_%part201534%_)
                    (let* ((_%part201535201548%_ _%part201534%_)
                           (_%E201537201552%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part201535201548%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K201538201563%_
                            (lambda (_%code201555%_
                                     _%n201556%_
                                     _%phi201557%_
                                     _%phi-ctx201558%_)
                              (let ((_%code201561%_
                                     (let ((__tmp202638
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code201555%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp202638
                                        gx#current-expander-context
                                        _%phi-ctx201558%_
                                        gx#current-expander-phi
                                        _%phi201557%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx201526%_
                                  _%n201556%_
                                  '".scm")
                                 _%code201561%_
                                 '#t)))))
                      (if (pair? _%part201535201548%_)
                          (let ((_%hd201539201566%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part201535201548%_)))
                                (_%tl201540201568%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part201535201548%_))))
                            (let ((_%phi-ctx201571%_ _%hd201539201566%_))
                              (if (pair? _%tl201540201568%_)
                                  (let ((_%hd201541201573%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201540201568%_)))
                                        (_%tl201542201575%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201540201568%_))))
                                    (let ((_%phi201578%_ _%hd201541201573%_))
                                      (if (pair? _%tl201542201575%_)
                                          (let ((_%hd201543201580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl201542201575%_)))
                                                (_%tl201544201582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl201542201575%_))))
                                            (let ((_%n201585%_
                                                   _%hd201543201580%_))
                                              (if (pair? _%tl201544201582%_)
                                                  (let ((_%hd201545201587%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl201544201582%_)))
                                                        (_%tl201546201589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl201544201582%_))))
                                                    (let ((_%code201592%_
                                                           _%hd201545201587%_))
                                                      (if (null? _%tl201546201589%_)
                                                          (_%K201538201563%_
                                                           _%code201592%_
                                                           _%n201585%_
                                                           _%phi201578%_
                                                           _%phi-ctx201571%_)
                                                          (_%E201537201552%_))))
                                                  (_%E201537201552%_))))
                                          (_%E201537201552%_))))
                                  (_%E201537201552%_))))
                          (_%E201537201552%_))))))
          (let ((_g202639_ (gxc#generate-meta-code _%ctx201526%_)))
            (begin
              (let ((_g202640_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g202639_)
                           (##vector-length _g202639_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g202640_ 2)))
                    (error "Context expects 2 values" _g202640_)))
              (let ((_%ssi-code201531%_
                     (let () (declare (not safe)) (##vector-ref _g202639_ 0)))
                    (_%phi-code201532%_
                     (let () (declare (not safe)) (##vector-ref _g202639_ 1))))
                (begin
                  (_%compile-ssi201528%_ _%ssi-code201531%_)
                  (for-each _%compile-phi201529%_ _%phi-code201532%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx201508%_)
        (let* ((_%path201510%_
                (gxc#compile-output-file _%ctx201508%_ '#f '".ssxi.ss"))
               (_%code201512%_
                (let ((__tmp202641
                       (##structure-ref
                        _%ctx201508%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp202641)))
               (_%idstr201514%_
                (symbol->string
                 (##structure-ref
                  _%ctx201508%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg201522%_
                (let ((_%$e201516%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr201514%_ '#\/))))
                  (if _%$e201516%_
                      ((lambda (_%x201519%_)
                         (let ((__tmp202642
                                (substring _%idstr201514%_ '0 _%x201519%_)))
                           (declare (not safe))
                           (##string->symbol __tmp202642)))
                       _%$e201516%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path201510%_))
          (gxc#with-output-to-scheme-file
           _%path201510%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg201522%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg201522%_))
                 '#!void)
             (newline)
             (pretty-print _%code201512%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx201501%_)
        (let* ((_%state201503%_
                (let ((__obj202543
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj202543 _%ctx201501%_))
                  __obj202543))
               (_%ssi-code201505%_
                (let ((__tmp202643
                       (##structure-ref
                        _%ctx201501%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state201503%_
                   __tmp202643))))
          (values _%ssi-code201505%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state201503%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx201494%_)
        (let ((_%lifts201496%_ (box '())))
          (let ((__tmp202646
                 (lambda ()
                   (let ((_%code201499%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx201494%_))))
                     (if (null? (unbox _%lifts201496%_))
                         _%code201499%_
                         (cons 'begin
                               (let ((__tmp202648 (cons _%code201499%_ '()))
                                     (__tmp202647
                                      (reverse (unbox _%lifts201496%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp202648 __tmp202647)))))))
                (__tmp202645
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp202644
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202646
             gxc#current-compile-lift
             _%lifts201496%_
             gxc#current-compile-marks
             __tmp202645
             gxc#current-compile-identifiers
             __tmp202644)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx201490%_)
        (let ((_%modules201492%_ (box '())))
          (let ((__tmp202649
                 (##structure-ref _%ctx201490%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules201492%_ __tmp202649))
          (reverse (unbox _%modules201492%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path201470%_ _%code201471%_ _%phi?201472%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path201470%_))
        (gxc#with-output-to-scheme-file
         _%path201470%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp202650
                                           (if _%phi?201472%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp202650)))))))
           (pretty-print _%code201471%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it201476%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path201470%_ _%phi?201472%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp202651
                         (cons 'compile-file (cons _%path201470%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it201476%_ __tmp202651))
                  (_%compile-it201476%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path201481%_ _%code201482%_)
        (let ((_%phi?201484%_ '#f))
          (gxc#compile-scm-file__%
           _%path201481%_
           _%code201482%_
           _%phi?201484%_))))
    (define gxc#compile-scm-file
      (lambda _g202653_
        (let ((_g202652_ (let () (declare (not safe)) (##length _g202653_))))
          (cond ((let () (declare (not safe)) (##fx= _g202652_ 2))
                 (apply gxc#compile-scm-file__0 _g202653_))
                ((let () (declare (not safe)) (##fx= _g202652_ 3))
                 (apply gxc#compile-scm-file__% _g202653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g202653_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?201371%_)
        (let _%lp201373%_ ((_%rest201375%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts201376%_ '()))
          (let* ((_%rest201377201397%_ _%rest201375%_)
                 (_%else201381201405%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts201376%_)))
                        (reverse _%opts201376%_)))))
            (let ((_%K201391201448%_
                   (lambda (_%rest201446%_)
                     (_%lp201373%_ _%rest201446%_ _%opts201376%_)))
                  (_%K201386201430%_
                   (lambda (_%rest201428%_)
                     (_%lp201373%_ _%rest201428%_ _%opts201376%_)))
                  (_%K201383201412%_
                   (lambda (_%rest201409%_ _%opt201410%_)
                     (_%lp201373%_
                      _%rest201409%_
                      (cons _%opt201410%_ _%opts201376%_)))))
              (if (pair? _%rest201377201397%_)
                  (let ((_%tl201393201453%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201377201397%_)))
                        (_%hd201392201451%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201377201397%_))))
                    (if (equal? _%hd201392201451%_ '"-cc-options")
                        (if (pair? _%tl201393201453%_)
                            (let* ((_%tl201395201456%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl201393201453%_)))
                                   (_%rest201459%_ _%tl201395201456%_))
                              (_%K201391201448%_ _%rest201459%_))
                            (let ((_%opt201420%_ _%hd201392201451%_)
                                  (_%rest201422%_ _%tl201393201453%_))
                              (_%K201383201412%_
                               _%rest201422%_
                               _%opt201420%_)))
                        (if (equal? _%hd201392201451%_ '"-ld-options")
                            (if (pair? _%tl201393201453%_)
                                (let* ((_%tl201390201438%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl201393201453%_)))
                                       (_%rest201441%_ _%tl201390201438%_))
                                  (_%K201386201430%_ _%rest201441%_))
                                (let ((_%opt201420%_ _%hd201392201451%_)
                                      (_%rest201422%_ _%tl201393201453%_))
                                  (_%K201383201412%_
                                   _%rest201422%_
                                   _%opt201420%_)))
                            (let ((_%opt201420%_ _%hd201392201451%_)
                                  (_%rest201422%_ _%tl201393201453%_))
                              (_%K201383201412%_
                               _%rest201422%_
                               _%opt201420%_)))))
                  (_%else201381201405%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?201465%_ '#f)) (gxc#gsc-link-options__% _%phi?201465%_))))
    (define gxc#gsc-link-options
      (lambda _g202655_
        (let ((_g202654_ (let () (declare (not safe)) (##length _g202655_))))
          (cond ((let () (declare (not safe)) (##fx= _g202654_ 0))
                 (apply gxc#gsc-link-options__0 _g202655_))
                ((let () (declare (not safe)) (##fx= _g202654_ 1))
                 (apply gxc#gsc-link-options__% _g202655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g202655_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords201220%_ _%static?201216201221%_ _%phi?201223%_)
        (let ((_%static?201225%_
               (if (eq? _%static?201216201221%_ absent-value)
                   '#f
                   _%static?201216201221%_)))
          (if _%phi?201223%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp201227%_ ((_%rest201229%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts201230%_ '()))
                (let* ((_%rest201231201257%_ _%rest201229%_)
                       (_%else201236201265%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts201230%_)))
                              (reverse! _%opts201230%_)))))
                  (let ((_%K201251201328%_
                         (lambda (_%rest201325%_ _%opt201326%_)
                           (if _%static?201225%_
                               (_%lp201227%_
                                _%rest201325%_
                                (cons _%opt201326%_
                                      (cons '"-cc-options" _%opts201230%_)))
                               (_%lp201227%_ _%rest201325%_ _%opts201230%_))))
                        (_%K201246201305%_
                         (lambda (_%rest201302%_ _%opt201303%_)
                           (_%lp201227%_
                            _%rest201302%_
                            (cons _%opt201303%_
                                  (cons '"-cc-options" _%opts201230%_)))))
                        (_%K201241201285%_
                         (lambda (_%rest201283%_)
                           (_%lp201227%_ _%rest201283%_ _%opts201230%_)))
                        (_%K201238201271%_
                         (lambda (_%rest201269%_)
                           (_%lp201227%_ _%rest201269%_ _%opts201230%_))))
                    (if (pair? _%rest201231201257%_)
                        (let ((_%tl201253201333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest201231201257%_)))
                              (_%hd201252201331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest201231201257%_))))
                          (if (equal? _%hd201252201331%_ '"-cc-options")
                              (if (pair? _%tl201253201333%_)
                                  (let ((_%tl201255201338%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201253201333%_)))
                                        (_%hd201254201336%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201253201333%_))))
                                    (if (equal? _%hd201254201336%_ '"-Bstatic")
                                        (let ((_%opt201341%_
                                               _%hd201254201336%_)
                                              (_%rest201343%_
                                               _%tl201255201338%_))
                                          (_%K201251201328%_
                                           _%rest201343%_
                                           _%opt201341%_))
                                        (let ((_%opt201318%_
                                               _%hd201254201336%_)
                                              (_%rest201320%_
                                               _%tl201255201338%_))
                                          (_%K201246201305%_
                                           _%rest201320%_
                                           _%opt201318%_))))
                                  (let ((_%rest201277%_ _%tl201253201333%_))
                                    (_%K201238201271%_ _%rest201277%_)))
                              (if (equal? _%hd201252201331%_ '"-ld-options")
                                  (if (pair? _%tl201253201333%_)
                                      (let* ((_%tl201245201293%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl201253201333%_)))
                                             (_%rest201296%_
                                              _%tl201245201293%_))
                                        (_%K201241201285%_ _%rest201296%_))
                                      (let ((_%rest201277%_
                                             _%tl201253201333%_))
                                        (_%K201238201271%_ _%rest201277%_)))
                                  (let ((_%rest201277%_ _%tl201253201333%_))
                                    (_%K201238201271%_ _%rest201277%_)))))
                        (_%else201236201265%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords201348%_ _%static?201216201349%_)
        (let ((_%phi?201351%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords201348%_
           _%static?201216201349%_
           _%phi?201351%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g202657_
        (let ((_g202656_ (let () (declare (not safe)) (##length _g202657_))))
          (cond ((let () (declare (not safe)) (##fx= _g202656_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g202657_))
                ((let () (declare (not safe)) (##fx= _g202656_ 3))
                 (apply gxc#gsc-cc-options__%__% _g202657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g202657_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords201360%_ . _%args201361%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords201360%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201360%_
                  'static:
                  absent-value))
               _%args201361%_)))
    (define gxc#gsc-cc-options
      (lambda _%args201217201367%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args201217201367%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords201065%_ _%static?201061201066%_ _%phi?201068%_)
        (let ((_%static?201070%_
               (if (eq? _%static?201061201066%_ absent-value)
                   '#f
                   _%static?201061201066%_)))
          (if _%phi?201068%_
              '()
              (let _%lp201072%_ ((_%rest201074%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts201075%_ '()))
                (let* ((_%rest201076201102%_ _%rest201074%_)
                       (_%else201081201110%_
                        (lambda () (reverse! _%opts201075%_))))
                  (let ((_%K201096201173%_
                         (lambda (_%rest201170%_ _%opt201171%_)
                           (if _%static?201070%_
                               (_%lp201072%_
                                _%rest201170%_
                                (cons _%opt201171%_
                                      (cons '"-ld-options" _%opts201075%_)))
                               (_%lp201072%_ _%rest201170%_ _%opts201075%_))))
                        (_%K201091201150%_
                         (lambda (_%rest201147%_ _%opt201148%_)
                           (_%lp201072%_
                            _%rest201147%_
                            (cons _%opt201148%_
                                  (cons '"-ld-options" _%opts201075%_)))))
                        (_%K201086201130%_
                         (lambda (_%rest201128%_)
                           (_%lp201072%_ _%rest201128%_ _%opts201075%_)))
                        (_%K201083201116%_
                         (lambda (_%rest201114%_)
                           (_%lp201072%_ _%rest201114%_ _%opts201075%_))))
                    (if (pair? _%rest201076201102%_)
                        (let ((_%tl201098201178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest201076201102%_)))
                              (_%hd201097201176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest201076201102%_))))
                          (if (equal? _%hd201097201176%_ '"-ld-options")
                              (if (pair? _%tl201098201178%_)
                                  (let ((_%tl201100201183%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201098201178%_)))
                                        (_%hd201099201181%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201098201178%_))))
                                    (if (equal? _%hd201099201181%_ '"-static")
                                        (let ((_%opt201186%_
                                               _%hd201099201181%_)
                                              (_%rest201188%_
                                               _%tl201100201183%_))
                                          (_%K201096201173%_
                                           _%rest201188%_
                                           _%opt201186%_))
                                        (let ((_%opt201163%_
                                               _%hd201099201181%_)
                                              (_%rest201165%_
                                               _%tl201100201183%_))
                                          (_%K201091201150%_
                                           _%rest201165%_
                                           _%opt201163%_))))
                                  (let ((_%rest201122%_ _%tl201098201178%_))
                                    (_%K201083201116%_ _%rest201122%_)))
                              (if (equal? _%hd201097201176%_ '"-cc-options")
                                  (if (pair? _%tl201098201178%_)
                                      (let* ((_%tl201090201138%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl201098201178%_)))
                                             (_%rest201141%_
                                              _%tl201090201138%_))
                                        (_%K201086201130%_ _%rest201141%_))
                                      (let ((_%rest201122%_
                                             _%tl201098201178%_))
                                        (_%K201083201116%_ _%rest201122%_)))
                                  (let ((_%rest201122%_ _%tl201098201178%_))
                                    (_%K201083201116%_ _%rest201122%_)))))
                        (_%else201081201110%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords201193%_ _%static?201061201194%_)
        (let ((_%phi?201196%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords201193%_
           _%static?201061201194%_
           _%phi?201196%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g202659_
        (let ((_g202658_ (let () (declare (not safe)) (##length _g202659_))))
          (cond ((let () (declare (not safe)) (##fx= _g202658_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g202659_))
                ((let () (declare (not safe)) (##fx= _g202658_ 3))
                 (apply gxc#gsc-ld-options__%__% _g202659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g202659_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords201205%_ . _%args201206%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords201205%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201205%_
                  'static:
                  absent-value))
               _%args201206%_)))
    (define gxc#gsc-ld-options
      (lambda _%args201062201212%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args201062201212%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir201056%_)
        (let ((_%user-staticdir201058%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir201056%_
                       '" -I "
                       _%user-staticdir201058%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp200968%_ ((_%rest200970%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts200971%_ '()))
          (let* ((_%rest200972200992%_ _%rest200970%_)
                 (_%else200976201000%_ (lambda () _%opts200971%_)))
            (let ((_%K200986201043%_
                   (lambda (_%rest201041%_)
                     (_%lp200968%_ _%rest201041%_ _%opts200971%_)))
                  (_%K200981201021%_
                   (lambda (_%rest201018%_ _%opt201019%_)
                     (_%lp200968%_
                      _%rest201018%_
                      (let ((__tmp202660
                             (let ((__tmp202661
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt201019%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp202661))))
                        (declare (not safe))
                        (##append _%opts200971%_ __tmp202660)))))
                  (_%K200978201006%_
                   (lambda (_%rest201004%_)
                     (_%lp200968%_ _%rest201004%_ _%opts200971%_))))
              (if (pair? _%rest200972200992%_)
                  (let ((_%tl200988201048%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200972200992%_)))
                        (_%hd200987201046%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200972200992%_))))
                    (if (equal? _%hd200987201046%_ '"-cc-options")
                        (if (pair? _%tl200988201048%_)
                            (let* ((_%tl200990201051%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl200988201048%_)))
                                   (_%rest201054%_ _%tl200990201051%_))
                              (_%K200986201043%_ _%rest201054%_))
                            (let ((_%rest201012%_ _%tl200988201048%_))
                              (_%K200978201006%_ _%rest201012%_)))
                        (if (equal? _%hd200987201046%_ '"-ld-options")
                            (if (pair? _%tl200988201048%_)
                                (let ((_%tl200985201031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl200988201048%_)))
                                      (_%hd200984201029%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl200988201048%_))))
                                  (let ((_%opt201034%_ _%hd200984201029%_)
                                        (_%rest201036%_ _%tl200985201031%_))
                                    (_%K200981201021%_
                                     _%rest201036%_
                                     _%opt201034%_)))
                                (let ((_%rest201012%_ _%tl200988201048%_))
                                  (_%K200978201006%_ _%rest201012%_)))
                            (let ((_%rest201012%_ _%tl200988201048%_))
                              (_%K200978201006%_ _%rest201012%_)))))
                  (_%else200976201000%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str200965%_)
        (not (let () (declare (not safe)) (string-empty? _%str200965%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path200958%_ _%phi?200959%_)
        (let ((_%gsc-link-opts200961%_
               (gxc#gsc-link-options__% _%phi?200959%_))
              (_%gsc-cc-opts200962%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?200959%_))
              (_%gsc-ld-opts200963%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?200959%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp202662
                  (let ((__tmp202663
                         (let ((__tmp202664 (cons _%path200958%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp202664
                            _%gsc-link-opts200961%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202663 _%gsc-ld-opts200963%_))))
             (declare (not safe))
             (__foldr1 cons __tmp202662 _%gsc-cc-opts200962%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx200924%_ _%n200925%_ _%ext200926%_)
        (letrec ((_%module-relative-path200928%_
                  (lambda (_%ctx200956%_)
                    (path-strip-directory
                     (let ((__tmp202665
                            (##structure-ref
                             _%ctx200956%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp202665)))))
                 (_%module-source-directory200929%_
                  (lambda (_%ctx200952%_)
                    (path-directory
                     (let ((_%mpath200954%_
                            (##structure-ref
                             _%ctx200952%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath200954%_)
                           _%mpath200954%_
                           (last _%mpath200954%_))))))
                 (_%section-string200930%_
                  (lambda (_%n200946%_)
                    (if (number? _%n200946%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n200946%_))
                        (if (symbol? _%n200946%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n200946%_))
                            (if (string? _%n200946%_)
                                _%n200946%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n200946%_)))))))
                 (_%file-name200931%_
                  (lambda (_%path200944%_)
                    (if _%n200925%_
                        (string-append
                         _%path200944%_
                         '"~"
                         (_%section-string200930%_ _%n200925%_)
                         _%ext200926%_)
                        (string-append _%path200944%_ _%ext200926%_))))
                 (_%file-path200932%_
                  (lambda ()
                    (let ((_%$e200938%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e200938%_
                          ((lambda (_%outdir200941%_)
                             (path-expand
                              (_%file-name200931%_
                               (let ((__tmp202666
                                      (##structure-ref
                                       _%ctx200924%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp202666)))
                              _%outdir200941%_))
                           _%$e200938%_)
                          (path-expand
                           (_%file-name200931%_
                            (_%module-relative-path200928%_ _%ctx200924%_))
                           (_%module-source-directory200929%_
                            _%ctx200924%_)))))))
          (let ((_%path200934%_ (_%file-path200932%_)))
            (let ((__tmp202667
                   (lambda ()
                     (let ((__tmp202668 (path-directory _%path200934%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202668)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202667))
            _%path200934%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx200905%_)
        (letrec ((_%file-name200907%_
                  (lambda (_%id200922%_)
                    (let ((__tmp202669 (gxc#static-module-name _%id200922%_)))
                      (declare (not safe))
                      (##string-append __tmp202669 '".scm"))))
                 (_%file-path200908%_
                  (lambda ()
                    (let* ((_%file200914%_
                            (_%file-name200907%_
                             (##structure-ref
                              _%ctx200905%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e200916%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e200916%_
                          ((lambda (_%outdir200919%_)
                             (path-expand
                              _%file200914%_
                              (path-expand '"static" _%outdir200919%_)))
                           _%$e200916%_)
                          (path-expand _%file200914%_ '"static"))))))
          (let ((_%path200910%_ (_%file-path200908%_)))
            (let ((__tmp202670
                   (lambda ()
                     (let ((__tmp202671 (path-directory _%path200910%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202671)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202670))
            _%path200910%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx200898%_ _%opts200899%_)
        (let ((_%$e200901%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts200899%_))))
          (if _%$e200901%_
              _%$e200901%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx200898%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr200888%_)
        (if (string? _%idstr200888%_)
            (let* ((_%str200891%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr200888%_)))
                   (_%strs200893%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str200891%_ '#\/))))
              (declare (not safe))
              (string-join _%strs200893%_ '"__"))
            (if (symbol? _%idstr200888%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr200888%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr200888%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp202672
               (let ((__tmp202673 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp202673 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp202672))))
    (define gxc#invoke__%
      (lambda (_%@@keywords200852%_
               _%stdout-redirection200848200853%_
               _%stderr-redirection200849200855%_
               _%program200857%_
               _%args200858%_)
        (let* ((_%stdout-redirection200860%_
                (if (eq? _%stdout-redirection200848200853%_ absent-value)
                    '#f
                    _%stdout-redirection200848200853%_))
               (_%stderr-redirection200862%_
                (if (eq? _%stderr-redirection200849200855%_ absent-value)
                    '#f
                    _%stderr-redirection200849200855%_)))
          (let ((__tmp202674 (cons _%program200857%_ _%args200858%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp202674))
          (let* ((_%proc200864%_
                  (open-process
                   (cons 'path:
                         (cons _%program200857%_
                               (cons 'arguments:
                                     (cons _%args200858%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection200860%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection200862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output200869%_
                  (if (or _%stdout-redirection200860%_
                          _%stderr-redirection200862%_)
                      (read-line _%proc200864%_ '#f)
                      '#f))
                 (_%status200872%_ (process-status _%proc200864%_)))
            (let () (declare (not safe)) (##close-port _%proc200864%_))
            (if (zero? _%status200872%_)
                '#!void
                (begin
                  (display _%output200869%_)
                  (let ((__tmp202675 (cons _%program200857%_ _%args200858%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp202675
                     _%status200872%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords200877%_ . _%args200878%_)
        (apply gxc#invoke__%
               _%@@keywords200877%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200877%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200877%_
                  'stderr-redirection:
                  absent-value))
               _%args200878%_)))
    (define gxc#invoke
      (lambda _%args200850200884%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args200850200884%_)))))
