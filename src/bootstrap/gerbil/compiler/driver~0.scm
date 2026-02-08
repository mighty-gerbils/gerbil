(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770513304)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp256804 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp256804))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp256805 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp256805))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path256661%_ _%fun256662%_)
        (with-output-to-file
         (cons 'path: (cons _%path256661%_ gxc#scheme-file-settings))
         _%fun256662%_)))
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
      (lambda (_%gerbil-libdir256656%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir256656%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path256654%_)
        (let ((__tmp256806 (object->string _%path256654%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp256806 '")"))))
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
      (lambda (_%dir256652%_) (delete-file-or-directory _%dir256652%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath256595%_ _%opts256596%_)
        (if (string? _%srcpath256595%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath256595%_)))
        (let* ((_%outdir256598%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts256596%_)))
               (_%invoke-gsc?256600%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts256596%_)))
               (_%target256605%_
                (let ((_%$e256602%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts256596%_))))
                  (if _%$e256602%_ _%$e256602%_ 'C)))
               (_%gsc-options256610%_
                (append (cons '"-target"
                              (cons (symbol->string _%target256605%_) '()))
                        (let ((_%$e256607%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts256596%_))))
                          (if _%$e256607%_ _%$e256607%_ '()))))
               (_%keep-scm?256612%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts256596%_)))
               (_%verbosity256614%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts256596%_)))
               (_%optimize256616%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts256596%_)))
               (_%debug256618%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts256596%_)))
               (_%gen-ssxi256620%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts256596%_)))
               (_%parallel?256622%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts256596%_))))
          (if _%outdir256598%_
              (let ((__tmp256807
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir256598%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp256807))
              '#!void)
          (if _%optimize256616%_
              (let ((__tmp256808
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp256808))
              '#!void)
          (let ((__tmp256809
                 (lambda ()
                   (let ((__tmp256810
                          (lambda ()
                            (let ((__tmp256811
                                   (lambda ()
                                     (let ((__tmp256812
                                            (lambda ()
                                              (let ((__tmp256813
                                                     (lambda ()
                                                       (let ((__tmp256814
                                                              (lambda ()
                                                                (let ((__tmp256815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp256816
                                        (lambda ()
                                          (let ((__tmp256817
                                                 (lambda ()
                                                   (let ((__tmp256819
                                                          (lambda ()
                                                            (let ((__tmp256821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp256823
                                    (lambda ()
                                      (let ((__tmp256824
                                             (lambda ()
                                               (let ((__tmp256825
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath256595%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp256826
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath256595%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp256826))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp256825
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp256824
                                         gxc#current-compile-parallel
                                         _%parallel?256622%_))))
                                   (__tmp256822
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp256823
                                gxc#current-compile-identifiers
                                __tmp256822))))
                          (__tmp256820
                           (cons (cons 'compile-module
                                       (cons _%srcpath256595%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp256821
                       gxc#current-compile-context
                       __tmp256820))))
                 (__tmp256818 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp256819
                                                      gxc#current-compile-timestamp
                                                      __tmp256818)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp256817
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi256620%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp256816
                                    gxc#current-compile-debug
                                    _%debug256618%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp256815
                           gxc#current-compile-optimize
                           _%optimize256616%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp256814
                  gxc#current-compile-verbose
                  _%verbosity256614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp256813
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?256612%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp256812
                                        gxc#current-compile-gsc-options
                                        _%gsc-options256610%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp256811
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?256600%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp256810
                      gx#current-compilation-target
                      _%target256605%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp256809
             gxc#current-compile-output-dir
             _%outdir256598%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath256645%_)
        (let ((_%opts256647%_ '()))
          (gxc#compile-module__% _%srcpath256645%_ _%opts256647%_))))
    (define gxc#compile-module
      (lambda _g256827_
        (let ((_g256828_ (let () (declare (not safe)) (##length _g256827_))))
          (cond ((let () (declare (not safe)) (##fx= _g256828_ 1))
                 (apply gxc#compile-module__0 _g256827_))
                ((let () (declare (not safe)) (##fx= _g256828_ 2))
                 (apply gxc#compile-module__% _g256827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g256827_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath256544%_ _%opts256545%_)
        (if (string? _%srcpath256544%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath256544%_)))
        (let* ((_%outdir256547%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts256545%_)))
               (_%invoke-gsc?256549%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts256545%_)))
               (_%target256554%_
                (let ((_%$e256551%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts256545%_))))
                  (if _%$e256551%_ _%$e256551%_ 'C)))
               (_%gsc-options256559%_
                (append (cons '"-target"
                              (cons (symbol->string _%target256554%_) '()))
                        (let ((_%$e256556%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts256545%_))))
                          (if _%$e256556%_ _%$e256556%_ '()))))
               (_%keep-scm?256561%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts256545%_)))
               (_%verbosity256563%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts256545%_)))
               (_%debug256565%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts256545%_)))
               (_%parallel?256567%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts256545%_))))
          (if _%outdir256547%_
              (let ((__tmp256829
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir256547%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp256829))
              '#!void)
          (let ((__tmp256830
                 (lambda ()
                   (let ((__tmp256831
                          (lambda ()
                            (let ((__tmp256832
                                   (lambda ()
                                     (let ((__tmp256833
                                            (lambda ()
                                              (let ((__tmp256834
                                                     (lambda ()
                                                       (let ((__tmp256835
                                                              (lambda ()
                                                                (let ((__tmp256836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp256838
                                        (lambda ()
                                          (let ((__tmp256840
                                                 (lambda ()
                                                   (let ((__tmp256842
                                                          (lambda ()
                                                            (let ((__tmp256843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp256844
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath256544%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp256845
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath256544%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp256845))
                                       _%opts256545%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp256844
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp256843
                       gxc#current-compile-parallel
                       _%parallel?256567%_))))
                 (__tmp256841
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp256842
                                                      gxc#current-compile-identifiers
                                                      __tmp256841))))
                                                (__tmp256839
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath256544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp256840
                                             gxc#current-compile-context
                                             __tmp256839))))
                                       (__tmp256837 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp256838
                                    gxc#current-compile-timestamp
                                    __tmp256837)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp256836
                           gxc#current-compile-debug
                           _%debug256565%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp256835
                  gxc#current-compile-verbose
                  _%verbosity256563%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp256834
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?256561%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp256833
                                        gxc#current-compile-gsc-options
                                        _%gsc-options256559%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp256832
                               gx#current-compilation-target
                               _%target256554%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp256831
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?256549%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp256830
             gxc#current-compile-output-dir
             _%outdir256547%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath256587%_)
        (let ((_%opts256589%_ '()))
          (gxc#compile-exe__% _%srcpath256587%_ _%opts256589%_))))
    (define gxc#compile-exe
      (lambda _g256846_
        (let ((_g256847_ (let () (declare (not safe)) (##length _g256846_))))
          (cond ((let () (declare (not safe)) (##fx= _g256847_ 1))
                 (apply gxc#compile-exe__0 _g256846_))
                ((let () (declare (not safe)) (##fx= _g256847_ 2))
                 (apply gxc#compile-exe__% _g256846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g256846_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx256540%_ _%opts256541%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts256541%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx256540%_
             _%opts256541%_)
            (gxc#compile-executable-module/separate
             _%ctx256540%_
             _%opts256541%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx256266%_ _%opts256267%_)
        (letrec ((_%generate-stub256269%_
                  (lambda (_%builtin-modules256536%_)
                    (let ((_%mod-main256538%_
                           (gxc#find-runtime-symbol _%ctx256266%_ 'main)))
                      (let ((__tmp256848
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules256536%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp256848))
                      (let ((__tmp256849
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main256538%_
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
                        (##write __tmp256849))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts256270%_
                  (lambda (_%gerbil-libdir256534%_)
                    (let ((__tmp256850
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir256534%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp256850 read))))
                 (_%replace-extension256271%_
                  (lambda (_%path256531%_ _%ext256532%_)
                    (string-append
                     (path-strip-extension _%path256531%_)
                     _%ext256532%_)))
                 (_%replace-extension-with-c256272%_
                  (lambda (_%path256529%_)
                    (_%replace-extension256271%_ _%path256529%_ '".c")))
                 (_%replace-extension-with-object256273%_
                  (lambda (_%path256527%_)
                    (_%replace-extension256271%_
                     _%path256527%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?256274%_
                  (lambda (_%ctx256525%_)
                    (if (_%exclude-module?256276%_ _%ctx256525%_)
                        '#f
                        (not (_%libgerbil-module?256275%_ _%ctx256525%_)))))
                 (_%libgerbil-module?256275%_
                  (lambda (_%ctx256518%_)
                    (let ((_%id-str256520%_
                           (symbol->string
                            (##structure-ref
                             _%ctx256518%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?256276%_ _%id-str256520%_)
                          '#f
                          (let ((_%$e256522%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str256520%_))))
                            (if _%$e256522%_
                                _%$e256522%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str256520%_))))))))
                 (_%exclude-module?256276%_
                  (lambda (_%ctx-or-str256514%_)
                    (let ((_%str256516%_
                           (if (string? _%ctx-or-str256514%_)
                               _%ctx-or-str256514%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str256514%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str256516%_))))
                 (_%not-file-empty?256277%_
                  (lambda (_%path256512%_)
                    (not (gxc#file-empty? _%path256512%_))))
                 (_%fold-libgerbil-runtime-scm256278%_
                  (lambda (_%gerbil-staticdir256505%_ _%libgerbil-scm256506%_)
                    (let ((_%gerbil-runtime-scm256510%_
                           (let ((__tmp256851
                                  (lambda (_%rtm256508%_)
                                    (path-expand
                                     (let ((__tmp256852
                                            (let ((__tmp256853
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm256508%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp256853
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp256852 '".scm"))
                                     _%gerbil-staticdir256505%_))))
                             (declare (not safe))
                             (##map __tmp256851 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates256279%_
                       (append _%gerbil-runtime-scm256510%_
                               _%libgerbil-scm256506%_)))))
                 (_%remove-duplicates256279%_
                  (lambda (_%strlst256465%_)
                    (let _%loop256467%_ ((_%rest256469%_ _%strlst256465%_)
                                         (_%result256470%_ '()))
                      (let* ((_%rest256471256479%_ _%rest256469%_)
                             (_%else256473256487%_
                              (lambda () (reverse! _%result256470%_)))
                             (_%K256475256493%_
                              (lambda (_%rest256490%_ _%path256491%_)
                                (if (member _%path256491%_ _%result256470%_)
                                    (_%loop256467%_
                                     _%rest256490%_
                                     _%result256470%_)
                                    (_%loop256467%_
                                     _%rest256490%_
                                     (cons _%path256491%_
                                           _%result256470%_))))))
                        (if (pair? _%rest256471256479%_)
                            (let ((_%hd256476256496%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest256471256479%_)))
                                  (_%tl256477256498%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest256471256479%_))))
                              (let* ((_%path256501%_ _%hd256476256496%_)
                                     (_%rest256503%_ _%tl256477256498%_))
                                (_%K256475256493%_
                                 _%rest256503%_
                                 _%path256501%_)))
                            (_%else256473256487%_))))))
                 (_%compile-stub256280%_
                  (lambda (_%output-scm256287%_ _%output-bin256288%_)
                    (let* ((_%gerbil-home256290%_
                            (let ((__tmp256854
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp256854)))
                           (_%gerbil-libdir256292%_
                            (path-expand '"lib" _%gerbil-home256290%_))
                           (_%gerbil-staticdir256294%_
                            (path-expand '"static" _%gerbil-libdir256292%_))
                           (_%deps256296%_
                            (gxc#find-runtime-module-deps _%ctx256266%_))
                           (_%libgerbil-deps256298%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?256275%_
                               _%deps256296%_)))
                           (_%libgerbil-scm256300%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps256298%_)))
                           (_%libgerbil-scm256302%_
                            (_%fold-libgerbil-runtime-scm256278%_
                             _%gerbil-staticdir256294%_
                             _%libgerbil-scm256300%_))
                           (_%libgerbil-c256304%_
                            (map _%replace-extension-with-c256272%_
                                 _%libgerbil-scm256302%_))
                           (_%libgerbil-o256306%_
                            (map _%replace-extension-with-object256273%_
                                 _%libgerbil-scm256302%_))
                           (_%src-deps256308%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?256274%_
                               _%deps256296%_)))
                           (_%src-deps-scm256310%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps256308%_)))
                           (_%src-deps-scm256312%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?256277%_
                               _%src-deps-scm256310%_)))
                           (_%src-deps-scm256314%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm256312%_)))
                           (_%src-deps-c256316%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c256272%_
                                     _%src-deps-scm256314%_)))
                           (_%src-deps-o256318%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object256273%_
                                     _%src-deps-scm256314%_)))
                           (_%src-bin-scm256320%_
                            (gxc#find-static-module-file _%ctx256266%_))
                           (_%src-bin-scm256322%_
                            (path-expand _%src-bin-scm256320%_))
                           (_%src-bin-c256324%_
                            (_%replace-extension-with-c256272%_
                             _%src-bin-scm256322%_))
                           (_%src-bin-o256326%_
                            (_%replace-extension-with-object256273%_
                             _%src-bin-scm256322%_))
                           (_%output-bin256328%_
                            (path-expand _%output-bin256288%_))
                           (_%output-scm256330%_
                            (path-expand _%output-scm256287%_))
                           (_%output-c256332%_
                            (_%replace-extension-with-c256272%_
                             _%output-scm256330%_))
                           (_%output-o256334%_
                            (_%replace-extension-with-object256273%_
                             _%output-scm256330%_))
                           (_%output_-c256336%_
                            (_%replace-extension256271%_
                             _%output-scm256330%_
                             '"_.c"))
                           (_%output_-o256338%_
                            (_%replace-extension256271%_
                             _%output-scm256330%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts256340%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts256342%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts256344%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir256294%_))
                           (_%output-ld-opts256346%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts256348%_
                            (_%get-libgerbil-ld-opts256270%_
                             _%gerbil-libdir256292%_))
                           (_%rpath256350%_
                            (gxc#gerbil-rpath _%gerbil-libdir256292%_))
                           (_%builtin-modules256354%_
                            (_%remove-duplicates256279%_
                             (let ((__tmp256855
                                    (let ((__tmp256857
                                           (lambda (_%mod256352%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod256352%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp256856
                                           (cons _%ctx256266%_
                                                 _%deps256296%_)))
                                      (declare (not safe))
                                      (##map __tmp256857 __tmp256856))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp256855)))))
                      (letrec ((_%compile-obj256357%_
                                (lambda (_%scm-path256364%_ _%c-path256365%_)
                                  (let* ((_%o-path256367%_
                                          (_%replace-extension256271%_
                                           _%c-path256365%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock256369%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path256367%_
                                             '".lock")))
                                         (_%locked256371%_ '#f)
                                         (_%unlock256374%_
                                          (lambda ()
                                            (close-port _%locked256371%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock256369%_)))))
                                    (let _%retry256377%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock256369%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry256377%_))
                                          (begin
                                            (set! _%locked256371%_
                                                  (let* ((_%handler256380%_
                                                          false)
                                                         (_%thunk256384%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock256369%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler256389%_ _%handler256380%_)
                 (_%thunk256445%_ _%thunk256384%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler256389%_
                                                     _%thunk256445%_)))
                                            (if _%locked256371%_
                                                '#!void
                                                (_%retry256377%_)))))
                                    (let ((__tmp256859
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path256367%_)))
                                                     (not _%scm-path256364%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path256364%_
                                                        _%o-path256367%_)))
                                                 (let ((_%gsc-cc-opts256462%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp256860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp256861 (cons _%c-path256365%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp256861
                            _%gsc-static-opts256344%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp256860 _%gsc-cc-opts256462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp256858
                                           (lambda () (_%unlock256374%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp256859
                                       __tmp256858))))))
                        (let ((__tmp256862
                               (lambda ()
                                 (let ((__tmp256863
                                        (path-directory _%output-bin256328%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp256863)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp256862))
                        (gxc#with-output-to-scheme-file
                         _%output-scm256330%_
                         (lambda ()
                           (_%generate-stub256269%_
                            _%builtin-modules256354%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it256362%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp256864
                                                   (let ((__tmp256865
                                                          (let ((__tmp256866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm256322%_
                               (cons _%output-scm256330%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp256866 _%src-deps-scm256314%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp256865
                                                      _%libgerbil-c256304%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp256864
                                               _%gsc-link-opts256340%_))))
                                     (for-each
                                      _%compile-obj256357%_
                                      (let ((__tmp256867
                                             (cons _%src-bin-scm256322%_
                                                   (cons _%output-scm256330%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp256867
                                         _%src-deps-scm256314%_))
                                      (let ((__tmp256868
                                             (cons _%src-bin-c256324%_
                                                   (cons _%output-c256332%_
                                                         (cons _%output_-c256336%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp256868
                                         _%src-deps-c256316%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin256328%_
                                                        (let ((__tmp256869
                                                               (cons _%src-bin-o256326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o256334%_
                                   (cons _%output_-o256338%_
                                         (let ((__tmp256870
                                                (let ((__tmp256871
                                                       (let ((__tmp256873
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir256292%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts256348%_))))
                     (__tmp256872
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath256350%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp256873 __tmp256872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp256871
                                                   _%output-ld-opts256346%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp256870
                                            _%libgerbil-o256306%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp256869 _%src-deps-o256318%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp256874
                                            (cons _%output-c256332%_
                                                  (cons _%output_-c256336%_
                                                        (cons _%output-o256334%_
                                                              (cons _%output_-o256338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp256874)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it256362%_))
                                  (_%compile-it256362%_)))
                            '#!void))))))
          (let* ((_%output-bin256282%_
                  (gxc#compile-exe-output-file _%ctx256266%_ _%opts256267%_))
                 (_%output-scm256284%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin256282%_ '"__exe.scm"))))
            (_%compile-stub256280%_
             _%output-scm256284%_
             _%output-bin256282%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx256088%_ _%opts256089%_)
        (letrec ((_%reset-declare256091%_
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
                 (_%generate-stub256092%_
                  (lambda (_%deps256257%_)
                    (let ((_%mod-main256259%_
                           (gxc#find-runtime-symbol _%ctx256088%_ 'main))
                          (_%reset-decl256260%_ (_%reset-declare256091%_))
                          (_%user-decl256261%_ (_%user-declare256093%_)))
                      (for-each
                       (lambda (_%dep256263%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl256260%_))
                         (newline)
                         (if _%user-decl256261%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl256261%_))
                               (newline))
                             '#!void)
                         (let ((__tmp256875
                                (cons 'include (cons _%dep256263%_ '()))))
                           (declare (not safe))
                           (##write __tmp256875))
                         (newline))
                       _%deps256257%_)
                      (let ((__tmp256876
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main256259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp256876))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare256093%_
                  (lambda ()
                    (let* ((_%gsc-opts256162%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts256089%_)))
                           (_%gsc-prelude256164%_
                            (if _%gsc-opts256162%_
                                (member '"-prelude" _%gsc-opts256162%_)
                                '#f))
                           (_%gsc-prelude256166%_
                            (if _%gsc-prelude256164%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude256164%_)))
                                '#f)))
                      (let _%lp256169%_ ((_%rest256171%_
                                          (cons _%gsc-prelude256166%_ '()))
                                         (_%user-decls256172%_ '()))
                        (let* ((_%rest256173256181%_ _%rest256171%_)
                               (_%else256175256189%_
                                (lambda ()
                                  (if (null? _%user-decls256172%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls256172%_)))))
                               (_%K256177256245%_
                                (lambda (_%rest256192%_ _%expr256193%_)
                                  (let* ((_%expr256194256206%_ _%expr256193%_)
                                         (_%else256197256214%_
                                          (lambda ()
                                            (_%lp256169%_
                                             _%rest256192%_
                                             _%user-decls256172%_))))
                                    (let ((_%K256202256235%_
                                           (lambda (_%decls256233%_)
                                             (_%lp256169%_
                                              _%rest256192%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls256172%_
                                                 _%decls256233%_)))))
                                          (_%K256199256220%_
                                           (lambda (_%exprs256218%_)
                                             (_%lp256169%_
                                              (append _%exprs256218%_
                                                      _%rest256192%_)
                                              _%user-decls256172%_))))
                                      (if (pair? _%expr256194256206%_)
                                          (let ((_%tl256204256240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr256194256206%_)))
                                                (_%hd256203256238%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr256194256206%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd256203256238%_
                                                         'declare))
                                                (let ((_%decls256243%_
                                                       _%tl256204256240%_))
                                                  (_%K256202256235%_
                                                   _%decls256243%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd256203256238%_
                                                             'begin))
                                                    (let ((_%exprs256228%_
                                                           _%tl256204256240%_))
                                                      (_%K256199256220%_
                                                       _%exprs256228%_))
                                                    (_%else256197256214%_))))
                                          (_%else256197256214%_)))))))
                          (if (pair? _%rest256173256181%_)
                              (let ((_%hd256178256248%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest256173256181%_)))
                                    (_%tl256179256250%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest256173256181%_))))
                                (let* ((_%expr256253%_ _%hd256178256248%_)
                                       (_%rest256255%_ _%tl256179256250%_))
                                  (_%K256177256245%_
                                   _%rest256255%_
                                   _%expr256253%_)))
                              (_%else256175256189%_)))))))
                 (_%compile-stub256094%_
                  (lambda (_%output-scm256101%_ _%output-bin256102%_)
                    (let* ((_%gerbil-home256104%_
                            (let ((__tmp256877
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp256877)))
                           (_%gerbil-libdir256106%_
                            (path-expand '"lib" _%gerbil-home256104%_))
                           (_%runtime256108%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp256110%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home256104%_))
                           (_%include-gambit-sharp256112%_
                            (gxc#include-source _%gambit-sharp256110%_))
                           (_%bin-scm256114%_
                            (gxc#find-static-module-file _%ctx256088%_))
                           (_%deps256116%_
                            (gxc#find-runtime-module-deps _%ctx256088%_))
                           (_%deps256118%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps256116%_)))
                           (_%deps256123%_
                            (let ((__tmp256878
                                   (lambda (_%$obj256120%_)
                                     (not (gxc#file-empty? _%$obj256120%_)))))
                              (declare (not safe))
                              (##filter __tmp256878 _%deps256118%_)))
                           (_%deps256127%_
                            (let ((__tmp256879
                                   (lambda (_%f256125%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f256125%_
                                             _%runtime256108%_))))))
                              (declare (not safe))
                              (##filter __tmp256879 _%deps256123%_)))
                           (_%output-base256129%_
                            (let ((__tmp256880
                                   (path-strip-extension
                                    _%output-scm256101%_)))
                              (declare (not safe))
                              (##string-append __tmp256880)))
                           (_%output-c256131%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base256129%_ '".c")))
                           (_%output-o256133%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base256129%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_256135%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base256129%_ '"_.c")))
                           (_%output-o_256137%_
                            (let ((__tmp256881
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base256129%_
                               __tmp256881)))
                           (_%gsc-link-opts256139%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts256141%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts256143%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir256106%_)))
                           (_%output-ld-opts256145%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros256147%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp256112%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp256112%_
                                            '()))))
                           (_%gsc-link-opts256149%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts256139%_
                               _%gsc-gx-macros256147%_)))
                           (_%rpath256151%_
                            (gxc#gerbil-rpath _%gerbil-libdir256106%_))
                           (_%default-ld-options256153%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp256882
                             (lambda ()
                               (let ((__tmp256883
                                      (path-directory _%output-bin256102%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp256883)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp256882))
                      (gxc#with-output-to-scheme-file
                       _%output-scm256101%_
                       (lambda ()
                         (_%generate-stub256092%_
                          (let ((__tmp256884
                                 (let ((__tmp256885
                                        (cons _%bin-scm256114%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp256885
                                    _%deps256127%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp256884 _%runtime256108%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it256159%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_256135%_
                                                      (let ((__tmp256886
                                                             (cons _%output-scm256101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp256886 _%gsc-link-opts256149%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp256887
                                                 (let ((__tmp256888
                                                        (cons _%output-c256131%_
                                                              (cons _%output-c_256135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp256888
                                                    _%gsc-static-opts256143%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp256887
                                             _%gsc-cc-opts256141%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin256102%_
                                                      (cons _%output-o256133%_
                                                            (cons _%output-o_256137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256889
                                 (let ((__tmp256891
                                        (cons '"-L"
                                              (cons _%gerbil-libdir256106%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options256153%_))))
                                       (__tmp256890
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath256151%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp256891 __tmp256890))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp256889
                             _%output-ld-opts256145%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it256159%_))
                                (_%compile-it256159%_)))
                          '#!void)))))
          (let* ((_%output-bin256096%_
                  (gxc#compile-exe-output-file _%ctx256088%_ _%opts256089%_))
                 (_%output-scm256098%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin256096%_ '"__exe.scm"))))
            (_%compile-stub256094%_
             _%output-scm256098%_
             _%output-bin256096%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx256037%_ _%id256038%_)
        (let ((_%$e256084%_
               (let ((__tmp256893
                      (lambda (_%e256039256041%_)
                        (let* ((_%e256039256043256053%_ _%e256039256041%_)
                               (_%else256045256061%_ (lambda () '#f))
                               (_%K256047256065%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e256039256043256053%_
                                 'gx#module-export::t))
                              (let* ((_%e256048256068%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e256039256043256053%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e256049256071%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e256039256043256053%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e256050256074%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e256039256043256053%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e256050256074%_ '0))
                                    (let ((_%e256051256077%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e256039256043256053%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g256079256081%_)
                                             (eq? _%g256079256081%_
                                                  _%id256038%_))
                                           _%e256051256077%_)
                                          (_%K256047256065%_)
                                          (_%else256045256061%_)))
                                    (_%else256045256061%_)))
                              (_%else256045256061%_)))))
                     (__tmp256892
                      (##structure-ref
                       _%ctx256037%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp256893 __tmp256892))))
          (if _%$e256084%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e256084%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx256028%_ _%id256029%_)
        (let ((_%$e256031%_
               (gxc#find-export-binding _%ctx256028%_ _%id256029%_)))
          (if _%$e256031%_
              ((lambda (_%bind256034%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind256034%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id256029%_)))
                 (##structure-ref _%bind256034%_ '1 gx#binding::t '#f))
               _%$e256031%_)
              (let ((__tmp256894
                     (##structure-ref
                      _%ctx256028%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp256894
                 _%id256029%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx255894%_)
        (letrec* ((_%ht255896%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template255897%_
                   (lambda (_%in255973%_ _%phi255974%_)
                     (let ((_%iphi255976%_
                            (fx+ _%phi255974%_
                                 (##direct-structure-ref
                                  _%in255973%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports255977%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in255973%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp255979%_ ((_%rest255981%_ _%imports255977%_)
                                          (_%r255982%_ '()))
                         (let* ((_%rest255983255991%_ _%rest255981%_)
                                (_%else255985255999%_ (lambda () _%r255982%_))
                                (_%K255987256016%_
                                 (lambda (_%rest256002%_ _%in256003%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in256003%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi255976%_))
                                           (_%lp255979%_
                                            _%rest256002%_
                                            (cons _%in256003%_ _%r255982%_))
                                           (_%lp255979%_
                                            _%rest256002%_
                                            _%r255982%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in256003%_
                                              'gx#module-import::t))
                                           (let ((_%iphi256007%_
                                                  (fx+ _%phi255974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in256003%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi256007%_))
                                                 (_%lp255979%_
                                                  _%rest256002%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in256003%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r255982%_))
                                                 (_%lp255979%_
                                                  _%rest256002%_
                                                  _%r255982%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in256003%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi256010%_
                                                      (fx+ _%iphi255976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in256003%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi256010%_))
                                                     (_%lp255979%_
                                                      _%rest256002%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in256003%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r255982%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi256010%_))
                                                         (_%lp255979%_
                                                          _%rest256002%_
                                                          (let ((__tmp256895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template255897%_
                          _%in256003%_
                          _%iphi255976%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r255982%_ __tmp256895)))
                 (_%lp255979%_ _%rest256002%_ _%r255982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp255979%_
                                                _%rest256002%_
                                                _%r255982%_)))))))
                           (if (pair? _%rest255983255991%_)
                               (let ((_%hd255988256019%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest255983255991%_)))
                                     (_%tl255989256021%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest255983255991%_))))
                                 (let* ((_%in256024%_ _%hd255988256019%_)
                                        (_%rest256026%_ _%tl255989256021%_))
                                   (_%K255987256016%_
                                    _%rest256026%_
                                    _%in256024%_)))
                               (_%else255985255999%_)))))))
                  (_%find-deps255898%_
                   (lambda (_%rest255906%_ _%deps255907%_)
                     (let* ((_%rest255908255916%_ _%rest255906%_)
                            (_%else255910255924%_ (lambda () _%deps255907%_))
                            (_%K255912255961%_
                             (lambda (_%rest255927%_ _%hd255928%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd255928%_
                                      'gx#module-context::t))
                                   (let ((_%id255931%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd255928%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports255932%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd255928%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht255896%_
                                            _%id255931%_))
                                         (_%find-deps255898%_
                                          _%rest255927%_
                                          _%deps255907%_)
                                         (let ((_%$e255935%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd255928%_))))
                                           (if _%$e255935%_
                                               ((lambda (_%pre255938%_)
                                                  (let ((_%xdeps255940%_
                                                         (_%find-deps255898%_
                                                          (cons _%pre255938%_
                                                                _%imports255932%_)
                                                          _%deps255907%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht255896%_
                                                       _%id255931%_
                                                       _%hd255928%_))
                                                    (_%find-deps255898%_
                                                     _%rest255927%_
                                                     (cons _%hd255928%_
                                                           _%xdeps255940%_))))
                                                _%$e255935%_)
                                               (let ((_%xdeps255943%_
                                                      (_%find-deps255898%_
                                                       _%imports255932%_
                                                       _%deps255907%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht255896%_
                                                    _%id255931%_
                                                    _%hd255928%_))
                                                 (_%find-deps255898%_
                                                  _%rest255927%_
                                                  (cons _%hd255928%_
                                                        _%xdeps255943%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd255928%_
                                          'gx#prelude-context::t))
                                       (let ((_%id255946%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd255928%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht255896%_
                                                _%id255946%_))
                                             (_%find-deps255898%_
                                              _%rest255927%_
                                              _%deps255907%_)
                                             (let ((_%xdeps255950%_
                                                    (_%find-deps255898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd255928%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps255907%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht255896%_
                                                      _%id255946%_))
                                                   (_%find-deps255898%_
                                                    _%rest255927%_
                                                    _%xdeps255950%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht255896%_
                                                        _%id255946%_
                                                        _%hd255928%_))
                                                     (_%find-deps255898%_
                                                      _%rest255927%_
                                                      (cons _%hd255928%_
                                                            _%xdeps255950%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd255928%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd255928%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps255898%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd255928%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest255927%_)
                                                _%deps255907%_)
                                               (_%find-deps255898%_
                                                _%rest255927%_
                                                _%deps255907%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd255928%_
                                                  'gx#module-export::t))
                                               (_%find-deps255898%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd255928%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest255927%_)
                                                _%deps255907%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd255928%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd255928%_ '2 '#f '#f)))
               (_%find-deps255898%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd255928%_ '1 '#f '#f))
                      _%rest255927%_)
                _%deps255907%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd255928%_ '2 '#f '#f)))
                   (let ((_%xdeps255957%_
                          (_%import-set-template255897%_ _%hd255928%_ '0)))
                     (_%find-deps255898%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest255927%_ _%xdeps255957%_))
                      _%deps255907%_))
                   (_%find-deps255898%_ _%rest255927%_ _%deps255907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd255928%_))))))))))
                       (if (pair? _%rest255908255916%_)
                           (let ((_%hd255913255964%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest255908255916%_)))
                                 (_%tl255914255966%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest255908255916%_))))
                             (let* ((_%hd255969%_ _%hd255913255964%_)
                                    (_%rest255971%_ _%tl255914255966%_))
                               (_%K255912255961%_
                                _%rest255971%_
                                _%hd255969%_)))
                           (_%else255910255924%_))))))
          (let ((__tmp256896
                 (filter gx#expander-context-id
                         (_%find-deps255898%_
                          (let ((_%$e255900%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx255894%_))))
                            (if _%$e255900%_
                                ((lambda (_%pre255903%_)
                                   (cons _%pre255903%_
                                         (##structure-ref
                                          _%ctx255894%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e255900%_)
                                (##structure-ref
                                 _%ctx255894%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp256896)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx255824%_)
        (let* ((_%context-id255826%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx255824%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx255824%_ '1 '#f '#f))
                    (string->symbol _%ctx255824%_)))
               (_%scm255828%_
                (let ((__tmp256897
                       (gxc#static-module-name _%context-id255826%_)))
                  (declare (not safe))
                  (##string-append __tmp256897 '".scm")))
               (_%dirs255830%_ (let () (declare (not safe)) (load-path)))
               (_%dirs255836%_
                (let ((_%user-libpath255832%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath255832%_
                      (let ((_%user-libpath255834%_
                             (path-expand '"lib" _%user-libpath255832%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath255834%_ _%dirs255830%_))
                            _%dirs255830%_
                            (cons _%user-libpath255834%_ _%dirs255830%_)))
                      _%dirs255830%_)))
               (_%dirs255846%_
                (let ((_%$e255838%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e255838%_
                      ((lambda (_%g255840255842%_)
                         (cons _%g255840255842%_ _%dirs255836%_))
                       _%$e255838%_)
                      _%dirs255836%_)))
               (_%dirs255852%_
                (let ((__tmp256898
                       (lambda (_%g255847255849%_)
                         (path-expand '"static" _%g255847255849%_))))
                  (declare (not safe))
                  (##map __tmp256898 _%dirs255846%_))))
          (let _%lp255855%_ ((_%rest255857%_ _%dirs255852%_))
            (let* ((_%rest255858255866%_ _%rest255857%_)
                   (_%else255860255874%_
                    (lambda ()
                      (let ((__tmp256899
                             (##structure-ref
                              _%ctx255824%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp256899
                         _%scm255828%_))))
                   (_%K255862255882%_
                    (lambda (_%rest255877%_ _%dir255878%_)
                      (let ((_%path255880%_
                             (path-expand _%scm255828%_ _%dir255878%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path255880%_))
                            _%path255880%_
                            (_%lp255855%_ _%rest255877%_))))))
              (if (pair? _%rest255858255866%_)
                  (let ((_%hd255863255885%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest255858255866%_)))
                        (_%tl255864255887%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest255858255866%_))))
                    (let* ((_%dir255890%_ _%hd255863255885%_)
                           (_%rest255892%_ _%tl255864255887%_))
                      (_%K255862255882%_ _%rest255892%_ _%dir255890%_)))
                  (_%else255860255874%_)))))))
    (define gxc#file-empty?
      (lambda (_%path255822%_)
        (zero? (let ((__tmp256900 (file-info _%path255822%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp256900)))))
    (define gxc#compile-top-module
      (lambda (_%ctx255813%_)
        (let ((__tmp256901
               (lambda ()
                 (let ((__tmp256902
                        (lambda ()
                          (let ((__tmp256903
                                 (lambda ()
                                   (let ((__tmp256905
                                          (lambda ()
                                            (let ((__tmp256907
                                                   (lambda ()
                                                     (let ((__tmp256909
                                                            (lambda ()
                                                              (let ((__tmp256910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx255813%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp256910))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp256911
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx255813%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp256911))
                          '#!void)
                      (gxc#collect-bindings _%ctx255813%_)
                      (gxc#compile-runtime-code _%ctx255813%_)
                      (gxc#compile-meta-code _%ctx255813%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx255813%_)
                          '#!void)))
                   (__tmp256908
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
               (call-with-parameters__1
                __tmp256909
                gxc#current-compile-runtime-names
                __tmp256908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp256906
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp256907
                                               gxc#current-compile-runtime-sections
                                               __tmp256906))))
                                         (__tmp256904
                                          (let ((__obj256802
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj256802))
                                            __obj256802)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp256905
                                      gxc#current-compile-symbol-table
                                      __tmp256904)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp256903
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp256902
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp256901
           gx#current-expander-context
           _%ctx255813%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx255811%_)
        (let ((__tmp256912
               (##structure-ref _%ctx255811%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp256912))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx255756%_)
        (letrec ((_%compile1255758%_
                  (lambda (_%ctx255800%_)
                    (let* ((_%code255802%_
                            (##structure-ref
                             _%ctx255800%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm255806%_
                            (let ((_%idstr255804%_
                                   (let ((__tmp256913
                                          (##structure-ref
                                           _%ctx255800%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp256913))))
                              (declare (not safe))
                              (##string-append _%idstr255804%_ '"~0")))
                           (_%rtc?255808%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code255802%_))))
                      (if _%rtc?255808%_
                          (let ((__tmp256914
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp256914
                             _%ctx255800%_
                             _%rtm255806%_))
                          '#!void)
                      (_%generate-runtime-code255760%_
                       _%ctx255800%_
                       _%code255802%_
                       (if _%rtc?255808%_ _%rtm255806%_ '#f)))))
                 (_%context-timestamp255759%_
                  (lambda (_%ctx255798%_)
                    (let ((__tmp256915
                           (let ((__tmp256916
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx255798%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp256916 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp256915))))
                 (_%generate-runtime-code255760%_
                  (lambda (_%ctx255767%_ _%code255768%_ _%rtm255769%_)
                    (let* ((_%runtime-code?255771%_ (if _%rtm255769%_ '#t '#f))
                           (_%lifts255773%_ (box '()))
                           (_%runtime-code255779%_
                            (if _%runtime-code?255771%_
                                (let ((__tmp256917
                                       (lambda ()
                                         (let ((__tmp256918
                                                (lambda ()
                                                  (let ((__tmp256919
                                                         (lambda ()
                                                           (let ((__tmp256921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code255768%_))))
                         (__tmp256920
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp256921
                      gxc#current-compile-marks
                      __tmp256920)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp256919
                                                     gxc#current-compile-lift
                                                     _%lifts255773%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp256918
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp256917
                                   gx#current-expander-context
                                   _%ctx255767%_))
                                '#f))
                           (_%runtime-code255781%_
                            (if _%runtime-code?255771%_
                                (if (null? (unbox _%lifts255773%_))
                                    _%runtime-code255779%_
                                    (cons 'begin
                                          (let ((__tmp256923
                                                 (cons _%runtime-code255779%_
                                                       '()))
                                                (__tmp256922
                                                 (reverse (unbox _%lifts255773%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp256923
                                             __tmp256922))))
                                '#f))
                           (_%runtime-code255783%_
                            (if _%runtime-code?255771%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp255759%_
                                                         _%ctx255767%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code255781%_ '())))
                                '#f))
                           (_%loader-code255786%_
                            (let ((__tmp256924
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code255768%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp256924
                               gx#current-expander-context
                               _%ctx255767%_)))
                           (_%loader-code255788%_
                            (cons 'begin
                                  (cons _%loader-code255786%_
                                        (cons (if _%runtime-code?255771%_
                                                  (cons 'load-module
                                                        (cons _%rtm255769%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0255790%_
                            (gxc#compile-output-file _%ctx255767%_ '0 '".scm"))
                           (_%scmrt255792%_
                            (gxc#compile-output-file
                             _%ctx255767%_
                             '#f
                             '".scm"))
                           (_%scms255794%_
                            (gxc#compile-static-output-file _%ctx255767%_)))
                      (if _%runtime-code?255771%_
                          (gxc#compile-scm-file__0
                           _%scm0255790%_
                           _%runtime-code255783%_)
                          '#!void)
                      (let ((__tmp256925
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt255792%_
                                _%loader-code255788%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp256925
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms255794%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms255794%_))
                          '#!void)
                      (if _%runtime-code?255771%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0255790%_ _%scms255794%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms255794%_ void)))))))
          (let* ((_%all-modules255762%_
                  (cons _%ctx255756%_ (gxc#lift-nested-modules _%ctx255756%_)))
                 (__tmp256926
                  (lambda (_%ctx255764%_)
                    (let ((__tmp256927
                           (lambda () (_%compile1255758%_ _%ctx255764%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp256927
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp256926 _%all-modules255762%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx255655%_)
        (letrec ((_%compile-ssi255657%_
                  (lambda (_%code255724%_)
                    (let* ((_%path255726%_
                            (gxc#compile-output-file
                             _%ctx255655%_
                             '#f
                             '".ssi"))
                           (_%prelude255738%_
                            (let* ((_%super255728%_
                                    (##structure-ref
                                     _%ctx255655%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e255730%_
                                    (##structure-ref
                                     _%super255728%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e255730%_
                                  ((lambda (_%g255732255734%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g255732255734%_)))
                                   _%$e255730%_)
                                  ':<root>)))
                           (_%ns255740%_
                            (##structure-ref
                             _%ctx255655%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr255742%_
                            (symbol->string
                             (##structure-ref
                              _%ctx255655%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg255750%_
                            (let ((_%$e255744%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr255742%_ '#\/))))
                              (if _%$e255744%_
                                  ((lambda (_%x255747%_)
                                     (let ((__tmp256928
                                            (substring
                                             _%idstr255742%_
                                             '0
                                             _%x255747%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp256928)))
                                   _%$e255744%_)
                                  '#f)))
                           (_%rt255752%_
                            (let ((__tmp256929
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp256929 _%ctx255655%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path255726%_))
                      (gxc#with-output-to-scheme-file
                       _%path255726%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude255738%_))
                         (if _%pkg255750%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg255750%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns255740%_))
                         (newline)
                         (pretty-print _%code255724%_)
                         (if _%rt255752%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt255752%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi255658%_
                  (lambda (_%part255663%_)
                    (let* ((_%part255664255677%_ _%part255663%_)
                           (_%E255666255681%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part255664255677%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K255667255693%_
                            (lambda (_%code255684%_
                                     _%n255685%_
                                     _%phi255686%_
                                     _%phi-ctx255687%_)
                              (let ((_%code255691%_
                                     (let ((__tmp256930
                                            (lambda ()
                                              (let ((__tmp256931
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code255684%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp256931
                                                 gx#current-expander-phi
                                                 _%phi255686%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp256930
                                        gx#current-expander-context
                                        _%phi-ctx255687%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx255655%_
                                  _%n255685%_
                                  '".scm")
                                 _%code255691%_
                                 '#t)))))
                      (if (pair? _%part255664255677%_)
                          (let ((_%hd255668255696%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part255664255677%_)))
                                (_%tl255669255698%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part255664255677%_))))
                            (let ((_%phi-ctx255701%_ _%hd255668255696%_))
                              (if (pair? _%tl255669255698%_)
                                  (let ((_%hd255670255703%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl255669255698%_)))
                                        (_%tl255671255705%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl255669255698%_))))
                                    (let ((_%phi255708%_ _%hd255670255703%_))
                                      (if (pair? _%tl255671255705%_)
                                          (let ((_%hd255672255710%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl255671255705%_)))
                                                (_%tl255673255712%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl255671255705%_))))
                                            (let ((_%n255715%_
                                                   _%hd255672255710%_))
                                              (if (pair? _%tl255673255712%_)
                                                  (let ((_%hd255674255717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl255673255712%_)))
                                                        (_%tl255675255719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl255673255712%_))))
                                                    (let ((_%code255722%_
                                                           _%hd255674255717%_))
                                                      (if (null? _%tl255675255719%_)
                                                          (_%K255667255693%_
                                                           _%code255722%_
                                                           _%n255715%_
                                                           _%phi255708%_
                                                           _%phi-ctx255701%_)
                                                          (_%E255666255681%_))))
                                                  (_%E255666255681%_))))
                                          (_%E255666255681%_))))
                                  (_%E255666255681%_))))
                          (_%E255666255681%_))))))
          (let ((_g256932_ (gxc#generate-meta-code _%ctx255655%_)))
            (begin
              (let ((_g256933_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g256932_)
                           (##values-length _g256932_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g256933_ 2)))
                    (error "Context expects 2 values" _g256933_)))
              (let ((_%ssi-code255660%_
                     (let () (declare (not safe)) (##values-ref _g256932_ 0)))
                    (_%phi-code255661%_
                     (let () (declare (not safe)) (##values-ref _g256932_ 1))))
                (begin
                  (_%compile-ssi255657%_ _%ssi-code255660%_)
                  (for-each _%compile-phi255658%_ _%phi-code255661%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx255637%_)
        (let* ((_%path255639%_
                (gxc#compile-output-file _%ctx255637%_ '#f '".ssxi.ss"))
               (_%code255641%_
                (let ((__tmp256934
                       (##structure-ref
                        _%ctx255637%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp256934)))
               (_%idstr255643%_
                (symbol->string
                 (##structure-ref
                  _%ctx255637%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg255651%_
                (let ((_%$e255645%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr255643%_ '#\/))))
                  (if _%$e255645%_
                      ((lambda (_%x255648%_)
                         (let ((__tmp256935
                                (substring _%idstr255643%_ '0 _%x255648%_)))
                           (declare (not safe))
                           (##string->symbol __tmp256935)))
                       _%$e255645%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path255639%_))
          (gxc#with-output-to-scheme-file
           _%path255639%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg255651%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg255651%_))
                 '#!void)
             (newline)
             (pretty-print _%code255641%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx255630%_)
        (let* ((_%state255632%_
                (let ((__obj256803
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj256803 _%ctx255630%_))
                  __obj256803))
               (_%ssi-code255634%_
                (let ((__tmp256936
                       (##structure-ref
                        _%ctx255630%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state255632%_
                   __tmp256936))))
          (values _%ssi-code255634%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state255632%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx255622%_)
        (let* ((_%lifts255624%_ (box '()))
               (__tmp256937
                (lambda ()
                  (let ((__tmp256939
                         (lambda ()
                           (let ((_%code255628%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx255622%_))))
                             (if (null? (unbox _%lifts255624%_))
                                 _%code255628%_
                                 (cons 'begin
                                       (let ((__tmp256941
                                              (cons _%code255628%_ '()))
                                             (__tmp256940
                                              (reverse (unbox _%lifts255624%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp256941
                                          __tmp256940)))))))
                        (__tmp256938
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp256939
                     gxc#current-compile-marks
                     __tmp256938)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp256937
           gxc#current-compile-lift
           _%lifts255624%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx255618%_)
        (let ((_%modules255620%_ (box '())))
          (let ((__tmp256942
                 (##structure-ref _%ctx255618%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules255620%_ __tmp256942))
          (reverse (unbox _%modules255620%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path255598%_ _%code255599%_ _%phi?255600%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path255598%_))
        (gxc#with-output-to-scheme-file
         _%path255598%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp256943
                                           (if _%phi?255600%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp256943)))))))
           (pretty-print _%code255599%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it255604%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path255598%_ _%phi?255600%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp256944
                         (cons 'compile-file (cons _%path255598%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it255604%_ __tmp256944))
                  (_%compile-it255604%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path255609%_ _%code255610%_)
        (let ((_%phi?255612%_ '#f))
          (gxc#compile-scm-file__%
           _%path255609%_
           _%code255610%_
           _%phi?255612%_))))
    (define gxc#compile-scm-file
      (lambda _g256945_
        (let ((_g256946_ (let () (declare (not safe)) (##length _g256945_))))
          (cond ((let () (declare (not safe)) (##fx= _g256946_ 2))
                 (apply gxc#compile-scm-file__0 _g256945_))
                ((let () (declare (not safe)) (##fx= _g256946_ 3))
                 (apply gxc#compile-scm-file__% _g256945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g256945_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?255499%_)
        (let _%lp255501%_ ((_%rest255503%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts255504%_ '()))
          (let* ((_%rest255505255525%_ _%rest255503%_)
                 (_%else255509255533%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts255504%_)))
                        (reverse _%opts255504%_)))))
            (let ((_%K255519255576%_
                   (lambda (_%rest255574%_)
                     (_%lp255501%_ _%rest255574%_ _%opts255504%_)))
                  (_%K255514255558%_
                   (lambda (_%rest255556%_)
                     (_%lp255501%_ _%rest255556%_ _%opts255504%_)))
                  (_%K255511255540%_
                   (lambda (_%rest255537%_ _%opt255538%_)
                     (_%lp255501%_
                      _%rest255537%_
                      (cons _%opt255538%_ _%opts255504%_)))))
              (if (pair? _%rest255505255525%_)
                  (let ((_%tl255521255581%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest255505255525%_)))
                        (_%hd255520255579%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest255505255525%_))))
                    (if (equal? _%hd255520255579%_ '"-cc-options")
                        (if (pair? _%tl255521255581%_)
                            (let* ((_%tl255523255584%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl255521255581%_)))
                                   (_%rest255587%_ _%tl255523255584%_))
                              (_%K255519255576%_ _%rest255587%_))
                            (let ((_%opt255548%_ _%hd255520255579%_)
                                  (_%rest255550%_ _%tl255521255581%_))
                              (_%K255511255540%_
                               _%rest255550%_
                               _%opt255548%_)))
                        (if (equal? _%hd255520255579%_ '"-ld-options")
                            (if (pair? _%tl255521255581%_)
                                (let* ((_%tl255518255566%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl255521255581%_)))
                                       (_%rest255569%_ _%tl255518255566%_))
                                  (_%K255514255558%_ _%rest255569%_))
                                (let ((_%opt255548%_ _%hd255520255579%_)
                                      (_%rest255550%_ _%tl255521255581%_))
                                  (_%K255511255540%_
                                   _%rest255550%_
                                   _%opt255548%_)))
                            (let ((_%opt255548%_ _%hd255520255579%_)
                                  (_%rest255550%_ _%tl255521255581%_))
                              (_%K255511255540%_
                               _%rest255550%_
                               _%opt255548%_)))))
                  (_%else255509255533%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?255593%_ '#f)) (gxc#gsc-link-options__% _%phi?255593%_))))
    (define gxc#gsc-link-options
      (lambda _g256947_
        (let ((_g256948_ (let () (declare (not safe)) (##length _g256947_))))
          (cond ((let () (declare (not safe)) (##fx= _g256948_ 0))
                 (apply gxc#gsc-link-options__0 _g256947_))
                ((let () (declare (not safe)) (##fx= _g256948_ 1))
                 (apply gxc#gsc-link-options__% _g256947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g256947_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords255349%_ _%static?255345255350%_ _%phi?255351%_)
        (let ((_%static?255353%_
               (if (eq? _%static?255345255350%_ absent-value)
                   '#f
                   _%static?255345255350%_)))
          (if _%phi?255351%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp255355%_ ((_%rest255357%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts255358%_ '()))
                (let* ((_%rest255359255385%_ _%rest255357%_)
                       (_%else255364255393%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts255358%_)))
                              (reverse! _%opts255358%_)))))
                  (let ((_%K255379255456%_
                         (lambda (_%rest255453%_ _%opt255454%_)
                           (if _%static?255353%_
                               (_%lp255355%_
                                _%rest255453%_
                                (cons _%opt255454%_
                                      (cons '"-cc-options" _%opts255358%_)))
                               (_%lp255355%_ _%rest255453%_ _%opts255358%_))))
                        (_%K255374255433%_
                         (lambda (_%rest255430%_ _%opt255431%_)
                           (_%lp255355%_
                            _%rest255430%_
                            (cons _%opt255431%_
                                  (cons '"-cc-options" _%opts255358%_)))))
                        (_%K255369255413%_
                         (lambda (_%rest255411%_)
                           (_%lp255355%_ _%rest255411%_ _%opts255358%_)))
                        (_%K255366255399%_
                         (lambda (_%rest255397%_)
                           (_%lp255355%_ _%rest255397%_ _%opts255358%_))))
                    (if (pair? _%rest255359255385%_)
                        (let ((_%tl255381255461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest255359255385%_)))
                              (_%hd255380255459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest255359255385%_))))
                          (if (equal? _%hd255380255459%_ '"-cc-options")
                              (if (pair? _%tl255381255461%_)
                                  (let ((_%tl255383255466%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl255381255461%_)))
                                        (_%hd255382255464%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl255381255461%_))))
                                    (if (equal? _%hd255382255464%_ '"-Bstatic")
                                        (let ((_%opt255469%_
                                               _%hd255382255464%_)
                                              (_%rest255471%_
                                               _%tl255383255466%_))
                                          (_%K255379255456%_
                                           _%rest255471%_
                                           _%opt255469%_))
                                        (let ((_%opt255446%_
                                               _%hd255382255464%_)
                                              (_%rest255448%_
                                               _%tl255383255466%_))
                                          (_%K255374255433%_
                                           _%rest255448%_
                                           _%opt255446%_))))
                                  (let ((_%rest255405%_ _%tl255381255461%_))
                                    (_%K255366255399%_ _%rest255405%_)))
                              (if (equal? _%hd255380255459%_ '"-ld-options")
                                  (if (pair? _%tl255381255461%_)
                                      (let* ((_%tl255373255421%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl255381255461%_)))
                                             (_%rest255424%_
                                              _%tl255373255421%_))
                                        (_%K255369255413%_ _%rest255424%_))
                                      (let ((_%rest255405%_
                                             _%tl255381255461%_))
                                        (_%K255366255399%_ _%rest255405%_)))
                                  (let ((_%rest255405%_ _%tl255381255461%_))
                                    (_%K255366255399%_ _%rest255405%_)))))
                        (_%else255364255393%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords255476%_ _%static?255345255477%_)
        (let ((_%phi?255479%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords255476%_
           _%static?255345255477%_
           _%phi?255479%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g256949_
        (let ((_g256950_ (let () (declare (not safe)) (##length _g256949_))))
          (cond ((let () (declare (not safe)) (##fx= _g256950_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g256949_))
                ((let () (declare (not safe)) (##fx= _g256950_ 3))
                 (apply gxc#gsc-cc-options__%__% _g256949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g256949_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords255488%_ . _%args255489%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords255488%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords255488%_
                  'static:
                  absent-value))
               _%args255489%_)))
    (define gxc#gsc-cc-options
      (lambda _%args255346255495%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args255346255495%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords255195%_ _%static?255191255196%_ _%phi?255197%_)
        (let ((_%static?255199%_
               (if (eq? _%static?255191255196%_ absent-value)
                   '#f
                   _%static?255191255196%_)))
          (if _%phi?255197%_
              '()
              (let _%lp255201%_ ((_%rest255203%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts255204%_ '()))
                (let* ((_%rest255205255231%_ _%rest255203%_)
                       (_%else255210255239%_
                        (lambda () (reverse! _%opts255204%_))))
                  (let ((_%K255225255302%_
                         (lambda (_%rest255299%_ _%opt255300%_)
                           (if _%static?255199%_
                               (_%lp255201%_
                                _%rest255299%_
                                (cons _%opt255300%_
                                      (cons '"-ld-options" _%opts255204%_)))
                               (_%lp255201%_ _%rest255299%_ _%opts255204%_))))
                        (_%K255220255279%_
                         (lambda (_%rest255276%_ _%opt255277%_)
                           (_%lp255201%_
                            _%rest255276%_
                            (cons _%opt255277%_
                                  (cons '"-ld-options" _%opts255204%_)))))
                        (_%K255215255259%_
                         (lambda (_%rest255257%_)
                           (_%lp255201%_ _%rest255257%_ _%opts255204%_)))
                        (_%K255212255245%_
                         (lambda (_%rest255243%_)
                           (_%lp255201%_ _%rest255243%_ _%opts255204%_))))
                    (if (pair? _%rest255205255231%_)
                        (let ((_%tl255227255307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest255205255231%_)))
                              (_%hd255226255305%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest255205255231%_))))
                          (if (equal? _%hd255226255305%_ '"-ld-options")
                              (if (pair? _%tl255227255307%_)
                                  (let ((_%tl255229255312%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl255227255307%_)))
                                        (_%hd255228255310%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl255227255307%_))))
                                    (if (equal? _%hd255228255310%_ '"-static")
                                        (let ((_%opt255315%_
                                               _%hd255228255310%_)
                                              (_%rest255317%_
                                               _%tl255229255312%_))
                                          (_%K255225255302%_
                                           _%rest255317%_
                                           _%opt255315%_))
                                        (let ((_%opt255292%_
                                               _%hd255228255310%_)
                                              (_%rest255294%_
                                               _%tl255229255312%_))
                                          (_%K255220255279%_
                                           _%rest255294%_
                                           _%opt255292%_))))
                                  (let ((_%rest255251%_ _%tl255227255307%_))
                                    (_%K255212255245%_ _%rest255251%_)))
                              (if (equal? _%hd255226255305%_ '"-cc-options")
                                  (if (pair? _%tl255227255307%_)
                                      (let* ((_%tl255219255267%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl255227255307%_)))
                                             (_%rest255270%_
                                              _%tl255219255267%_))
                                        (_%K255215255259%_ _%rest255270%_))
                                      (let ((_%rest255251%_
                                             _%tl255227255307%_))
                                        (_%K255212255245%_ _%rest255251%_)))
                                  (let ((_%rest255251%_ _%tl255227255307%_))
                                    (_%K255212255245%_ _%rest255251%_)))))
                        (_%else255210255239%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords255322%_ _%static?255191255323%_)
        (let ((_%phi?255325%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords255322%_
           _%static?255191255323%_
           _%phi?255325%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g256951_
        (let ((_g256952_ (let () (declare (not safe)) (##length _g256951_))))
          (cond ((let () (declare (not safe)) (##fx= _g256952_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g256951_))
                ((let () (declare (not safe)) (##fx= _g256952_ 3))
                 (apply gxc#gsc-ld-options__%__% _g256951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g256951_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords255334%_ . _%args255335%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords255334%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords255334%_
                  'static:
                  absent-value))
               _%args255335%_)))
    (define gxc#gsc-ld-options
      (lambda _%args255192255341%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args255192255341%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir255186%_)
        (let ((_%user-staticdir255188%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir255186%_
                       '" -I "
                       _%user-staticdir255188%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp255098%_ ((_%rest255100%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts255101%_ '()))
          (let* ((_%rest255102255122%_ _%rest255100%_)
                 (_%else255106255130%_ (lambda () _%opts255101%_)))
            (let ((_%K255116255173%_
                   (lambda (_%rest255171%_)
                     (_%lp255098%_ _%rest255171%_ _%opts255101%_)))
                  (_%K255111255151%_
                   (lambda (_%rest255148%_ _%opt255149%_)
                     (_%lp255098%_
                      _%rest255148%_
                      (let ((__tmp256953
                             (let ((__tmp256954
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt255149%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp256954))))
                        (declare (not safe))
                        (##append _%opts255101%_ __tmp256953)))))
                  (_%K255108255136%_
                   (lambda (_%rest255134%_)
                     (_%lp255098%_ _%rest255134%_ _%opts255101%_))))
              (if (pair? _%rest255102255122%_)
                  (let ((_%tl255118255178%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest255102255122%_)))
                        (_%hd255117255176%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest255102255122%_))))
                    (if (equal? _%hd255117255176%_ '"-cc-options")
                        (if (pair? _%tl255118255178%_)
                            (let* ((_%tl255120255181%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl255118255178%_)))
                                   (_%rest255184%_ _%tl255120255181%_))
                              (_%K255116255173%_ _%rest255184%_))
                            (let ((_%rest255142%_ _%tl255118255178%_))
                              (_%K255108255136%_ _%rest255142%_)))
                        (if (equal? _%hd255117255176%_ '"-ld-options")
                            (if (pair? _%tl255118255178%_)
                                (let ((_%tl255115255161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl255118255178%_)))
                                      (_%hd255114255159%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl255118255178%_))))
                                  (let ((_%opt255164%_ _%hd255114255159%_)
                                        (_%rest255166%_ _%tl255115255161%_))
                                    (_%K255111255151%_
                                     _%rest255166%_
                                     _%opt255164%_)))
                                (let ((_%rest255142%_ _%tl255118255178%_))
                                  (_%K255108255136%_ _%rest255142%_)))
                            (let ((_%rest255142%_ _%tl255118255178%_))
                              (_%K255108255136%_ _%rest255142%_)))))
                  (_%else255106255130%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str255095%_)
        (not (let () (declare (not safe)) (string-empty? _%str255095%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path255088%_ _%phi?255089%_)
        (let ((_%gsc-link-opts255091%_
               (gxc#gsc-link-options__% _%phi?255089%_))
              (_%gsc-cc-opts255092%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?255089%_))
              (_%gsc-ld-opts255093%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?255089%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp256955
                  (let ((__tmp256956
                         (let ((__tmp256957 (cons _%path255088%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp256957
                            _%gsc-link-opts255091%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp256956 _%gsc-ld-opts255093%_))))
             (declare (not safe))
             (foldr__0 cons __tmp256955 _%gsc-cc-opts255092%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx255054%_ _%n255055%_ _%ext255056%_)
        (letrec ((_%module-relative-path255058%_
                  (lambda (_%ctx255086%_)
                    (path-strip-directory
                     (let ((__tmp256958
                            (##structure-ref
                             _%ctx255086%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp256958)))))
                 (_%module-source-directory255059%_
                  (lambda (_%ctx255082%_)
                    (path-directory
                     (let ((_%mpath255084%_
                            (##structure-ref
                             _%ctx255082%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath255084%_)
                           _%mpath255084%_
                           (last _%mpath255084%_))))))
                 (_%section-string255060%_
                  (lambda (_%n255076%_)
                    (if (number? _%n255076%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n255076%_))
                        (if (symbol? _%n255076%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n255076%_))
                            (if (string? _%n255076%_)
                                _%n255076%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n255076%_)))))))
                 (_%file-name255061%_
                  (lambda (_%path255074%_)
                    (if _%n255055%_
                        (string-append
                         _%path255074%_
                         '"~"
                         (_%section-string255060%_ _%n255055%_)
                         _%ext255056%_)
                        (string-append _%path255074%_ _%ext255056%_))))
                 (_%file-path255062%_
                  (lambda ()
                    (let ((_%$e255068%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e255068%_
                          ((lambda (_%outdir255071%_)
                             (path-expand
                              (_%file-name255061%_
                               (let ((__tmp256959
                                      (##structure-ref
                                       _%ctx255054%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp256959)))
                              _%outdir255071%_))
                           _%$e255068%_)
                          (path-expand
                           (_%file-name255061%_
                            (_%module-relative-path255058%_ _%ctx255054%_))
                           (_%module-source-directory255059%_
                            _%ctx255054%_)))))))
          (let ((_%path255064%_ (_%file-path255062%_)))
            (let ((__tmp256960
                   (lambda ()
                     (let ((__tmp256961 (path-directory _%path255064%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp256961)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp256960))
            _%path255064%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx255035%_)
        (letrec ((_%file-name255037%_
                  (lambda (_%id255052%_)
                    (let ((__tmp256962 (gxc#static-module-name _%id255052%_)))
                      (declare (not safe))
                      (##string-append __tmp256962 '".scm"))))
                 (_%file-path255038%_
                  (lambda ()
                    (let* ((_%file255044%_
                            (_%file-name255037%_
                             (##structure-ref
                              _%ctx255035%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e255046%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e255046%_
                          ((lambda (_%outdir255049%_)
                             (path-expand
                              _%file255044%_
                              (path-expand '"static" _%outdir255049%_)))
                           _%$e255046%_)
                          (path-expand _%file255044%_ '"static"))))))
          (let ((_%path255040%_ (_%file-path255038%_)))
            (let ((__tmp256963
                   (lambda ()
                     (let ((__tmp256964 (path-directory _%path255040%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp256964)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp256963))
            _%path255040%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx255028%_ _%opts255029%_)
        (let ((_%$e255031%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts255029%_))))
          (if _%$e255031%_
              _%$e255031%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx255028%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr255018%_)
        (if (string? _%idstr255018%_)
            (let* ((_%str255021%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr255018%_)))
                   (_%strs255023%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str255021%_ '#\/))))
              (declare (not safe))
              (string-join _%strs255023%_ '"__"))
            (if (symbol? _%idstr255018%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr255018%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr255018%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp256965
               (let ((__tmp256966 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp256966 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp256965))))
    (define gxc#invoke__%
      (lambda (_%@@keywords254984%_
               _%stdout-redirection254980254985%_
               _%stderr-redirection254981254986%_
               _%program254987%_
               _%args254988%_)
        (let* ((_%stdout-redirection254990%_
                (if (eq? _%stdout-redirection254980254985%_ absent-value)
                    '#f
                    _%stdout-redirection254980254985%_))
               (_%stderr-redirection254992%_
                (if (eq? _%stderr-redirection254981254986%_ absent-value)
                    '#f
                    _%stderr-redirection254981254986%_)))
          (let ((__tmp256967 (cons _%program254987%_ _%args254988%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp256967))
          (let* ((_%proc254994%_
                  (open-process
                   (cons 'path:
                         (cons _%program254987%_
                               (cons 'arguments:
                                     (cons _%args254988%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection254990%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection254992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output254999%_
                  (if (or _%stdout-redirection254990%_
                          _%stderr-redirection254992%_)
                      (read-line _%proc254994%_ '#f)
                      '#f))
                 (_%status255002%_ (process-status _%proc254994%_)))
            (let () (declare (not safe)) (##close-port _%proc254994%_))
            (if (zero? _%status255002%_)
                '#!void
                (begin
                  (display _%output254999%_)
                  (let ((__tmp256968 (cons _%program254987%_ _%args254988%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp256968
                     _%status255002%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords255007%_ . _%args255008%_)
        (apply gxc#invoke__%
               _%@@keywords255007%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords255007%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords255007%_
                  'stderr-redirection:
                  absent-value))
               _%args255008%_)))
    (define gxc#invoke
      (lambda _%args254982255014%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args254982255014%_)))))
