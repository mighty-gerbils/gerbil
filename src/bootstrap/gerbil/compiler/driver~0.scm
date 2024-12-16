(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1734131754)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp202682 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp202682))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp202683 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp202683))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path202539%_ _%fun202540%_)
        (with-output-to-file
         (cons 'path: (cons _%path202539%_ gxc#scheme-file-settings))
         _%fun202540%_)))
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
      (lambda (_%gerbil-libdir202534%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir202534%_)))
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
      (lambda (_%dir202532%_) (delete-file-or-directory _%dir202532%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath202488%_ _%opts202489%_)
        (if (string? _%srcpath202488%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath202488%_)))
        (let* ((_%outdir202491%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts202489%_)))
               (_%invoke-gsc?202493%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts202489%_)))
               (_%target202498%_
                (let ((_%$e202495%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts202489%_))))
                  (if _%$e202495%_ _%$e202495%_ 'C)))
               (_%gsc-options202503%_
                (append (cons '"-target"
                              (cons (symbol->string _%target202498%_) '()))
                        (let ((_%$e202500%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts202489%_))))
                          (if _%$e202500%_ _%$e202500%_ '()))))
               (_%keep-scm?202505%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts202489%_)))
               (_%verbosity202507%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts202489%_)))
               (_%optimize202509%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts202489%_)))
               (_%debug202511%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts202489%_)))
               (_%gen-ssxi202513%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts202489%_)))
               (_%parallel?202515%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts202489%_))))
          (if _%outdir202491%_
              (let ((__tmp202684
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir202491%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202684))
              '#!void)
          (if _%optimize202509%_
              (let ((__tmp202685
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202685))
              '#!void)
          (let ((__tmp202688
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath202488%_))
                   (gxc#compile-top-module
                    (let ((__tmp202689
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath202488%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp202689)))))
                (__tmp202687 (gxc#compile-timestamp))
                (__tmp202686
                 (cons 'compile-module (cons _%srcpath202488%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202688
             gxc#current-compile-output-dir
             _%outdir202491%_
             gx#current-compilation-target
             _%target202498%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?202493%_
             gxc#current-compile-gsc-options
             _%gsc-options202503%_
             gxc#current-compile-keep-scm
             _%keep-scm?202505%_
             gxc#current-compile-verbose
             _%verbosity202507%_
             gxc#current-compile-optimize
             _%optimize202509%_
             gxc#current-compile-debug
             _%debug202511%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi202513%_
             gxc#current-compile-timestamp
             __tmp202687
             gxc#current-compile-context
             __tmp202686
             gxc#current-compile-parallel
             _%parallel?202515%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath202525%_)
        (let ((_%opts202527%_ '()))
          (gxc#compile-module__% _%srcpath202525%_ _%opts202527%_))))
    (define gxc#compile-module
      (lambda _g202691_
        (let ((_g202690_ (let () (declare (not safe)) (##length _g202691_))))
          (cond ((let () (declare (not safe)) (##fx= _g202690_ 1))
                 (apply gxc#compile-module__0 _g202691_))
                ((let () (declare (not safe)) (##fx= _g202690_ 2))
                 (apply gxc#compile-module__% _g202691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g202691_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath202448%_ _%opts202449%_)
        (if (string? _%srcpath202448%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath202448%_)))
        (let* ((_%outdir202451%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts202449%_)))
               (_%invoke-gsc?202453%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts202449%_)))
               (_%target202458%_
                (let ((_%$e202455%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts202449%_))))
                  (if _%$e202455%_ _%$e202455%_ 'C)))
               (_%gsc-options202463%_
                (append (cons '"-target"
                              (cons (symbol->string _%target202458%_) '()))
                        (let ((_%$e202460%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts202449%_))))
                          (if _%$e202460%_ _%$e202460%_ '()))))
               (_%keep-scm?202465%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts202449%_)))
               (_%verbosity202467%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts202449%_)))
               (_%debug202469%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts202449%_)))
               (_%parallel?202471%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts202449%_))))
          (if _%outdir202451%_
              (let ((__tmp202692
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir202451%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp202692))
              '#!void)
          (let ((__tmp202695
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath202448%_))
                   (gxc#compile-executable-module
                    (let ((__tmp202696
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath202448%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp202696))
                    _%opts202449%_)))
                (__tmp202694 (gxc#compile-timestamp))
                (__tmp202693 (cons 'compile-exe (cons _%srcpath202448%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202695
             gxc#current-compile-output-dir
             _%outdir202451%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?202453%_
             gx#current-compilation-target
             _%target202458%_
             gxc#current-compile-gsc-options
             _%gsc-options202463%_
             gxc#current-compile-keep-scm
             _%keep-scm?202465%_
             gxc#current-compile-verbose
             _%verbosity202467%_
             gxc#current-compile-debug
             _%debug202469%_
             gxc#current-compile-timestamp
             __tmp202694
             gxc#current-compile-context
             __tmp202693
             gxc#current-compile-parallel
             _%parallel?202471%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath202480%_)
        (let ((_%opts202482%_ '()))
          (gxc#compile-exe__% _%srcpath202480%_ _%opts202482%_))))
    (define gxc#compile-exe
      (lambda _g202698_
        (let ((_g202697_ (let () (declare (not safe)) (##length _g202698_))))
          (cond ((let () (declare (not safe)) (##fx= _g202697_ 1))
                 (apply gxc#compile-exe__0 _g202698_))
                ((let () (declare (not safe)) (##fx= _g202697_ 2))
                 (apply gxc#compile-exe__% _g202698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g202698_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx202444%_ _%opts202445%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts202445%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx202444%_
             _%opts202445%_)
            (gxc#compile-executable-module/separate
             _%ctx202444%_
             _%opts202445%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx202234%_ _%opts202235%_)
        (letrec ((_%generate-stub202237%_
                  (lambda (_%builtin-modules202440%_)
                    (let ((_%mod-main202442%_
                           (gxc#find-runtime-symbol _%ctx202234%_ 'main)))
                      (let ((__tmp202699
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules202440%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp202699))
                      (let ((__tmp202700
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main202442%_
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
                        (##write __tmp202700))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts202238%_
                  (lambda (_%gerbil-libdir202438%_)
                    (let ((__tmp202701
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir202438%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp202701 read))))
                 (_%replace-extension202239%_
                  (lambda (_%path202435%_ _%ext202436%_)
                    (string-append
                     (path-strip-extension _%path202435%_)
                     _%ext202436%_)))
                 (_%userlib-module?202240%_
                  (lambda (_%ctx202433%_)
                    (if (_%exclude-module?202242%_ _%ctx202433%_)
                        '#f
                        (not (_%libgerbil-module?202241%_ _%ctx202433%_)))))
                 (_%libgerbil-module?202241%_
                  (lambda (_%ctx202426%_)
                    (let ((_%id-str202428%_
                           (symbol->string
                            (##structure-ref
                             _%ctx202426%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?202242%_ _%id-str202428%_)
                          '#f
                          (let ((_%$e202430%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str202428%_))))
                            (if _%$e202430%_
                                _%$e202430%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str202428%_))))))))
                 (_%exclude-module?202242%_
                  (lambda (_%ctx-or-str202422%_)
                    (let ((_%str202424%_
                           (if (string? _%ctx-or-str202422%_)
                               _%ctx-or-str202422%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str202422%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str202424%_))))
                 (_%not-file-empty?202243%_
                  (lambda (_%path202420%_)
                    (not (gxc#file-empty? _%path202420%_))))
                 (_%fold-libgerbil-runtime-scm202244%_
                  (lambda (_%gerbil-staticdir202413%_ _%libgerbil-scm202414%_)
                    (let ((_%gerbil-runtime-scm202418%_
                           (let ((__tmp202702
                                  (lambda (_%rtm202416%_)
                                    (path-expand
                                     (let ((__tmp202703
                                            (let ((__tmp202704
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm202416%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp202704
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp202703 '".scm"))
                                     _%gerbil-staticdir202413%_))))
                             (declare (not safe))
                             (##map __tmp202702 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates202245%_
                       (append _%gerbil-runtime-scm202418%_
                               _%libgerbil-scm202414%_)))))
                 (_%remove-duplicates202245%_
                  (lambda (_%strlst202373%_)
                    (let _%loop202375%_ ((_%rest202377%_ _%strlst202373%_)
                                         (_%result202378%_ '()))
                      (let* ((_%rest202379202387%_ _%rest202377%_)
                             (_%else202381202395%_
                              (lambda () (reverse! _%result202378%_)))
                             (_%K202383202401%_
                              (lambda (_%rest202398%_ _%path202399%_)
                                (if (member _%path202399%_ _%result202378%_)
                                    (_%loop202375%_
                                     _%rest202398%_
                                     _%result202378%_)
                                    (_%loop202375%_
                                     _%rest202398%_
                                     (cons _%path202399%_
                                           _%result202378%_))))))
                        (if (pair? _%rest202379202387%_)
                            (let ((_%hd202384202404%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest202379202387%_)))
                                  (_%tl202385202406%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest202379202387%_))))
                              (let* ((_%path202409%_ _%hd202384202404%_)
                                     (_%rest202411%_ _%tl202385202406%_))
                                (_%K202383202401%_
                                 _%rest202411%_
                                 _%path202409%_)))
                            (_%else202381202395%_))))))
                 (_%compile-stub202246%_
                  (lambda (_%output-scm202253%_ _%output-bin202254%_)
                    (let* ((_%gerbil-home202256%_
                            (let ((__tmp202705
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp202705)))
                           (_%gerbil-libdir202258%_
                            (path-expand '"lib" _%gerbil-home202256%_))
                           (_%gerbil-staticdir202260%_
                            (path-expand '"static" _%gerbil-libdir202258%_))
                           (_%deps202262%_
                            (gxc#find-runtime-module-deps _%ctx202234%_))
                           (_%libgerbil-deps202264%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?202241%_
                               _%deps202262%_)))
                           (_%libgerbil-scm202266%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps202264%_)))
                           (_%libgerbil-scm202268%_
                            (_%fold-libgerbil-runtime-scm202244%_
                             _%gerbil-staticdir202260%_
                             _%libgerbil-scm202266%_))
                           (_%libgerbil-c202274%_
                            (map (lambda (_%g202269202271%_)
                                   (_%replace-extension202239%_
                                    _%g202269202271%_
                                    '".c"))
                                 _%libgerbil-scm202268%_))
                           (_%libgerbil-o202280%_
                            (map (lambda (_%g202275202277%_)
                                   (_%replace-extension202239%_
                                    _%g202275202277%_
                                    '".o"))
                                 _%libgerbil-scm202268%_))
                           (_%src-deps202282%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?202240%_
                               _%deps202262%_)))
                           (_%src-deps-scm202284%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps202282%_)))
                           (_%src-deps-scm202286%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?202243%_
                               _%src-deps-scm202284%_)))
                           (_%src-deps-scm202288%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm202286%_)))
                           (_%src-deps-c202294%_
                            (let ((__tmp202706
                                   (lambda (_%g202289202291%_)
                                     (_%replace-extension202239%_
                                      _%g202289202291%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp202706 _%src-deps-scm202288%_)))
                           (_%src-deps-o202300%_
                            (let ((__tmp202707
                                   (lambda (_%g202295202297%_)
                                     (_%replace-extension202239%_
                                      _%g202295202297%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp202707 _%src-deps-scm202288%_)))
                           (_%src-bin-scm202302%_
                            (gxc#find-static-module-file _%ctx202234%_))
                           (_%src-bin-scm202304%_
                            (path-expand _%src-bin-scm202302%_))
                           (_%src-bin-c202306%_
                            (_%replace-extension202239%_
                             _%src-bin-scm202304%_
                             '".c"))
                           (_%src-bin-o202308%_
                            (_%replace-extension202239%_
                             _%src-bin-scm202304%_
                             '".o"))
                           (_%output-bin202310%_
                            (path-expand _%output-bin202254%_))
                           (_%output-scm202312%_
                            (path-expand _%output-scm202253%_))
                           (_%output-c202314%_
                            (_%replace-extension202239%_
                             _%output-scm202312%_
                             '".c"))
                           (_%output-o202316%_
                            (_%replace-extension202239%_
                             _%output-scm202312%_
                             '".o"))
                           (_%output_-c202318%_
                            (_%replace-extension202239%_
                             _%output-scm202312%_
                             '"_.c"))
                           (_%output_-o202320%_
                            (_%replace-extension202239%_
                             _%output-scm202312%_
                             '"_.o"))
                           (_%gsc-link-opts202322%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts202324%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts202326%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir202260%_))
                           (_%output-ld-opts202328%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts202330%_
                            (_%get-libgerbil-ld-opts202238%_
                             _%gerbil-libdir202258%_))
                           (_%rpath202332%_
                            (gxc#gerbil-rpath _%gerbil-libdir202258%_))
                           (_%builtin-modules202336%_
                            (_%remove-duplicates202245%_
                             (let ((__tmp202708
                                    (let ((__tmp202710
                                           (lambda (_%mod202334%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod202334%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp202709
                                           (cons _%ctx202234%_
                                                 _%deps202262%_)))
                                      (declare (not safe))
                                      (##map __tmp202710 __tmp202709))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp202708)))))
                      (letrec ((_%compile-obj202339%_
                                (lambda (_%scm-path202346%_ _%c-path202347%_)
                                  (let* ((_%o-path202349%_
                                          (_%replace-extension202239%_
                                           _%c-path202347%_
                                           '".o"))
                                         (_%lock202351%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path202349%_
                                             '".lock")))
                                         (_%locked202353%_ '#f)
                                         (_%unlock202356%_
                                          (lambda ()
                                            (close-port _%locked202353%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock202351%_)))))
                                    (let _%retry202359%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock202351%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry202359%_))
                                          (begin
                                            (set! _%locked202353%_
                                                  (let ((__tmp202711
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock202351%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp202711)))
                                            (if _%locked202353%_
                                                '#!void
                                                (_%retry202359%_)))))
                                    (let ((__tmp202713
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path202349%_)))
                                                     (not _%scm-path202346%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path202346%_
                                                        _%o-path202349%_)))
                                                 (let ((_%gsc-cc-opts202370%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp202714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp202715 (cons _%c-path202347%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp202715
                            _%gsc-static-opts202326%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202714 _%gsc-cc-opts202370%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp202712
                                           (lambda () (_%unlock202356%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp202713
                                       __tmp202712))))))
                        (let ((__tmp202716
                               (lambda ()
                                 (let ((__tmp202717
                                        (path-directory _%output-bin202310%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp202717)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp202716))
                        (gxc#with-output-to-scheme-file
                         _%output-scm202312%_
                         (lambda ()
                           (_%generate-stub202237%_
                            _%builtin-modules202336%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it202344%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp202718
                                                   (let ((__tmp202719
                                                          (let ((__tmp202720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm202304%_
                               (cons _%output-scm202312%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202720 _%src-deps-scm202288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp202719
                                                      _%libgerbil-c202274%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp202718
                                               _%gsc-link-opts202322%_))))
                                     (for-each
                                      _%compile-obj202339%_
                                      (let ((__tmp202721
                                             (cons _%src-bin-scm202304%_
                                                   (cons _%output-scm202312%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp202721
                                         _%src-deps-scm202288%_))
                                      (let ((__tmp202722
                                             (cons _%src-bin-c202306%_
                                                   (cons _%output-c202314%_
                                                         (cons _%output_-c202318%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp202722
                                         _%src-deps-c202294%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin202310%_
                                                        (let ((__tmp202723
                                                               (cons _%src-bin-o202308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o202316%_
                                   (cons _%output_-o202320%_
                                         (let ((__tmp202724
                                                (let ((__tmp202725
                                                       (let ((__tmp202727
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir202258%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts202330%_))))
                     (__tmp202726
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath202332%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp202727 __tmp202726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp202725
                                                   _%output-ld-opts202328%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp202724
                                            _%libgerbil-o202280%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp202723 _%src-deps-o202300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp202728
                                            (cons _%output-c202314%_
                                                  (cons _%output_-c202318%_
                                                        (cons _%output-o202316%_
                                                              (cons _%output_-o202320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp202728)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it202344%_))
                                  (_%compile-it202344%_)))
                            '#!void))))))
          (let* ((_%output-bin202248%_
                  (gxc#compile-exe-output-file _%ctx202234%_ _%opts202235%_))
                 (_%output-scm202250%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin202248%_ '"__exe.scm"))))
            (_%compile-stub202246%_
             _%output-scm202250%_
             _%output-bin202248%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx202056%_ _%opts202057%_)
        (letrec ((_%reset-declare202059%_
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
                 (_%generate-stub202060%_
                  (lambda (_%deps202225%_)
                    (let ((_%mod-main202227%_
                           (gxc#find-runtime-symbol _%ctx202056%_ 'main))
                          (_%reset-decl202228%_ (_%reset-declare202059%_))
                          (_%user-decl202229%_ (_%user-declare202061%_)))
                      (for-each
                       (lambda (_%dep202231%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl202228%_))
                         (newline)
                         (if _%user-decl202229%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl202229%_))
                               (newline))
                             '#!void)
                         (let ((__tmp202729
                                (cons 'include (cons _%dep202231%_ '()))))
                           (declare (not safe))
                           (##write __tmp202729))
                         (newline))
                       _%deps202225%_)
                      (let ((__tmp202730
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main202227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp202730))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare202061%_
                  (lambda ()
                    (let* ((_%gsc-opts202130%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts202057%_)))
                           (_%gsc-prelude202132%_
                            (if _%gsc-opts202130%_
                                (member '"-prelude" _%gsc-opts202130%_)
                                '#f))
                           (_%gsc-prelude202134%_
                            (if _%gsc-prelude202132%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude202132%_)))
                                '#f)))
                      (let _%lp202137%_ ((_%rest202139%_
                                          (cons _%gsc-prelude202134%_ '()))
                                         (_%user-decls202140%_ '()))
                        (let* ((_%rest202141202149%_ _%rest202139%_)
                               (_%else202143202157%_
                                (lambda ()
                                  (if (null? _%user-decls202140%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls202140%_)))))
                               (_%K202145202213%_
                                (lambda (_%rest202160%_ _%expr202161%_)
                                  (let* ((_%expr202162202174%_ _%expr202161%_)
                                         (_%else202165202182%_
                                          (lambda ()
                                            (_%lp202137%_
                                             _%rest202160%_
                                             _%user-decls202140%_))))
                                    (let ((_%K202170202203%_
                                           (lambda (_%decls202201%_)
                                             (_%lp202137%_
                                              _%rest202160%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls202140%_
                                                 _%decls202201%_)))))
                                          (_%K202167202188%_
                                           (lambda (_%exprs202186%_)
                                             (_%lp202137%_
                                              (append _%exprs202186%_
                                                      _%rest202160%_)
                                              _%user-decls202140%_))))
                                      (if (pair? _%expr202162202174%_)
                                          (let ((_%tl202172202208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr202162202174%_)))
                                                (_%hd202171202206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr202162202174%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd202171202206%_
                                                         'declare))
                                                (let ((_%decls202211%_
                                                       _%tl202172202208%_))
                                                  (_%K202170202203%_
                                                   _%decls202211%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd202171202206%_
                                                             'begin))
                                                    (let ((_%exprs202196%_
                                                           _%tl202172202208%_))
                                                      (_%K202167202188%_
                                                       _%exprs202196%_))
                                                    (_%else202165202182%_))))
                                          (_%else202165202182%_)))))))
                          (if (pair? _%rest202141202149%_)
                              (let ((_%hd202146202216%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest202141202149%_)))
                                    (_%tl202147202218%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest202141202149%_))))
                                (let* ((_%expr202221%_ _%hd202146202216%_)
                                       (_%rest202223%_ _%tl202147202218%_))
                                  (_%K202145202213%_
                                   _%rest202223%_
                                   _%expr202221%_)))
                              (_%else202143202157%_)))))))
                 (_%compile-stub202062%_
                  (lambda (_%output-scm202069%_ _%output-bin202070%_)
                    (let* ((_%gerbil-home202072%_
                            (let ((__tmp202731
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp202731)))
                           (_%gerbil-libdir202074%_
                            (path-expand '"lib" _%gerbil-home202072%_))
                           (_%runtime202076%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp202078%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home202072%_))
                           (_%include-gambit-sharp202080%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp202078%_
                               '"\")")))
                           (_%bin-scm202082%_
                            (gxc#find-static-module-file _%ctx202056%_))
                           (_%deps202084%_
                            (gxc#find-runtime-module-deps _%ctx202056%_))
                           (_%deps202086%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps202084%_)))
                           (_%deps202091%_
                            (let ((__tmp202732
                                   (lambda (_%$obj202088%_)
                                     (not (gxc#file-empty? _%$obj202088%_)))))
                              (declare (not safe))
                              (##filter __tmp202732 _%deps202086%_)))
                           (_%deps202095%_
                            (let ((__tmp202733
                                   (lambda (_%f202093%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f202093%_
                                             _%runtime202076%_))))))
                              (declare (not safe))
                              (##filter __tmp202733 _%deps202091%_)))
                           (_%output-base202097%_
                            (let ((__tmp202734
                                   (path-strip-extension
                                    _%output-scm202069%_)))
                              (declare (not safe))
                              (##string-append __tmp202734)))
                           (_%output-c202099%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202097%_ '".c")))
                           (_%output-o202101%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202097%_ '".o")))
                           (_%output-c_202103%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202097%_ '"_.c")))
                           (_%output-o_202105%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202097%_ '"_.o")))
                           (_%gsc-link-opts202107%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts202109%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts202111%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir202074%_)))
                           (_%output-ld-opts202113%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros202115%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp202080%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp202080%_
                                            '()))))
                           (_%gsc-link-opts202117%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts202107%_
                               _%gsc-gx-macros202115%_)))
                           (_%rpath202119%_
                            (gxc#gerbil-rpath _%gerbil-libdir202074%_))
                           (_%default-ld-options202121%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp202735
                             (lambda ()
                               (let ((__tmp202736
                                      (path-directory _%output-bin202070%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp202736)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp202735))
                      (gxc#with-output-to-scheme-file
                       _%output-scm202069%_
                       (lambda ()
                         (_%generate-stub202060%_
                          (let ((__tmp202737
                                 (let ((__tmp202738
                                        (cons _%bin-scm202082%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp202738
                                    _%deps202095%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp202737 _%runtime202076%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it202127%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_202103%_
                                                      (let ((__tmp202739
                                                             (cons _%output-scm202069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp202739 _%gsc-link-opts202117%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp202740
                                                 (let ((__tmp202741
                                                        (cons _%output-c202099%_
                                                              (cons _%output-c_202103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp202741
                                                    _%gsc-static-opts202111%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp202740
                                             _%gsc-cc-opts202109%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin202070%_
                                                      (cons _%output-o202101%_
                                                            (cons _%output-o_202105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp202742
                                 (let ((__tmp202744
                                        (cons '"-L"
                                              (cons _%gerbil-libdir202074%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options202121%_))))
                                       (__tmp202743
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath202119%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp202744 __tmp202743))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp202742
                             _%output-ld-opts202113%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it202127%_))
                                (_%compile-it202127%_)))
                          '#!void)))))
          (let* ((_%output-bin202064%_
                  (gxc#compile-exe-output-file _%ctx202056%_ _%opts202057%_))
                 (_%output-scm202066%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin202064%_ '"__exe.scm"))))
            (_%compile-stub202062%_
             _%output-scm202066%_
             _%output-bin202064%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx202005%_ _%id202006%_)
        (let ((_%$e202052%_
               (let ((__tmp202746
                      (lambda (_%e202007202009%_)
                        (let* ((_%g202011202021%_ _%e202007202009%_)
                               (_%else202013202029%_ (lambda () '#f))
                               (_%K202015202033%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g202011202021%_
                                 'gx#module-export::t))
                              (let* ((_%e202016202036%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202011202021%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e202017202039%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202011202021%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e202018202042%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202011202021%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e202018202042%_ '0))
                                    (let ((_%e202019202045%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g202011202021%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g202047202049%_)
                                             (eq? _%g202047202049%_
                                                  _%id202006%_))
                                           _%e202019202045%_)
                                          (_%K202015202033%_)
                                          (_%else202013202029%_)))
                                    (_%else202013202029%_)))
                              (_%else202013202029%_)))))
                     (__tmp202745
                      (##structure-ref
                       _%ctx202005%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp202746 __tmp202745))))
          (if _%$e202052%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e202052%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx201996%_ _%id201997%_)
        (let ((_%$e201999%_
               (gxc#find-export-binding _%ctx201996%_ _%id201997%_)))
          (if _%$e201999%_
              ((lambda (_%bind202002%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind202002%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id201997%_)))
                 (##structure-ref _%bind202002%_ '1 gx#binding::t '#f))
               _%$e201999%_)
              (let ((__tmp202747
                     (##structure-ref
                      _%ctx201996%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp202747
                 _%id201997%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx201862%_)
        (letrec* ((_%ht201864%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template201865%_
                   (lambda (_%in201941%_ _%phi201942%_)
                     (let ((_%iphi201944%_
                            (fx+ _%phi201942%_
                                 (##direct-structure-ref
                                  _%in201941%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports201945%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in201941%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp201947%_ ((_%rest201949%_ _%imports201945%_)
                                          (_%r201950%_ '()))
                         (let* ((_%rest201951201959%_ _%rest201949%_)
                                (_%else201953201967%_ (lambda () _%r201950%_))
                                (_%K201955201984%_
                                 (lambda (_%rest201970%_ _%in201971%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in201971%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi201944%_))
                                           (_%lp201947%_
                                            _%rest201970%_
                                            (cons _%in201971%_ _%r201950%_))
                                           (_%lp201947%_
                                            _%rest201970%_
                                            _%r201950%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in201971%_
                                              'gx#module-import::t))
                                           (let ((_%iphi201975%_
                                                  (fx+ _%phi201942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in201971%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi201975%_))
                                                 (_%lp201947%_
                                                  _%rest201970%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in201971%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r201950%_))
                                                 (_%lp201947%_
                                                  _%rest201970%_
                                                  _%r201950%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in201971%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi201978%_
                                                      (fx+ _%iphi201944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in201971%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi201978%_))
                                                     (_%lp201947%_
                                                      _%rest201970%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in201971%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r201950%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi201978%_))
                                                         (_%lp201947%_
                                                          _%rest201970%_
                                                          (let ((__tmp202748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template201865%_
                          _%in201971%_
                          _%iphi201944%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r201950%_ __tmp202748)))
                 (_%lp201947%_ _%rest201970%_ _%r201950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp201947%_
                                                _%rest201970%_
                                                _%r201950%_)))))))
                           (if (pair? _%rest201951201959%_)
                               (let ((_%hd201956201987%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest201951201959%_)))
                                     (_%tl201957201989%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest201951201959%_))))
                                 (let* ((_%in201992%_ _%hd201956201987%_)
                                        (_%rest201994%_ _%tl201957201989%_))
                                   (_%K201955201984%_
                                    _%rest201994%_
                                    _%in201992%_)))
                               (_%else201953201967%_)))))))
                  (_%find-deps201866%_
                   (lambda (_%rest201874%_ _%deps201875%_)
                     (let* ((_%rest201876201884%_ _%rest201874%_)
                            (_%else201878201892%_ (lambda () _%deps201875%_))
                            (_%K201880201929%_
                             (lambda (_%rest201895%_ _%hd201896%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd201896%_
                                      'gx#module-context::t))
                                   (let ((_%id201899%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201896%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports201900%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201896%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht201864%_
                                            _%id201899%_))
                                         (_%find-deps201866%_
                                          _%rest201895%_
                                          _%deps201875%_)
                                         (let ((_%$e201903%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd201896%_))))
                                           (if _%$e201903%_
                                               ((lambda (_%pre201906%_)
                                                  (let ((_%xdeps201908%_
                                                         (_%find-deps201866%_
                                                          (cons _%pre201906%_
                                                                _%imports201900%_)
                                                          _%deps201875%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht201864%_
                                                       _%id201899%_
                                                       _%hd201896%_))
                                                    (_%find-deps201866%_
                                                     _%rest201895%_
                                                     (cons _%hd201896%_
                                                           _%xdeps201908%_))))
                                                _%$e201903%_)
                                               (let ((_%xdeps201911%_
                                                      (_%find-deps201866%_
                                                       _%imports201900%_
                                                       _%deps201875%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht201864%_
                                                    _%id201899%_
                                                    _%hd201896%_))
                                                 (_%find-deps201866%_
                                                  _%rest201895%_
                                                  (cons _%hd201896%_
                                                        _%xdeps201911%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd201896%_
                                          'gx#prelude-context::t))
                                       (let ((_%id201914%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd201896%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht201864%_
                                                _%id201914%_))
                                             (_%find-deps201866%_
                                              _%rest201895%_
                                              _%deps201875%_)
                                             (let ((_%xdeps201918%_
                                                    (_%find-deps201866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd201896%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps201875%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht201864%_
                                                      _%id201914%_))
                                                   (_%find-deps201866%_
                                                    _%rest201895%_
                                                    _%xdeps201918%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht201864%_
                                                        _%id201914%_
                                                        _%hd201896%_))
                                                     (_%find-deps201866%_
                                                      _%rest201895%_
                                                      (cons _%hd201896%_
                                                            _%xdeps201918%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd201896%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd201896%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps201866%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201896%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201895%_)
                                                _%deps201875%_)
                                               (_%find-deps201866%_
                                                _%rest201895%_
                                                _%deps201875%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd201896%_
                                                  'gx#module-export::t))
                                               (_%find-deps201866%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201896%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201895%_)
                                                _%deps201875%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd201896%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd201896%_ '2 '#f '#f)))
               (_%find-deps201866%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd201896%_ '1 '#f '#f))
                      _%rest201895%_)
                _%deps201875%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd201896%_ '2 '#f '#f)))
                   (let ((_%xdeps201925%_
                          (_%import-set-template201865%_ _%hd201896%_ '0)))
                     (_%find-deps201866%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest201895%_ _%xdeps201925%_))
                      _%deps201875%_))
                   (_%find-deps201866%_ _%rest201895%_ _%deps201875%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd201896%_))))))))))
                       (if (pair? _%rest201876201884%_)
                           (let ((_%hd201881201932%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest201876201884%_)))
                                 (_%tl201882201934%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest201876201884%_))))
                             (let* ((_%hd201937%_ _%hd201881201932%_)
                                    (_%rest201939%_ _%tl201882201934%_))
                               (_%K201880201929%_
                                _%rest201939%_
                                _%hd201937%_)))
                           (_%else201878201892%_))))))
          (let ((__tmp202749
                 (filter gx#expander-context-id
                         (_%find-deps201866%_
                          (let ((_%$e201868%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx201862%_))))
                            (if _%$e201868%_
                                ((lambda (_%pre201871%_)
                                   (cons _%pre201871%_
                                         (##structure-ref
                                          _%ctx201862%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e201868%_)
                                (##structure-ref
                                 _%ctx201862%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp202749)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx201792%_)
        (let* ((_%context-id201794%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx201792%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx201792%_ '1 '#f '#f))
                    (string->symbol _%ctx201792%_)))
               (_%scm201796%_
                (let ((__tmp202750
                       (gxc#static-module-name _%context-id201794%_)))
                  (declare (not safe))
                  (##string-append __tmp202750 '".scm")))
               (_%dirs201798%_ (let () (declare (not safe)) (load-path)))
               (_%dirs201804%_
                (let ((_%user-libpath201800%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath201800%_
                      (let ((_%user-libpath201802%_
                             (path-expand '"lib" _%user-libpath201800%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath201802%_ _%dirs201798%_))
                            _%dirs201798%_
                            (cons _%user-libpath201802%_ _%dirs201798%_)))
                      _%dirs201798%_)))
               (_%dirs201814%_
                (let ((_%$e201806%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e201806%_
                      ((lambda (_%g201808201810%_)
                         (cons _%g201808201810%_ _%dirs201804%_))
                       _%$e201806%_)
                      _%dirs201804%_)))
               (_%dirs201820%_
                (let ((__tmp202751
                       (lambda (_%g201815201817%_)
                         (path-expand '"static" _%g201815201817%_))))
                  (declare (not safe))
                  (##map __tmp202751 _%dirs201814%_))))
          (let _%lp201823%_ ((_%rest201825%_ _%dirs201820%_))
            (let* ((_%rest201826201834%_ _%rest201825%_)
                   (_%else201828201842%_
                    (lambda ()
                      (let ((__tmp202752
                             (##structure-ref
                              _%ctx201792%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp202752
                         _%scm201796%_))))
                   (_%K201830201850%_
                    (lambda (_%rest201845%_ _%dir201846%_)
                      (let ((_%path201848%_
                             (path-expand _%scm201796%_ _%dir201846%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path201848%_))
                            _%path201848%_
                            (_%lp201823%_ _%rest201845%_))))))
              (if (pair? _%rest201826201834%_)
                  (let ((_%hd201831201853%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201826201834%_)))
                        (_%tl201832201855%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201826201834%_))))
                    (let* ((_%dir201858%_ _%hd201831201853%_)
                           (_%rest201860%_ _%tl201832201855%_))
                      (_%K201830201850%_ _%rest201860%_ _%dir201858%_)))
                  (_%else201828201842%_)))))))
    (define gxc#file-empty?
      (lambda (_%path201790%_)
        (zero? (let ((__tmp202753 (file-info _%path201790%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp202753)))))
    (define gxc#compile-top-module
      (lambda (_%ctx201786%_)
        (let ((__tmp202757
               (lambda ()
                 (let ((__tmp202758
                        (##structure-ref
                         _%ctx201786%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp202758))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp202759
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx201786%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp202759))
                     '#!void)
                 (gxc#collect-bindings _%ctx201786%_)
                 (gxc#compile-runtime-code _%ctx201786%_)
                 (gxc#compile-meta-code _%ctx201786%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx201786%_)
                     '#!void)))
              (__tmp202756
               (let ((__obj202680
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj202680))
                 __obj202680))
              (__tmp202755 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp202754
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
           __tmp202757
           gx#current-expander-context
           _%ctx201786%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp202756
           gxc#current-compile-runtime-sections
           __tmp202755
           gxc#current-compile-runtime-names
           __tmp202754))))
    (define gxc#collect-bindings
      (lambda (_%ctx201784%_)
        (let ((__tmp202760
               (##structure-ref _%ctx201784%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp202760))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx201732%_)
        (letrec ((_%compile1201734%_
                  (lambda (_%ctx201773%_)
                    (let* ((_%code201775%_
                            (##structure-ref
                             _%ctx201773%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm201779%_
                            (let ((_%idstr201777%_
                                   (let ((__tmp202761
                                          (##structure-ref
                                           _%ctx201773%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp202761))))
                              (declare (not safe))
                              (##string-append _%idstr201777%_ '"~0")))
                           (_%rtc?201781%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code201775%_))))
                      (if _%rtc?201781%_
                          (let ((__tmp202762
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp202762
                             _%ctx201773%_
                             _%rtm201779%_))
                          '#!void)
                      (_%generate-runtime-code201736%_
                       _%ctx201773%_
                       _%code201775%_
                       (if _%rtc?201781%_ _%rtm201779%_ '#f)))))
                 (_%context-timestamp201735%_
                  (lambda (_%ctx201771%_)
                    (let ((__tmp202763
                           (let ((__tmp202764
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx201771%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp202764 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp202763))))
                 (_%generate-runtime-code201736%_
                  (lambda (_%ctx201743%_ _%code201744%_ _%rtm201745%_)
                    (let* ((_%runtime-code?201747%_ (if _%rtm201745%_ '#t '#f))
                           (_%lifts201749%_ (box '()))
                           (_%runtime-code201752%_
                            (if _%runtime-code?201747%_
                                (let ((__tmp202767
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code201744%_))))
                                      (__tmp202766
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp202765
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp202767
                                   gx#current-expander-context
                                   _%ctx201743%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts201749%_
                                   gxc#current-compile-marks
                                   __tmp202766
                                   gxc#current-compile-identifiers
                                   __tmp202765))
                                '#f))
                           (_%runtime-code201754%_
                            (if _%runtime-code?201747%_
                                (if (null? (unbox _%lifts201749%_))
                                    _%runtime-code201752%_
                                    (cons 'begin
                                          (let ((__tmp202769
                                                 (cons _%runtime-code201752%_
                                                       '()))
                                                (__tmp202768
                                                 (reverse (unbox _%lifts201749%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp202769
                                             __tmp202768))))
                                '#f))
                           (_%runtime-code201756%_
                            (if _%runtime-code?201747%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp201735%_
                                                         _%ctx201743%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code201754%_ '())))
                                '#f))
                           (_%loader-code201759%_
                            (let ((__tmp202770
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code201744%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp202770
                               gx#current-expander-context
                               _%ctx201743%_)))
                           (_%loader-code201761%_
                            (cons 'begin
                                  (cons _%loader-code201759%_
                                        (cons (if _%runtime-code?201747%_
                                                  (cons 'load-module
                                                        (cons _%rtm201745%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0201763%_
                            (gxc#compile-output-file _%ctx201743%_ '0 '".scm"))
                           (_%scmrt201765%_
                            (gxc#compile-output-file
                             _%ctx201743%_
                             '#f
                             '".scm"))
                           (_%scms201767%_
                            (gxc#compile-static-output-file _%ctx201743%_)))
                      (if _%runtime-code?201747%_
                          (gxc#compile-scm-file__0
                           _%scm0201763%_
                           _%runtime-code201756%_)
                          '#!void)
                      (let ((__tmp202771
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt201765%_
                                _%loader-code201761%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp202771
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms201767%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms201767%_))
                          '#!void)
                      (if _%runtime-code?201747%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0201763%_ _%scms201767%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms201767%_ void)))))))
          (let* ((_%all-modules201738%_
                  (cons _%ctx201732%_ (gxc#lift-nested-modules _%ctx201732%_)))
                 (__tmp202772
                  (lambda (_%ctx201740%_)
                    (let ((__tmp202773
                           (lambda () (_%compile1201734%_ _%ctx201740%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp202773
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp202772 _%all-modules201738%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx201632%_)
        (letrec ((_%compile-ssi201634%_
                  (lambda (_%code201700%_)
                    (let* ((_%path201702%_
                            (gxc#compile-output-file
                             _%ctx201632%_
                             '#f
                             '".ssi"))
                           (_%prelude201714%_
                            (let* ((_%super201704%_
                                    (##structure-ref
                                     _%ctx201632%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e201706%_
                                    (##structure-ref
                                     _%super201704%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e201706%_
                                  ((lambda (_%g201708201710%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g201708201710%_)))
                                   _%$e201706%_)
                                  ':<root>)))
                           (_%ns201716%_
                            (##structure-ref
                             _%ctx201632%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr201718%_
                            (symbol->string
                             (##structure-ref
                              _%ctx201632%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg201726%_
                            (let ((_%$e201720%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr201718%_ '#\/))))
                              (if _%$e201720%_
                                  ((lambda (_%x201723%_)
                                     (let ((__tmp202774
                                            (substring
                                             _%idstr201718%_
                                             '0
                                             _%x201723%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp202774)))
                                   _%$e201720%_)
                                  '#f)))
                           (_%rt201728%_
                            (let ((__tmp202775
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp202775 _%ctx201632%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path201702%_))
                      (gxc#with-output-to-scheme-file
                       _%path201702%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude201714%_))
                         (if _%pkg201726%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg201726%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns201716%_))
                         (newline)
                         (pretty-print _%code201700%_)
                         (if _%rt201728%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt201728%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi201635%_
                  (lambda (_%part201640%_)
                    (let* ((_%part201641201654%_ _%part201640%_)
                           (_%E201643201658%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part201641201654%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K201644201669%_
                            (lambda (_%code201661%_
                                     _%n201662%_
                                     _%phi201663%_
                                     _%phi-ctx201664%_)
                              (let ((_%code201667%_
                                     (let ((__tmp202776
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code201661%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp202776
                                        gx#current-expander-context
                                        _%phi-ctx201664%_
                                        gx#current-expander-phi
                                        _%phi201663%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx201632%_
                                  _%n201662%_
                                  '".scm")
                                 _%code201667%_
                                 '#t)))))
                      (if (pair? _%part201641201654%_)
                          (let ((_%hd201645201672%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part201641201654%_)))
                                (_%tl201646201674%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part201641201654%_))))
                            (let ((_%phi-ctx201677%_ _%hd201645201672%_))
                              (if (pair? _%tl201646201674%_)
                                  (let ((_%hd201647201679%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201646201674%_)))
                                        (_%tl201648201681%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201646201674%_))))
                                    (let ((_%phi201684%_ _%hd201647201679%_))
                                      (if (pair? _%tl201648201681%_)
                                          (let ((_%hd201649201686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl201648201681%_)))
                                                (_%tl201650201688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl201648201681%_))))
                                            (let ((_%n201691%_
                                                   _%hd201649201686%_))
                                              (if (pair? _%tl201650201688%_)
                                                  (let ((_%hd201651201693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl201650201688%_)))
                                                        (_%tl201652201695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl201650201688%_))))
                                                    (let ((_%code201698%_
                                                           _%hd201651201693%_))
                                                      (if (null? _%tl201652201695%_)
                                                          (_%K201644201669%_
                                                           _%code201698%_
                                                           _%n201691%_
                                                           _%phi201684%_
                                                           _%phi-ctx201677%_)
                                                          (_%E201643201658%_))))
                                                  (_%E201643201658%_))))
                                          (_%E201643201658%_))))
                                  (_%E201643201658%_))))
                          (_%E201643201658%_))))))
          (let ((_g202777_ (gxc#generate-meta-code _%ctx201632%_)))
            (begin
              (let ((_g202778_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g202777_)
                           (##values-length _g202777_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g202778_ 2)))
                    (error "Context expects 2 values" _g202778_)))
              (let ((_%ssi-code201637%_
                     (let () (declare (not safe)) (##values-ref _g202777_ 0)))
                    (_%phi-code201638%_
                     (let () (declare (not safe)) (##values-ref _g202777_ 1))))
                (begin
                  (_%compile-ssi201634%_ _%ssi-code201637%_)
                  (for-each _%compile-phi201635%_ _%phi-code201638%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx201614%_)
        (let* ((_%path201616%_
                (gxc#compile-output-file _%ctx201614%_ '#f '".ssxi.ss"))
               (_%code201618%_
                (let ((__tmp202779
                       (##structure-ref
                        _%ctx201614%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp202779)))
               (_%idstr201620%_
                (symbol->string
                 (##structure-ref
                  _%ctx201614%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg201628%_
                (let ((_%$e201622%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr201620%_ '#\/))))
                  (if _%$e201622%_
                      ((lambda (_%x201625%_)
                         (let ((__tmp202780
                                (substring _%idstr201620%_ '0 _%x201625%_)))
                           (declare (not safe))
                           (##string->symbol __tmp202780)))
                       _%$e201622%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path201616%_))
          (gxc#with-output-to-scheme-file
           _%path201616%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg201628%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg201628%_))
                 '#!void)
             (newline)
             (pretty-print _%code201618%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx201607%_)
        (let* ((_%state201609%_
                (let ((__obj202681
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj202681 _%ctx201607%_))
                  __obj202681))
               (_%ssi-code201611%_
                (let ((__tmp202781
                       (##structure-ref
                        _%ctx201607%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state201609%_
                   __tmp202781))))
          (values _%ssi-code201611%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state201609%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx201600%_)
        (let ((_%lifts201602%_ (box '())))
          (let ((__tmp202784
                 (lambda ()
                   (let ((_%code201605%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx201600%_))))
                     (if (null? (unbox _%lifts201602%_))
                         _%code201605%_
                         (cons 'begin
                               (let ((__tmp202786 (cons _%code201605%_ '()))
                                     (__tmp202785
                                      (reverse (unbox _%lifts201602%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp202786 __tmp202785)))))))
                (__tmp202783
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp202782
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202784
             gxc#current-compile-lift
             _%lifts201602%_
             gxc#current-compile-marks
             __tmp202783
             gxc#current-compile-identifiers
             __tmp202782)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx201596%_)
        (let ((_%modules201598%_ (box '())))
          (let ((__tmp202787
                 (##structure-ref _%ctx201596%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules201598%_ __tmp202787))
          (reverse (unbox _%modules201598%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path201576%_ _%code201577%_ _%phi?201578%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path201576%_))
        (gxc#with-output-to-scheme-file
         _%path201576%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp202788
                                           (if _%phi?201578%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp202788)))))))
           (pretty-print _%code201577%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it201582%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path201576%_ _%phi?201578%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp202789
                         (cons 'compile-file (cons _%path201576%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it201582%_ __tmp202789))
                  (_%compile-it201582%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path201587%_ _%code201588%_)
        (let ((_%phi?201590%_ '#f))
          (gxc#compile-scm-file__%
           _%path201587%_
           _%code201588%_
           _%phi?201590%_))))
    (define gxc#compile-scm-file
      (lambda _g202791_
        (let ((_g202790_ (let () (declare (not safe)) (##length _g202791_))))
          (cond ((let () (declare (not safe)) (##fx= _g202790_ 2))
                 (apply gxc#compile-scm-file__0 _g202791_))
                ((let () (declare (not safe)) (##fx= _g202790_ 3))
                 (apply gxc#compile-scm-file__% _g202791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g202791_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?201477%_)
        (let _%lp201479%_ ((_%rest201481%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts201482%_ '()))
          (let* ((_%rest201483201503%_ _%rest201481%_)
                 (_%else201487201511%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts201482%_)))
                        (reverse _%opts201482%_)))))
            (let ((_%K201497201554%_
                   (lambda (_%rest201552%_)
                     (_%lp201479%_ _%rest201552%_ _%opts201482%_)))
                  (_%K201492201536%_
                   (lambda (_%rest201534%_)
                     (_%lp201479%_ _%rest201534%_ _%opts201482%_)))
                  (_%K201489201518%_
                   (lambda (_%rest201515%_ _%opt201516%_)
                     (_%lp201479%_
                      _%rest201515%_
                      (cons _%opt201516%_ _%opts201482%_)))))
              (if (pair? _%rest201483201503%_)
                  (let ((_%tl201499201559%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201483201503%_)))
                        (_%hd201498201557%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201483201503%_))))
                    (if (equal? _%hd201498201557%_ '"-cc-options")
                        (if (pair? _%tl201499201559%_)
                            (let* ((_%tl201501201562%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl201499201559%_)))
                                   (_%rest201565%_ _%tl201501201562%_))
                              (_%K201497201554%_ _%rest201565%_))
                            (let ((_%opt201526%_ _%hd201498201557%_)
                                  (_%rest201528%_ _%tl201499201559%_))
                              (_%K201489201518%_
                               _%rest201528%_
                               _%opt201526%_)))
                        (if (equal? _%hd201498201557%_ '"-ld-options")
                            (if (pair? _%tl201499201559%_)
                                (let* ((_%tl201496201544%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl201499201559%_)))
                                       (_%rest201547%_ _%tl201496201544%_))
                                  (_%K201492201536%_ _%rest201547%_))
                                (let ((_%opt201526%_ _%hd201498201557%_)
                                      (_%rest201528%_ _%tl201499201559%_))
                                  (_%K201489201518%_
                                   _%rest201528%_
                                   _%opt201526%_)))
                            (let ((_%opt201526%_ _%hd201498201557%_)
                                  (_%rest201528%_ _%tl201499201559%_))
                              (_%K201489201518%_
                               _%rest201528%_
                               _%opt201526%_)))))
                  (_%else201487201511%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?201571%_ '#f)) (gxc#gsc-link-options__% _%phi?201571%_))))
    (define gxc#gsc-link-options
      (lambda _g202793_
        (let ((_g202792_ (let () (declare (not safe)) (##length _g202793_))))
          (cond ((let () (declare (not safe)) (##fx= _g202792_ 0))
                 (apply gxc#gsc-link-options__0 _g202793_))
                ((let () (declare (not safe)) (##fx= _g202792_ 1))
                 (apply gxc#gsc-link-options__% _g202793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g202793_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords201326%_ _%static?201322201327%_ _%phi?201329%_)
        (let ((_%static?201331%_
               (if (eq? _%static?201322201327%_ absent-value)
                   '#f
                   _%static?201322201327%_)))
          (if _%phi?201329%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp201333%_ ((_%rest201335%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts201336%_ '()))
                (let* ((_%rest201337201363%_ _%rest201335%_)
                       (_%else201342201371%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts201336%_)))
                              (reverse! _%opts201336%_)))))
                  (let ((_%K201357201434%_
                         (lambda (_%rest201431%_ _%opt201432%_)
                           (if _%static?201331%_
                               (_%lp201333%_
                                _%rest201431%_
                                (cons _%opt201432%_
                                      (cons '"-cc-options" _%opts201336%_)))
                               (_%lp201333%_ _%rest201431%_ _%opts201336%_))))
                        (_%K201352201411%_
                         (lambda (_%rest201408%_ _%opt201409%_)
                           (_%lp201333%_
                            _%rest201408%_
                            (cons _%opt201409%_
                                  (cons '"-cc-options" _%opts201336%_)))))
                        (_%K201347201391%_
                         (lambda (_%rest201389%_)
                           (_%lp201333%_ _%rest201389%_ _%opts201336%_)))
                        (_%K201344201377%_
                         (lambda (_%rest201375%_)
                           (_%lp201333%_ _%rest201375%_ _%opts201336%_))))
                    (if (pair? _%rest201337201363%_)
                        (let ((_%tl201359201439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest201337201363%_)))
                              (_%hd201358201437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest201337201363%_))))
                          (if (equal? _%hd201358201437%_ '"-cc-options")
                              (if (pair? _%tl201359201439%_)
                                  (let ((_%tl201361201444%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201359201439%_)))
                                        (_%hd201360201442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201359201439%_))))
                                    (if (equal? _%hd201360201442%_ '"-Bstatic")
                                        (let ((_%opt201447%_
                                               _%hd201360201442%_)
                                              (_%rest201449%_
                                               _%tl201361201444%_))
                                          (_%K201357201434%_
                                           _%rest201449%_
                                           _%opt201447%_))
                                        (let ((_%opt201424%_
                                               _%hd201360201442%_)
                                              (_%rest201426%_
                                               _%tl201361201444%_))
                                          (_%K201352201411%_
                                           _%rest201426%_
                                           _%opt201424%_))))
                                  (let ((_%rest201383%_ _%tl201359201439%_))
                                    (_%K201344201377%_ _%rest201383%_)))
                              (if (equal? _%hd201358201437%_ '"-ld-options")
                                  (if (pair? _%tl201359201439%_)
                                      (let* ((_%tl201351201399%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl201359201439%_)))
                                             (_%rest201402%_
                                              _%tl201351201399%_))
                                        (_%K201347201391%_ _%rest201402%_))
                                      (let ((_%rest201383%_
                                             _%tl201359201439%_))
                                        (_%K201344201377%_ _%rest201383%_)))
                                  (let ((_%rest201383%_ _%tl201359201439%_))
                                    (_%K201344201377%_ _%rest201383%_)))))
                        (_%else201342201371%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords201454%_ _%static?201322201455%_)
        (let ((_%phi?201457%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords201454%_
           _%static?201322201455%_
           _%phi?201457%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g202795_
        (let ((_g202794_ (let () (declare (not safe)) (##length _g202795_))))
          (cond ((let () (declare (not safe)) (##fx= _g202794_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g202795_))
                ((let () (declare (not safe)) (##fx= _g202794_ 3))
                 (apply gxc#gsc-cc-options__%__% _g202795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g202795_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords201466%_ . _%args201467%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords201466%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201466%_
                  'static:
                  absent-value))
               _%args201467%_)))
    (define gxc#gsc-cc-options
      (lambda _%args201323201473%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args201323201473%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords201171%_ _%static?201167201172%_ _%phi?201174%_)
        (let ((_%static?201176%_
               (if (eq? _%static?201167201172%_ absent-value)
                   '#f
                   _%static?201167201172%_)))
          (if _%phi?201174%_
              '()
              (let _%lp201178%_ ((_%rest201180%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts201181%_ '()))
                (let* ((_%rest201182201208%_ _%rest201180%_)
                       (_%else201187201216%_
                        (lambda () (reverse! _%opts201181%_))))
                  (let ((_%K201202201279%_
                         (lambda (_%rest201276%_ _%opt201277%_)
                           (if _%static?201176%_
                               (_%lp201178%_
                                _%rest201276%_
                                (cons _%opt201277%_
                                      (cons '"-ld-options" _%opts201181%_)))
                               (_%lp201178%_ _%rest201276%_ _%opts201181%_))))
                        (_%K201197201256%_
                         (lambda (_%rest201253%_ _%opt201254%_)
                           (_%lp201178%_
                            _%rest201253%_
                            (cons _%opt201254%_
                                  (cons '"-ld-options" _%opts201181%_)))))
                        (_%K201192201236%_
                         (lambda (_%rest201234%_)
                           (_%lp201178%_ _%rest201234%_ _%opts201181%_)))
                        (_%K201189201222%_
                         (lambda (_%rest201220%_)
                           (_%lp201178%_ _%rest201220%_ _%opts201181%_))))
                    (if (pair? _%rest201182201208%_)
                        (let ((_%tl201204201284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest201182201208%_)))
                              (_%hd201203201282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest201182201208%_))))
                          (if (equal? _%hd201203201282%_ '"-ld-options")
                              (if (pair? _%tl201204201284%_)
                                  (let ((_%tl201206201289%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201204201284%_)))
                                        (_%hd201205201287%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201204201284%_))))
                                    (if (equal? _%hd201205201287%_ '"-static")
                                        (let ((_%opt201292%_
                                               _%hd201205201287%_)
                                              (_%rest201294%_
                                               _%tl201206201289%_))
                                          (_%K201202201279%_
                                           _%rest201294%_
                                           _%opt201292%_))
                                        (let ((_%opt201269%_
                                               _%hd201205201287%_)
                                              (_%rest201271%_
                                               _%tl201206201289%_))
                                          (_%K201197201256%_
                                           _%rest201271%_
                                           _%opt201269%_))))
                                  (let ((_%rest201228%_ _%tl201204201284%_))
                                    (_%K201189201222%_ _%rest201228%_)))
                              (if (equal? _%hd201203201282%_ '"-cc-options")
                                  (if (pair? _%tl201204201284%_)
                                      (let* ((_%tl201196201244%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl201204201284%_)))
                                             (_%rest201247%_
                                              _%tl201196201244%_))
                                        (_%K201192201236%_ _%rest201247%_))
                                      (let ((_%rest201228%_
                                             _%tl201204201284%_))
                                        (_%K201189201222%_ _%rest201228%_)))
                                  (let ((_%rest201228%_ _%tl201204201284%_))
                                    (_%K201189201222%_ _%rest201228%_)))))
                        (_%else201187201216%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords201299%_ _%static?201167201300%_)
        (let ((_%phi?201302%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords201299%_
           _%static?201167201300%_
           _%phi?201302%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g202797_
        (let ((_g202796_ (let () (declare (not safe)) (##length _g202797_))))
          (cond ((let () (declare (not safe)) (##fx= _g202796_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g202797_))
                ((let () (declare (not safe)) (##fx= _g202796_ 3))
                 (apply gxc#gsc-ld-options__%__% _g202797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g202797_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords201311%_ . _%args201312%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords201311%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201311%_
                  'static:
                  absent-value))
               _%args201312%_)))
    (define gxc#gsc-ld-options
      (lambda _%args201168201318%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args201168201318%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir201162%_)
        (let ((_%user-staticdir201164%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir201162%_
                       '" -I "
                       _%user-staticdir201164%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp201074%_ ((_%rest201076%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts201077%_ '()))
          (let* ((_%rest201078201098%_ _%rest201076%_)
                 (_%else201082201106%_ (lambda () _%opts201077%_)))
            (let ((_%K201092201149%_
                   (lambda (_%rest201147%_)
                     (_%lp201074%_ _%rest201147%_ _%opts201077%_)))
                  (_%K201087201127%_
                   (lambda (_%rest201124%_ _%opt201125%_)
                     (_%lp201074%_
                      _%rest201124%_
                      (let ((__tmp202798
                             (let ((__tmp202799
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt201125%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp202799))))
                        (declare (not safe))
                        (##append _%opts201077%_ __tmp202798)))))
                  (_%K201084201112%_
                   (lambda (_%rest201110%_)
                     (_%lp201074%_ _%rest201110%_ _%opts201077%_))))
              (if (pair? _%rest201078201098%_)
                  (let ((_%tl201094201154%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201078201098%_)))
                        (_%hd201093201152%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201078201098%_))))
                    (if (equal? _%hd201093201152%_ '"-cc-options")
                        (if (pair? _%tl201094201154%_)
                            (let* ((_%tl201096201157%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl201094201154%_)))
                                   (_%rest201160%_ _%tl201096201157%_))
                              (_%K201092201149%_ _%rest201160%_))
                            (let ((_%rest201118%_ _%tl201094201154%_))
                              (_%K201084201112%_ _%rest201118%_)))
                        (if (equal? _%hd201093201152%_ '"-ld-options")
                            (if (pair? _%tl201094201154%_)
                                (let ((_%tl201091201137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201094201154%_)))
                                      (_%hd201090201135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201094201154%_))))
                                  (let ((_%opt201140%_ _%hd201090201135%_)
                                        (_%rest201142%_ _%tl201091201137%_))
                                    (_%K201087201127%_
                                     _%rest201142%_
                                     _%opt201140%_)))
                                (let ((_%rest201118%_ _%tl201094201154%_))
                                  (_%K201084201112%_ _%rest201118%_)))
                            (let ((_%rest201118%_ _%tl201094201154%_))
                              (_%K201084201112%_ _%rest201118%_)))))
                  (_%else201082201106%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str201071%_)
        (not (let () (declare (not safe)) (string-empty? _%str201071%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path201064%_ _%phi?201065%_)
        (let ((_%gsc-link-opts201067%_
               (gxc#gsc-link-options__% _%phi?201065%_))
              (_%gsc-cc-opts201068%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?201065%_))
              (_%gsc-ld-opts201069%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?201065%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp202800
                  (let ((__tmp202801
                         (let ((__tmp202802 (cons _%path201064%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp202802
                            _%gsc-link-opts201067%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202801 _%gsc-ld-opts201069%_))))
             (declare (not safe))
             (__foldr1 cons __tmp202800 _%gsc-cc-opts201068%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx201030%_ _%n201031%_ _%ext201032%_)
        (letrec ((_%module-relative-path201034%_
                  (lambda (_%ctx201062%_)
                    (path-strip-directory
                     (let ((__tmp202803
                            (##structure-ref
                             _%ctx201062%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp202803)))))
                 (_%module-source-directory201035%_
                  (lambda (_%ctx201058%_)
                    (path-directory
                     (let ((_%mpath201060%_
                            (##structure-ref
                             _%ctx201058%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath201060%_)
                           _%mpath201060%_
                           (last _%mpath201060%_))))))
                 (_%section-string201036%_
                  (lambda (_%n201052%_)
                    (if (number? _%n201052%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n201052%_))
                        (if (symbol? _%n201052%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n201052%_))
                            (if (string? _%n201052%_)
                                _%n201052%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n201052%_)))))))
                 (_%file-name201037%_
                  (lambda (_%path201050%_)
                    (if _%n201031%_
                        (string-append
                         _%path201050%_
                         '"~"
                         (_%section-string201036%_ _%n201031%_)
                         _%ext201032%_)
                        (string-append _%path201050%_ _%ext201032%_))))
                 (_%file-path201038%_
                  (lambda ()
                    (let ((_%$e201044%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e201044%_
                          ((lambda (_%outdir201047%_)
                             (path-expand
                              (_%file-name201037%_
                               (let ((__tmp202804
                                      (##structure-ref
                                       _%ctx201030%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp202804)))
                              _%outdir201047%_))
                           _%$e201044%_)
                          (path-expand
                           (_%file-name201037%_
                            (_%module-relative-path201034%_ _%ctx201030%_))
                           (_%module-source-directory201035%_
                            _%ctx201030%_)))))))
          (let ((_%path201040%_ (_%file-path201038%_)))
            (let ((__tmp202805
                   (lambda ()
                     (let ((__tmp202806 (path-directory _%path201040%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202806)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202805))
            _%path201040%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx201011%_)
        (letrec ((_%file-name201013%_
                  (lambda (_%id201028%_)
                    (let ((__tmp202807 (gxc#static-module-name _%id201028%_)))
                      (declare (not safe))
                      (##string-append __tmp202807 '".scm"))))
                 (_%file-path201014%_
                  (lambda ()
                    (let* ((_%file201020%_
                            (_%file-name201013%_
                             (##structure-ref
                              _%ctx201011%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e201022%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e201022%_
                          ((lambda (_%outdir201025%_)
                             (path-expand
                              _%file201020%_
                              (path-expand '"static" _%outdir201025%_)))
                           _%$e201022%_)
                          (path-expand _%file201020%_ '"static"))))))
          (let ((_%path201016%_ (_%file-path201014%_)))
            (let ((__tmp202808
                   (lambda ()
                     (let ((__tmp202809 (path-directory _%path201016%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202809)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202808))
            _%path201016%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx201004%_ _%opts201005%_)
        (let ((_%$e201007%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts201005%_))))
          (if _%$e201007%_
              _%$e201007%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx201004%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr200994%_)
        (if (string? _%idstr200994%_)
            (let* ((_%str200997%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr200994%_)))
                   (_%strs200999%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str200997%_ '#\/))))
              (declare (not safe))
              (string-join _%strs200999%_ '"__"))
            (if (symbol? _%idstr200994%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr200994%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr200994%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp202810
               (let ((__tmp202811 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp202811 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp202810))))
    (define gxc#invoke__%
      (lambda (_%@@keywords200958%_
               _%stdout-redirection200954200959%_
               _%stderr-redirection200955200961%_
               _%program200963%_
               _%args200964%_)
        (let* ((_%stdout-redirection200966%_
                (if (eq? _%stdout-redirection200954200959%_ absent-value)
                    '#f
                    _%stdout-redirection200954200959%_))
               (_%stderr-redirection200968%_
                (if (eq? _%stderr-redirection200955200961%_ absent-value)
                    '#f
                    _%stderr-redirection200955200961%_)))
          (let ((__tmp202812 (cons _%program200963%_ _%args200964%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp202812))
          (let* ((_%proc200970%_
                  (open-process
                   (cons 'path:
                         (cons _%program200963%_
                               (cons 'arguments:
                                     (cons _%args200964%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection200966%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection200968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output200975%_
                  (if (or _%stdout-redirection200966%_
                          _%stderr-redirection200968%_)
                      (read-line _%proc200970%_ '#f)
                      '#f))
                 (_%status200978%_ (process-status _%proc200970%_)))
            (let () (declare (not safe)) (##close-port _%proc200970%_))
            (if (zero? _%status200978%_)
                '#!void
                (begin
                  (display _%output200975%_)
                  (let ((__tmp202813 (cons _%program200963%_ _%args200964%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp202813
                     _%status200978%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords200983%_ . _%args200984%_)
        (apply gxc#invoke__%
               _%@@keywords200983%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200983%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200983%_
                  'stderr-redirection:
                  absent-value))
               _%args200984%_)))
    (define gxc#invoke
      (lambda _%args200956200990%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args200956200990%_)))))
