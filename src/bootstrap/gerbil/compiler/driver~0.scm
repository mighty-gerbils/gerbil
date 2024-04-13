(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712997794)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp200596 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp200596))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp200597 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp200597))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path200453%_ _%fun200454%_)
        (with-output-to-file
         (cons 'path: (cons _%path200453%_ gxc#scheme-file-settings))
         _%fun200454%_)))
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
      (lambda (_%gerbil-libdir200448%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir200448%_)))
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
      (lambda (_%dir200446%_) (delete-file-or-directory _%dir200446%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath200419%_ _%opts200420%_)
        (if (string? _%srcpath200419%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200419%_)))
        (let ((_%outdir200422%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200420%_)))
              (_%invoke-gsc?200423%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200420%_)))
              (_%gsc-options200424%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200420%_)))
              (_%keep-scm?200425%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200420%_)))
              (_%verbosity200426%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200420%_)))
              (_%optimize200427%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts200420%_)))
              (_%debug200428%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200420%_)))
              (_%gen-ssxi200429%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts200420%_)))
              (_%parallel?200430%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200420%_))))
          (if _%outdir200422%_
              (let ((__tmp200598
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200422%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200598))
              '#!void)
          (if _%optimize200427%_
              (let ((__tmp200599
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200599))
              '#!void)
          (let ((__tmp200602
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath200419%_))
                   (gxc#compile-top-module
                    (let ((__tmp200603
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200419%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp200603)))))
                (__tmp200601 (gxc#compile-timestamp))
                (__tmp200600
                 (cons 'compile-module (cons _%srcpath200419%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200602
             gxc#current-compile-output-dir
             _%outdir200422%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200423%_
             gxc#current-compile-gsc-options
             _%gsc-options200424%_
             gxc#current-compile-keep-scm
             _%keep-scm?200425%_
             gxc#current-compile-verbose
             _%verbosity200426%_
             gxc#current-compile-optimize
             _%optimize200427%_
             gxc#current-compile-debug
             _%debug200428%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi200429%_
             gxc#current-compile-timestamp
             __tmp200601
             gxc#current-compile-context
             __tmp200600
             gxc#current-compile-parallel
             _%parallel?200430%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath200439%_)
        (let ((_%opts200441%_ '()))
          (gxc#compile-module__% _%srcpath200439%_ _%opts200441%_))))
    (define gxc#compile-module
      (lambda _g200605_
        (let ((_g200604_ (let () (declare (not safe)) (##length _g200605_))))
          (cond ((let () (declare (not safe)) (##fx= _g200604_ 1))
                 (apply gxc#compile-module__0 _g200605_))
                ((let () (declare (not safe)) (##fx= _g200604_ 2))
                 (apply gxc#compile-module__% _g200605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g200605_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath200394%_ _%opts200395%_)
        (if (string? _%srcpath200394%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200394%_)))
        (let ((_%outdir200397%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200395%_)))
              (_%invoke-gsc?200398%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200395%_)))
              (_%gsc-options200399%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200395%_)))
              (_%keep-scm?200400%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200395%_)))
              (_%verbosity200401%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200395%_)))
              (_%debug200402%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200395%_)))
              (_%parallel?200403%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200395%_))))
          (if _%outdir200397%_
              (let ((__tmp200606
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200397%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200606))
              '#!void)
          (let ((__tmp200609
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath200394%_))
                   (gxc#compile-executable-module
                    (let ((__tmp200610
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200394%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp200610))
                    _%opts200395%_)))
                (__tmp200608 (gxc#compile-timestamp))
                (__tmp200607 (cons 'compile-exe (cons _%srcpath200394%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200609
             gxc#current-compile-output-dir
             _%outdir200397%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200398%_
             gxc#current-compile-gsc-options
             _%gsc-options200399%_
             gxc#current-compile-keep-scm
             _%keep-scm?200400%_
             gxc#current-compile-verbose
             _%verbosity200401%_
             gxc#current-compile-debug
             _%debug200402%_
             gxc#current-compile-timestamp
             __tmp200608
             gxc#current-compile-context
             __tmp200607
             gxc#current-compile-parallel
             _%parallel?200403%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath200411%_)
        (let ((_%opts200413%_ '()))
          (gxc#compile-exe__% _%srcpath200411%_ _%opts200413%_))))
    (define gxc#compile-exe
      (lambda _g200612_
        (let ((_g200611_ (let () (declare (not safe)) (##length _g200612_))))
          (cond ((let () (declare (not safe)) (##fx= _g200611_ 1))
                 (apply gxc#compile-exe__0 _g200612_))
                ((let () (declare (not safe)) (##fx= _g200611_ 2))
                 (apply gxc#compile-exe__% _g200612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g200612_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx200390%_ _%opts200391%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts200391%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx200390%_
             _%opts200391%_)
            (gxc#compile-executable-module/separate
             _%ctx200390%_
             _%opts200391%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx200180%_ _%opts200181%_)
        (letrec ((_%generate-stub200183%_
                  (lambda (_%builtin-modules200386%_)
                    (let ((_%mod-main200388%_
                           (gxc#find-runtime-symbol _%ctx200180%_ 'main)))
                      (let ((__tmp200613
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules200386%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp200613))
                      (let ((__tmp200614
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main200388%_
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
                        (##write __tmp200614))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts200184%_
                  (lambda (_%gerbil-libdir200384%_)
                    (let ((__tmp200615
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir200384%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp200615 read))))
                 (_%replace-extension200185%_
                  (lambda (_%path200381%_ _%ext200382%_)
                    (string-append
                     (path-strip-extension _%path200381%_)
                     _%ext200382%_)))
                 (_%userlib-module?200186%_
                  (lambda (_%ctx200379%_)
                    (if (_%exclude-module?200188%_ _%ctx200379%_)
                        '#f
                        (not (_%libgerbil-module?200187%_ _%ctx200379%_)))))
                 (_%libgerbil-module?200187%_
                  (lambda (_%ctx200372%_)
                    (let ((_%id-str200374%_
                           (symbol->string
                            (##structure-ref
                             _%ctx200372%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?200188%_ _%id-str200374%_)
                          '#f
                          (let ((_%$e200376%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str200374%_))))
                            (if _%$e200376%_
                                _%$e200376%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str200374%_))))))))
                 (_%exclude-module?200188%_
                  (lambda (_%ctx-or-str200368%_)
                    (let ((_%str200370%_
                           (if (string? _%ctx-or-str200368%_)
                               _%ctx-or-str200368%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str200368%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str200370%_))))
                 (_%not-file-empty?200189%_
                  (lambda (_%path200366%_)
                    (not (gxc#file-empty? _%path200366%_))))
                 (_%fold-libgerbil-runtime-scm200190%_
                  (lambda (_%gerbil-staticdir200359%_ _%libgerbil-scm200360%_)
                    (let ((_%gerbil-runtime-scm200364%_
                           (let ((__tmp200616
                                  (lambda (_%rtm200362%_)
                                    (path-expand
                                     (let ((__tmp200617
                                            (let ((__tmp200618
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm200362%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp200618
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp200617 '".scm"))
                                     _%gerbil-staticdir200359%_))))
                             (declare (not safe))
                             (##map __tmp200616 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates200191%_
                       (append _%gerbil-runtime-scm200364%_
                               _%libgerbil-scm200360%_)))))
                 (_%remove-duplicates200191%_
                  (lambda (_%strlst200319%_)
                    (let _%loop200321%_ ((_%rest200323%_ _%strlst200319%_)
                                         (_%result200324%_ '()))
                      (let* ((_%rest200325200333%_ _%rest200323%_)
                             (_%else200327200341%_
                              (lambda () (reverse! _%result200324%_)))
                             (_%K200329200347%_
                              (lambda (_%rest200344%_ _%path200345%_)
                                (if (member _%path200345%_ _%result200324%_)
                                    (_%loop200321%_
                                     _%rest200344%_
                                     _%result200324%_)
                                    (_%loop200321%_
                                     _%rest200344%_
                                     (cons _%path200345%_
                                           _%result200324%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest200325200333%_))
                            (let ((_%hd200330200350%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200325200333%_)))
                                  (_%tl200331200352%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200325200333%_))))
                              (let* ((_%path200355%_ _%hd200330200350%_)
                                     (_%rest200357%_ _%tl200331200352%_))
                                (_%K200329200347%_
                                 _%rest200357%_
                                 _%path200355%_)))
                            (_%else200327200341%_))))))
                 (_%compile-stub200192%_
                  (lambda (_%output-scm200199%_ _%output-bin200200%_)
                    (let* ((_%gerbil-home200202%_
                            (let ((__tmp200619
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp200619)))
                           (_%gerbil-libdir200204%_
                            (path-expand '"lib" _%gerbil-home200202%_))
                           (_%gerbil-staticdir200206%_
                            (path-expand '"static" _%gerbil-libdir200204%_))
                           (_%deps200208%_
                            (gxc#find-runtime-module-deps _%ctx200180%_))
                           (_%libgerbil-deps200210%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?200187%_
                               _%deps200208%_)))
                           (_%libgerbil-scm200212%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps200210%_)))
                           (_%libgerbil-scm200214%_
                            (_%fold-libgerbil-runtime-scm200190%_
                             _%gerbil-staticdir200206%_
                             _%libgerbil-scm200212%_))
                           (_%libgerbil-c200220%_
                            (map (lambda (_%g200215200217%_)
                                   (_%replace-extension200185%_
                                    _%g200215200217%_
                                    '".c"))
                                 _%libgerbil-scm200214%_))
                           (_%libgerbil-o200226%_
                            (map (lambda (_%g200221200223%_)
                                   (_%replace-extension200185%_
                                    _%g200221200223%_
                                    '".o"))
                                 _%libgerbil-scm200214%_))
                           (_%src-deps200228%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?200186%_
                               _%deps200208%_)))
                           (_%src-deps-scm200230%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps200228%_)))
                           (_%src-deps-scm200232%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?200189%_
                               _%src-deps-scm200230%_)))
                           (_%src-deps-scm200234%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm200232%_)))
                           (_%src-deps-c200240%_
                            (let ((__tmp200620
                                   (lambda (_%g200235200237%_)
                                     (_%replace-extension200185%_
                                      _%g200235200237%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp200620 _%src-deps-scm200234%_)))
                           (_%src-deps-o200246%_
                            (let ((__tmp200621
                                   (lambda (_%g200241200243%_)
                                     (_%replace-extension200185%_
                                      _%g200241200243%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp200621 _%src-deps-scm200234%_)))
                           (_%src-bin-scm200248%_
                            (gxc#find-static-module-file _%ctx200180%_))
                           (_%src-bin-scm200250%_
                            (path-expand _%src-bin-scm200248%_))
                           (_%src-bin-c200252%_
                            (_%replace-extension200185%_
                             _%src-bin-scm200250%_
                             '".c"))
                           (_%src-bin-o200254%_
                            (_%replace-extension200185%_
                             _%src-bin-scm200250%_
                             '".o"))
                           (_%output-bin200256%_
                            (path-expand _%output-bin200200%_))
                           (_%output-scm200258%_
                            (path-expand _%output-scm200199%_))
                           (_%output-c200260%_
                            (_%replace-extension200185%_
                             _%output-scm200258%_
                             '".c"))
                           (_%output-o200262%_
                            (_%replace-extension200185%_
                             _%output-scm200258%_
                             '".o"))
                           (_%output_-c200264%_
                            (_%replace-extension200185%_
                             _%output-scm200258%_
                             '"_.c"))
                           (_%output_-o200266%_
                            (_%replace-extension200185%_
                             _%output-scm200258%_
                             '"_.o"))
                           (_%gsc-link-opts200268%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts200270%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts200272%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir200206%_))
                           (_%output-ld-opts200274%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts200276%_
                            (_%get-libgerbil-ld-opts200184%_
                             _%gerbil-libdir200204%_))
                           (_%rpath200278%_
                            (gxc#gerbil-rpath _%gerbil-libdir200204%_))
                           (_%builtin-modules200282%_
                            (_%remove-duplicates200191%_
                             (let ((__tmp200622
                                    (let ((__tmp200624
                                           (lambda (_%mod200280%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod200280%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp200623
                                           (cons _%ctx200180%_
                                                 _%deps200208%_)))
                                      (declare (not safe))
                                      (##map __tmp200624 __tmp200623))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp200622)))))
                      (letrec ((_%compile-obj200285%_
                                (lambda (_%scm-path200292%_ _%c-path200293%_)
                                  (let* ((_%o-path200295%_
                                          (_%replace-extension200185%_
                                           _%c-path200293%_
                                           '".o"))
                                         (_%lock200297%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path200295%_
                                             '".lock")))
                                         (_%locked200299%_ '#f)
                                         (_%unlock200302%_
                                          (lambda ()
                                            (close-port _%locked200299%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock200297%_)))))
                                    (let _%retry200305%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock200297%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry200305%_))
                                          (begin
                                            (set! _%locked200299%_
                                                  (let ((__tmp200625
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock200297%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp200625)))
                                            (if _%locked200299%_
                                                '#!void
                                                (_%retry200305%_)))))
                                    (let ((__tmp200627
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path200295%_)))
                                                     (not _%scm-path200292%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path200292%_
                                                        _%o-path200295%_)))
                                                 (let ((_%gsc-cc-opts200316%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp200628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp200629 (cons _%c-path200293%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp200629
                            _%gsc-static-opts200272%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200628 _%gsc-cc-opts200316%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp200626
                                           (lambda () (_%unlock200302%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp200627
                                       __tmp200626))))))
                        (let ((__tmp200630
                               (lambda ()
                                 (let ((__tmp200631
                                        (path-directory _%output-bin200256%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp200631)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp200630))
                        (gxc#with-output-to-scheme-file
                         _%output-scm200258%_
                         (lambda ()
                           (_%generate-stub200183%_
                            _%builtin-modules200282%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it200290%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp200632
                                                   (let ((__tmp200633
                                                          (let ((__tmp200634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm200250%_
                               (cons _%output-scm200258%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200634 _%src-deps-scm200234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp200633
                                                      _%libgerbil-c200220%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp200632
                                               _%gsc-link-opts200268%_))))
                                     (for-each
                                      _%compile-obj200285%_
                                      (let ((__tmp200635
                                             (cons _%src-bin-scm200250%_
                                                   (cons _%output-scm200258%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp200635
                                         _%src-deps-scm200234%_))
                                      (let ((__tmp200636
                                             (cons _%src-bin-c200252%_
                                                   (cons _%output-c200260%_
                                                         (cons _%output_-c200264%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp200636
                                         _%src-deps-c200240%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin200256%_
                                                        (let ((__tmp200637
                                                               (cons _%src-bin-o200254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o200262%_
                                   (cons _%output_-o200266%_
                                         (let ((__tmp200638
                                                (let ((__tmp200639
                                                       (let ((__tmp200641
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir200204%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts200276%_))))
                     (__tmp200640
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath200278%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp200641 __tmp200640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp200639
                                                   _%output-ld-opts200274%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp200638
                                            _%libgerbil-o200226%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp200637 _%src-deps-o200246%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp200642
                                            (cons _%output-c200260%_
                                                  (cons _%output_-c200264%_
                                                        (cons _%output-o200262%_
                                                              (cons _%output_-o200266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp200642)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it200290%_))
                                  (_%compile-it200290%_)))
                            '#!void))))))
          (let* ((_%output-bin200194%_
                  (gxc#compile-exe-output-file _%ctx200180%_ _%opts200181%_))
                 (_%output-scm200196%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin200194%_ '"__exe.scm"))))
            (_%compile-stub200192%_
             _%output-scm200196%_
             _%output-bin200194%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx200002%_ _%opts200003%_)
        (letrec ((_%reset-declare200005%_
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
                 (_%generate-stub200006%_
                  (lambda (_%deps200171%_)
                    (let ((_%mod-main200173%_
                           (gxc#find-runtime-symbol _%ctx200002%_ 'main))
                          (_%reset-decl200174%_ (_%reset-declare200005%_))
                          (_%user-decl200175%_ (_%user-declare200007%_)))
                      (for-each
                       (lambda (_%dep200177%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl200174%_))
                         (newline)
                         (if _%user-decl200175%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl200175%_))
                               (newline))
                             '#!void)
                         (let ((__tmp200643
                                (cons 'include (cons _%dep200177%_ '()))))
                           (declare (not safe))
                           (##write __tmp200643))
                         (newline))
                       _%deps200171%_)
                      (let ((__tmp200644
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main200173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp200644))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare200007%_
                  (lambda ()
                    (let* ((_%gsc-opts200076%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts200003%_)))
                           (_%gsc-prelude200078%_
                            (if _%gsc-opts200076%_
                                (member '"-prelude" _%gsc-opts200076%_)
                                '#f))
                           (_%gsc-prelude200080%_
                            (if _%gsc-prelude200078%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude200078%_)))
                                '#f)))
                      (let _%lp200083%_ ((_%rest200085%_
                                          (cons _%gsc-prelude200080%_ '()))
                                         (_%user-decls200086%_ '()))
                        (let* ((_%rest200087200095%_ _%rest200085%_)
                               (_%else200089200103%_
                                (lambda ()
                                  (if (null? _%user-decls200086%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls200086%_)))))
                               (_%K200091200159%_
                                (lambda (_%rest200106%_ _%expr200107%_)
                                  (let* ((_%expr200108200120%_ _%expr200107%_)
                                         (_%else200111200128%_
                                          (lambda ()
                                            (_%lp200083%_
                                             _%rest200106%_
                                             _%user-decls200086%_))))
                                    (let ((_%K200116200149%_
                                           (lambda (_%decls200147%_)
                                             (_%lp200083%_
                                              _%rest200106%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls200086%_
                                                 _%decls200147%_)))))
                                          (_%K200113200134%_
                                           (lambda (_%exprs200132%_)
                                             (_%lp200083%_
                                              (append _%exprs200132%_
                                                      _%rest200106%_)
                                              _%user-decls200086%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr200108200120%_))
                                          (let ((_%tl200118200154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr200108200120%_)))
                                                (_%hd200117200152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr200108200120%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd200117200152%_
                                                         'declare))
                                                (let ((_%decls200157%_
                                                       _%tl200118200154%_))
                                                  (_%K200116200149%_
                                                   _%decls200157%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd200117200152%_
                                                             'begin))
                                                    (let ((_%exprs200142%_
                                                           _%tl200118200154%_))
                                                      (_%K200113200134%_
                                                       _%exprs200142%_))
                                                    (_%else200111200128%_))))
                                          (_%else200111200128%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest200087200095%_))
                              (let ((_%hd200092200162%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest200087200095%_)))
                                    (_%tl200093200164%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest200087200095%_))))
                                (let* ((_%expr200167%_ _%hd200092200162%_)
                                       (_%rest200169%_ _%tl200093200164%_))
                                  (_%K200091200159%_
                                   _%rest200169%_
                                   _%expr200167%_)))
                              (_%else200089200103%_)))))))
                 (_%compile-stub200008%_
                  (lambda (_%output-scm200015%_ _%output-bin200016%_)
                    (let* ((_%gerbil-home200018%_
                            (let ((__tmp200645
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp200645)))
                           (_%gerbil-libdir200020%_
                            (path-expand '"lib" _%gerbil-home200018%_))
                           (_%runtime200022%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp200024%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home200018%_))
                           (_%include-gambit-sharp200026%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp200024%_
                               '"\")")))
                           (_%bin-scm200028%_
                            (gxc#find-static-module-file _%ctx200002%_))
                           (_%deps200030%_
                            (gxc#find-runtime-module-deps _%ctx200002%_))
                           (_%deps200032%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps200030%_)))
                           (_%deps200037%_
                            (let ((__tmp200646
                                   (lambda (_%$obj200034%_)
                                     (not (gxc#file-empty? _%$obj200034%_)))))
                              (declare (not safe))
                              (##filter __tmp200646 _%deps200032%_)))
                           (_%deps200041%_
                            (let ((__tmp200647
                                   (lambda (_%f200039%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f200039%_
                                             _%runtime200022%_))))))
                              (declare (not safe))
                              (##filter __tmp200647 _%deps200037%_)))
                           (_%output-base200043%_
                            (let ((__tmp200648
                                   (path-strip-extension
                                    _%output-scm200015%_)))
                              (declare (not safe))
                              (##string-append __tmp200648)))
                           (_%output-c200045%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200043%_ '".c")))
                           (_%output-o200047%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200043%_ '".o")))
                           (_%output-c_200049%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200043%_ '"_.c")))
                           (_%output-o_200051%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200043%_ '"_.o")))
                           (_%gsc-link-opts200053%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts200055%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts200057%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir200020%_)))
                           (_%output-ld-opts200059%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros200061%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp200026%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp200026%_
                                            '()))))
                           (_%gsc-link-opts200063%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts200053%_
                               _%gsc-gx-macros200061%_)))
                           (_%rpath200065%_
                            (gxc#gerbil-rpath _%gerbil-libdir200020%_))
                           (_%default-ld-options200067%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp200649
                             (lambda ()
                               (let ((__tmp200650
                                      (path-directory _%output-bin200016%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp200650)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp200649))
                      (gxc#with-output-to-scheme-file
                       _%output-scm200015%_
                       (lambda ()
                         (_%generate-stub200006%_
                          (let ((__tmp200651
                                 (let ((__tmp200652
                                        (cons _%bin-scm200028%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp200652
                                    _%deps200041%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp200651 _%runtime200022%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it200073%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_200049%_
                                                      (let ((__tmp200653
                                                             (cons _%output-scm200015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp200653 _%gsc-link-opts200063%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp200654
                                                 (let ((__tmp200655
                                                        (cons _%output-c200045%_
                                                              (cons _%output-c_200049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp200655
                                                    _%gsc-static-opts200057%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp200654
                                             _%gsc-cc-opts200055%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin200016%_
                                                      (cons _%output-o200047%_
                                                            (cons _%output-o_200051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp200656
                                 (let ((__tmp200658
                                        (cons '"-L"
                                              (cons _%gerbil-libdir200020%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options200067%_))))
                                       (__tmp200657
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath200065%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp200658 __tmp200657))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp200656
                             _%output-ld-opts200059%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it200073%_))
                                (_%compile-it200073%_)))
                          '#!void)))))
          (let* ((_%output-bin200010%_
                  (gxc#compile-exe-output-file _%ctx200002%_ _%opts200003%_))
                 (_%output-scm200012%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin200010%_ '"__exe.scm"))))
            (_%compile-stub200008%_
             _%output-scm200012%_
             _%output-bin200010%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx199951%_ _%id199952%_)
        (let ((_%$e199998%_
               (let ((__tmp200660
                      (lambda (_%e199953199955%_)
                        (let* ((_%g199957199967%_ _%e199953199955%_)
                               (_%else199959199975%_ (lambda () '#f))
                               (_%K199961199979%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g199957199967%_
                                 'gx#module-export::t))
                              (let* ((_%e199962199982%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g199957199967%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e199963199985%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g199957199967%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e199964199988%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g199957199967%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e199964199988%_ '0))
                                    (let ((_%e199965199991%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g199957199967%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g199993199995%_)
                                             (eq? _%g199993199995%_
                                                  _%id199952%_))
                                           _%e199965199991%_)
                                          (_%K199961199979%_)
                                          (_%else199959199975%_)))
                                    (_%else199959199975%_)))
                              (_%else199959199975%_)))))
                     (__tmp200659
                      (##structure-ref
                       _%ctx199951%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp200660 __tmp200659))))
          (if _%$e199998%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e199998%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx199942%_ _%id199943%_)
        (let ((_%$e199945%_
               (gxc#find-export-binding _%ctx199942%_ _%id199943%_)))
          (if _%$e199945%_
              ((lambda (_%bind199948%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind199948%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id199943%_)))
                 (##structure-ref _%bind199948%_ '1 gx#binding::t '#f))
               _%$e199945%_)
              (let ((__tmp200661
                     (##structure-ref
                      _%ctx199942%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp200661
                 _%id199943%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx199808%_)
        (letrec* ((_%ht199810%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template199811%_
                   (lambda (_%in199887%_ _%phi199888%_)
                     (let ((_%iphi199890%_
                            (fx+ _%phi199888%_
                                 (##direct-structure-ref
                                  _%in199887%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports199891%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in199887%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp199893%_ ((_%rest199895%_ _%imports199891%_)
                                          (_%r199896%_ '()))
                         (let* ((_%rest199897199905%_ _%rest199895%_)
                                (_%else199899199913%_ (lambda () _%r199896%_))
                                (_%K199901199930%_
                                 (lambda (_%rest199916%_ _%in199917%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in199917%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi199890%_))
                                           (_%lp199893%_
                                            _%rest199916%_
                                            (cons _%in199917%_ _%r199896%_))
                                           (_%lp199893%_
                                            _%rest199916%_
                                            _%r199896%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in199917%_
                                              'gx#module-import::t))
                                           (let ((_%iphi199921%_
                                                  (fx+ _%phi199888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in199917%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi199921%_))
                                                 (_%lp199893%_
                                                  _%rest199916%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in199917%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r199896%_))
                                                 (_%lp199893%_
                                                  _%rest199916%_
                                                  _%r199896%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in199917%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi199924%_
                                                      (fx+ _%iphi199890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in199917%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi199924%_))
                                                     (_%lp199893%_
                                                      _%rest199916%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in199917%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r199896%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi199924%_))
                                                         (_%lp199893%_
                                                          _%rest199916%_
                                                          (let ((__tmp200662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template199811%_
                          _%in199917%_
                          _%iphi199890%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r199896%_ __tmp200662)))
                 (_%lp199893%_ _%rest199916%_ _%r199896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp199893%_
                                                _%rest199916%_
                                                _%r199896%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest199897199905%_))
                               (let ((_%hd199902199933%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest199897199905%_)))
                                     (_%tl199903199935%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest199897199905%_))))
                                 (let* ((_%in199938%_ _%hd199902199933%_)
                                        (_%rest199940%_ _%tl199903199935%_))
                                   (_%K199901199930%_
                                    _%rest199940%_
                                    _%in199938%_)))
                               (_%else199899199913%_)))))))
                  (_%find-deps199812%_
                   (lambda (_%rest199820%_ _%deps199821%_)
                     (let* ((_%rest199822199830%_ _%rest199820%_)
                            (_%else199824199838%_ (lambda () _%deps199821%_))
                            (_%K199826199875%_
                             (lambda (_%rest199841%_ _%hd199842%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd199842%_
                                      'gx#module-context::t))
                                   (let ((_%id199845%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd199842%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports199846%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd199842%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht199810%_
                                            _%id199845%_))
                                         (_%find-deps199812%_
                                          _%rest199841%_
                                          _%deps199821%_)
                                         (let ((_%$e199849%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd199842%_))))
                                           (if _%$e199849%_
                                               ((lambda (_%pre199852%_)
                                                  (let ((_%xdeps199854%_
                                                         (_%find-deps199812%_
                                                          (cons _%pre199852%_
                                                                _%imports199846%_)
                                                          _%deps199821%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht199810%_
                                                       _%id199845%_
                                                       _%hd199842%_))
                                                    (_%find-deps199812%_
                                                     _%rest199841%_
                                                     (cons _%hd199842%_
                                                           _%xdeps199854%_))))
                                                _%$e199849%_)
                                               (let ((_%xdeps199857%_
                                                      (_%find-deps199812%_
                                                       _%imports199846%_
                                                       _%deps199821%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht199810%_
                                                    _%id199845%_
                                                    _%hd199842%_))
                                                 (_%find-deps199812%_
                                                  _%rest199841%_
                                                  (cons _%hd199842%_
                                                        _%xdeps199857%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd199842%_
                                          'gx#prelude-context::t))
                                       (let ((_%id199860%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd199842%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht199810%_
                                                _%id199860%_))
                                             (_%find-deps199812%_
                                              _%rest199841%_
                                              _%deps199821%_)
                                             (let ((_%xdeps199864%_
                                                    (_%find-deps199812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd199842%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps199821%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht199810%_
                                                      _%id199860%_))
                                                   (_%find-deps199812%_
                                                    _%rest199841%_
                                                    _%xdeps199864%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht199810%_
                                                        _%id199860%_
                                                        _%hd199842%_))
                                                     (_%find-deps199812%_
                                                      _%rest199841%_
                                                      (cons _%hd199842%_
                                                            _%xdeps199864%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd199842%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd199842%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps199812%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd199842%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest199841%_)
                                                _%deps199821%_)
                                               (_%find-deps199812%_
                                                _%rest199841%_
                                                _%deps199821%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd199842%_
                                                  'gx#module-export::t))
                                               (_%find-deps199812%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd199842%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest199841%_)
                                                _%deps199821%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd199842%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd199842%_ '2 '#f '#f)))
               (_%find-deps199812%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd199842%_ '1 '#f '#f))
                      _%rest199841%_)
                _%deps199821%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd199842%_ '2 '#f '#f)))
                   (let ((_%xdeps199871%_
                          (_%import-set-template199811%_ _%hd199842%_ '0)))
                     (_%find-deps199812%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest199841%_ _%xdeps199871%_))
                      _%deps199821%_))
                   (_%find-deps199812%_ _%rest199841%_ _%deps199821%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd199842%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest199822199830%_))
                           (let ((_%hd199827199878%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest199822199830%_)))
                                 (_%tl199828199880%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest199822199830%_))))
                             (let* ((_%hd199883%_ _%hd199827199878%_)
                                    (_%rest199885%_ _%tl199828199880%_))
                               (_%K199826199875%_
                                _%rest199885%_
                                _%hd199883%_)))
                           (_%else199824199838%_))))))
          (let ((__tmp200663
                 (filter gx#expander-context-id
                         (_%find-deps199812%_
                          (let ((_%$e199814%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx199808%_))))
                            (if _%$e199814%_
                                ((lambda (_%pre199817%_)
                                   (cons _%pre199817%_
                                         (##structure-ref
                                          _%ctx199808%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e199814%_)
                                (##structure-ref
                                 _%ctx199808%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp200663)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx199738%_)
        (let* ((_%context-id199740%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx199738%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx199738%_ '1 '#f '#f))
                    (string->symbol _%ctx199738%_)))
               (_%scm199742%_
                (let ((__tmp200664
                       (gxc#static-module-name _%context-id199740%_)))
                  (declare (not safe))
                  (##string-append __tmp200664 '".scm")))
               (_%dirs199744%_ (let () (declare (not safe)) (load-path)))
               (_%dirs199750%_
                (let ((_%user-libpath199746%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath199746%_
                      (let ((_%user-libpath199748%_
                             (path-expand '"lib" _%user-libpath199746%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath199748%_ _%dirs199744%_))
                            _%dirs199744%_
                            (cons _%user-libpath199748%_ _%dirs199744%_)))
                      _%dirs199744%_)))
               (_%dirs199760%_
                (let ((_%$e199752%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e199752%_
                      ((lambda (_%g199754199756%_)
                         (cons _%g199754199756%_ _%dirs199750%_))
                       _%$e199752%_)
                      _%dirs199750%_)))
               (_%dirs199766%_
                (let ((__tmp200665
                       (lambda (_%g199761199763%_)
                         (path-expand '"static" _%g199761199763%_))))
                  (declare (not safe))
                  (##map __tmp200665 _%dirs199760%_))))
          (let _%lp199769%_ ((_%rest199771%_ _%dirs199766%_))
            (let* ((_%rest199772199780%_ _%rest199771%_)
                   (_%else199774199788%_
                    (lambda ()
                      (let ((__tmp200666
                             (##structure-ref
                              _%ctx199738%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp200666
                         _%scm199742%_))))
                   (_%K199776199796%_
                    (lambda (_%rest199791%_ _%dir199792%_)
                      (let ((_%path199794%_
                             (path-expand _%scm199742%_ _%dir199792%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path199794%_))
                            _%path199794%_
                            (_%lp199769%_ _%rest199791%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest199772199780%_))
                  (let ((_%hd199777199799%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199772199780%_)))
                        (_%tl199778199801%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199772199780%_))))
                    (let* ((_%dir199804%_ _%hd199777199799%_)
                           (_%rest199806%_ _%tl199778199801%_))
                      (_%K199776199796%_ _%rest199806%_ _%dir199804%_)))
                  (_%else199774199788%_)))))))
    (define gxc#file-empty?
      (lambda (_%path199736%_)
        (zero? (let ((__tmp200667 (file-info _%path199736%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp200667)))))
    (define gxc#compile-top-module
      (lambda (_%ctx199732%_)
        (let ((__tmp200671
               (lambda ()
                 (let ((__tmp200672
                        (##structure-ref
                         _%ctx199732%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp200672))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp200673
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx199732%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp200673))
                     '#!void)
                 (gxc#collect-bindings _%ctx199732%_)
                 (gxc#compile-runtime-code _%ctx199732%_)
                 (gxc#compile-meta-code _%ctx199732%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx199732%_)
                     '#!void)))
              (__tmp200670
               (let ((__obj200594
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj200594))
                 __obj200594))
              (__tmp200669 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp200668
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
           __tmp200671
           gx#current-expander-context
           _%ctx199732%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp200670
           gxc#current-compile-runtime-sections
           __tmp200669
           gxc#current-compile-runtime-names
           __tmp200668))))
    (define gxc#collect-bindings
      (lambda (_%ctx199730%_)
        (let ((__tmp200674
               (##structure-ref _%ctx199730%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp200674))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx199678%_)
        (letrec ((_%compile1199680%_
                  (lambda (_%ctx199719%_)
                    (let* ((_%code199721%_
                            (##structure-ref
                             _%ctx199719%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm199725%_
                            (let ((_%idstr199723%_
                                   (let ((__tmp200675
                                          (##structure-ref
                                           _%ctx199719%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp200675))))
                              (declare (not safe))
                              (##string-append _%idstr199723%_ '"~0")))
                           (_%rtc?199727%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code199721%_))))
                      (if _%rtc?199727%_
                          (let ((__tmp200676
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp200676
                             _%ctx199719%_
                             _%rtm199725%_))
                          '#!void)
                      (_%generate-runtime-code199682%_
                       _%ctx199719%_
                       _%code199721%_
                       (if _%rtc?199727%_ _%rtm199725%_ '#f)))))
                 (_%context-timestamp199681%_
                  (lambda (_%ctx199717%_)
                    (let ((__tmp200677
                           (let ((__tmp200678
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx199717%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp200678 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp200677))))
                 (_%generate-runtime-code199682%_
                  (lambda (_%ctx199689%_ _%code199690%_ _%rtm199691%_)
                    (let* ((_%runtime-code?199693%_ (if _%rtm199691%_ '#t '#f))
                           (_%lifts199695%_ (box '()))
                           (_%runtime-code199698%_
                            (if _%runtime-code?199693%_
                                (let ((__tmp200681
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code199690%_))))
                                      (__tmp200680
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp200679
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp200681
                                   gx#current-expander-context
                                   _%ctx199689%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts199695%_
                                   gxc#current-compile-marks
                                   __tmp200680
                                   gxc#current-compile-identifiers
                                   __tmp200679))
                                '#f))
                           (_%runtime-code199700%_
                            (if _%runtime-code?199693%_
                                (if (null? (unbox _%lifts199695%_))
                                    _%runtime-code199698%_
                                    (cons 'begin
                                          (let ((__tmp200683
                                                 (cons _%runtime-code199698%_
                                                       '()))
                                                (__tmp200682
                                                 (reverse (unbox _%lifts199695%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp200683
                                             __tmp200682))))
                                '#f))
                           (_%runtime-code199702%_
                            (if _%runtime-code?199693%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp199681%_
                                                         _%ctx199689%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code199700%_ '())))
                                '#f))
                           (_%loader-code199705%_
                            (let ((__tmp200684
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code199690%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp200684
                               gx#current-expander-context
                               _%ctx199689%_)))
                           (_%loader-code199707%_
                            (cons 'begin
                                  (cons _%loader-code199705%_
                                        (cons (if _%runtime-code?199693%_
                                                  (cons 'load-module
                                                        (cons _%rtm199691%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0199709%_
                            (gxc#compile-output-file _%ctx199689%_ '0 '".scm"))
                           (_%scmrt199711%_
                            (gxc#compile-output-file
                             _%ctx199689%_
                             '#f
                             '".scm"))
                           (_%scms199713%_
                            (gxc#compile-static-output-file _%ctx199689%_)))
                      (if _%runtime-code?199693%_
                          (gxc#compile-scm-file__0
                           _%scm0199709%_
                           _%runtime-code199702%_)
                          '#!void)
                      (let ((__tmp200685
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt199711%_
                                _%loader-code199707%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp200685
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms199713%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms199713%_))
                          '#!void)
                      (if _%runtime-code?199693%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0199709%_ _%scms199713%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms199713%_ void)))))))
          (let* ((_%all-modules199684%_
                  (cons _%ctx199678%_ (gxc#lift-nested-modules _%ctx199678%_)))
                 (__tmp200686
                  (lambda (_%ctx199686%_)
                    (let ((__tmp200687
                           (lambda () (_%compile1199680%_ _%ctx199686%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp200687
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp200686 _%all-modules199684%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx199578%_)
        (letrec ((_%compile-ssi199580%_
                  (lambda (_%code199646%_)
                    (let* ((_%path199648%_
                            (gxc#compile-output-file
                             _%ctx199578%_
                             '#f
                             '".ssi"))
                           (_%prelude199660%_
                            (let* ((_%super199650%_
                                    (##structure-ref
                                     _%ctx199578%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e199652%_
                                    (##structure-ref
                                     _%super199650%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e199652%_
                                  ((lambda (_%g199654199656%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g199654199656%_)))
                                   _%$e199652%_)
                                  ':<root>)))
                           (_%ns199662%_
                            (##structure-ref
                             _%ctx199578%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr199664%_
                            (symbol->string
                             (##structure-ref
                              _%ctx199578%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg199672%_
                            (let ((_%$e199666%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr199664%_ '#\/))))
                              (if _%$e199666%_
                                  ((lambda (_%x199669%_)
                                     (let ((__tmp200688
                                            (substring
                                             _%idstr199664%_
                                             '0
                                             _%x199669%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp200688)))
                                   _%$e199666%_)
                                  '#f)))
                           (_%rt199674%_
                            (let ((__tmp200689
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp200689 _%ctx199578%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path199648%_))
                      (gxc#with-output-to-scheme-file
                       _%path199648%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude199660%_))
                         (if _%pkg199672%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg199672%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns199662%_))
                         (newline)
                         (pretty-print _%code199646%_)
                         (if _%rt199674%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt199674%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi199581%_
                  (lambda (_%part199586%_)
                    (let* ((_%part199587199600%_ _%part199586%_)
                           (_%E199589199604%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part199587199600%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K199590199615%_
                            (lambda (_%code199607%_
                                     _%n199608%_
                                     _%phi199609%_
                                     _%phi-ctx199610%_)
                              (let ((_%code199613%_
                                     (let ((__tmp200690
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code199607%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp200690
                                        gx#current-expander-context
                                        _%phi-ctx199610%_
                                        gx#current-expander-phi
                                        _%phi199609%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx199578%_
                                  _%n199608%_
                                  '".scm")
                                 _%code199613%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part199587199600%_))
                          (let ((_%hd199591199618%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part199587199600%_)))
                                (_%tl199592199620%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part199587199600%_))))
                            (let ((_%phi-ctx199623%_ _%hd199591199618%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199592199620%_))
                                  (let ((_%hd199593199625%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199592199620%_)))
                                        (_%tl199594199627%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199592199620%_))))
                                    (let ((_%phi199630%_ _%hd199593199625%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl199594199627%_))
                                          (let ((_%hd199595199632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl199594199627%_)))
                                                (_%tl199596199634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl199594199627%_))))
                                            (let ((_%n199637%_
                                                   _%hd199595199632%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl199596199634%_))
                                                  (let ((_%hd199597199639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl199596199634%_)))
                                                        (_%tl199598199641%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl199596199634%_))))
                                                    (let ((_%code199644%_
                                                           _%hd199597199639%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl199598199641%_))
                                                          (_%K199590199615%_
                                                           _%code199644%_
                                                           _%n199637%_
                                                           _%phi199630%_
                                                           _%phi-ctx199623%_)
                                                          (_%E199589199604%_))))
                                                  (_%E199589199604%_))))
                                          (_%E199589199604%_))))
                                  (_%E199589199604%_))))
                          (_%E199589199604%_))))))
          (let ((_g200691_ (gxc#generate-meta-code _%ctx199578%_)))
            (begin
              (let ((_g200692_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g200691_)
                           (##vector-length _g200691_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g200692_ 2)))
                    (error "Context expects 2 values" _g200692_)))
              (let ((_%ssi-code199583%_
                     (let () (declare (not safe)) (##vector-ref _g200691_ 0)))
                    (_%phi-code199584%_
                     (let () (declare (not safe)) (##vector-ref _g200691_ 1))))
                (begin
                  (_%compile-ssi199580%_ _%ssi-code199583%_)
                  (for-each _%compile-phi199581%_ _%phi-code199584%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx199560%_)
        (let* ((_%path199562%_
                (gxc#compile-output-file _%ctx199560%_ '#f '".ssxi.ss"))
               (_%code199564%_
                (let ((__tmp200693
                       (##structure-ref
                        _%ctx199560%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp200693)))
               (_%idstr199566%_
                (symbol->string
                 (##structure-ref
                  _%ctx199560%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg199574%_
                (let ((_%$e199568%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr199566%_ '#\/))))
                  (if _%$e199568%_
                      ((lambda (_%x199571%_)
                         (let ((__tmp200694
                                (substring _%idstr199566%_ '0 _%x199571%_)))
                           (declare (not safe))
                           (##string->symbol __tmp200694)))
                       _%$e199568%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path199562%_))
          (gxc#with-output-to-scheme-file
           _%path199562%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg199574%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg199574%_))
                 '#!void)
             (newline)
             (pretty-print _%code199564%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx199553%_)
        (let* ((_%state199555%_
                (let ((__obj200595
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj200595 _%ctx199553%_))
                  __obj200595))
               (_%ssi-code199557%_
                (let ((__tmp200695
                       (##structure-ref
                        _%ctx199553%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state199555%_
                   __tmp200695))))
          (values _%ssi-code199557%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state199555%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx199546%_)
        (let ((_%lifts199548%_ (box '())))
          (let ((__tmp200698
                 (lambda ()
                   (let ((_%code199551%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx199546%_))))
                     (if (null? (unbox _%lifts199548%_))
                         _%code199551%_
                         (cons 'begin
                               (let ((__tmp200700 (cons _%code199551%_ '()))
                                     (__tmp200699
                                      (reverse (unbox _%lifts199548%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp200700 __tmp200699)))))))
                (__tmp200697
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp200696
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200698
             gxc#current-compile-lift
             _%lifts199548%_
             gxc#current-compile-marks
             __tmp200697
             gxc#current-compile-identifiers
             __tmp200696)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx199542%_)
        (let ((_%modules199544%_ (box '())))
          (let ((__tmp200701
                 (##structure-ref _%ctx199542%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules199544%_ __tmp200701))
          (reverse (unbox _%modules199544%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path199522%_ _%code199523%_ _%phi?199524%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path199522%_))
        (gxc#with-output-to-scheme-file
         _%path199522%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp200702
                                           (if _%phi?199524%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp200702)))))))
           (pretty-print _%code199523%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it199528%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path199522%_ _%phi?199524%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp200703
                         (cons 'compile-file (cons _%path199522%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it199528%_ __tmp200703))
                  (_%compile-it199528%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path199533%_ _%code199534%_)
        (let ((_%phi?199536%_ '#f))
          (gxc#compile-scm-file__%
           _%path199533%_
           _%code199534%_
           _%phi?199536%_))))
    (define gxc#compile-scm-file
      (lambda _g200705_
        (let ((_g200704_ (let () (declare (not safe)) (##length _g200705_))))
          (cond ((let () (declare (not safe)) (##fx= _g200704_ 2))
                 (apply gxc#compile-scm-file__0 _g200705_))
                ((let () (declare (not safe)) (##fx= _g200704_ 3))
                 (apply gxc#compile-scm-file__% _g200705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g200705_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?199423%_)
        (let _%lp199425%_ ((_%rest199427%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts199428%_ '()))
          (let* ((_%rest199429199449%_ _%rest199427%_)
                 (_%else199433199457%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts199428%_)))
                        (reverse _%opts199428%_)))))
            (let ((_%K199443199500%_
                   (lambda (_%rest199498%_)
                     (_%lp199425%_ _%rest199498%_ _%opts199428%_)))
                  (_%K199438199482%_
                   (lambda (_%rest199480%_)
                     (_%lp199425%_ _%rest199480%_ _%opts199428%_)))
                  (_%K199435199464%_
                   (lambda (_%rest199461%_ _%opt199462%_)
                     (_%lp199425%_
                      _%rest199461%_
                      (cons _%opt199462%_ _%opts199428%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest199429199449%_))
                  (let ((_%tl199445199505%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199429199449%_)))
                        (_%hd199444199503%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199429199449%_))))
                    (if (equal? _%hd199444199503%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl199445199505%_))
                            (let* ((_%tl199447199508%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl199445199505%_)))
                                   (_%rest199511%_ _%tl199447199508%_))
                              (_%K199443199500%_ _%rest199511%_))
                            (let ((_%opt199472%_ _%hd199444199503%_)
                                  (_%rest199474%_ _%tl199445199505%_))
                              (_%K199435199464%_
                               _%rest199474%_
                               _%opt199472%_)))
                        (if (equal? _%hd199444199503%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl199445199505%_))
                                (let* ((_%tl199442199490%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl199445199505%_)))
                                       (_%rest199493%_ _%tl199442199490%_))
                                  (_%K199438199482%_ _%rest199493%_))
                                (let ((_%opt199472%_ _%hd199444199503%_)
                                      (_%rest199474%_ _%tl199445199505%_))
                                  (_%K199435199464%_
                                   _%rest199474%_
                                   _%opt199472%_)))
                            (let ((_%opt199472%_ _%hd199444199503%_)
                                  (_%rest199474%_ _%tl199445199505%_))
                              (_%K199435199464%_
                               _%rest199474%_
                               _%opt199472%_)))))
                  (_%else199433199457%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?199517%_ '#f)) (gxc#gsc-link-options__% _%phi?199517%_))))
    (define gxc#gsc-link-options
      (lambda _g200707_
        (let ((_g200706_ (let () (declare (not safe)) (##length _g200707_))))
          (cond ((let () (declare (not safe)) (##fx= _g200706_ 0))
                 (apply gxc#gsc-link-options__0 _g200707_))
                ((let () (declare (not safe)) (##fx= _g200706_ 1))
                 (apply gxc#gsc-link-options__% _g200707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g200707_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords199272%_ _%static?199268199273%_ _%phi?199275%_)
        (let ((_%static?199277%_
               (if (eq? _%static?199268199273%_ absent-value)
                   '#f
                   _%static?199268199273%_)))
          (if _%phi?199275%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp199279%_ ((_%rest199281%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts199282%_ '()))
                (let* ((_%rest199283199309%_ _%rest199281%_)
                       (_%else199288199317%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts199282%_)))
                              (reverse! _%opts199282%_)))))
                  (let ((_%K199303199380%_
                         (lambda (_%rest199377%_ _%opt199378%_)
                           (if _%static?199277%_
                               (_%lp199279%_
                                _%rest199377%_
                                (cons _%opt199378%_
                                      (cons '"-cc-options" _%opts199282%_)))
                               (_%lp199279%_ _%rest199377%_ _%opts199282%_))))
                        (_%K199298199357%_
                         (lambda (_%rest199354%_ _%opt199355%_)
                           (_%lp199279%_
                            _%rest199354%_
                            (cons _%opt199355%_
                                  (cons '"-cc-options" _%opts199282%_)))))
                        (_%K199293199337%_
                         (lambda (_%rest199335%_)
                           (_%lp199279%_ _%rest199335%_ _%opts199282%_)))
                        (_%K199290199323%_
                         (lambda (_%rest199321%_)
                           (_%lp199279%_ _%rest199321%_ _%opts199282%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest199283199309%_))
                        (let ((_%tl199305199385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest199283199309%_)))
                              (_%hd199304199383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest199283199309%_))))
                          (if (equal? _%hd199304199383%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199305199385%_))
                                  (let ((_%tl199307199390%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199305199385%_)))
                                        (_%hd199306199388%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199305199385%_))))
                                    (if (equal? _%hd199306199388%_ '"-Bstatic")
                                        (let ((_%opt199393%_
                                               _%hd199306199388%_)
                                              (_%rest199395%_
                                               _%tl199307199390%_))
                                          (_%K199303199380%_
                                           _%rest199395%_
                                           _%opt199393%_))
                                        (let ((_%opt199370%_
                                               _%hd199306199388%_)
                                              (_%rest199372%_
                                               _%tl199307199390%_))
                                          (_%K199298199357%_
                                           _%rest199372%_
                                           _%opt199370%_))))
                                  (let ((_%rest199329%_ _%tl199305199385%_))
                                    (_%K199290199323%_ _%rest199329%_)))
                              (if (equal? _%hd199304199383%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199305199385%_))
                                      (let* ((_%tl199297199345%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199305199385%_)))
                                             (_%rest199348%_
                                              _%tl199297199345%_))
                                        (_%K199293199337%_ _%rest199348%_))
                                      (let ((_%rest199329%_
                                             _%tl199305199385%_))
                                        (_%K199290199323%_ _%rest199329%_)))
                                  (let ((_%rest199329%_ _%tl199305199385%_))
                                    (_%K199290199323%_ _%rest199329%_)))))
                        (_%else199288199317%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords199400%_ _%static?199268199401%_)
        (let ((_%phi?199403%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords199400%_
           _%static?199268199401%_
           _%phi?199403%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g200709_
        (let ((_g200708_ (let () (declare (not safe)) (##length _g200709_))))
          (cond ((let () (declare (not safe)) (##fx= _g200708_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g200709_))
                ((let () (declare (not safe)) (##fx= _g200708_ 3))
                 (apply gxc#gsc-cc-options__%__% _g200709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g200709_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords199412%_ . _%args199413%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords199412%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199412%_
                  'static:
                  absent-value))
               _%args199413%_)))
    (define gxc#gsc-cc-options
      (lambda _%args199269199419%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args199269199419%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords199117%_ _%static?199113199118%_ _%phi?199120%_)
        (let ((_%static?199122%_
               (if (eq? _%static?199113199118%_ absent-value)
                   '#f
                   _%static?199113199118%_)))
          (if _%phi?199120%_
              '()
              (let _%lp199124%_ ((_%rest199126%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts199127%_ '()))
                (let* ((_%rest199128199154%_ _%rest199126%_)
                       (_%else199133199162%_
                        (lambda () (reverse! _%opts199127%_))))
                  (let ((_%K199148199225%_
                         (lambda (_%rest199222%_ _%opt199223%_)
                           (if _%static?199122%_
                               (_%lp199124%_
                                _%rest199222%_
                                (cons _%opt199223%_
                                      (cons '"-ld-options" _%opts199127%_)))
                               (_%lp199124%_ _%rest199222%_ _%opts199127%_))))
                        (_%K199143199202%_
                         (lambda (_%rest199199%_ _%opt199200%_)
                           (_%lp199124%_
                            _%rest199199%_
                            (cons _%opt199200%_
                                  (cons '"-ld-options" _%opts199127%_)))))
                        (_%K199138199182%_
                         (lambda (_%rest199180%_)
                           (_%lp199124%_ _%rest199180%_ _%opts199127%_)))
                        (_%K199135199168%_
                         (lambda (_%rest199166%_)
                           (_%lp199124%_ _%rest199166%_ _%opts199127%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest199128199154%_))
                        (let ((_%tl199150199230%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest199128199154%_)))
                              (_%hd199149199228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest199128199154%_))))
                          (if (equal? _%hd199149199228%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199150199230%_))
                                  (let ((_%tl199152199235%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199150199230%_)))
                                        (_%hd199151199233%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199150199230%_))))
                                    (if (equal? _%hd199151199233%_ '"-static")
                                        (let ((_%opt199238%_
                                               _%hd199151199233%_)
                                              (_%rest199240%_
                                               _%tl199152199235%_))
                                          (_%K199148199225%_
                                           _%rest199240%_
                                           _%opt199238%_))
                                        (let ((_%opt199215%_
                                               _%hd199151199233%_)
                                              (_%rest199217%_
                                               _%tl199152199235%_))
                                          (_%K199143199202%_
                                           _%rest199217%_
                                           _%opt199215%_))))
                                  (let ((_%rest199174%_ _%tl199150199230%_))
                                    (_%K199135199168%_ _%rest199174%_)))
                              (if (equal? _%hd199149199228%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199150199230%_))
                                      (let* ((_%tl199142199190%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199150199230%_)))
                                             (_%rest199193%_
                                              _%tl199142199190%_))
                                        (_%K199138199182%_ _%rest199193%_))
                                      (let ((_%rest199174%_
                                             _%tl199150199230%_))
                                        (_%K199135199168%_ _%rest199174%_)))
                                  (let ((_%rest199174%_ _%tl199150199230%_))
                                    (_%K199135199168%_ _%rest199174%_)))))
                        (_%else199133199162%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords199245%_ _%static?199113199246%_)
        (let ((_%phi?199248%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords199245%_
           _%static?199113199246%_
           _%phi?199248%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g200711_
        (let ((_g200710_ (let () (declare (not safe)) (##length _g200711_))))
          (cond ((let () (declare (not safe)) (##fx= _g200710_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g200711_))
                ((let () (declare (not safe)) (##fx= _g200710_ 3))
                 (apply gxc#gsc-ld-options__%__% _g200711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g200711_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords199257%_ . _%args199258%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords199257%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199257%_
                  'static:
                  absent-value))
               _%args199258%_)))
    (define gxc#gsc-ld-options
      (lambda _%args199114199264%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args199114199264%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir199108%_)
        (let ((_%user-staticdir199110%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir199108%_
                       '" -I "
                       _%user-staticdir199110%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp199020%_ ((_%rest199022%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts199023%_ '()))
          (let* ((_%rest199024199044%_ _%rest199022%_)
                 (_%else199028199052%_ (lambda () _%opts199023%_)))
            (let ((_%K199038199095%_
                   (lambda (_%rest199093%_)
                     (_%lp199020%_ _%rest199093%_ _%opts199023%_)))
                  (_%K199033199073%_
                   (lambda (_%rest199070%_ _%opt199071%_)
                     (_%lp199020%_
                      _%rest199070%_
                      (let ((__tmp200712
                             (let ((__tmp200713
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt199071%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp200713))))
                        (declare (not safe))
                        (##append _%opts199023%_ __tmp200712)))))
                  (_%K199030199058%_
                   (lambda (_%rest199056%_)
                     (_%lp199020%_ _%rest199056%_ _%opts199023%_))))
              (if (let () (declare (not safe)) (##pair? _%rest199024199044%_))
                  (let ((_%tl199040199100%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199024199044%_)))
                        (_%hd199039199098%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199024199044%_))))
                    (if (equal? _%hd199039199098%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl199040199100%_))
                            (let* ((_%tl199042199103%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl199040199100%_)))
                                   (_%rest199106%_ _%tl199042199103%_))
                              (_%K199038199095%_ _%rest199106%_))
                            (let ((_%rest199064%_ _%tl199040199100%_))
                              (_%K199030199058%_ _%rest199064%_)))
                        (if (equal? _%hd199039199098%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl199040199100%_))
                                (let ((_%tl199037199083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl199040199100%_)))
                                      (_%hd199036199081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl199040199100%_))))
                                  (let ((_%opt199086%_ _%hd199036199081%_)
                                        (_%rest199088%_ _%tl199037199083%_))
                                    (_%K199033199073%_
                                     _%rest199088%_
                                     _%opt199086%_)))
                                (let ((_%rest199064%_ _%tl199040199100%_))
                                  (_%K199030199058%_ _%rest199064%_)))
                            (let ((_%rest199064%_ _%tl199040199100%_))
                              (_%K199030199058%_ _%rest199064%_)))))
                  (_%else199028199052%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str199017%_)
        (not (let () (declare (not safe)) (string-empty? _%str199017%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path199010%_ _%phi?199011%_)
        (let ((_%gsc-link-opts199013%_
               (gxc#gsc-link-options__% _%phi?199011%_))
              (_%gsc-cc-opts199014%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?199011%_))
              (_%gsc-ld-opts199015%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?199011%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp200714
                  (let ((__tmp200715
                         (let ((__tmp200716 (cons _%path199010%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp200716
                            _%gsc-link-opts199013%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200715 _%gsc-ld-opts199015%_))))
             (declare (not safe))
             (__foldr1 cons __tmp200714 _%gsc-cc-opts199014%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx198976%_ _%n198977%_ _%ext198978%_)
        (letrec ((_%module-relative-path198980%_
                  (lambda (_%ctx199008%_)
                    (path-strip-directory
                     (let ((__tmp200717
                            (##structure-ref
                             _%ctx199008%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp200717)))))
                 (_%module-source-directory198981%_
                  (lambda (_%ctx199004%_)
                    (path-directory
                     (let ((_%mpath199006%_
                            (##structure-ref
                             _%ctx199004%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath199006%_)
                           _%mpath199006%_
                           (last _%mpath199006%_))))))
                 (_%section-string198982%_
                  (lambda (_%n198998%_)
                    (if (number? _%n198998%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n198998%_))
                        (if (symbol? _%n198998%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n198998%_))
                            (if (string? _%n198998%_)
                                _%n198998%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n198998%_)))))))
                 (_%file-name198983%_
                  (lambda (_%path198996%_)
                    (if _%n198977%_
                        (string-append
                         _%path198996%_
                         '"~"
                         (_%section-string198982%_ _%n198977%_)
                         _%ext198978%_)
                        (string-append _%path198996%_ _%ext198978%_))))
                 (_%file-path198984%_
                  (lambda ()
                    (let ((_%$e198990%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e198990%_
                          ((lambda (_%outdir198993%_)
                             (path-expand
                              (_%file-name198983%_
                               (let ((__tmp200718
                                      (##structure-ref
                                       _%ctx198976%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp200718)))
                              _%outdir198993%_))
                           _%$e198990%_)
                          (path-expand
                           (_%file-name198983%_
                            (_%module-relative-path198980%_ _%ctx198976%_))
                           (_%module-source-directory198981%_
                            _%ctx198976%_)))))))
          (let ((_%path198986%_ (_%file-path198984%_)))
            (let ((__tmp200719
                   (lambda ()
                     (let ((__tmp200720 (path-directory _%path198986%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp200720)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp200719))
            _%path198986%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx198957%_)
        (letrec ((_%file-name198959%_
                  (lambda (_%id198974%_)
                    (let ((__tmp200721 (gxc#static-module-name _%id198974%_)))
                      (declare (not safe))
                      (##string-append __tmp200721 '".scm"))))
                 (_%file-path198960%_
                  (lambda ()
                    (let* ((_%file198966%_
                            (_%file-name198959%_
                             (##structure-ref
                              _%ctx198957%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e198968%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e198968%_
                          ((lambda (_%outdir198971%_)
                             (path-expand
                              _%file198966%_
                              (path-expand '"static" _%outdir198971%_)))
                           _%$e198968%_)
                          (path-expand _%file198966%_ '"static"))))))
          (let ((_%path198962%_ (_%file-path198960%_)))
            (let ((__tmp200722
                   (lambda ()
                     (let ((__tmp200723 (path-directory _%path198962%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp200723)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp200722))
            _%path198962%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx198950%_ _%opts198951%_)
        (let ((_%$e198953%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts198951%_))))
          (if _%$e198953%_
              _%$e198953%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx198950%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr198940%_)
        (if (string? _%idstr198940%_)
            (let* ((_%str198943%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr198940%_)))
                   (_%strs198945%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str198943%_ '#\/))))
              (declare (not safe))
              (string-join _%strs198945%_ '"__"))
            (if (symbol? _%idstr198940%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr198940%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr198940%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp200724
               (let ((__tmp200725 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp200725 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp200724))))
    (define gxc#invoke__%
      (lambda (_%@@keywords198904%_
               _%stdout-redirection198900198905%_
               _%stderr-redirection198901198907%_
               _%program198909%_
               _%args198910%_)
        (let* ((_%stdout-redirection198912%_
                (if (eq? _%stdout-redirection198900198905%_ absent-value)
                    '#f
                    _%stdout-redirection198900198905%_))
               (_%stderr-redirection198914%_
                (if (eq? _%stderr-redirection198901198907%_ absent-value)
                    '#f
                    _%stderr-redirection198901198907%_)))
          (let ((__tmp200726 (cons _%program198909%_ _%args198910%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp200726))
          (let* ((_%proc198916%_
                  (open-process
                   (cons 'path:
                         (cons _%program198909%_
                               (cons 'arguments:
                                     (cons _%args198910%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection198912%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection198914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output198921%_
                  (if (or _%stdout-redirection198912%_
                          _%stderr-redirection198914%_)
                      (read-line _%proc198916%_ '#f)
                      '#f))
                 (_%status198924%_ (process-status _%proc198916%_)))
            (let () (declare (not safe)) (##close-port _%proc198916%_))
            (if (zero? _%status198924%_)
                '#!void
                (begin
                  (display _%output198921%_)
                  (let ((__tmp200727 (cons _%program198909%_ _%args198910%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp200727
                     _%status198924%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords198929%_ . _%args198930%_)
        (apply gxc#invoke__%
               _%@@keywords198929%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198929%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198929%_
                  'stderr-redirection:
                  absent-value))
               _%args198930%_)))
    (define gxc#invoke
      (lambda _%args198902198936%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args198902198936%_)))))
