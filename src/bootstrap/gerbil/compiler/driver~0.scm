(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1713631273)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp202348 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp202348))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp202349 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp202349))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path202205%_ _%fun202206%_)
        (with-output-to-file
         (cons 'path: (cons _%path202205%_ gxc#scheme-file-settings))
         _%fun202206%_)))
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
      (lambda (_%gerbil-libdir202200%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir202200%_)))
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
      (lambda (_%dir202198%_) (delete-file-or-directory _%dir202198%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath202171%_ _%opts202172%_)
        (if (string? _%srcpath202171%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath202171%_)))
        (let ((_%outdir202174%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts202172%_)))
              (_%invoke-gsc?202175%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts202172%_)))
              (_%gsc-options202176%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts202172%_)))
              (_%keep-scm?202177%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts202172%_)))
              (_%verbosity202178%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts202172%_)))
              (_%optimize202179%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts202172%_)))
              (_%debug202180%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts202172%_)))
              (_%gen-ssxi202181%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts202172%_)))
              (_%parallel?202182%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts202172%_))))
          (if _%outdir202174%_
              (let ((__tmp202350
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir202174%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202350))
              '#!void)
          (if _%optimize202179%_
              (let ((__tmp202351
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202351))
              '#!void)
          (let ((__tmp202354
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath202171%_))
                   (gxc#compile-top-module
                    (let ((__tmp202355
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath202171%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp202355)))))
                (__tmp202353 (gxc#compile-timestamp))
                (__tmp202352
                 (cons 'compile-module (cons _%srcpath202171%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202354
             gxc#current-compile-output-dir
             _%outdir202174%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?202175%_
             gxc#current-compile-gsc-options
             _%gsc-options202176%_
             gxc#current-compile-keep-scm
             _%keep-scm?202177%_
             gxc#current-compile-verbose
             _%verbosity202178%_
             gxc#current-compile-optimize
             _%optimize202179%_
             gxc#current-compile-debug
             _%debug202180%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi202181%_
             gxc#current-compile-timestamp
             __tmp202353
             gxc#current-compile-context
             __tmp202352
             gxc#current-compile-parallel
             _%parallel?202182%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath202191%_)
        (let ((_%opts202193%_ '()))
          (gxc#compile-module__% _%srcpath202191%_ _%opts202193%_))))
    (define gxc#compile-module
      (lambda _g202357_
        (let ((_g202356_ (let () (declare (not safe)) (##length _g202357_))))
          (cond ((let () (declare (not safe)) (##fx= _g202356_ 1))
                 (apply gxc#compile-module__0 _g202357_))
                ((let () (declare (not safe)) (##fx= _g202356_ 2))
                 (apply gxc#compile-module__% _g202357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g202357_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath202146%_ _%opts202147%_)
        (if (string? _%srcpath202146%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath202146%_)))
        (let ((_%outdir202149%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts202147%_)))
              (_%invoke-gsc?202150%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts202147%_)))
              (_%gsc-options202151%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts202147%_)))
              (_%keep-scm?202152%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts202147%_)))
              (_%verbosity202153%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts202147%_)))
              (_%debug202154%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts202147%_)))
              (_%parallel?202155%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts202147%_))))
          (if _%outdir202149%_
              (let ((__tmp202358
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir202149%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202358))
              '#!void)
          (let ((__tmp202361
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath202146%_))
                   (gxc#compile-executable-module
                    (let ((__tmp202362
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath202146%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp202362))
                    _%opts202147%_)))
                (__tmp202360 (gxc#compile-timestamp))
                (__tmp202359 (cons 'compile-exe (cons _%srcpath202146%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202361
             gxc#current-compile-output-dir
             _%outdir202149%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?202150%_
             gxc#current-compile-gsc-options
             _%gsc-options202151%_
             gxc#current-compile-keep-scm
             _%keep-scm?202152%_
             gxc#current-compile-verbose
             _%verbosity202153%_
             gxc#current-compile-debug
             _%debug202154%_
             gxc#current-compile-timestamp
             __tmp202360
             gxc#current-compile-context
             __tmp202359
             gxc#current-compile-parallel
             _%parallel?202155%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath202163%_)
        (let ((_%opts202165%_ '()))
          (gxc#compile-exe__% _%srcpath202163%_ _%opts202165%_))))
    (define gxc#compile-exe
      (lambda _g202364_
        (let ((_g202363_ (let () (declare (not safe)) (##length _g202364_))))
          (cond ((let () (declare (not safe)) (##fx= _g202363_ 1))
                 (apply gxc#compile-exe__0 _g202364_))
                ((let () (declare (not safe)) (##fx= _g202363_ 2))
                 (apply gxc#compile-exe__% _g202364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g202364_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx202142%_ _%opts202143%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts202143%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx202142%_
             _%opts202143%_)
            (gxc#compile-executable-module/separate
             _%ctx202142%_
             _%opts202143%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx201932%_ _%opts201933%_)
        (letrec ((_%generate-stub201935%_
                  (lambda (_%builtin-modules202138%_)
                    (let ((_%mod-main202140%_
                           (gxc#find-runtime-symbol _%ctx201932%_ 'main)))
                      (let ((__tmp202365
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules202138%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp202365))
                      (let ((__tmp202366
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main202140%_
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
                        (##write __tmp202366))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts201936%_
                  (lambda (_%gerbil-libdir202136%_)
                    (let ((__tmp202367
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir202136%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp202367 read))))
                 (_%replace-extension201937%_
                  (lambda (_%path202133%_ _%ext202134%_)
                    (string-append
                     (path-strip-extension _%path202133%_)
                     _%ext202134%_)))
                 (_%userlib-module?201938%_
                  (lambda (_%ctx202131%_)
                    (if (_%exclude-module?201940%_ _%ctx202131%_)
                        '#f
                        (not (_%libgerbil-module?201939%_ _%ctx202131%_)))))
                 (_%libgerbil-module?201939%_
                  (lambda (_%ctx202124%_)
                    (let ((_%id-str202126%_
                           (symbol->string
                            (##structure-ref
                             _%ctx202124%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?201940%_ _%id-str202126%_)
                          '#f
                          (let ((_%$e202128%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str202126%_))))
                            (if _%$e202128%_
                                _%$e202128%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str202126%_))))))))
                 (_%exclude-module?201940%_
                  (lambda (_%ctx-or-str202120%_)
                    (let ((_%str202122%_
                           (if (string? _%ctx-or-str202120%_)
                               _%ctx-or-str202120%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str202120%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str202122%_))))
                 (_%not-file-empty?201941%_
                  (lambda (_%path202118%_)
                    (not (gxc#file-empty? _%path202118%_))))
                 (_%fold-libgerbil-runtime-scm201942%_
                  (lambda (_%gerbil-staticdir202111%_ _%libgerbil-scm202112%_)
                    (let ((_%gerbil-runtime-scm202116%_
                           (let ((__tmp202368
                                  (lambda (_%rtm202114%_)
                                    (path-expand
                                     (let ((__tmp202369
                                            (let ((__tmp202370
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm202114%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp202370
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp202369 '".scm"))
                                     _%gerbil-staticdir202111%_))))
                             (declare (not safe))
                             (##map __tmp202368 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates201943%_
                       (append _%gerbil-runtime-scm202116%_
                               _%libgerbil-scm202112%_)))))
                 (_%remove-duplicates201943%_
                  (lambda (_%strlst202071%_)
                    (let _%loop202073%_ ((_%rest202075%_ _%strlst202071%_)
                                         (_%result202076%_ '()))
                      (let* ((_%rest202077202085%_ _%rest202075%_)
                             (_%else202079202093%_
                              (lambda () (reverse! _%result202076%_)))
                             (_%K202081202099%_
                              (lambda (_%rest202096%_ _%path202097%_)
                                (if (member _%path202097%_ _%result202076%_)
                                    (_%loop202073%_
                                     _%rest202096%_
                                     _%result202076%_)
                                    (_%loop202073%_
                                     _%rest202096%_
                                     (cons _%path202097%_
                                           _%result202076%_))))))
                        (if (pair? _%rest202077202085%_)
                            (let ((_%hd202082202102%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest202077202085%_)))
                                  (_%tl202083202104%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest202077202085%_))))
                              (let* ((_%path202107%_ _%hd202082202102%_)
                                     (_%rest202109%_ _%tl202083202104%_))
                                (_%K202081202099%_
                                 _%rest202109%_
                                 _%path202107%_)))
                            (_%else202079202093%_))))))
                 (_%compile-stub201944%_
                  (lambda (_%output-scm201951%_ _%output-bin201952%_)
                    (let* ((_%gerbil-home201954%_
                            (let ((__tmp202371
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp202371)))
                           (_%gerbil-libdir201956%_
                            (path-expand '"lib" _%gerbil-home201954%_))
                           (_%gerbil-staticdir201958%_
                            (path-expand '"static" _%gerbil-libdir201956%_))
                           (_%deps201960%_
                            (gxc#find-runtime-module-deps _%ctx201932%_))
                           (_%libgerbil-deps201962%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?201939%_
                               _%deps201960%_)))
                           (_%libgerbil-scm201964%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps201962%_)))
                           (_%libgerbil-scm201966%_
                            (_%fold-libgerbil-runtime-scm201942%_
                             _%gerbil-staticdir201958%_
                             _%libgerbil-scm201964%_))
                           (_%libgerbil-c201972%_
                            (map (lambda (_%g201967201969%_)
                                   (_%replace-extension201937%_
                                    _%g201967201969%_
                                    '".c"))
                                 _%libgerbil-scm201966%_))
                           (_%libgerbil-o201978%_
                            (map (lambda (_%g201973201975%_)
                                   (_%replace-extension201937%_
                                    _%g201973201975%_
                                    '".o"))
                                 _%libgerbil-scm201966%_))
                           (_%src-deps201980%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?201938%_
                               _%deps201960%_)))
                           (_%src-deps-scm201982%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps201980%_)))
                           (_%src-deps-scm201984%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?201941%_
                               _%src-deps-scm201982%_)))
                           (_%src-deps-scm201986%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm201984%_)))
                           (_%src-deps-c201992%_
                            (let ((__tmp202372
                                   (lambda (_%g201987201989%_)
                                     (_%replace-extension201937%_
                                      _%g201987201989%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp202372 _%src-deps-scm201986%_)))
                           (_%src-deps-o201998%_
                            (let ((__tmp202373
                                   (lambda (_%g201993201995%_)
                                     (_%replace-extension201937%_
                                      _%g201993201995%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp202373 _%src-deps-scm201986%_)))
                           (_%src-bin-scm202000%_
                            (gxc#find-static-module-file _%ctx201932%_))
                           (_%src-bin-scm202002%_
                            (path-expand _%src-bin-scm202000%_))
                           (_%src-bin-c202004%_
                            (_%replace-extension201937%_
                             _%src-bin-scm202002%_
                             '".c"))
                           (_%src-bin-o202006%_
                            (_%replace-extension201937%_
                             _%src-bin-scm202002%_
                             '".o"))
                           (_%output-bin202008%_
                            (path-expand _%output-bin201952%_))
                           (_%output-scm202010%_
                            (path-expand _%output-scm201951%_))
                           (_%output-c202012%_
                            (_%replace-extension201937%_
                             _%output-scm202010%_
                             '".c"))
                           (_%output-o202014%_
                            (_%replace-extension201937%_
                             _%output-scm202010%_
                             '".o"))
                           (_%output_-c202016%_
                            (_%replace-extension201937%_
                             _%output-scm202010%_
                             '"_.c"))
                           (_%output_-o202018%_
                            (_%replace-extension201937%_
                             _%output-scm202010%_
                             '"_.o"))
                           (_%gsc-link-opts202020%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts202022%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts202024%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir201958%_))
                           (_%output-ld-opts202026%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts202028%_
                            (_%get-libgerbil-ld-opts201936%_
                             _%gerbil-libdir201956%_))
                           (_%rpath202030%_
                            (gxc#gerbil-rpath _%gerbil-libdir201956%_))
                           (_%builtin-modules202034%_
                            (_%remove-duplicates201943%_
                             (let ((__tmp202374
                                    (let ((__tmp202376
                                           (lambda (_%mod202032%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod202032%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp202375
                                           (cons _%ctx201932%_
                                                 _%deps201960%_)))
                                      (declare (not safe))
                                      (##map __tmp202376 __tmp202375))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp202374)))))
                      (letrec ((_%compile-obj202037%_
                                (lambda (_%scm-path202044%_ _%c-path202045%_)
                                  (let* ((_%o-path202047%_
                                          (_%replace-extension201937%_
                                           _%c-path202045%_
                                           '".o"))
                                         (_%lock202049%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path202047%_
                                             '".lock")))
                                         (_%locked202051%_ '#f)
                                         (_%unlock202054%_
                                          (lambda ()
                                            (close-port _%locked202051%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock202049%_)))))
                                    (let _%retry202057%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock202049%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry202057%_))
                                          (begin
                                            (set! _%locked202051%_
                                                  (let ((__tmp202377
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock202049%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp202377)))
                                            (if _%locked202051%_
                                                '#!void
                                                (_%retry202057%_)))))
                                    (let ((__tmp202379
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path202047%_)))
                                                     (not _%scm-path202044%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path202044%_
                                                        _%o-path202047%_)))
                                                 (let ((_%gsc-cc-opts202068%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp202380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp202381 (cons _%c-path202045%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp202381
                            _%gsc-static-opts202024%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202380 _%gsc-cc-opts202068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp202378
                                           (lambda () (_%unlock202054%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp202379
                                       __tmp202378))))))
                        (let ((__tmp202382
                               (lambda ()
                                 (let ((__tmp202383
                                        (path-directory _%output-bin202008%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp202383)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp202382))
                        (gxc#with-output-to-scheme-file
                         _%output-scm202010%_
                         (lambda ()
                           (_%generate-stub201935%_
                            _%builtin-modules202034%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it202042%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp202384
                                                   (let ((__tmp202385
                                                          (let ((__tmp202386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm202002%_
                               (cons _%output-scm202010%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202386 _%src-deps-scm201986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp202385
                                                      _%libgerbil-c201972%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp202384
                                               _%gsc-link-opts202020%_))))
                                     (for-each
                                      _%compile-obj202037%_
                                      (let ((__tmp202387
                                             (cons _%src-bin-scm202002%_
                                                   (cons _%output-scm202010%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp202387
                                         _%src-deps-scm201986%_))
                                      (let ((__tmp202388
                                             (cons _%src-bin-c202004%_
                                                   (cons _%output-c202012%_
                                                         (cons _%output_-c202016%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp202388
                                         _%src-deps-c201992%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin202008%_
                                                        (let ((__tmp202389
                                                               (cons _%src-bin-o202006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o202014%_
                                   (cons _%output_-o202018%_
                                         (let ((__tmp202390
                                                (let ((__tmp202391
                                                       (let ((__tmp202393
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir201956%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts202028%_))))
                     (__tmp202392
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath202030%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp202393 __tmp202392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp202391
                                                   _%output-ld-opts202026%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp202390
                                            _%libgerbil-o201978%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp202389 _%src-deps-o201998%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp202394
                                            (cons _%output-c202012%_
                                                  (cons _%output_-c202016%_
                                                        (cons _%output-o202014%_
                                                              (cons _%output_-o202018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp202394)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it202042%_))
                                  (_%compile-it202042%_)))
                            '#!void))))))
          (let* ((_%output-bin201946%_
                  (gxc#compile-exe-output-file _%ctx201932%_ _%opts201933%_))
                 (_%output-scm201948%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin201946%_ '"__exe.scm"))))
            (_%compile-stub201944%_
             _%output-scm201948%_
             _%output-bin201946%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx201754%_ _%opts201755%_)
        (letrec ((_%reset-declare201757%_
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
                 (_%generate-stub201758%_
                  (lambda (_%deps201923%_)
                    (let ((_%mod-main201925%_
                           (gxc#find-runtime-symbol _%ctx201754%_ 'main))
                          (_%reset-decl201926%_ (_%reset-declare201757%_))
                          (_%user-decl201927%_ (_%user-declare201759%_)))
                      (for-each
                       (lambda (_%dep201929%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl201926%_))
                         (newline)
                         (if _%user-decl201927%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl201927%_))
                               (newline))
                             '#!void)
                         (let ((__tmp202395
                                (cons 'include (cons _%dep201929%_ '()))))
                           (declare (not safe))
                           (##write __tmp202395))
                         (newline))
                       _%deps201923%_)
                      (let ((__tmp202396
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main201925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp202396))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare201759%_
                  (lambda ()
                    (let* ((_%gsc-opts201828%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts201755%_)))
                           (_%gsc-prelude201830%_
                            (if _%gsc-opts201828%_
                                (member '"-prelude" _%gsc-opts201828%_)
                                '#f))
                           (_%gsc-prelude201832%_
                            (if _%gsc-prelude201830%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude201830%_)))
                                '#f)))
                      (let _%lp201835%_ ((_%rest201837%_
                                          (cons _%gsc-prelude201832%_ '()))
                                         (_%user-decls201838%_ '()))
                        (let* ((_%rest201839201847%_ _%rest201837%_)
                               (_%else201841201855%_
                                (lambda ()
                                  (if (null? _%user-decls201838%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls201838%_)))))
                               (_%K201843201911%_
                                (lambda (_%rest201858%_ _%expr201859%_)
                                  (let* ((_%expr201860201872%_ _%expr201859%_)
                                         (_%else201863201880%_
                                          (lambda ()
                                            (_%lp201835%_
                                             _%rest201858%_
                                             _%user-decls201838%_))))
                                    (let ((_%K201868201901%_
                                           (lambda (_%decls201899%_)
                                             (_%lp201835%_
                                              _%rest201858%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls201838%_
                                                 _%decls201899%_)))))
                                          (_%K201865201886%_
                                           (lambda (_%exprs201884%_)
                                             (_%lp201835%_
                                              (append _%exprs201884%_
                                                      _%rest201858%_)
                                              _%user-decls201838%_))))
                                      (if (pair? _%expr201860201872%_)
                                          (let ((_%tl201870201906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr201860201872%_)))
                                                (_%hd201869201904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr201860201872%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd201869201904%_
                                                         'declare))
                                                (let ((_%decls201909%_
                                                       _%tl201870201906%_))
                                                  (_%K201868201901%_
                                                   _%decls201909%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd201869201904%_
                                                             'begin))
                                                    (let ((_%exprs201894%_
                                                           _%tl201870201906%_))
                                                      (_%K201865201886%_
                                                       _%exprs201894%_))
                                                    (_%else201863201880%_))))
                                          (_%else201863201880%_)))))))
                          (if (pair? _%rest201839201847%_)
                              (let ((_%hd201844201914%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest201839201847%_)))
                                    (_%tl201845201916%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest201839201847%_))))
                                (let* ((_%expr201919%_ _%hd201844201914%_)
                                       (_%rest201921%_ _%tl201845201916%_))
                                  (_%K201843201911%_
                                   _%rest201921%_
                                   _%expr201919%_)))
                              (_%else201841201855%_)))))))
                 (_%compile-stub201760%_
                  (lambda (_%output-scm201767%_ _%output-bin201768%_)
                    (let* ((_%gerbil-home201770%_
                            (let ((__tmp202397
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp202397)))
                           (_%gerbil-libdir201772%_
                            (path-expand '"lib" _%gerbil-home201770%_))
                           (_%runtime201774%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp201776%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home201770%_))
                           (_%include-gambit-sharp201778%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp201776%_
                               '"\")")))
                           (_%bin-scm201780%_
                            (gxc#find-static-module-file _%ctx201754%_))
                           (_%deps201782%_
                            (gxc#find-runtime-module-deps _%ctx201754%_))
                           (_%deps201784%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps201782%_)))
                           (_%deps201789%_
                            (let ((__tmp202398
                                   (lambda (_%$obj201786%_)
                                     (not (gxc#file-empty? _%$obj201786%_)))))
                              (declare (not safe))
                              (##filter __tmp202398 _%deps201784%_)))
                           (_%deps201793%_
                            (let ((__tmp202399
                                   (lambda (_%f201791%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f201791%_
                                             _%runtime201774%_))))))
                              (declare (not safe))
                              (##filter __tmp202399 _%deps201789%_)))
                           (_%output-base201795%_
                            (let ((__tmp202400
                                   (path-strip-extension
                                    _%output-scm201767%_)))
                              (declare (not safe))
                              (##string-append __tmp202400)))
                           (_%output-c201797%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201795%_ '".c")))
                           (_%output-o201799%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201795%_ '".o")))
                           (_%output-c_201801%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201795%_ '"_.c")))
                           (_%output-o_201803%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201795%_ '"_.o")))
                           (_%gsc-link-opts201805%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts201807%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts201809%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir201772%_)))
                           (_%output-ld-opts201811%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros201813%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp201778%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp201778%_
                                            '()))))
                           (_%gsc-link-opts201815%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts201805%_
                               _%gsc-gx-macros201813%_)))
                           (_%rpath201817%_
                            (gxc#gerbil-rpath _%gerbil-libdir201772%_))
                           (_%default-ld-options201819%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp202401
                             (lambda ()
                               (let ((__tmp202402
                                      (path-directory _%output-bin201768%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp202402)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp202401))
                      (gxc#with-output-to-scheme-file
                       _%output-scm201767%_
                       (lambda ()
                         (_%generate-stub201758%_
                          (let ((__tmp202403
                                 (let ((__tmp202404
                                        (cons _%bin-scm201780%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp202404
                                    _%deps201793%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp202403 _%runtime201774%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it201825%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_201801%_
                                                      (let ((__tmp202405
                                                             (cons _%output-scm201767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp202405 _%gsc-link-opts201815%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp202406
                                                 (let ((__tmp202407
                                                        (cons _%output-c201797%_
                                                              (cons _%output-c_201801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp202407
                                                    _%gsc-static-opts201809%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp202406
                                             _%gsc-cc-opts201807%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin201768%_
                                                      (cons _%output-o201799%_
                                                            (cons _%output-o_201803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp202408
                                 (let ((__tmp202410
                                        (cons '"-L"
                                              (cons _%gerbil-libdir201772%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options201819%_))))
                                       (__tmp202409
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath201817%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp202410 __tmp202409))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp202408
                             _%output-ld-opts201811%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it201825%_))
                                (_%compile-it201825%_)))
                          '#!void)))))
          (let* ((_%output-bin201762%_
                  (gxc#compile-exe-output-file _%ctx201754%_ _%opts201755%_))
                 (_%output-scm201764%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin201762%_ '"__exe.scm"))))
            (_%compile-stub201760%_
             _%output-scm201764%_
             _%output-bin201762%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx201703%_ _%id201704%_)
        (let ((_%$e201750%_
               (let ((__tmp202412
                      (lambda (_%e201705201707%_)
                        (let* ((_%g201709201719%_ _%e201705201707%_)
                               (_%else201711201727%_ (lambda () '#f))
                               (_%K201713201731%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g201709201719%_
                                 'gx#module-export::t))
                              (let* ((_%e201714201734%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201709201719%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e201715201737%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201709201719%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e201716201740%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201709201719%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e201716201740%_ '0))
                                    (let ((_%e201717201743%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g201709201719%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g201745201747%_)
                                             (eq? _%g201745201747%_
                                                  _%id201704%_))
                                           _%e201717201743%_)
                                          (_%K201713201731%_)
                                          (_%else201711201727%_)))
                                    (_%else201711201727%_)))
                              (_%else201711201727%_)))))
                     (__tmp202411
                      (##structure-ref
                       _%ctx201703%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp202412 __tmp202411))))
          (if _%$e201750%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e201750%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx201694%_ _%id201695%_)
        (let ((_%$e201697%_
               (gxc#find-export-binding _%ctx201694%_ _%id201695%_)))
          (if _%$e201697%_
              ((lambda (_%bind201700%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind201700%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id201695%_)))
                 (##structure-ref _%bind201700%_ '1 gx#binding::t '#f))
               _%$e201697%_)
              (let ((__tmp202413
                     (##structure-ref
                      _%ctx201694%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp202413
                 _%id201695%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx201560%_)
        (letrec* ((_%ht201562%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template201563%_
                   (lambda (_%in201639%_ _%phi201640%_)
                     (let ((_%iphi201642%_
                            (fx+ _%phi201640%_
                                 (##direct-structure-ref
                                  _%in201639%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports201643%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in201639%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp201645%_ ((_%rest201647%_ _%imports201643%_)
                                          (_%r201648%_ '()))
                         (let* ((_%rest201649201657%_ _%rest201647%_)
                                (_%else201651201665%_ (lambda () _%r201648%_))
                                (_%K201653201682%_
                                 (lambda (_%rest201668%_ _%in201669%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in201669%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi201642%_))
                                           (_%lp201645%_
                                            _%rest201668%_
                                            (cons _%in201669%_ _%r201648%_))
                                           (_%lp201645%_
                                            _%rest201668%_
                                            _%r201648%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in201669%_
                                              'gx#module-import::t))
                                           (let ((_%iphi201673%_
                                                  (fx+ _%phi201640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in201669%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi201673%_))
                                                 (_%lp201645%_
                                                  _%rest201668%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in201669%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r201648%_))
                                                 (_%lp201645%_
                                                  _%rest201668%_
                                                  _%r201648%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in201669%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi201676%_
                                                      (fx+ _%iphi201642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in201669%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi201676%_))
                                                     (_%lp201645%_
                                                      _%rest201668%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in201669%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r201648%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi201676%_))
                                                         (_%lp201645%_
                                                          _%rest201668%_
                                                          (let ((__tmp202414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template201563%_
                          _%in201669%_
                          _%iphi201642%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r201648%_ __tmp202414)))
                 (_%lp201645%_ _%rest201668%_ _%r201648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp201645%_
                                                _%rest201668%_
                                                _%r201648%_)))))))
                           (if (pair? _%rest201649201657%_)
                               (let ((_%hd201654201685%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest201649201657%_)))
                                     (_%tl201655201687%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest201649201657%_))))
                                 (let* ((_%in201690%_ _%hd201654201685%_)
                                        (_%rest201692%_ _%tl201655201687%_))
                                   (_%K201653201682%_
                                    _%rest201692%_
                                    _%in201690%_)))
                               (_%else201651201665%_)))))))
                  (_%find-deps201564%_
                   (lambda (_%rest201572%_ _%deps201573%_)
                     (let* ((_%rest201574201582%_ _%rest201572%_)
                            (_%else201576201590%_ (lambda () _%deps201573%_))
                            (_%K201578201627%_
                             (lambda (_%rest201593%_ _%hd201594%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd201594%_
                                      'gx#module-context::t))
                                   (let ((_%id201597%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201594%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports201598%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201594%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht201562%_
                                            _%id201597%_))
                                         (_%find-deps201564%_
                                          _%rest201593%_
                                          _%deps201573%_)
                                         (let ((_%$e201601%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd201594%_))))
                                           (if _%$e201601%_
                                               ((lambda (_%pre201604%_)
                                                  (let ((_%xdeps201606%_
                                                         (_%find-deps201564%_
                                                          (cons _%pre201604%_
                                                                _%imports201598%_)
                                                          _%deps201573%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht201562%_
                                                       _%id201597%_
                                                       _%hd201594%_))
                                                    (_%find-deps201564%_
                                                     _%rest201593%_
                                                     (cons _%hd201594%_
                                                           _%xdeps201606%_))))
                                                _%$e201601%_)
                                               (let ((_%xdeps201609%_
                                                      (_%find-deps201564%_
                                                       _%imports201598%_
                                                       _%deps201573%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht201562%_
                                                    _%id201597%_
                                                    _%hd201594%_))
                                                 (_%find-deps201564%_
                                                  _%rest201593%_
                                                  (cons _%hd201594%_
                                                        _%xdeps201609%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd201594%_
                                          'gx#prelude-context::t))
                                       (let ((_%id201612%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd201594%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht201562%_
                                                _%id201612%_))
                                             (_%find-deps201564%_
                                              _%rest201593%_
                                              _%deps201573%_)
                                             (let ((_%xdeps201616%_
                                                    (_%find-deps201564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd201594%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps201573%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht201562%_
                                                      _%id201612%_))
                                                   (_%find-deps201564%_
                                                    _%rest201593%_
                                                    _%xdeps201616%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht201562%_
                                                        _%id201612%_
                                                        _%hd201594%_))
                                                     (_%find-deps201564%_
                                                      _%rest201593%_
                                                      (cons _%hd201594%_
                                                            _%xdeps201616%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd201594%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd201594%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps201564%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201594%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201593%_)
                                                _%deps201573%_)
                                               (_%find-deps201564%_
                                                _%rest201593%_
                                                _%deps201573%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd201594%_
                                                  'gx#module-export::t))
                                               (_%find-deps201564%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201594%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201593%_)
                                                _%deps201573%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd201594%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd201594%_ '2 '#f '#f)))
               (_%find-deps201564%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd201594%_ '1 '#f '#f))
                      _%rest201593%_)
                _%deps201573%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd201594%_ '2 '#f '#f)))
                   (let ((_%xdeps201623%_
                          (_%import-set-template201563%_ _%hd201594%_ '0)))
                     (_%find-deps201564%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest201593%_ _%xdeps201623%_))
                      _%deps201573%_))
                   (_%find-deps201564%_ _%rest201593%_ _%deps201573%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd201594%_))))))))))
                       (if (pair? _%rest201574201582%_)
                           (let ((_%hd201579201630%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest201574201582%_)))
                                 (_%tl201580201632%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest201574201582%_))))
                             (let* ((_%hd201635%_ _%hd201579201630%_)
                                    (_%rest201637%_ _%tl201580201632%_))
                               (_%K201578201627%_
                                _%rest201637%_
                                _%hd201635%_)))
                           (_%else201576201590%_))))))
          (let ((__tmp202415
                 (filter gx#expander-context-id
                         (_%find-deps201564%_
                          (let ((_%$e201566%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx201560%_))))
                            (if _%$e201566%_
                                ((lambda (_%pre201569%_)
                                   (cons _%pre201569%_
                                         (##structure-ref
                                          _%ctx201560%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e201566%_)
                                (##structure-ref
                                 _%ctx201560%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp202415)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx201490%_)
        (let* ((_%context-id201492%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx201490%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx201490%_ '1 '#f '#f))
                    (string->symbol _%ctx201490%_)))
               (_%scm201494%_
                (let ((__tmp202416
                       (gxc#static-module-name _%context-id201492%_)))
                  (declare (not safe))
                  (##string-append __tmp202416 '".scm")))
               (_%dirs201496%_ (let () (declare (not safe)) (load-path)))
               (_%dirs201502%_
                (let ((_%user-libpath201498%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath201498%_
                      (let ((_%user-libpath201500%_
                             (path-expand '"lib" _%user-libpath201498%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath201500%_ _%dirs201496%_))
                            _%dirs201496%_
                            (cons _%user-libpath201500%_ _%dirs201496%_)))
                      _%dirs201496%_)))
               (_%dirs201512%_
                (let ((_%$e201504%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e201504%_
                      ((lambda (_%g201506201508%_)
                         (cons _%g201506201508%_ _%dirs201502%_))
                       _%$e201504%_)
                      _%dirs201502%_)))
               (_%dirs201518%_
                (let ((__tmp202417
                       (lambda (_%g201513201515%_)
                         (path-expand '"static" _%g201513201515%_))))
                  (declare (not safe))
                  (##map __tmp202417 _%dirs201512%_))))
          (let _%lp201521%_ ((_%rest201523%_ _%dirs201518%_))
            (let* ((_%rest201524201532%_ _%rest201523%_)
                   (_%else201526201540%_
                    (lambda ()
                      (let ((__tmp202418
                             (##structure-ref
                              _%ctx201490%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp202418
                         _%scm201494%_))))
                   (_%K201528201548%_
                    (lambda (_%rest201543%_ _%dir201544%_)
                      (let ((_%path201546%_
                             (path-expand _%scm201494%_ _%dir201544%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path201546%_))
                            _%path201546%_
                            (_%lp201521%_ _%rest201543%_))))))
              (if (pair? _%rest201524201532%_)
                  (let ((_%hd201529201551%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201524201532%_)))
                        (_%tl201530201553%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201524201532%_))))
                    (let* ((_%dir201556%_ _%hd201529201551%_)
                           (_%rest201558%_ _%tl201530201553%_))
                      (_%K201528201548%_ _%rest201558%_ _%dir201556%_)))
                  (_%else201526201540%_)))))))
    (define gxc#file-empty?
      (lambda (_%path201488%_)
        (zero? (let ((__tmp202419 (file-info _%path201488%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp202419)))))
    (define gxc#compile-top-module
      (lambda (_%ctx201484%_)
        (let ((__tmp202423
               (lambda ()
                 (let ((__tmp202424
                        (##structure-ref
                         _%ctx201484%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp202424))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp202425
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx201484%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp202425))
                     '#!void)
                 (gxc#collect-bindings _%ctx201484%_)
                 (gxc#compile-runtime-code _%ctx201484%_)
                 (gxc#compile-meta-code _%ctx201484%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx201484%_)
                     '#!void)))
              (__tmp202422
               (let ((__obj202346
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj202346))
                 __obj202346))
              (__tmp202421 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp202420
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
           __tmp202423
           gx#current-expander-context
           _%ctx201484%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp202422
           gxc#current-compile-runtime-sections
           __tmp202421
           gxc#current-compile-runtime-names
           __tmp202420))))
    (define gxc#collect-bindings
      (lambda (_%ctx201482%_)
        (let ((__tmp202426
               (##structure-ref _%ctx201482%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp202426))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx201430%_)
        (letrec ((_%compile1201432%_
                  (lambda (_%ctx201471%_)
                    (let* ((_%code201473%_
                            (##structure-ref
                             _%ctx201471%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm201477%_
                            (let ((_%idstr201475%_
                                   (let ((__tmp202427
                                          (##structure-ref
                                           _%ctx201471%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp202427))))
                              (declare (not safe))
                              (##string-append _%idstr201475%_ '"~0")))
                           (_%rtc?201479%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code201473%_))))
                      (if _%rtc?201479%_
                          (let ((__tmp202428
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp202428
                             _%ctx201471%_
                             _%rtm201477%_))
                          '#!void)
                      (_%generate-runtime-code201434%_
                       _%ctx201471%_
                       _%code201473%_
                       (if _%rtc?201479%_ _%rtm201477%_ '#f)))))
                 (_%context-timestamp201433%_
                  (lambda (_%ctx201469%_)
                    (let ((__tmp202429
                           (let ((__tmp202430
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx201469%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp202430 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp202429))))
                 (_%generate-runtime-code201434%_
                  (lambda (_%ctx201441%_ _%code201442%_ _%rtm201443%_)
                    (let* ((_%runtime-code?201445%_ (if _%rtm201443%_ '#t '#f))
                           (_%lifts201447%_ (box '()))
                           (_%runtime-code201450%_
                            (if _%runtime-code?201445%_
                                (let ((__tmp202433
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code201442%_))))
                                      (__tmp202432
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp202431
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp202433
                                   gx#current-expander-context
                                   _%ctx201441%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts201447%_
                                   gxc#current-compile-marks
                                   __tmp202432
                                   gxc#current-compile-identifiers
                                   __tmp202431))
                                '#f))
                           (_%runtime-code201452%_
                            (if _%runtime-code?201445%_
                                (if (null? (unbox _%lifts201447%_))
                                    _%runtime-code201450%_
                                    (cons 'begin
                                          (let ((__tmp202435
                                                 (cons _%runtime-code201450%_
                                                       '()))
                                                (__tmp202434
                                                 (reverse (unbox _%lifts201447%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp202435
                                             __tmp202434))))
                                '#f))
                           (_%runtime-code201454%_
                            (if _%runtime-code?201445%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp201433%_
                                                         _%ctx201441%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code201452%_ '())))
                                '#f))
                           (_%loader-code201457%_
                            (let ((__tmp202436
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code201442%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp202436
                               gx#current-expander-context
                               _%ctx201441%_)))
                           (_%loader-code201459%_
                            (cons 'begin
                                  (cons _%loader-code201457%_
                                        (cons (if _%runtime-code?201445%_
                                                  (cons 'load-module
                                                        (cons _%rtm201443%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0201461%_
                            (gxc#compile-output-file _%ctx201441%_ '0 '".scm"))
                           (_%scmrt201463%_
                            (gxc#compile-output-file
                             _%ctx201441%_
                             '#f
                             '".scm"))
                           (_%scms201465%_
                            (gxc#compile-static-output-file _%ctx201441%_)))
                      (if _%runtime-code?201445%_
                          (gxc#compile-scm-file__0
                           _%scm0201461%_
                           _%runtime-code201454%_)
                          '#!void)
                      (let ((__tmp202437
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt201463%_
                                _%loader-code201459%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp202437
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms201465%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms201465%_))
                          '#!void)
                      (if _%runtime-code?201445%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0201461%_ _%scms201465%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms201465%_ void)))))))
          (let* ((_%all-modules201436%_
                  (cons _%ctx201430%_ (gxc#lift-nested-modules _%ctx201430%_)))
                 (__tmp202438
                  (lambda (_%ctx201438%_)
                    (let ((__tmp202439
                           (lambda () (_%compile1201432%_ _%ctx201438%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp202439
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp202438 _%all-modules201436%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx201330%_)
        (letrec ((_%compile-ssi201332%_
                  (lambda (_%code201398%_)
                    (let* ((_%path201400%_
                            (gxc#compile-output-file
                             _%ctx201330%_
                             '#f
                             '".ssi"))
                           (_%prelude201412%_
                            (let* ((_%super201402%_
                                    (##structure-ref
                                     _%ctx201330%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e201404%_
                                    (##structure-ref
                                     _%super201402%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e201404%_
                                  ((lambda (_%g201406201408%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g201406201408%_)))
                                   _%$e201404%_)
                                  ':<root>)))
                           (_%ns201414%_
                            (##structure-ref
                             _%ctx201330%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr201416%_
                            (symbol->string
                             (##structure-ref
                              _%ctx201330%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg201424%_
                            (let ((_%$e201418%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr201416%_ '#\/))))
                              (if _%$e201418%_
                                  ((lambda (_%x201421%_)
                                     (let ((__tmp202440
                                            (substring
                                             _%idstr201416%_
                                             '0
                                             _%x201421%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp202440)))
                                   _%$e201418%_)
                                  '#f)))
                           (_%rt201426%_
                            (let ((__tmp202441
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp202441 _%ctx201330%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path201400%_))
                      (gxc#with-output-to-scheme-file
                       _%path201400%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude201412%_))
                         (if _%pkg201424%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg201424%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns201414%_))
                         (newline)
                         (pretty-print _%code201398%_)
                         (if _%rt201426%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt201426%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi201333%_
                  (lambda (_%part201338%_)
                    (let* ((_%part201339201352%_ _%part201338%_)
                           (_%E201341201356%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part201339201352%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K201342201367%_
                            (lambda (_%code201359%_
                                     _%n201360%_
                                     _%phi201361%_
                                     _%phi-ctx201362%_)
                              (let ((_%code201365%_
                                     (let ((__tmp202442
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code201359%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp202442
                                        gx#current-expander-context
                                        _%phi-ctx201362%_
                                        gx#current-expander-phi
                                        _%phi201361%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx201330%_
                                  _%n201360%_
                                  '".scm")
                                 _%code201365%_
                                 '#t)))))
                      (if (pair? _%part201339201352%_)
                          (let ((_%hd201343201370%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part201339201352%_)))
                                (_%tl201344201372%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part201339201352%_))))
                            (let ((_%phi-ctx201375%_ _%hd201343201370%_))
                              (if (pair? _%tl201344201372%_)
                                  (let ((_%hd201345201377%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201344201372%_)))
                                        (_%tl201346201379%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201344201372%_))))
                                    (let ((_%phi201382%_ _%hd201345201377%_))
                                      (if (pair? _%tl201346201379%_)
                                          (let ((_%hd201347201384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl201346201379%_)))
                                                (_%tl201348201386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl201346201379%_))))
                                            (let ((_%n201389%_
                                                   _%hd201347201384%_))
                                              (if (pair? _%tl201348201386%_)
                                                  (let ((_%hd201349201391%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl201348201386%_)))
                                                        (_%tl201350201393%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl201348201386%_))))
                                                    (let ((_%code201396%_
                                                           _%hd201349201391%_))
                                                      (if (null? _%tl201350201393%_)
                                                          (_%K201342201367%_
                                                           _%code201396%_
                                                           _%n201389%_
                                                           _%phi201382%_
                                                           _%phi-ctx201375%_)
                                                          (_%E201341201356%_))))
                                                  (_%E201341201356%_))))
                                          (_%E201341201356%_))))
                                  (_%E201341201356%_))))
                          (_%E201341201356%_))))))
          (let ((_g202443_ (gxc#generate-meta-code _%ctx201330%_)))
            (begin
              (let ((_g202444_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g202443_)
                           (##vector-length _g202443_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g202444_ 2)))
                    (error "Context expects 2 values" _g202444_)))
              (let ((_%ssi-code201335%_
                     (let () (declare (not safe)) (##vector-ref _g202443_ 0)))
                    (_%phi-code201336%_
                     (let () (declare (not safe)) (##vector-ref _g202443_ 1))))
                (begin
                  (_%compile-ssi201332%_ _%ssi-code201335%_)
                  (for-each _%compile-phi201333%_ _%phi-code201336%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx201312%_)
        (let* ((_%path201314%_
                (gxc#compile-output-file _%ctx201312%_ '#f '".ssxi.ss"))
               (_%code201316%_
                (let ((__tmp202445
                       (##structure-ref
                        _%ctx201312%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp202445)))
               (_%idstr201318%_
                (symbol->string
                 (##structure-ref
                  _%ctx201312%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg201326%_
                (let ((_%$e201320%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr201318%_ '#\/))))
                  (if _%$e201320%_
                      ((lambda (_%x201323%_)
                         (let ((__tmp202446
                                (substring _%idstr201318%_ '0 _%x201323%_)))
                           (declare (not safe))
                           (##string->symbol __tmp202446)))
                       _%$e201320%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path201314%_))
          (gxc#with-output-to-scheme-file
           _%path201314%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg201326%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg201326%_))
                 '#!void)
             (newline)
             (pretty-print _%code201316%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx201305%_)
        (let* ((_%state201307%_
                (let ((__obj202347
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj202347 _%ctx201305%_))
                  __obj202347))
               (_%ssi-code201309%_
                (let ((__tmp202447
                       (##structure-ref
                        _%ctx201305%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state201307%_
                   __tmp202447))))
          (values _%ssi-code201309%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state201307%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx201298%_)
        (let ((_%lifts201300%_ (box '())))
          (let ((__tmp202450
                 (lambda ()
                   (let ((_%code201303%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx201298%_))))
                     (if (null? (unbox _%lifts201300%_))
                         _%code201303%_
                         (cons 'begin
                               (let ((__tmp202452 (cons _%code201303%_ '()))
                                     (__tmp202451
                                      (reverse (unbox _%lifts201300%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp202452 __tmp202451)))))))
                (__tmp202449
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp202448
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202450
             gxc#current-compile-lift
             _%lifts201300%_
             gxc#current-compile-marks
             __tmp202449
             gxc#current-compile-identifiers
             __tmp202448)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx201294%_)
        (let ((_%modules201296%_ (box '())))
          (let ((__tmp202453
                 (##structure-ref _%ctx201294%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules201296%_ __tmp202453))
          (reverse (unbox _%modules201296%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path201274%_ _%code201275%_ _%phi?201276%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path201274%_))
        (gxc#with-output-to-scheme-file
         _%path201274%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp202454
                                           (if _%phi?201276%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp202454)))))))
           (pretty-print _%code201275%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it201280%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path201274%_ _%phi?201276%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp202455
                         (cons 'compile-file (cons _%path201274%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it201280%_ __tmp202455))
                  (_%compile-it201280%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path201285%_ _%code201286%_)
        (let ((_%phi?201288%_ '#f))
          (gxc#compile-scm-file__%
           _%path201285%_
           _%code201286%_
           _%phi?201288%_))))
    (define gxc#compile-scm-file
      (lambda _g202457_
        (let ((_g202456_ (let () (declare (not safe)) (##length _g202457_))))
          (cond ((let () (declare (not safe)) (##fx= _g202456_ 2))
                 (apply gxc#compile-scm-file__0 _g202457_))
                ((let () (declare (not safe)) (##fx= _g202456_ 3))
                 (apply gxc#compile-scm-file__% _g202457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g202457_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?201175%_)
        (let _%lp201177%_ ((_%rest201179%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts201180%_ '()))
          (let* ((_%rest201181201201%_ _%rest201179%_)
                 (_%else201185201209%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts201180%_)))
                        (reverse _%opts201180%_)))))
            (let ((_%K201195201252%_
                   (lambda (_%rest201250%_)
                     (_%lp201177%_ _%rest201250%_ _%opts201180%_)))
                  (_%K201190201234%_
                   (lambda (_%rest201232%_)
                     (_%lp201177%_ _%rest201232%_ _%opts201180%_)))
                  (_%K201187201216%_
                   (lambda (_%rest201213%_ _%opt201214%_)
                     (_%lp201177%_
                      _%rest201213%_
                      (cons _%opt201214%_ _%opts201180%_)))))
              (if (pair? _%rest201181201201%_)
                  (let ((_%tl201197201257%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201181201201%_)))
                        (_%hd201196201255%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201181201201%_))))
                    (if (equal? _%hd201196201255%_ '"-cc-options")
                        (if (pair? _%tl201197201257%_)
                            (let* ((_%tl201199201260%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl201197201257%_)))
                                   (_%rest201263%_ _%tl201199201260%_))
                              (_%K201195201252%_ _%rest201263%_))
                            (let ((_%opt201224%_ _%hd201196201255%_)
                                  (_%rest201226%_ _%tl201197201257%_))
                              (_%K201187201216%_
                               _%rest201226%_
                               _%opt201224%_)))
                        (if (equal? _%hd201196201255%_ '"-ld-options")
                            (if (pair? _%tl201197201257%_)
                                (let* ((_%tl201194201242%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl201197201257%_)))
                                       (_%rest201245%_ _%tl201194201242%_))
                                  (_%K201190201234%_ _%rest201245%_))
                                (let ((_%opt201224%_ _%hd201196201255%_)
                                      (_%rest201226%_ _%tl201197201257%_))
                                  (_%K201187201216%_
                                   _%rest201226%_
                                   _%opt201224%_)))
                            (let ((_%opt201224%_ _%hd201196201255%_)
                                  (_%rest201226%_ _%tl201197201257%_))
                              (_%K201187201216%_
                               _%rest201226%_
                               _%opt201224%_)))))
                  (_%else201185201209%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?201269%_ '#f)) (gxc#gsc-link-options__% _%phi?201269%_))))
    (define gxc#gsc-link-options
      (lambda _g202459_
        (let ((_g202458_ (let () (declare (not safe)) (##length _g202459_))))
          (cond ((let () (declare (not safe)) (##fx= _g202458_ 0))
                 (apply gxc#gsc-link-options__0 _g202459_))
                ((let () (declare (not safe)) (##fx= _g202458_ 1))
                 (apply gxc#gsc-link-options__% _g202459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g202459_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords201024%_ _%static?201020201025%_ _%phi?201027%_)
        (let ((_%static?201029%_
               (if (eq? _%static?201020201025%_ absent-value)
                   '#f
                   _%static?201020201025%_)))
          (if _%phi?201027%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp201031%_ ((_%rest201033%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts201034%_ '()))
                (let* ((_%rest201035201061%_ _%rest201033%_)
                       (_%else201040201069%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts201034%_)))
                              (reverse! _%opts201034%_)))))
                  (let ((_%K201055201132%_
                         (lambda (_%rest201129%_ _%opt201130%_)
                           (if _%static?201029%_
                               (_%lp201031%_
                                _%rest201129%_
                                (cons _%opt201130%_
                                      (cons '"-cc-options" _%opts201034%_)))
                               (_%lp201031%_ _%rest201129%_ _%opts201034%_))))
                        (_%K201050201109%_
                         (lambda (_%rest201106%_ _%opt201107%_)
                           (_%lp201031%_
                            _%rest201106%_
                            (cons _%opt201107%_
                                  (cons '"-cc-options" _%opts201034%_)))))
                        (_%K201045201089%_
                         (lambda (_%rest201087%_)
                           (_%lp201031%_ _%rest201087%_ _%opts201034%_)))
                        (_%K201042201075%_
                         (lambda (_%rest201073%_)
                           (_%lp201031%_ _%rest201073%_ _%opts201034%_))))
                    (if (pair? _%rest201035201061%_)
                        (let ((_%tl201057201137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest201035201061%_)))
                              (_%hd201056201135%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest201035201061%_))))
                          (if (equal? _%hd201056201135%_ '"-cc-options")
                              (if (pair? _%tl201057201137%_)
                                  (let ((_%tl201059201142%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201057201137%_)))
                                        (_%hd201058201140%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201057201137%_))))
                                    (if (equal? _%hd201058201140%_ '"-Bstatic")
                                        (let ((_%opt201145%_
                                               _%hd201058201140%_)
                                              (_%rest201147%_
                                               _%tl201059201142%_))
                                          (_%K201055201132%_
                                           _%rest201147%_
                                           _%opt201145%_))
                                        (let ((_%opt201122%_
                                               _%hd201058201140%_)
                                              (_%rest201124%_
                                               _%tl201059201142%_))
                                          (_%K201050201109%_
                                           _%rest201124%_
                                           _%opt201122%_))))
                                  (let ((_%rest201081%_ _%tl201057201137%_))
                                    (_%K201042201075%_ _%rest201081%_)))
                              (if (equal? _%hd201056201135%_ '"-ld-options")
                                  (if (pair? _%tl201057201137%_)
                                      (let* ((_%tl201049201097%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl201057201137%_)))
                                             (_%rest201100%_
                                              _%tl201049201097%_))
                                        (_%K201045201089%_ _%rest201100%_))
                                      (let ((_%rest201081%_
                                             _%tl201057201137%_))
                                        (_%K201042201075%_ _%rest201081%_)))
                                  (let ((_%rest201081%_ _%tl201057201137%_))
                                    (_%K201042201075%_ _%rest201081%_)))))
                        (_%else201040201069%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords201152%_ _%static?201020201153%_)
        (let ((_%phi?201155%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords201152%_
           _%static?201020201153%_
           _%phi?201155%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g202461_
        (let ((_g202460_ (let () (declare (not safe)) (##length _g202461_))))
          (cond ((let () (declare (not safe)) (##fx= _g202460_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g202461_))
                ((let () (declare (not safe)) (##fx= _g202460_ 3))
                 (apply gxc#gsc-cc-options__%__% _g202461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g202461_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords201164%_ . _%args201165%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords201164%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201164%_
                  'static:
                  absent-value))
               _%args201165%_)))
    (define gxc#gsc-cc-options
      (lambda _%args201021201171%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args201021201171%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords200869%_ _%static?200865200870%_ _%phi?200872%_)
        (let ((_%static?200874%_
               (if (eq? _%static?200865200870%_ absent-value)
                   '#f
                   _%static?200865200870%_)))
          (if _%phi?200872%_
              '()
              (let _%lp200876%_ ((_%rest200878%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts200879%_ '()))
                (let* ((_%rest200880200906%_ _%rest200878%_)
                       (_%else200885200914%_
                        (lambda () (reverse! _%opts200879%_))))
                  (let ((_%K200900200977%_
                         (lambda (_%rest200974%_ _%opt200975%_)
                           (if _%static?200874%_
                               (_%lp200876%_
                                _%rest200974%_
                                (cons _%opt200975%_
                                      (cons '"-ld-options" _%opts200879%_)))
                               (_%lp200876%_ _%rest200974%_ _%opts200879%_))))
                        (_%K200895200954%_
                         (lambda (_%rest200951%_ _%opt200952%_)
                           (_%lp200876%_
                            _%rest200951%_
                            (cons _%opt200952%_
                                  (cons '"-ld-options" _%opts200879%_)))))
                        (_%K200890200934%_
                         (lambda (_%rest200932%_)
                           (_%lp200876%_ _%rest200932%_ _%opts200879%_)))
                        (_%K200887200920%_
                         (lambda (_%rest200918%_)
                           (_%lp200876%_ _%rest200918%_ _%opts200879%_))))
                    (if (pair? _%rest200880200906%_)
                        (let ((_%tl200902200982%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest200880200906%_)))
                              (_%hd200901200980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest200880200906%_))))
                          (if (equal? _%hd200901200980%_ '"-ld-options")
                              (if (pair? _%tl200902200982%_)
                                  (let ((_%tl200904200987%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl200902200982%_)))
                                        (_%hd200903200985%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl200902200982%_))))
                                    (if (equal? _%hd200903200985%_ '"-static")
                                        (let ((_%opt200990%_
                                               _%hd200903200985%_)
                                              (_%rest200992%_
                                               _%tl200904200987%_))
                                          (_%K200900200977%_
                                           _%rest200992%_
                                           _%opt200990%_))
                                        (let ((_%opt200967%_
                                               _%hd200903200985%_)
                                              (_%rest200969%_
                                               _%tl200904200987%_))
                                          (_%K200895200954%_
                                           _%rest200969%_
                                           _%opt200967%_))))
                                  (let ((_%rest200926%_ _%tl200902200982%_))
                                    (_%K200887200920%_ _%rest200926%_)))
                              (if (equal? _%hd200901200980%_ '"-cc-options")
                                  (if (pair? _%tl200902200982%_)
                                      (let* ((_%tl200894200942%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl200902200982%_)))
                                             (_%rest200945%_
                                              _%tl200894200942%_))
                                        (_%K200890200934%_ _%rest200945%_))
                                      (let ((_%rest200926%_
                                             _%tl200902200982%_))
                                        (_%K200887200920%_ _%rest200926%_)))
                                  (let ((_%rest200926%_ _%tl200902200982%_))
                                    (_%K200887200920%_ _%rest200926%_)))))
                        (_%else200885200914%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords200997%_ _%static?200865200998%_)
        (let ((_%phi?201000%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords200997%_
           _%static?200865200998%_
           _%phi?201000%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g202463_
        (let ((_g202462_ (let () (declare (not safe)) (##length _g202463_))))
          (cond ((let () (declare (not safe)) (##fx= _g202462_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g202463_))
                ((let () (declare (not safe)) (##fx= _g202462_ 3))
                 (apply gxc#gsc-ld-options__%__% _g202463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g202463_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords201009%_ . _%args201010%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords201009%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201009%_
                  'static:
                  absent-value))
               _%args201010%_)))
    (define gxc#gsc-ld-options
      (lambda _%args200866201016%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args200866201016%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir200860%_)
        (let ((_%user-staticdir200862%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir200860%_
                       '" -I "
                       _%user-staticdir200862%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp200772%_ ((_%rest200774%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts200775%_ '()))
          (let* ((_%rest200776200796%_ _%rest200774%_)
                 (_%else200780200804%_ (lambda () _%opts200775%_)))
            (let ((_%K200790200847%_
                   (lambda (_%rest200845%_)
                     (_%lp200772%_ _%rest200845%_ _%opts200775%_)))
                  (_%K200785200825%_
                   (lambda (_%rest200822%_ _%opt200823%_)
                     (_%lp200772%_
                      _%rest200822%_
                      (let ((__tmp202464
                             (let ((__tmp202465
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt200823%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp202465))))
                        (declare (not safe))
                        (##append _%opts200775%_ __tmp202464)))))
                  (_%K200782200810%_
                   (lambda (_%rest200808%_)
                     (_%lp200772%_ _%rest200808%_ _%opts200775%_))))
              (if (pair? _%rest200776200796%_)
                  (let ((_%tl200792200852%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200776200796%_)))
                        (_%hd200791200850%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200776200796%_))))
                    (if (equal? _%hd200791200850%_ '"-cc-options")
                        (if (pair? _%tl200792200852%_)
                            (let* ((_%tl200794200855%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl200792200852%_)))
                                   (_%rest200858%_ _%tl200794200855%_))
                              (_%K200790200847%_ _%rest200858%_))
                            (let ((_%rest200816%_ _%tl200792200852%_))
                              (_%K200782200810%_ _%rest200816%_)))
                        (if (equal? _%hd200791200850%_ '"-ld-options")
                            (if (pair? _%tl200792200852%_)
                                (let ((_%tl200789200835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl200792200852%_)))
                                      (_%hd200788200833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl200792200852%_))))
                                  (let ((_%opt200838%_ _%hd200788200833%_)
                                        (_%rest200840%_ _%tl200789200835%_))
                                    (_%K200785200825%_
                                     _%rest200840%_
                                     _%opt200838%_)))
                                (let ((_%rest200816%_ _%tl200792200852%_))
                                  (_%K200782200810%_ _%rest200816%_)))
                            (let ((_%rest200816%_ _%tl200792200852%_))
                              (_%K200782200810%_ _%rest200816%_)))))
                  (_%else200780200804%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str200769%_)
        (not (let () (declare (not safe)) (string-empty? _%str200769%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path200762%_ _%phi?200763%_)
        (let ((_%gsc-link-opts200765%_
               (gxc#gsc-link-options__% _%phi?200763%_))
              (_%gsc-cc-opts200766%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?200763%_))
              (_%gsc-ld-opts200767%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?200763%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp202466
                  (let ((__tmp202467
                         (let ((__tmp202468 (cons _%path200762%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp202468
                            _%gsc-link-opts200765%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202467 _%gsc-ld-opts200767%_))))
             (declare (not safe))
             (__foldr1 cons __tmp202466 _%gsc-cc-opts200766%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx200728%_ _%n200729%_ _%ext200730%_)
        (letrec ((_%module-relative-path200732%_
                  (lambda (_%ctx200760%_)
                    (path-strip-directory
                     (let ((__tmp202469
                            (##structure-ref
                             _%ctx200760%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp202469)))))
                 (_%module-source-directory200733%_
                  (lambda (_%ctx200756%_)
                    (path-directory
                     (let ((_%mpath200758%_
                            (##structure-ref
                             _%ctx200756%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath200758%_)
                           _%mpath200758%_
                           (last _%mpath200758%_))))))
                 (_%section-string200734%_
                  (lambda (_%n200750%_)
                    (if (number? _%n200750%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n200750%_))
                        (if (symbol? _%n200750%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n200750%_))
                            (if (string? _%n200750%_)
                                _%n200750%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n200750%_)))))))
                 (_%file-name200735%_
                  (lambda (_%path200748%_)
                    (if _%n200729%_
                        (string-append
                         _%path200748%_
                         '"~"
                         (_%section-string200734%_ _%n200729%_)
                         _%ext200730%_)
                        (string-append _%path200748%_ _%ext200730%_))))
                 (_%file-path200736%_
                  (lambda ()
                    (let ((_%$e200742%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e200742%_
                          ((lambda (_%outdir200745%_)
                             (path-expand
                              (_%file-name200735%_
                               (let ((__tmp202470
                                      (##structure-ref
                                       _%ctx200728%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp202470)))
                              _%outdir200745%_))
                           _%$e200742%_)
                          (path-expand
                           (_%file-name200735%_
                            (_%module-relative-path200732%_ _%ctx200728%_))
                           (_%module-source-directory200733%_
                            _%ctx200728%_)))))))
          (let ((_%path200738%_ (_%file-path200736%_)))
            (let ((__tmp202471
                   (lambda ()
                     (let ((__tmp202472 (path-directory _%path200738%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202472)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202471))
            _%path200738%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx200709%_)
        (letrec ((_%file-name200711%_
                  (lambda (_%id200726%_)
                    (let ((__tmp202473 (gxc#static-module-name _%id200726%_)))
                      (declare (not safe))
                      (##string-append __tmp202473 '".scm"))))
                 (_%file-path200712%_
                  (lambda ()
                    (let* ((_%file200718%_
                            (_%file-name200711%_
                             (##structure-ref
                              _%ctx200709%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e200720%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e200720%_
                          ((lambda (_%outdir200723%_)
                             (path-expand
                              _%file200718%_
                              (path-expand '"static" _%outdir200723%_)))
                           _%$e200720%_)
                          (path-expand _%file200718%_ '"static"))))))
          (let ((_%path200714%_ (_%file-path200712%_)))
            (let ((__tmp202474
                   (lambda ()
                     (let ((__tmp202475 (path-directory _%path200714%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202475)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202474))
            _%path200714%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx200702%_ _%opts200703%_)
        (let ((_%$e200705%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts200703%_))))
          (if _%$e200705%_
              _%$e200705%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx200702%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr200692%_)
        (if (string? _%idstr200692%_)
            (let* ((_%str200695%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr200692%_)))
                   (_%strs200697%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str200695%_ '#\/))))
              (declare (not safe))
              (string-join _%strs200697%_ '"__"))
            (if (symbol? _%idstr200692%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr200692%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr200692%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp202476
               (let ((__tmp202477 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp202477 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp202476))))
    (define gxc#invoke__%
      (lambda (_%@@keywords200656%_
               _%stdout-redirection200652200657%_
               _%stderr-redirection200653200659%_
               _%program200661%_
               _%args200662%_)
        (let* ((_%stdout-redirection200664%_
                (if (eq? _%stdout-redirection200652200657%_ absent-value)
                    '#f
                    _%stdout-redirection200652200657%_))
               (_%stderr-redirection200666%_
                (if (eq? _%stderr-redirection200653200659%_ absent-value)
                    '#f
                    _%stderr-redirection200653200659%_)))
          (let ((__tmp202478 (cons _%program200661%_ _%args200662%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp202478))
          (let* ((_%proc200668%_
                  (open-process
                   (cons 'path:
                         (cons _%program200661%_
                               (cons 'arguments:
                                     (cons _%args200662%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection200664%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection200666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output200673%_
                  (if (or _%stdout-redirection200664%_
                          _%stderr-redirection200666%_)
                      (read-line _%proc200668%_ '#f)
                      '#f))
                 (_%status200676%_ (process-status _%proc200668%_)))
            (let () (declare (not safe)) (##close-port _%proc200668%_))
            (if (zero? _%status200676%_)
                '#!void
                (begin
                  (display _%output200673%_)
                  (let ((__tmp202479 (cons _%program200661%_ _%args200662%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp202479
                     _%status200676%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords200681%_ . _%args200682%_)
        (apply gxc#invoke__%
               _%@@keywords200681%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200681%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200681%_
                  'stderr-redirection:
                  absent-value))
               _%args200682%_)))
    (define gxc#invoke
      (lambda _%args200654200688%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args200654200688%_)))))
