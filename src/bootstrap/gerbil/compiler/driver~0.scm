(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1733687567)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp202507 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp202507))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp202508 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp202508))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path202364%_ _%fun202365%_)
        (with-output-to-file
         (cons 'path: (cons _%path202364%_ gxc#scheme-file-settings))
         _%fun202365%_)))
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
      (lambda (_%gerbil-libdir202359%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir202359%_)))
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
      (lambda (_%dir202357%_) (delete-file-or-directory _%dir202357%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath202330%_ _%opts202331%_)
        (if (string? _%srcpath202330%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath202330%_)))
        (let ((_%outdir202333%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts202331%_)))
              (_%invoke-gsc?202334%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts202331%_)))
              (_%gsc-options202335%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts202331%_)))
              (_%keep-scm?202336%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts202331%_)))
              (_%verbosity202337%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts202331%_)))
              (_%optimize202338%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts202331%_)))
              (_%debug202339%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts202331%_)))
              (_%gen-ssxi202340%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts202331%_)))
              (_%parallel?202341%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts202331%_))))
          (if _%outdir202333%_
              (let ((__tmp202509
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir202333%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202509))
              '#!void)
          (if _%optimize202338%_
              (let ((__tmp202510
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202510))
              '#!void)
          (let ((__tmp202513
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath202330%_))
                   (gxc#compile-top-module
                    (let ((__tmp202514
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath202330%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp202514)))))
                (__tmp202512 (gxc#compile-timestamp))
                (__tmp202511
                 (cons 'compile-module (cons _%srcpath202330%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202513
             gxc#current-compile-output-dir
             _%outdir202333%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?202334%_
             gxc#current-compile-gsc-options
             _%gsc-options202335%_
             gxc#current-compile-keep-scm
             _%keep-scm?202336%_
             gxc#current-compile-verbose
             _%verbosity202337%_
             gxc#current-compile-optimize
             _%optimize202338%_
             gxc#current-compile-debug
             _%debug202339%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi202340%_
             gxc#current-compile-timestamp
             __tmp202512
             gxc#current-compile-context
             __tmp202511
             gxc#current-compile-parallel
             _%parallel?202341%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath202350%_)
        (let ((_%opts202352%_ '()))
          (gxc#compile-module__% _%srcpath202350%_ _%opts202352%_))))
    (define gxc#compile-module
      (lambda _g202516_
        (let ((_g202515_ (let () (declare (not safe)) (##length _g202516_))))
          (cond ((let () (declare (not safe)) (##fx= _g202515_ 1))
                 (apply gxc#compile-module__0 _g202516_))
                ((let () (declare (not safe)) (##fx= _g202515_ 2))
                 (apply gxc#compile-module__% _g202516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g202516_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath202305%_ _%opts202306%_)
        (if (string? _%srcpath202305%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath202305%_)))
        (let ((_%outdir202308%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts202306%_)))
              (_%invoke-gsc?202309%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts202306%_)))
              (_%gsc-options202310%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts202306%_)))
              (_%keep-scm?202311%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts202306%_)))
              (_%verbosity202312%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts202306%_)))
              (_%debug202313%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts202306%_)))
              (_%parallel?202314%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts202306%_))))
          (if _%outdir202308%_
              (let ((__tmp202517
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir202308%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202517))
              '#!void)
          (let ((__tmp202520
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath202305%_))
                   (gxc#compile-executable-module
                    (let ((__tmp202521
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath202305%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp202521))
                    _%opts202306%_)))
                (__tmp202519 (gxc#compile-timestamp))
                (__tmp202518 (cons 'compile-exe (cons _%srcpath202305%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202520
             gxc#current-compile-output-dir
             _%outdir202308%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?202309%_
             gxc#current-compile-gsc-options
             _%gsc-options202310%_
             gxc#current-compile-keep-scm
             _%keep-scm?202311%_
             gxc#current-compile-verbose
             _%verbosity202312%_
             gxc#current-compile-debug
             _%debug202313%_
             gxc#current-compile-timestamp
             __tmp202519
             gxc#current-compile-context
             __tmp202518
             gxc#current-compile-parallel
             _%parallel?202314%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath202322%_)
        (let ((_%opts202324%_ '()))
          (gxc#compile-exe__% _%srcpath202322%_ _%opts202324%_))))
    (define gxc#compile-exe
      (lambda _g202523_
        (let ((_g202522_ (let () (declare (not safe)) (##length _g202523_))))
          (cond ((let () (declare (not safe)) (##fx= _g202522_ 1))
                 (apply gxc#compile-exe__0 _g202523_))
                ((let () (declare (not safe)) (##fx= _g202522_ 2))
                 (apply gxc#compile-exe__% _g202523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g202523_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx202301%_ _%opts202302%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts202302%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx202301%_
             _%opts202302%_)
            (gxc#compile-executable-module/separate
             _%ctx202301%_
             _%opts202302%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx202091%_ _%opts202092%_)
        (letrec ((_%generate-stub202094%_
                  (lambda (_%builtin-modules202297%_)
                    (let ((_%mod-main202299%_
                           (gxc#find-runtime-symbol _%ctx202091%_ 'main)))
                      (let ((__tmp202524
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules202297%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp202524))
                      (let ((__tmp202525
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main202299%_
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
                        (##write __tmp202525))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts202095%_
                  (lambda (_%gerbil-libdir202295%_)
                    (let ((__tmp202526
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir202295%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp202526 read))))
                 (_%replace-extension202096%_
                  (lambda (_%path202292%_ _%ext202293%_)
                    (string-append
                     (path-strip-extension _%path202292%_)
                     _%ext202293%_)))
                 (_%userlib-module?202097%_
                  (lambda (_%ctx202290%_)
                    (if (_%exclude-module?202099%_ _%ctx202290%_)
                        '#f
                        (not (_%libgerbil-module?202098%_ _%ctx202290%_)))))
                 (_%libgerbil-module?202098%_
                  (lambda (_%ctx202283%_)
                    (let ((_%id-str202285%_
                           (symbol->string
                            (##structure-ref
                             _%ctx202283%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?202099%_ _%id-str202285%_)
                          '#f
                          (let ((_%$e202287%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str202285%_))))
                            (if _%$e202287%_
                                _%$e202287%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str202285%_))))))))
                 (_%exclude-module?202099%_
                  (lambda (_%ctx-or-str202279%_)
                    (let ((_%str202281%_
                           (if (string? _%ctx-or-str202279%_)
                               _%ctx-or-str202279%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str202279%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str202281%_))))
                 (_%not-file-empty?202100%_
                  (lambda (_%path202277%_)
                    (not (gxc#file-empty? _%path202277%_))))
                 (_%fold-libgerbil-runtime-scm202101%_
                  (lambda (_%gerbil-staticdir202270%_ _%libgerbil-scm202271%_)
                    (let ((_%gerbil-runtime-scm202275%_
                           (let ((__tmp202527
                                  (lambda (_%rtm202273%_)
                                    (path-expand
                                     (let ((__tmp202528
                                            (let ((__tmp202529
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm202273%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp202529
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp202528 '".scm"))
                                     _%gerbil-staticdir202270%_))))
                             (declare (not safe))
                             (##map __tmp202527 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates202102%_
                       (append _%gerbil-runtime-scm202275%_
                               _%libgerbil-scm202271%_)))))
                 (_%remove-duplicates202102%_
                  (lambda (_%strlst202230%_)
                    (let _%loop202232%_ ((_%rest202234%_ _%strlst202230%_)
                                         (_%result202235%_ '()))
                      (let* ((_%rest202236202244%_ _%rest202234%_)
                             (_%else202238202252%_
                              (lambda () (reverse! _%result202235%_)))
                             (_%K202240202258%_
                              (lambda (_%rest202255%_ _%path202256%_)
                                (if (member _%path202256%_ _%result202235%_)
                                    (_%loop202232%_
                                     _%rest202255%_
                                     _%result202235%_)
                                    (_%loop202232%_
                                     _%rest202255%_
                                     (cons _%path202256%_
                                           _%result202235%_))))))
                        (if (pair? _%rest202236202244%_)
                            (let ((_%hd202241202261%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest202236202244%_)))
                                  (_%tl202242202263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest202236202244%_))))
                              (let* ((_%path202266%_ _%hd202241202261%_)
                                     (_%rest202268%_ _%tl202242202263%_))
                                (_%K202240202258%_
                                 _%rest202268%_
                                 _%path202266%_)))
                            (_%else202238202252%_))))))
                 (_%compile-stub202103%_
                  (lambda (_%output-scm202110%_ _%output-bin202111%_)
                    (let* ((_%gerbil-home202113%_
                            (let ((__tmp202530
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp202530)))
                           (_%gerbil-libdir202115%_
                            (path-expand '"lib" _%gerbil-home202113%_))
                           (_%gerbil-staticdir202117%_
                            (path-expand '"static" _%gerbil-libdir202115%_))
                           (_%deps202119%_
                            (gxc#find-runtime-module-deps _%ctx202091%_))
                           (_%libgerbil-deps202121%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?202098%_
                               _%deps202119%_)))
                           (_%libgerbil-scm202123%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps202121%_)))
                           (_%libgerbil-scm202125%_
                            (_%fold-libgerbil-runtime-scm202101%_
                             _%gerbil-staticdir202117%_
                             _%libgerbil-scm202123%_))
                           (_%libgerbil-c202131%_
                            (map (lambda (_%g202126202128%_)
                                   (_%replace-extension202096%_
                                    _%g202126202128%_
                                    '".c"))
                                 _%libgerbil-scm202125%_))
                           (_%libgerbil-o202137%_
                            (map (lambda (_%g202132202134%_)
                                   (_%replace-extension202096%_
                                    _%g202132202134%_
                                    '".o"))
                                 _%libgerbil-scm202125%_))
                           (_%src-deps202139%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?202097%_
                               _%deps202119%_)))
                           (_%src-deps-scm202141%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps202139%_)))
                           (_%src-deps-scm202143%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?202100%_
                               _%src-deps-scm202141%_)))
                           (_%src-deps-scm202145%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm202143%_)))
                           (_%src-deps-c202151%_
                            (let ((__tmp202531
                                   (lambda (_%g202146202148%_)
                                     (_%replace-extension202096%_
                                      _%g202146202148%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp202531 _%src-deps-scm202145%_)))
                           (_%src-deps-o202157%_
                            (let ((__tmp202532
                                   (lambda (_%g202152202154%_)
                                     (_%replace-extension202096%_
                                      _%g202152202154%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp202532 _%src-deps-scm202145%_)))
                           (_%src-bin-scm202159%_
                            (gxc#find-static-module-file _%ctx202091%_))
                           (_%src-bin-scm202161%_
                            (path-expand _%src-bin-scm202159%_))
                           (_%src-bin-c202163%_
                            (_%replace-extension202096%_
                             _%src-bin-scm202161%_
                             '".c"))
                           (_%src-bin-o202165%_
                            (_%replace-extension202096%_
                             _%src-bin-scm202161%_
                             '".o"))
                           (_%output-bin202167%_
                            (path-expand _%output-bin202111%_))
                           (_%output-scm202169%_
                            (path-expand _%output-scm202110%_))
                           (_%output-c202171%_
                            (_%replace-extension202096%_
                             _%output-scm202169%_
                             '".c"))
                           (_%output-o202173%_
                            (_%replace-extension202096%_
                             _%output-scm202169%_
                             '".o"))
                           (_%output_-c202175%_
                            (_%replace-extension202096%_
                             _%output-scm202169%_
                             '"_.c"))
                           (_%output_-o202177%_
                            (_%replace-extension202096%_
                             _%output-scm202169%_
                             '"_.o"))
                           (_%gsc-link-opts202179%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts202181%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts202183%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir202117%_))
                           (_%output-ld-opts202185%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts202187%_
                            (_%get-libgerbil-ld-opts202095%_
                             _%gerbil-libdir202115%_))
                           (_%rpath202189%_
                            (gxc#gerbil-rpath _%gerbil-libdir202115%_))
                           (_%builtin-modules202193%_
                            (_%remove-duplicates202102%_
                             (let ((__tmp202533
                                    (let ((__tmp202535
                                           (lambda (_%mod202191%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod202191%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp202534
                                           (cons _%ctx202091%_
                                                 _%deps202119%_)))
                                      (declare (not safe))
                                      (##map __tmp202535 __tmp202534))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp202533)))))
                      (letrec ((_%compile-obj202196%_
                                (lambda (_%scm-path202203%_ _%c-path202204%_)
                                  (let* ((_%o-path202206%_
                                          (_%replace-extension202096%_
                                           _%c-path202204%_
                                           '".o"))
                                         (_%lock202208%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path202206%_
                                             '".lock")))
                                         (_%locked202210%_ '#f)
                                         (_%unlock202213%_
                                          (lambda ()
                                            (close-port _%locked202210%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock202208%_)))))
                                    (let _%retry202216%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock202208%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry202216%_))
                                          (begin
                                            (set! _%locked202210%_
                                                  (let ((__tmp202536
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock202208%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp202536)))
                                            (if _%locked202210%_
                                                '#!void
                                                (_%retry202216%_)))))
                                    (let ((__tmp202538
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path202206%_)))
                                                     (not _%scm-path202203%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path202203%_
                                                        _%o-path202206%_)))
                                                 (let ((_%gsc-cc-opts202227%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp202539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp202540 (cons _%c-path202204%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp202540
                            _%gsc-static-opts202183%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202539 _%gsc-cc-opts202227%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp202537
                                           (lambda () (_%unlock202213%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp202538
                                       __tmp202537))))))
                        (let ((__tmp202541
                               (lambda ()
                                 (let ((__tmp202542
                                        (path-directory _%output-bin202167%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp202542)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp202541))
                        (gxc#with-output-to-scheme-file
                         _%output-scm202169%_
                         (lambda ()
                           (_%generate-stub202094%_
                            _%builtin-modules202193%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it202201%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp202543
                                                   (let ((__tmp202544
                                                          (let ((__tmp202545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm202161%_
                               (cons _%output-scm202169%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202545 _%src-deps-scm202145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp202544
                                                      _%libgerbil-c202131%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp202543
                                               _%gsc-link-opts202179%_))))
                                     (for-each
                                      _%compile-obj202196%_
                                      (let ((__tmp202546
                                             (cons _%src-bin-scm202161%_
                                                   (cons _%output-scm202169%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp202546
                                         _%src-deps-scm202145%_))
                                      (let ((__tmp202547
                                             (cons _%src-bin-c202163%_
                                                   (cons _%output-c202171%_
                                                         (cons _%output_-c202175%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp202547
                                         _%src-deps-c202151%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin202167%_
                                                        (let ((__tmp202548
                                                               (cons _%src-bin-o202165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o202173%_
                                   (cons _%output_-o202177%_
                                         (let ((__tmp202549
                                                (let ((__tmp202550
                                                       (let ((__tmp202552
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir202115%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts202187%_))))
                     (__tmp202551
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath202189%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp202552 __tmp202551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp202550
                                                   _%output-ld-opts202185%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp202549
                                            _%libgerbil-o202137%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp202548 _%src-deps-o202157%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp202553
                                            (cons _%output-c202171%_
                                                  (cons _%output_-c202175%_
                                                        (cons _%output-o202173%_
                                                              (cons _%output_-o202177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp202553)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it202201%_))
                                  (_%compile-it202201%_)))
                            '#!void))))))
          (let* ((_%output-bin202105%_
                  (gxc#compile-exe-output-file _%ctx202091%_ _%opts202092%_))
                 (_%output-scm202107%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin202105%_ '"__exe.scm"))))
            (_%compile-stub202103%_
             _%output-scm202107%_
             _%output-bin202105%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx201913%_ _%opts201914%_)
        (letrec ((_%reset-declare201916%_
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
                 (_%generate-stub201917%_
                  (lambda (_%deps202082%_)
                    (let ((_%mod-main202084%_
                           (gxc#find-runtime-symbol _%ctx201913%_ 'main))
                          (_%reset-decl202085%_ (_%reset-declare201916%_))
                          (_%user-decl202086%_ (_%user-declare201918%_)))
                      (for-each
                       (lambda (_%dep202088%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl202085%_))
                         (newline)
                         (if _%user-decl202086%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl202086%_))
                               (newline))
                             '#!void)
                         (let ((__tmp202554
                                (cons 'include (cons _%dep202088%_ '()))))
                           (declare (not safe))
                           (##write __tmp202554))
                         (newline))
                       _%deps202082%_)
                      (let ((__tmp202555
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main202084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp202555))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare201918%_
                  (lambda ()
                    (let* ((_%gsc-opts201987%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts201914%_)))
                           (_%gsc-prelude201989%_
                            (if _%gsc-opts201987%_
                                (member '"-prelude" _%gsc-opts201987%_)
                                '#f))
                           (_%gsc-prelude201991%_
                            (if _%gsc-prelude201989%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude201989%_)))
                                '#f)))
                      (let _%lp201994%_ ((_%rest201996%_
                                          (cons _%gsc-prelude201991%_ '()))
                                         (_%user-decls201997%_ '()))
                        (let* ((_%rest201998202006%_ _%rest201996%_)
                               (_%else202000202014%_
                                (lambda ()
                                  (if (null? _%user-decls201997%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls201997%_)))))
                               (_%K202002202070%_
                                (lambda (_%rest202017%_ _%expr202018%_)
                                  (let* ((_%expr202019202031%_ _%expr202018%_)
                                         (_%else202022202039%_
                                          (lambda ()
                                            (_%lp201994%_
                                             _%rest202017%_
                                             _%user-decls201997%_))))
                                    (let ((_%K202027202060%_
                                           (lambda (_%decls202058%_)
                                             (_%lp201994%_
                                              _%rest202017%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls201997%_
                                                 _%decls202058%_)))))
                                          (_%K202024202045%_
                                           (lambda (_%exprs202043%_)
                                             (_%lp201994%_
                                              (append _%exprs202043%_
                                                      _%rest202017%_)
                                              _%user-decls201997%_))))
                                      (if (pair? _%expr202019202031%_)
                                          (let ((_%tl202029202065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr202019202031%_)))
                                                (_%hd202028202063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr202019202031%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd202028202063%_
                                                         'declare))
                                                (let ((_%decls202068%_
                                                       _%tl202029202065%_))
                                                  (_%K202027202060%_
                                                   _%decls202068%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd202028202063%_
                                                             'begin))
                                                    (let ((_%exprs202053%_
                                                           _%tl202029202065%_))
                                                      (_%K202024202045%_
                                                       _%exprs202053%_))
                                                    (_%else202022202039%_))))
                                          (_%else202022202039%_)))))))
                          (if (pair? _%rest201998202006%_)
                              (let ((_%hd202003202073%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest201998202006%_)))
                                    (_%tl202004202075%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest201998202006%_))))
                                (let* ((_%expr202078%_ _%hd202003202073%_)
                                       (_%rest202080%_ _%tl202004202075%_))
                                  (_%K202002202070%_
                                   _%rest202080%_
                                   _%expr202078%_)))
                              (_%else202000202014%_)))))))
                 (_%compile-stub201919%_
                  (lambda (_%output-scm201926%_ _%output-bin201927%_)
                    (let* ((_%gerbil-home201929%_
                            (let ((__tmp202556
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp202556)))
                           (_%gerbil-libdir201931%_
                            (path-expand '"lib" _%gerbil-home201929%_))
                           (_%runtime201933%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp201935%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home201929%_))
                           (_%include-gambit-sharp201937%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp201935%_
                               '"\")")))
                           (_%bin-scm201939%_
                            (gxc#find-static-module-file _%ctx201913%_))
                           (_%deps201941%_
                            (gxc#find-runtime-module-deps _%ctx201913%_))
                           (_%deps201943%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps201941%_)))
                           (_%deps201948%_
                            (let ((__tmp202557
                                   (lambda (_%$obj201945%_)
                                     (not (gxc#file-empty? _%$obj201945%_)))))
                              (declare (not safe))
                              (##filter __tmp202557 _%deps201943%_)))
                           (_%deps201952%_
                            (let ((__tmp202558
                                   (lambda (_%f201950%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f201950%_
                                             _%runtime201933%_))))))
                              (declare (not safe))
                              (##filter __tmp202558 _%deps201948%_)))
                           (_%output-base201954%_
                            (let ((__tmp202559
                                   (path-strip-extension
                                    _%output-scm201926%_)))
                              (declare (not safe))
                              (##string-append __tmp202559)))
                           (_%output-c201956%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201954%_ '".c")))
                           (_%output-o201958%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201954%_ '".o")))
                           (_%output-c_201960%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201954%_ '"_.c")))
                           (_%output-o_201962%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201954%_ '"_.o")))
                           (_%gsc-link-opts201964%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts201966%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts201968%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir201931%_)))
                           (_%output-ld-opts201970%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros201972%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp201937%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp201937%_
                                            '()))))
                           (_%gsc-link-opts201974%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts201964%_
                               _%gsc-gx-macros201972%_)))
                           (_%rpath201976%_
                            (gxc#gerbil-rpath _%gerbil-libdir201931%_))
                           (_%default-ld-options201978%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp202560
                             (lambda ()
                               (let ((__tmp202561
                                      (path-directory _%output-bin201927%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp202561)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp202560))
                      (gxc#with-output-to-scheme-file
                       _%output-scm201926%_
                       (lambda ()
                         (_%generate-stub201917%_
                          (let ((__tmp202562
                                 (let ((__tmp202563
                                        (cons _%bin-scm201939%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp202563
                                    _%deps201952%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp202562 _%runtime201933%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it201984%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_201960%_
                                                      (let ((__tmp202564
                                                             (cons _%output-scm201926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp202564 _%gsc-link-opts201974%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp202565
                                                 (let ((__tmp202566
                                                        (cons _%output-c201956%_
                                                              (cons _%output-c_201960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp202566
                                                    _%gsc-static-opts201968%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp202565
                                             _%gsc-cc-opts201966%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin201927%_
                                                      (cons _%output-o201958%_
                                                            (cons _%output-o_201962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp202567
                                 (let ((__tmp202569
                                        (cons '"-L"
                                              (cons _%gerbil-libdir201931%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options201978%_))))
                                       (__tmp202568
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath201976%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp202569 __tmp202568))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp202567
                             _%output-ld-opts201970%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it201984%_))
                                (_%compile-it201984%_)))
                          '#!void)))))
          (let* ((_%output-bin201921%_
                  (gxc#compile-exe-output-file _%ctx201913%_ _%opts201914%_))
                 (_%output-scm201923%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin201921%_ '"__exe.scm"))))
            (_%compile-stub201919%_
             _%output-scm201923%_
             _%output-bin201921%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx201862%_ _%id201863%_)
        (let ((_%$e201909%_
               (let ((__tmp202571
                      (lambda (_%e201864201866%_)
                        (let* ((_%g201868201878%_ _%e201864201866%_)
                               (_%else201870201886%_ (lambda () '#f))
                               (_%K201872201890%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g201868201878%_
                                 'gx#module-export::t))
                              (let* ((_%e201873201893%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201868201878%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e201874201896%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201868201878%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e201875201899%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201868201878%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e201875201899%_ '0))
                                    (let ((_%e201876201902%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g201868201878%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g201904201906%_)
                                             (eq? _%g201904201906%_
                                                  _%id201863%_))
                                           _%e201876201902%_)
                                          (_%K201872201890%_)
                                          (_%else201870201886%_)))
                                    (_%else201870201886%_)))
                              (_%else201870201886%_)))))
                     (__tmp202570
                      (##structure-ref
                       _%ctx201862%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp202571 __tmp202570))))
          (if _%$e201909%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e201909%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx201853%_ _%id201854%_)
        (let ((_%$e201856%_
               (gxc#find-export-binding _%ctx201853%_ _%id201854%_)))
          (if _%$e201856%_
              ((lambda (_%bind201859%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind201859%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id201854%_)))
                 (##structure-ref _%bind201859%_ '1 gx#binding::t '#f))
               _%$e201856%_)
              (let ((__tmp202572
                     (##structure-ref
                      _%ctx201853%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp202572
                 _%id201854%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx201719%_)
        (letrec* ((_%ht201721%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template201722%_
                   (lambda (_%in201798%_ _%phi201799%_)
                     (let ((_%iphi201801%_
                            (fx+ _%phi201799%_
                                 (##direct-structure-ref
                                  _%in201798%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports201802%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in201798%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp201804%_ ((_%rest201806%_ _%imports201802%_)
                                          (_%r201807%_ '()))
                         (let* ((_%rest201808201816%_ _%rest201806%_)
                                (_%else201810201824%_ (lambda () _%r201807%_))
                                (_%K201812201841%_
                                 (lambda (_%rest201827%_ _%in201828%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in201828%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi201801%_))
                                           (_%lp201804%_
                                            _%rest201827%_
                                            (cons _%in201828%_ _%r201807%_))
                                           (_%lp201804%_
                                            _%rest201827%_
                                            _%r201807%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in201828%_
                                              'gx#module-import::t))
                                           (let ((_%iphi201832%_
                                                  (fx+ _%phi201799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in201828%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi201832%_))
                                                 (_%lp201804%_
                                                  _%rest201827%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in201828%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r201807%_))
                                                 (_%lp201804%_
                                                  _%rest201827%_
                                                  _%r201807%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in201828%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi201835%_
                                                      (fx+ _%iphi201801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in201828%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi201835%_))
                                                     (_%lp201804%_
                                                      _%rest201827%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in201828%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r201807%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi201835%_))
                                                         (_%lp201804%_
                                                          _%rest201827%_
                                                          (let ((__tmp202573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template201722%_
                          _%in201828%_
                          _%iphi201801%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r201807%_ __tmp202573)))
                 (_%lp201804%_ _%rest201827%_ _%r201807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp201804%_
                                                _%rest201827%_
                                                _%r201807%_)))))))
                           (if (pair? _%rest201808201816%_)
                               (let ((_%hd201813201844%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest201808201816%_)))
                                     (_%tl201814201846%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest201808201816%_))))
                                 (let* ((_%in201849%_ _%hd201813201844%_)
                                        (_%rest201851%_ _%tl201814201846%_))
                                   (_%K201812201841%_
                                    _%rest201851%_
                                    _%in201849%_)))
                               (_%else201810201824%_)))))))
                  (_%find-deps201723%_
                   (lambda (_%rest201731%_ _%deps201732%_)
                     (let* ((_%rest201733201741%_ _%rest201731%_)
                            (_%else201735201749%_ (lambda () _%deps201732%_))
                            (_%K201737201786%_
                             (lambda (_%rest201752%_ _%hd201753%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd201753%_
                                      'gx#module-context::t))
                                   (let ((_%id201756%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201753%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports201757%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201753%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht201721%_
                                            _%id201756%_))
                                         (_%find-deps201723%_
                                          _%rest201752%_
                                          _%deps201732%_)
                                         (let ((_%$e201760%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd201753%_))))
                                           (if _%$e201760%_
                                               ((lambda (_%pre201763%_)
                                                  (let ((_%xdeps201765%_
                                                         (_%find-deps201723%_
                                                          (cons _%pre201763%_
                                                                _%imports201757%_)
                                                          _%deps201732%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht201721%_
                                                       _%id201756%_
                                                       _%hd201753%_))
                                                    (_%find-deps201723%_
                                                     _%rest201752%_
                                                     (cons _%hd201753%_
                                                           _%xdeps201765%_))))
                                                _%$e201760%_)
                                               (let ((_%xdeps201768%_
                                                      (_%find-deps201723%_
                                                       _%imports201757%_
                                                       _%deps201732%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht201721%_
                                                    _%id201756%_
                                                    _%hd201753%_))
                                                 (_%find-deps201723%_
                                                  _%rest201752%_
                                                  (cons _%hd201753%_
                                                        _%xdeps201768%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd201753%_
                                          'gx#prelude-context::t))
                                       (let ((_%id201771%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd201753%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht201721%_
                                                _%id201771%_))
                                             (_%find-deps201723%_
                                              _%rest201752%_
                                              _%deps201732%_)
                                             (let ((_%xdeps201775%_
                                                    (_%find-deps201723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd201753%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps201732%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht201721%_
                                                      _%id201771%_))
                                                   (_%find-deps201723%_
                                                    _%rest201752%_
                                                    _%xdeps201775%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht201721%_
                                                        _%id201771%_
                                                        _%hd201753%_))
                                                     (_%find-deps201723%_
                                                      _%rest201752%_
                                                      (cons _%hd201753%_
                                                            _%xdeps201775%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd201753%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd201753%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps201723%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201753%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201752%_)
                                                _%deps201732%_)
                                               (_%find-deps201723%_
                                                _%rest201752%_
                                                _%deps201732%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd201753%_
                                                  'gx#module-export::t))
                                               (_%find-deps201723%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201753%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201752%_)
                                                _%deps201732%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd201753%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd201753%_ '2 '#f '#f)))
               (_%find-deps201723%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd201753%_ '1 '#f '#f))
                      _%rest201752%_)
                _%deps201732%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd201753%_ '2 '#f '#f)))
                   (let ((_%xdeps201782%_
                          (_%import-set-template201722%_ _%hd201753%_ '0)))
                     (_%find-deps201723%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest201752%_ _%xdeps201782%_))
                      _%deps201732%_))
                   (_%find-deps201723%_ _%rest201752%_ _%deps201732%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd201753%_))))))))))
                       (if (pair? _%rest201733201741%_)
                           (let ((_%hd201738201789%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest201733201741%_)))
                                 (_%tl201739201791%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest201733201741%_))))
                             (let* ((_%hd201794%_ _%hd201738201789%_)
                                    (_%rest201796%_ _%tl201739201791%_))
                               (_%K201737201786%_
                                _%rest201796%_
                                _%hd201794%_)))
                           (_%else201735201749%_))))))
          (let ((__tmp202574
                 (filter gx#expander-context-id
                         (_%find-deps201723%_
                          (let ((_%$e201725%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx201719%_))))
                            (if _%$e201725%_
                                ((lambda (_%pre201728%_)
                                   (cons _%pre201728%_
                                         (##structure-ref
                                          _%ctx201719%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e201725%_)
                                (##structure-ref
                                 _%ctx201719%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp202574)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx201649%_)
        (let* ((_%context-id201651%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx201649%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx201649%_ '1 '#f '#f))
                    (string->symbol _%ctx201649%_)))
               (_%scm201653%_
                (let ((__tmp202575
                       (gxc#static-module-name _%context-id201651%_)))
                  (declare (not safe))
                  (##string-append __tmp202575 '".scm")))
               (_%dirs201655%_ (let () (declare (not safe)) (load-path)))
               (_%dirs201661%_
                (let ((_%user-libpath201657%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath201657%_
                      (let ((_%user-libpath201659%_
                             (path-expand '"lib" _%user-libpath201657%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath201659%_ _%dirs201655%_))
                            _%dirs201655%_
                            (cons _%user-libpath201659%_ _%dirs201655%_)))
                      _%dirs201655%_)))
               (_%dirs201671%_
                (let ((_%$e201663%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e201663%_
                      ((lambda (_%g201665201667%_)
                         (cons _%g201665201667%_ _%dirs201661%_))
                       _%$e201663%_)
                      _%dirs201661%_)))
               (_%dirs201677%_
                (let ((__tmp202576
                       (lambda (_%g201672201674%_)
                         (path-expand '"static" _%g201672201674%_))))
                  (declare (not safe))
                  (##map __tmp202576 _%dirs201671%_))))
          (let _%lp201680%_ ((_%rest201682%_ _%dirs201677%_))
            (let* ((_%rest201683201691%_ _%rest201682%_)
                   (_%else201685201699%_
                    (lambda ()
                      (let ((__tmp202577
                             (##structure-ref
                              _%ctx201649%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp202577
                         _%scm201653%_))))
                   (_%K201687201707%_
                    (lambda (_%rest201702%_ _%dir201703%_)
                      (let ((_%path201705%_
                             (path-expand _%scm201653%_ _%dir201703%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path201705%_))
                            _%path201705%_
                            (_%lp201680%_ _%rest201702%_))))))
              (if (pair? _%rest201683201691%_)
                  (let ((_%hd201688201710%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201683201691%_)))
                        (_%tl201689201712%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201683201691%_))))
                    (let* ((_%dir201715%_ _%hd201688201710%_)
                           (_%rest201717%_ _%tl201689201712%_))
                      (_%K201687201707%_ _%rest201717%_ _%dir201715%_)))
                  (_%else201685201699%_)))))))
    (define gxc#file-empty?
      (lambda (_%path201647%_)
        (zero? (let ((__tmp202578 (file-info _%path201647%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp202578)))))
    (define gxc#compile-top-module
      (lambda (_%ctx201643%_)
        (let ((__tmp202582
               (lambda ()
                 (let ((__tmp202583
                        (##structure-ref
                         _%ctx201643%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp202583))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp202584
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx201643%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp202584))
                     '#!void)
                 (gxc#collect-bindings _%ctx201643%_)
                 (gxc#compile-runtime-code _%ctx201643%_)
                 (gxc#compile-meta-code _%ctx201643%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx201643%_)
                     '#!void)))
              (__tmp202581
               (let ((__obj202505
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj202505))
                 __obj202505))
              (__tmp202580 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp202579
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
           __tmp202582
           gx#current-expander-context
           _%ctx201643%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp202581
           gxc#current-compile-runtime-sections
           __tmp202580
           gxc#current-compile-runtime-names
           __tmp202579))))
    (define gxc#collect-bindings
      (lambda (_%ctx201641%_)
        (let ((__tmp202585
               (##structure-ref _%ctx201641%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp202585))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx201589%_)
        (letrec ((_%compile1201591%_
                  (lambda (_%ctx201630%_)
                    (let* ((_%code201632%_
                            (##structure-ref
                             _%ctx201630%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm201636%_
                            (let ((_%idstr201634%_
                                   (let ((__tmp202586
                                          (##structure-ref
                                           _%ctx201630%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp202586))))
                              (declare (not safe))
                              (##string-append _%idstr201634%_ '"~0")))
                           (_%rtc?201638%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code201632%_))))
                      (if _%rtc?201638%_
                          (let ((__tmp202587
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp202587
                             _%ctx201630%_
                             _%rtm201636%_))
                          '#!void)
                      (_%generate-runtime-code201593%_
                       _%ctx201630%_
                       _%code201632%_
                       (if _%rtc?201638%_ _%rtm201636%_ '#f)))))
                 (_%context-timestamp201592%_
                  (lambda (_%ctx201628%_)
                    (let ((__tmp202588
                           (let ((__tmp202589
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx201628%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp202589 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp202588))))
                 (_%generate-runtime-code201593%_
                  (lambda (_%ctx201600%_ _%code201601%_ _%rtm201602%_)
                    (let* ((_%runtime-code?201604%_ (if _%rtm201602%_ '#t '#f))
                           (_%lifts201606%_ (box '()))
                           (_%runtime-code201609%_
                            (if _%runtime-code?201604%_
                                (let ((__tmp202592
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code201601%_))))
                                      (__tmp202591
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp202590
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp202592
                                   gx#current-expander-context
                                   _%ctx201600%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts201606%_
                                   gxc#current-compile-marks
                                   __tmp202591
                                   gxc#current-compile-identifiers
                                   __tmp202590))
                                '#f))
                           (_%runtime-code201611%_
                            (if _%runtime-code?201604%_
                                (if (null? (unbox _%lifts201606%_))
                                    _%runtime-code201609%_
                                    (cons 'begin
                                          (let ((__tmp202594
                                                 (cons _%runtime-code201609%_
                                                       '()))
                                                (__tmp202593
                                                 (reverse (unbox _%lifts201606%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp202594
                                             __tmp202593))))
                                '#f))
                           (_%runtime-code201613%_
                            (if _%runtime-code?201604%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp201592%_
                                                         _%ctx201600%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code201611%_ '())))
                                '#f))
                           (_%loader-code201616%_
                            (let ((__tmp202595
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code201601%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp202595
                               gx#current-expander-context
                               _%ctx201600%_)))
                           (_%loader-code201618%_
                            (cons 'begin
                                  (cons _%loader-code201616%_
                                        (cons (if _%runtime-code?201604%_
                                                  (cons 'load-module
                                                        (cons _%rtm201602%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0201620%_
                            (gxc#compile-output-file _%ctx201600%_ '0 '".scm"))
                           (_%scmrt201622%_
                            (gxc#compile-output-file
                             _%ctx201600%_
                             '#f
                             '".scm"))
                           (_%scms201624%_
                            (gxc#compile-static-output-file _%ctx201600%_)))
                      (if _%runtime-code?201604%_
                          (gxc#compile-scm-file__0
                           _%scm0201620%_
                           _%runtime-code201613%_)
                          '#!void)
                      (let ((__tmp202596
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt201622%_
                                _%loader-code201618%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp202596
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms201624%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms201624%_))
                          '#!void)
                      (if _%runtime-code?201604%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0201620%_ _%scms201624%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms201624%_ void)))))))
          (let* ((_%all-modules201595%_
                  (cons _%ctx201589%_ (gxc#lift-nested-modules _%ctx201589%_)))
                 (__tmp202597
                  (lambda (_%ctx201597%_)
                    (let ((__tmp202598
                           (lambda () (_%compile1201591%_ _%ctx201597%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp202598
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp202597 _%all-modules201595%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx201489%_)
        (letrec ((_%compile-ssi201491%_
                  (lambda (_%code201557%_)
                    (let* ((_%path201559%_
                            (gxc#compile-output-file
                             _%ctx201489%_
                             '#f
                             '".ssi"))
                           (_%prelude201571%_
                            (let* ((_%super201561%_
                                    (##structure-ref
                                     _%ctx201489%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e201563%_
                                    (##structure-ref
                                     _%super201561%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e201563%_
                                  ((lambda (_%g201565201567%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g201565201567%_)))
                                   _%$e201563%_)
                                  ':<root>)))
                           (_%ns201573%_
                            (##structure-ref
                             _%ctx201489%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr201575%_
                            (symbol->string
                             (##structure-ref
                              _%ctx201489%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg201583%_
                            (let ((_%$e201577%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr201575%_ '#\/))))
                              (if _%$e201577%_
                                  ((lambda (_%x201580%_)
                                     (let ((__tmp202599
                                            (substring
                                             _%idstr201575%_
                                             '0
                                             _%x201580%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp202599)))
                                   _%$e201577%_)
                                  '#f)))
                           (_%rt201585%_
                            (let ((__tmp202600
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp202600 _%ctx201489%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path201559%_))
                      (gxc#with-output-to-scheme-file
                       _%path201559%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude201571%_))
                         (if _%pkg201583%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg201583%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns201573%_))
                         (newline)
                         (pretty-print _%code201557%_)
                         (if _%rt201585%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt201585%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi201492%_
                  (lambda (_%part201497%_)
                    (let* ((_%part201498201511%_ _%part201497%_)
                           (_%E201500201515%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part201498201511%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K201501201526%_
                            (lambda (_%code201518%_
                                     _%n201519%_
                                     _%phi201520%_
                                     _%phi-ctx201521%_)
                              (let ((_%code201524%_
                                     (let ((__tmp202601
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code201518%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp202601
                                        gx#current-expander-context
                                        _%phi-ctx201521%_
                                        gx#current-expander-phi
                                        _%phi201520%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx201489%_
                                  _%n201519%_
                                  '".scm")
                                 _%code201524%_
                                 '#t)))))
                      (if (pair? _%part201498201511%_)
                          (let ((_%hd201502201529%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part201498201511%_)))
                                (_%tl201503201531%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part201498201511%_))))
                            (let ((_%phi-ctx201534%_ _%hd201502201529%_))
                              (if (pair? _%tl201503201531%_)
                                  (let ((_%hd201504201536%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201503201531%_)))
                                        (_%tl201505201538%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201503201531%_))))
                                    (let ((_%phi201541%_ _%hd201504201536%_))
                                      (if (pair? _%tl201505201538%_)
                                          (let ((_%hd201506201543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl201505201538%_)))
                                                (_%tl201507201545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl201505201538%_))))
                                            (let ((_%n201548%_
                                                   _%hd201506201543%_))
                                              (if (pair? _%tl201507201545%_)
                                                  (let ((_%hd201508201550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl201507201545%_)))
                                                        (_%tl201509201552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl201507201545%_))))
                                                    (let ((_%code201555%_
                                                           _%hd201508201550%_))
                                                      (if (null? _%tl201509201552%_)
                                                          (_%K201501201526%_
                                                           _%code201555%_
                                                           _%n201548%_
                                                           _%phi201541%_
                                                           _%phi-ctx201534%_)
                                                          (_%E201500201515%_))))
                                                  (_%E201500201515%_))))
                                          (_%E201500201515%_))))
                                  (_%E201500201515%_))))
                          (_%E201500201515%_))))))
          (let ((_g202602_ (gxc#generate-meta-code _%ctx201489%_)))
            (begin
              (let ((_g202603_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g202602_)
                           (##vector-length _g202602_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g202603_ 2)))
                    (error "Context expects 2 values" _g202603_)))
              (let ((_%ssi-code201494%_
                     (let () (declare (not safe)) (##vector-ref _g202602_ 0)))
                    (_%phi-code201495%_
                     (let () (declare (not safe)) (##vector-ref _g202602_ 1))))
                (begin
                  (_%compile-ssi201491%_ _%ssi-code201494%_)
                  (for-each _%compile-phi201492%_ _%phi-code201495%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx201471%_)
        (let* ((_%path201473%_
                (gxc#compile-output-file _%ctx201471%_ '#f '".ssxi.ss"))
               (_%code201475%_
                (let ((__tmp202604
                       (##structure-ref
                        _%ctx201471%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp202604)))
               (_%idstr201477%_
                (symbol->string
                 (##structure-ref
                  _%ctx201471%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg201485%_
                (let ((_%$e201479%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr201477%_ '#\/))))
                  (if _%$e201479%_
                      ((lambda (_%x201482%_)
                         (let ((__tmp202605
                                (substring _%idstr201477%_ '0 _%x201482%_)))
                           (declare (not safe))
                           (##string->symbol __tmp202605)))
                       _%$e201479%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path201473%_))
          (gxc#with-output-to-scheme-file
           _%path201473%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg201485%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg201485%_))
                 '#!void)
             (newline)
             (pretty-print _%code201475%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx201464%_)
        (let* ((_%state201466%_
                (let ((__obj202506
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj202506 _%ctx201464%_))
                  __obj202506))
               (_%ssi-code201468%_
                (let ((__tmp202606
                       (##structure-ref
                        _%ctx201464%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state201466%_
                   __tmp202606))))
          (values _%ssi-code201468%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state201466%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx201457%_)
        (let ((_%lifts201459%_ (box '())))
          (let ((__tmp202609
                 (lambda ()
                   (let ((_%code201462%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx201457%_))))
                     (if (null? (unbox _%lifts201459%_))
                         _%code201462%_
                         (cons 'begin
                               (let ((__tmp202611 (cons _%code201462%_ '()))
                                     (__tmp202610
                                      (reverse (unbox _%lifts201459%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp202611 __tmp202610)))))))
                (__tmp202608
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp202607
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202609
             gxc#current-compile-lift
             _%lifts201459%_
             gxc#current-compile-marks
             __tmp202608
             gxc#current-compile-identifiers
             __tmp202607)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx201453%_)
        (let ((_%modules201455%_ (box '())))
          (let ((__tmp202612
                 (##structure-ref _%ctx201453%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules201455%_ __tmp202612))
          (reverse (unbox _%modules201455%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path201433%_ _%code201434%_ _%phi?201435%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path201433%_))
        (gxc#with-output-to-scheme-file
         _%path201433%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp202613
                                           (if _%phi?201435%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp202613)))))))
           (pretty-print _%code201434%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it201439%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path201433%_ _%phi?201435%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp202614
                         (cons 'compile-file (cons _%path201433%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it201439%_ __tmp202614))
                  (_%compile-it201439%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path201444%_ _%code201445%_)
        (let ((_%phi?201447%_ '#f))
          (gxc#compile-scm-file__%
           _%path201444%_
           _%code201445%_
           _%phi?201447%_))))
    (define gxc#compile-scm-file
      (lambda _g202616_
        (let ((_g202615_ (let () (declare (not safe)) (##length _g202616_))))
          (cond ((let () (declare (not safe)) (##fx= _g202615_ 2))
                 (apply gxc#compile-scm-file__0 _g202616_))
                ((let () (declare (not safe)) (##fx= _g202615_ 3))
                 (apply gxc#compile-scm-file__% _g202616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g202616_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?201334%_)
        (let _%lp201336%_ ((_%rest201338%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts201339%_ '()))
          (let* ((_%rest201340201360%_ _%rest201338%_)
                 (_%else201344201368%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts201339%_)))
                        (reverse _%opts201339%_)))))
            (let ((_%K201354201411%_
                   (lambda (_%rest201409%_)
                     (_%lp201336%_ _%rest201409%_ _%opts201339%_)))
                  (_%K201349201393%_
                   (lambda (_%rest201391%_)
                     (_%lp201336%_ _%rest201391%_ _%opts201339%_)))
                  (_%K201346201375%_
                   (lambda (_%rest201372%_ _%opt201373%_)
                     (_%lp201336%_
                      _%rest201372%_
                      (cons _%opt201373%_ _%opts201339%_)))))
              (if (pair? _%rest201340201360%_)
                  (let ((_%tl201356201416%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201340201360%_)))
                        (_%hd201355201414%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201340201360%_))))
                    (if (equal? _%hd201355201414%_ '"-cc-options")
                        (if (pair? _%tl201356201416%_)
                            (let* ((_%tl201358201419%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl201356201416%_)))
                                   (_%rest201422%_ _%tl201358201419%_))
                              (_%K201354201411%_ _%rest201422%_))
                            (let ((_%opt201383%_ _%hd201355201414%_)
                                  (_%rest201385%_ _%tl201356201416%_))
                              (_%K201346201375%_
                               _%rest201385%_
                               _%opt201383%_)))
                        (if (equal? _%hd201355201414%_ '"-ld-options")
                            (if (pair? _%tl201356201416%_)
                                (let* ((_%tl201353201401%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl201356201416%_)))
                                       (_%rest201404%_ _%tl201353201401%_))
                                  (_%K201349201393%_ _%rest201404%_))
                                (let ((_%opt201383%_ _%hd201355201414%_)
                                      (_%rest201385%_ _%tl201356201416%_))
                                  (_%K201346201375%_
                                   _%rest201385%_
                                   _%opt201383%_)))
                            (let ((_%opt201383%_ _%hd201355201414%_)
                                  (_%rest201385%_ _%tl201356201416%_))
                              (_%K201346201375%_
                               _%rest201385%_
                               _%opt201383%_)))))
                  (_%else201344201368%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?201428%_ '#f)) (gxc#gsc-link-options__% _%phi?201428%_))))
    (define gxc#gsc-link-options
      (lambda _g202618_
        (let ((_g202617_ (let () (declare (not safe)) (##length _g202618_))))
          (cond ((let () (declare (not safe)) (##fx= _g202617_ 0))
                 (apply gxc#gsc-link-options__0 _g202618_))
                ((let () (declare (not safe)) (##fx= _g202617_ 1))
                 (apply gxc#gsc-link-options__% _g202618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g202618_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords201183%_ _%static?201179201184%_ _%phi?201186%_)
        (let ((_%static?201188%_
               (if (eq? _%static?201179201184%_ absent-value)
                   '#f
                   _%static?201179201184%_)))
          (if _%phi?201186%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp201190%_ ((_%rest201192%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts201193%_ '()))
                (let* ((_%rest201194201220%_ _%rest201192%_)
                       (_%else201199201228%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts201193%_)))
                              (reverse! _%opts201193%_)))))
                  (let ((_%K201214201291%_
                         (lambda (_%rest201288%_ _%opt201289%_)
                           (if _%static?201188%_
                               (_%lp201190%_
                                _%rest201288%_
                                (cons _%opt201289%_
                                      (cons '"-cc-options" _%opts201193%_)))
                               (_%lp201190%_ _%rest201288%_ _%opts201193%_))))
                        (_%K201209201268%_
                         (lambda (_%rest201265%_ _%opt201266%_)
                           (_%lp201190%_
                            _%rest201265%_
                            (cons _%opt201266%_
                                  (cons '"-cc-options" _%opts201193%_)))))
                        (_%K201204201248%_
                         (lambda (_%rest201246%_)
                           (_%lp201190%_ _%rest201246%_ _%opts201193%_)))
                        (_%K201201201234%_
                         (lambda (_%rest201232%_)
                           (_%lp201190%_ _%rest201232%_ _%opts201193%_))))
                    (if (pair? _%rest201194201220%_)
                        (let ((_%tl201216201296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest201194201220%_)))
                              (_%hd201215201294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest201194201220%_))))
                          (if (equal? _%hd201215201294%_ '"-cc-options")
                              (if (pair? _%tl201216201296%_)
                                  (let ((_%tl201218201301%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201216201296%_)))
                                        (_%hd201217201299%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201216201296%_))))
                                    (if (equal? _%hd201217201299%_ '"-Bstatic")
                                        (let ((_%opt201304%_
                                               _%hd201217201299%_)
                                              (_%rest201306%_
                                               _%tl201218201301%_))
                                          (_%K201214201291%_
                                           _%rest201306%_
                                           _%opt201304%_))
                                        (let ((_%opt201281%_
                                               _%hd201217201299%_)
                                              (_%rest201283%_
                                               _%tl201218201301%_))
                                          (_%K201209201268%_
                                           _%rest201283%_
                                           _%opt201281%_))))
                                  (let ((_%rest201240%_ _%tl201216201296%_))
                                    (_%K201201201234%_ _%rest201240%_)))
                              (if (equal? _%hd201215201294%_ '"-ld-options")
                                  (if (pair? _%tl201216201296%_)
                                      (let* ((_%tl201208201256%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl201216201296%_)))
                                             (_%rest201259%_
                                              _%tl201208201256%_))
                                        (_%K201204201248%_ _%rest201259%_))
                                      (let ((_%rest201240%_
                                             _%tl201216201296%_))
                                        (_%K201201201234%_ _%rest201240%_)))
                                  (let ((_%rest201240%_ _%tl201216201296%_))
                                    (_%K201201201234%_ _%rest201240%_)))))
                        (_%else201199201228%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords201311%_ _%static?201179201312%_)
        (let ((_%phi?201314%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords201311%_
           _%static?201179201312%_
           _%phi?201314%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g202620_
        (let ((_g202619_ (let () (declare (not safe)) (##length _g202620_))))
          (cond ((let () (declare (not safe)) (##fx= _g202619_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g202620_))
                ((let () (declare (not safe)) (##fx= _g202619_ 3))
                 (apply gxc#gsc-cc-options__%__% _g202620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g202620_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords201323%_ . _%args201324%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords201323%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201323%_
                  'static:
                  absent-value))
               _%args201324%_)))
    (define gxc#gsc-cc-options
      (lambda _%args201180201330%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args201180201330%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords201028%_ _%static?201024201029%_ _%phi?201031%_)
        (let ((_%static?201033%_
               (if (eq? _%static?201024201029%_ absent-value)
                   '#f
                   _%static?201024201029%_)))
          (if _%phi?201031%_
              '()
              (let _%lp201035%_ ((_%rest201037%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts201038%_ '()))
                (let* ((_%rest201039201065%_ _%rest201037%_)
                       (_%else201044201073%_
                        (lambda () (reverse! _%opts201038%_))))
                  (let ((_%K201059201136%_
                         (lambda (_%rest201133%_ _%opt201134%_)
                           (if _%static?201033%_
                               (_%lp201035%_
                                _%rest201133%_
                                (cons _%opt201134%_
                                      (cons '"-ld-options" _%opts201038%_)))
                               (_%lp201035%_ _%rest201133%_ _%opts201038%_))))
                        (_%K201054201113%_
                         (lambda (_%rest201110%_ _%opt201111%_)
                           (_%lp201035%_
                            _%rest201110%_
                            (cons _%opt201111%_
                                  (cons '"-ld-options" _%opts201038%_)))))
                        (_%K201049201093%_
                         (lambda (_%rest201091%_)
                           (_%lp201035%_ _%rest201091%_ _%opts201038%_)))
                        (_%K201046201079%_
                         (lambda (_%rest201077%_)
                           (_%lp201035%_ _%rest201077%_ _%opts201038%_))))
                    (if (pair? _%rest201039201065%_)
                        (let ((_%tl201061201141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest201039201065%_)))
                              (_%hd201060201139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest201039201065%_))))
                          (if (equal? _%hd201060201139%_ '"-ld-options")
                              (if (pair? _%tl201061201141%_)
                                  (let ((_%tl201063201146%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201061201141%_)))
                                        (_%hd201062201144%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201061201141%_))))
                                    (if (equal? _%hd201062201144%_ '"-static")
                                        (let ((_%opt201149%_
                                               _%hd201062201144%_)
                                              (_%rest201151%_
                                               _%tl201063201146%_))
                                          (_%K201059201136%_
                                           _%rest201151%_
                                           _%opt201149%_))
                                        (let ((_%opt201126%_
                                               _%hd201062201144%_)
                                              (_%rest201128%_
                                               _%tl201063201146%_))
                                          (_%K201054201113%_
                                           _%rest201128%_
                                           _%opt201126%_))))
                                  (let ((_%rest201085%_ _%tl201061201141%_))
                                    (_%K201046201079%_ _%rest201085%_)))
                              (if (equal? _%hd201060201139%_ '"-cc-options")
                                  (if (pair? _%tl201061201141%_)
                                      (let* ((_%tl201053201101%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl201061201141%_)))
                                             (_%rest201104%_
                                              _%tl201053201101%_))
                                        (_%K201049201093%_ _%rest201104%_))
                                      (let ((_%rest201085%_
                                             _%tl201061201141%_))
                                        (_%K201046201079%_ _%rest201085%_)))
                                  (let ((_%rest201085%_ _%tl201061201141%_))
                                    (_%K201046201079%_ _%rest201085%_)))))
                        (_%else201044201073%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords201156%_ _%static?201024201157%_)
        (let ((_%phi?201159%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords201156%_
           _%static?201024201157%_
           _%phi?201159%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g202622_
        (let ((_g202621_ (let () (declare (not safe)) (##length _g202622_))))
          (cond ((let () (declare (not safe)) (##fx= _g202621_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g202622_))
                ((let () (declare (not safe)) (##fx= _g202621_ 3))
                 (apply gxc#gsc-ld-options__%__% _g202622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g202622_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords201168%_ . _%args201169%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords201168%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201168%_
                  'static:
                  absent-value))
               _%args201169%_)))
    (define gxc#gsc-ld-options
      (lambda _%args201025201175%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args201025201175%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir201019%_)
        (let ((_%user-staticdir201021%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir201019%_
                       '" -I "
                       _%user-staticdir201021%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp200931%_ ((_%rest200933%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts200934%_ '()))
          (let* ((_%rest200935200955%_ _%rest200933%_)
                 (_%else200939200963%_ (lambda () _%opts200934%_)))
            (let ((_%K200949201006%_
                   (lambda (_%rest201004%_)
                     (_%lp200931%_ _%rest201004%_ _%opts200934%_)))
                  (_%K200944200984%_
                   (lambda (_%rest200981%_ _%opt200982%_)
                     (_%lp200931%_
                      _%rest200981%_
                      (let ((__tmp202623
                             (let ((__tmp202624
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt200982%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp202624))))
                        (declare (not safe))
                        (##append _%opts200934%_ __tmp202623)))))
                  (_%K200941200969%_
                   (lambda (_%rest200967%_)
                     (_%lp200931%_ _%rest200967%_ _%opts200934%_))))
              (if (pair? _%rest200935200955%_)
                  (let ((_%tl200951201011%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200935200955%_)))
                        (_%hd200950201009%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200935200955%_))))
                    (if (equal? _%hd200950201009%_ '"-cc-options")
                        (if (pair? _%tl200951201011%_)
                            (let* ((_%tl200953201014%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl200951201011%_)))
                                   (_%rest201017%_ _%tl200953201014%_))
                              (_%K200949201006%_ _%rest201017%_))
                            (let ((_%rest200975%_ _%tl200951201011%_))
                              (_%K200941200969%_ _%rest200975%_)))
                        (if (equal? _%hd200950201009%_ '"-ld-options")
                            (if (pair? _%tl200951201011%_)
                                (let ((_%tl200948200994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl200951201011%_)))
                                      (_%hd200947200992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl200951201011%_))))
                                  (let ((_%opt200997%_ _%hd200947200992%_)
                                        (_%rest200999%_ _%tl200948200994%_))
                                    (_%K200944200984%_
                                     _%rest200999%_
                                     _%opt200997%_)))
                                (let ((_%rest200975%_ _%tl200951201011%_))
                                  (_%K200941200969%_ _%rest200975%_)))
                            (let ((_%rest200975%_ _%tl200951201011%_))
                              (_%K200941200969%_ _%rest200975%_)))))
                  (_%else200939200963%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str200928%_)
        (not (let () (declare (not safe)) (string-empty? _%str200928%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path200921%_ _%phi?200922%_)
        (let ((_%gsc-link-opts200924%_
               (gxc#gsc-link-options__% _%phi?200922%_))
              (_%gsc-cc-opts200925%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?200922%_))
              (_%gsc-ld-opts200926%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?200922%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp202625
                  (let ((__tmp202626
                         (let ((__tmp202627 (cons _%path200921%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp202627
                            _%gsc-link-opts200924%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202626 _%gsc-ld-opts200926%_))))
             (declare (not safe))
             (__foldr1 cons __tmp202625 _%gsc-cc-opts200925%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx200887%_ _%n200888%_ _%ext200889%_)
        (letrec ((_%module-relative-path200891%_
                  (lambda (_%ctx200919%_)
                    (path-strip-directory
                     (let ((__tmp202628
                            (##structure-ref
                             _%ctx200919%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp202628)))))
                 (_%module-source-directory200892%_
                  (lambda (_%ctx200915%_)
                    (path-directory
                     (let ((_%mpath200917%_
                            (##structure-ref
                             _%ctx200915%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath200917%_)
                           _%mpath200917%_
                           (last _%mpath200917%_))))))
                 (_%section-string200893%_
                  (lambda (_%n200909%_)
                    (if (number? _%n200909%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n200909%_))
                        (if (symbol? _%n200909%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n200909%_))
                            (if (string? _%n200909%_)
                                _%n200909%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n200909%_)))))))
                 (_%file-name200894%_
                  (lambda (_%path200907%_)
                    (if _%n200888%_
                        (string-append
                         _%path200907%_
                         '"~"
                         (_%section-string200893%_ _%n200888%_)
                         _%ext200889%_)
                        (string-append _%path200907%_ _%ext200889%_))))
                 (_%file-path200895%_
                  (lambda ()
                    (let ((_%$e200901%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e200901%_
                          ((lambda (_%outdir200904%_)
                             (path-expand
                              (_%file-name200894%_
                               (let ((__tmp202629
                                      (##structure-ref
                                       _%ctx200887%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp202629)))
                              _%outdir200904%_))
                           _%$e200901%_)
                          (path-expand
                           (_%file-name200894%_
                            (_%module-relative-path200891%_ _%ctx200887%_))
                           (_%module-source-directory200892%_
                            _%ctx200887%_)))))))
          (let ((_%path200897%_ (_%file-path200895%_)))
            (let ((__tmp202630
                   (lambda ()
                     (let ((__tmp202631 (path-directory _%path200897%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202631)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202630))
            _%path200897%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx200868%_)
        (letrec ((_%file-name200870%_
                  (lambda (_%id200885%_)
                    (let ((__tmp202632 (gxc#static-module-name _%id200885%_)))
                      (declare (not safe))
                      (##string-append __tmp202632 '".scm"))))
                 (_%file-path200871%_
                  (lambda ()
                    (let* ((_%file200877%_
                            (_%file-name200870%_
                             (##structure-ref
                              _%ctx200868%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e200879%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e200879%_
                          ((lambda (_%outdir200882%_)
                             (path-expand
                              _%file200877%_
                              (path-expand '"static" _%outdir200882%_)))
                           _%$e200879%_)
                          (path-expand _%file200877%_ '"static"))))))
          (let ((_%path200873%_ (_%file-path200871%_)))
            (let ((__tmp202633
                   (lambda ()
                     (let ((__tmp202634 (path-directory _%path200873%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202634)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202633))
            _%path200873%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx200861%_ _%opts200862%_)
        (let ((_%$e200864%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts200862%_))))
          (if _%$e200864%_
              _%$e200864%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx200861%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr200851%_)
        (if (string? _%idstr200851%_)
            (let* ((_%str200854%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr200851%_)))
                   (_%strs200856%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str200854%_ '#\/))))
              (declare (not safe))
              (string-join _%strs200856%_ '"__"))
            (if (symbol? _%idstr200851%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr200851%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr200851%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp202635
               (let ((__tmp202636 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp202636 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp202635))))
    (define gxc#invoke__%
      (lambda (_%@@keywords200815%_
               _%stdout-redirection200811200816%_
               _%stderr-redirection200812200818%_
               _%program200820%_
               _%args200821%_)
        (let* ((_%stdout-redirection200823%_
                (if (eq? _%stdout-redirection200811200816%_ absent-value)
                    '#f
                    _%stdout-redirection200811200816%_))
               (_%stderr-redirection200825%_
                (if (eq? _%stderr-redirection200812200818%_ absent-value)
                    '#f
                    _%stderr-redirection200812200818%_)))
          (let ((__tmp202637 (cons _%program200820%_ _%args200821%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp202637))
          (let* ((_%proc200827%_
                  (open-process
                   (cons 'path:
                         (cons _%program200820%_
                               (cons 'arguments:
                                     (cons _%args200821%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection200823%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection200825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output200832%_
                  (if (or _%stdout-redirection200823%_
                          _%stderr-redirection200825%_)
                      (read-line _%proc200827%_ '#f)
                      '#f))
                 (_%status200835%_ (process-status _%proc200827%_)))
            (let () (declare (not safe)) (##close-port _%proc200827%_))
            (if (zero? _%status200835%_)
                '#!void
                (begin
                  (display _%output200832%_)
                  (let ((__tmp202638 (cons _%program200820%_ _%args200821%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp202638
                     _%status200835%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords200840%_ . _%args200841%_)
        (apply gxc#invoke__%
               _%@@keywords200840%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200840%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200840%_
                  'stderr-redirection:
                  absent-value))
               _%args200841%_)))
    (define gxc#invoke
      (lambda _%args200813200847%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args200813200847%_)))))
