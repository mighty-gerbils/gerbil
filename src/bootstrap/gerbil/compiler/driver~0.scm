(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1771037617)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp268786 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp268786))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp268787 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp268787))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path268643%_ _%fun268644%_)
        (with-output-to-file
         (cons 'path: (cons _%path268643%_ gxc#scheme-file-settings))
         _%fun268644%_)))
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
      (lambda (_%gerbil-libdir268638%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir268638%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path268636%_)
        (let ((__tmp268788 (object->string _%path268636%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp268788 '")"))))
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
      (lambda (_%dir268634%_) (delete-file-or-directory _%dir268634%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath268577%_ _%opts268578%_)
        (if (string? _%srcpath268577%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath268577%_)))
        (let* ((_%outdir268580%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts268578%_)))
               (_%invoke-gsc?268582%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts268578%_)))
               (_%target268587%_
                (let ((_%$e268584%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts268578%_))))
                  (if _%$e268584%_ _%$e268584%_ 'C)))
               (_%gsc-options268592%_
                (append (cons '"-target"
                              (cons (symbol->string _%target268587%_) '()))
                        (let ((_%$e268589%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts268578%_))))
                          (if _%$e268589%_ _%$e268589%_ '()))))
               (_%keep-scm?268594%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts268578%_)))
               (_%verbosity268596%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts268578%_)))
               (_%optimize268598%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts268578%_)))
               (_%debug268600%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts268578%_)))
               (_%gen-ssxi268602%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts268578%_)))
               (_%parallel?268604%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts268578%_))))
          (if _%outdir268580%_
              (let ((__tmp268789
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir268580%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp268789))
              '#!void)
          (if _%optimize268598%_
              (let ((__tmp268790
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp268790))
              '#!void)
          (let ((__tmp268791
                 (lambda ()
                   (let ((__tmp268792
                          (lambda ()
                            (let ((__tmp268793
                                   (lambda ()
                                     (let ((__tmp268794
                                            (lambda ()
                                              (let ((__tmp268795
                                                     (lambda ()
                                                       (let ((__tmp268796
                                                              (lambda ()
                                                                (let ((__tmp268797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp268798
                                        (lambda ()
                                          (let ((__tmp268799
                                                 (lambda ()
                                                   (let ((__tmp268801
                                                          (lambda ()
                                                            (let ((__tmp268803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp268805
                                    (lambda ()
                                      (let ((__tmp268806
                                             (lambda ()
                                               (let ((__tmp268807
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath268577%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp268808
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath268577%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp268808))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp268807
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp268806
                                         gxc#current-compile-parallel
                                         _%parallel?268604%_))))
                                   (__tmp268804
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp268805
                                gxc#current-compile-identifiers
                                __tmp268804))))
                          (__tmp268802
                           (cons (cons 'compile-module
                                       (cons _%srcpath268577%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp268803
                       gxc#current-compile-context
                       __tmp268802))))
                 (__tmp268800 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp268801
                                                      gxc#current-compile-timestamp
                                                      __tmp268800)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp268799
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi268602%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp268798
                                    gxc#current-compile-debug
                                    _%debug268600%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp268797
                           gxc#current-compile-optimize
                           _%optimize268598%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp268796
                  gxc#current-compile-verbose
                  _%verbosity268596%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp268795
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?268594%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp268794
                                        gxc#current-compile-gsc-options
                                        _%gsc-options268592%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp268793
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?268582%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp268792
                      gx#current-compilation-target
                      _%target268587%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp268791
             gxc#current-compile-output-dir
             _%outdir268580%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath268627%_)
        (let ((_%opts268629%_ '()))
          (gxc#compile-module__% _%srcpath268627%_ _%opts268629%_))))
    (define gxc#compile-module
      (lambda _g268809_
        (let ((_g268810_ (let () (declare (not safe)) (##length _g268809_))))
          (cond ((let () (declare (not safe)) (##fx= _g268810_ 1))
                 (apply gxc#compile-module__0 _g268809_))
                ((let () (declare (not safe)) (##fx= _g268810_ 2))
                 (apply gxc#compile-module__% _g268809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g268809_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath268526%_ _%opts268527%_)
        (if (string? _%srcpath268526%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath268526%_)))
        (let* ((_%outdir268529%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts268527%_)))
               (_%invoke-gsc?268531%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts268527%_)))
               (_%target268536%_
                (let ((_%$e268533%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts268527%_))))
                  (if _%$e268533%_ _%$e268533%_ 'C)))
               (_%gsc-options268541%_
                (append (cons '"-target"
                              (cons (symbol->string _%target268536%_) '()))
                        (let ((_%$e268538%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts268527%_))))
                          (if _%$e268538%_ _%$e268538%_ '()))))
               (_%keep-scm?268543%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts268527%_)))
               (_%verbosity268545%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts268527%_)))
               (_%debug268547%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts268527%_)))
               (_%parallel?268549%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts268527%_))))
          (if _%outdir268529%_
              (let ((__tmp268811
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir268529%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp268811))
              '#!void)
          (let ((__tmp268812
                 (lambda ()
                   (let ((__tmp268813
                          (lambda ()
                            (let ((__tmp268814
                                   (lambda ()
                                     (let ((__tmp268815
                                            (lambda ()
                                              (let ((__tmp268816
                                                     (lambda ()
                                                       (let ((__tmp268817
                                                              (lambda ()
                                                                (let ((__tmp268818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp268820
                                        (lambda ()
                                          (let ((__tmp268822
                                                 (lambda ()
                                                   (let ((__tmp268824
                                                          (lambda ()
                                                            (let ((__tmp268825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp268826
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath268526%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp268827
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath268526%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp268827))
                                       _%opts268527%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp268826
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp268825
                       gxc#current-compile-parallel
                       _%parallel?268549%_))))
                 (__tmp268823
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp268824
                                                      gxc#current-compile-identifiers
                                                      __tmp268823))))
                                                (__tmp268821
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath268526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp268822
                                             gxc#current-compile-context
                                             __tmp268821))))
                                       (__tmp268819 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp268820
                                    gxc#current-compile-timestamp
                                    __tmp268819)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp268818
                           gxc#current-compile-debug
                           _%debug268547%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp268817
                  gxc#current-compile-verbose
                  _%verbosity268545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp268816
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?268543%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp268815
                                        gxc#current-compile-gsc-options
                                        _%gsc-options268541%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp268814
                               gx#current-compilation-target
                               _%target268536%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp268813
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?268531%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp268812
             gxc#current-compile-output-dir
             _%outdir268529%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath268569%_)
        (let ((_%opts268571%_ '()))
          (gxc#compile-exe__% _%srcpath268569%_ _%opts268571%_))))
    (define gxc#compile-exe
      (lambda _g268828_
        (let ((_g268829_ (let () (declare (not safe)) (##length _g268828_))))
          (cond ((let () (declare (not safe)) (##fx= _g268829_ 1))
                 (apply gxc#compile-exe__0 _g268828_))
                ((let () (declare (not safe)) (##fx= _g268829_ 2))
                 (apply gxc#compile-exe__% _g268828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g268828_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx268522%_ _%opts268523%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts268523%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx268522%_
             _%opts268523%_)
            (gxc#compile-executable-module/separate
             _%ctx268522%_
             _%opts268523%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx268248%_ _%opts268249%_)
        (letrec ((_%generate-stub268251%_
                  (lambda (_%builtin-modules268518%_)
                    (let ((_%mod-main268520%_
                           (gxc#find-runtime-symbol _%ctx268248%_ 'main)))
                      (let ((__tmp268830
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules268518%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp268830))
                      (let ((__tmp268831
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main268520%_
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
                        (##write __tmp268831))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts268252%_
                  (lambda (_%gerbil-libdir268516%_)
                    (let ((__tmp268832
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir268516%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp268832 read))))
                 (_%replace-extension268253%_
                  (lambda (_%path268513%_ _%ext268514%_)
                    (string-append
                     (path-strip-extension _%path268513%_)
                     _%ext268514%_)))
                 (_%replace-extension-with-c268254%_
                  (lambda (_%path268511%_)
                    (_%replace-extension268253%_ _%path268511%_ '".c")))
                 (_%replace-extension-with-object268255%_
                  (lambda (_%path268509%_)
                    (_%replace-extension268253%_
                     _%path268509%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?268256%_
                  (lambda (_%ctx268507%_)
                    (if (_%exclude-module?268258%_ _%ctx268507%_)
                        '#f
                        (not (_%libgerbil-module?268257%_ _%ctx268507%_)))))
                 (_%libgerbil-module?268257%_
                  (lambda (_%ctx268500%_)
                    (let ((_%id-str268502%_
                           (symbol->string
                            (##structure-ref
                             _%ctx268500%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?268258%_ _%id-str268502%_)
                          '#f
                          (let ((_%$e268504%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str268502%_))))
                            (if _%$e268504%_
                                _%$e268504%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str268502%_))))))))
                 (_%exclude-module?268258%_
                  (lambda (_%ctx-or-str268496%_)
                    (let ((_%str268498%_
                           (if (string? _%ctx-or-str268496%_)
                               _%ctx-or-str268496%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str268496%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str268498%_))))
                 (_%not-file-empty?268259%_
                  (lambda (_%path268494%_)
                    (not (gxc#file-empty? _%path268494%_))))
                 (_%fold-libgerbil-runtime-scm268260%_
                  (lambda (_%gerbil-staticdir268487%_ _%libgerbil-scm268488%_)
                    (let ((_%gerbil-runtime-scm268492%_
                           (let ((__tmp268833
                                  (lambda (_%rtm268490%_)
                                    (path-expand
                                     (let ((__tmp268834
                                            (let ((__tmp268835
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm268490%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp268835
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp268834 '".scm"))
                                     _%gerbil-staticdir268487%_))))
                             (declare (not safe))
                             (##map __tmp268833 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates268261%_
                       (append _%gerbil-runtime-scm268492%_
                               _%libgerbil-scm268488%_)))))
                 (_%remove-duplicates268261%_
                  (lambda (_%strlst268447%_)
                    (let _%loop268449%_ ((_%rest268451%_ _%strlst268447%_)
                                         (_%result268452%_ '()))
                      (let* ((_%rest268453268461%_ _%rest268451%_)
                             (_%else268455268469%_
                              (lambda () (reverse! _%result268452%_)))
                             (_%K268457268475%_
                              (lambda (_%rest268472%_ _%path268473%_)
                                (if (member _%path268473%_ _%result268452%_)
                                    (_%loop268449%_
                                     _%rest268472%_
                                     _%result268452%_)
                                    (_%loop268449%_
                                     _%rest268472%_
                                     (cons _%path268473%_
                                           _%result268452%_))))))
                        (if (pair? _%rest268453268461%_)
                            (let ((_%hd268458268478%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest268453268461%_)))
                                  (_%tl268459268480%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest268453268461%_))))
                              (let* ((_%path268483%_ _%hd268458268478%_)
                                     (_%rest268485%_ _%tl268459268480%_))
                                (_%K268457268475%_
                                 _%rest268485%_
                                 _%path268483%_)))
                            (_%else268455268469%_))))))
                 (_%compile-stub268262%_
                  (lambda (_%output-scm268269%_ _%output-bin268270%_)
                    (let* ((_%gerbil-home268272%_
                            (let ((__tmp268836
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp268836)))
                           (_%gerbil-libdir268274%_
                            (path-expand '"lib" _%gerbil-home268272%_))
                           (_%gerbil-staticdir268276%_
                            (path-expand '"static" _%gerbil-libdir268274%_))
                           (_%deps268278%_
                            (gxc#find-runtime-module-deps _%ctx268248%_))
                           (_%libgerbil-deps268280%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?268257%_
                               _%deps268278%_)))
                           (_%libgerbil-scm268282%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps268280%_)))
                           (_%libgerbil-scm268284%_
                            (_%fold-libgerbil-runtime-scm268260%_
                             _%gerbil-staticdir268276%_
                             _%libgerbil-scm268282%_))
                           (_%libgerbil-c268286%_
                            (map _%replace-extension-with-c268254%_
                                 _%libgerbil-scm268284%_))
                           (_%libgerbil-o268288%_
                            (map _%replace-extension-with-object268255%_
                                 _%libgerbil-scm268284%_))
                           (_%src-deps268290%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?268256%_
                               _%deps268278%_)))
                           (_%src-deps-scm268292%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps268290%_)))
                           (_%src-deps-scm268294%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?268259%_
                               _%src-deps-scm268292%_)))
                           (_%src-deps-scm268296%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm268294%_)))
                           (_%src-deps-c268298%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c268254%_
                                     _%src-deps-scm268296%_)))
                           (_%src-deps-o268300%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object268255%_
                                     _%src-deps-scm268296%_)))
                           (_%src-bin-scm268302%_
                            (gxc#find-static-module-file _%ctx268248%_))
                           (_%src-bin-scm268304%_
                            (path-expand _%src-bin-scm268302%_))
                           (_%src-bin-c268306%_
                            (_%replace-extension-with-c268254%_
                             _%src-bin-scm268304%_))
                           (_%src-bin-o268308%_
                            (_%replace-extension-with-object268255%_
                             _%src-bin-scm268304%_))
                           (_%output-bin268310%_
                            (path-expand _%output-bin268270%_))
                           (_%output-scm268312%_
                            (path-expand _%output-scm268269%_))
                           (_%output-c268314%_
                            (_%replace-extension-with-c268254%_
                             _%output-scm268312%_))
                           (_%output-o268316%_
                            (_%replace-extension-with-object268255%_
                             _%output-scm268312%_))
                           (_%output_-c268318%_
                            (_%replace-extension268253%_
                             _%output-scm268312%_
                             '"_.c"))
                           (_%output_-o268320%_
                            (_%replace-extension268253%_
                             _%output-scm268312%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts268322%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts268324%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts268326%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir268276%_))
                           (_%output-ld-opts268328%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts268330%_
                            (_%get-libgerbil-ld-opts268252%_
                             _%gerbil-libdir268274%_))
                           (_%rpath268332%_
                            (gxc#gerbil-rpath _%gerbil-libdir268274%_))
                           (_%builtin-modules268336%_
                            (_%remove-duplicates268261%_
                             (let ((__tmp268837
                                    (let ((__tmp268839
                                           (lambda (_%mod268334%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod268334%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp268838
                                           (cons _%ctx268248%_
                                                 _%deps268278%_)))
                                      (declare (not safe))
                                      (##map __tmp268839 __tmp268838))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp268837)))))
                      (letrec ((_%compile-obj268339%_
                                (lambda (_%scm-path268346%_ _%c-path268347%_)
                                  (let* ((_%o-path268349%_
                                          (_%replace-extension268253%_
                                           _%c-path268347%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock268351%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path268349%_
                                             '".lock")))
                                         (_%locked268353%_ '#f)
                                         (_%unlock268356%_
                                          (lambda ()
                                            (close-port _%locked268353%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock268351%_)))))
                                    (let _%retry268359%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock268351%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry268359%_))
                                          (begin
                                            (set! _%locked268353%_
                                                  (let* ((_%handler268362%_
                                                          false)
                                                         (_%thunk268366%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock268351%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler268371%_ _%handler268362%_)
                 (_%thunk268427%_ _%thunk268366%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler268371%_
                                                     _%thunk268427%_)))
                                            (if _%locked268353%_
                                                '#!void
                                                (_%retry268359%_)))))
                                    (let ((__tmp268841
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path268349%_)))
                                                     (not _%scm-path268346%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path268346%_
                                                        _%o-path268349%_)))
                                                 (let ((_%gsc-cc-opts268444%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp268842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp268843 (cons _%c-path268347%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp268843
                            _%gsc-static-opts268326%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp268842 _%gsc-cc-opts268444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp268840
                                           (lambda () (_%unlock268356%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp268841
                                       __tmp268840))))))
                        (let ((__tmp268844
                               (lambda ()
                                 (let ((__tmp268845
                                        (path-directory _%output-bin268310%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp268845)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp268844))
                        (gxc#with-output-to-scheme-file
                         _%output-scm268312%_
                         (lambda ()
                           (_%generate-stub268251%_
                            _%builtin-modules268336%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it268344%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp268846
                                                   (let ((__tmp268847
                                                          (let ((__tmp268848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm268304%_
                               (cons _%output-scm268312%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp268848 _%src-deps-scm268296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp268847
                                                      _%libgerbil-c268286%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp268846
                                               _%gsc-link-opts268322%_))))
                                     (for-each
                                      _%compile-obj268339%_
                                      (let ((__tmp268849
                                             (cons _%src-bin-scm268304%_
                                                   (cons _%output-scm268312%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp268849
                                         _%src-deps-scm268296%_))
                                      (let ((__tmp268850
                                             (cons _%src-bin-c268306%_
                                                   (cons _%output-c268314%_
                                                         (cons _%output_-c268318%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp268850
                                         _%src-deps-c268298%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin268310%_
                                                        (let ((__tmp268851
                                                               (cons _%src-bin-o268308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o268316%_
                                   (cons _%output_-o268320%_
                                         (let ((__tmp268852
                                                (let ((__tmp268853
                                                       (let ((__tmp268855
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir268274%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts268330%_))))
                     (__tmp268854
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath268332%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp268855 __tmp268854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp268853
                                                   _%output-ld-opts268328%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp268852
                                            _%libgerbil-o268288%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp268851 _%src-deps-o268300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp268856
                                            (cons _%output-c268314%_
                                                  (cons _%output_-c268318%_
                                                        (cons _%output-o268316%_
                                                              (cons _%output_-o268320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp268856)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it268344%_))
                                  (_%compile-it268344%_)))
                            '#!void))))))
          (let* ((_%output-bin268264%_
                  (gxc#compile-exe-output-file _%ctx268248%_ _%opts268249%_))
                 (_%output-scm268266%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin268264%_ '"__exe.scm"))))
            (_%compile-stub268262%_
             _%output-scm268266%_
             _%output-bin268264%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx268070%_ _%opts268071%_)
        (letrec ((_%reset-declare268073%_
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
                 (_%generate-stub268074%_
                  (lambda (_%deps268239%_)
                    (let ((_%mod-main268241%_
                           (gxc#find-runtime-symbol _%ctx268070%_ 'main))
                          (_%reset-decl268242%_ (_%reset-declare268073%_))
                          (_%user-decl268243%_ (_%user-declare268075%_)))
                      (for-each
                       (lambda (_%dep268245%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl268242%_))
                         (newline)
                         (if _%user-decl268243%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl268243%_))
                               (newline))
                             '#!void)
                         (let ((__tmp268857
                                (cons 'include (cons _%dep268245%_ '()))))
                           (declare (not safe))
                           (##write __tmp268857))
                         (newline))
                       _%deps268239%_)
                      (let ((__tmp268858
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main268241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp268858))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare268075%_
                  (lambda ()
                    (let* ((_%gsc-opts268144%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts268071%_)))
                           (_%gsc-prelude268146%_
                            (if _%gsc-opts268144%_
                                (member '"-prelude" _%gsc-opts268144%_)
                                '#f))
                           (_%gsc-prelude268148%_
                            (if _%gsc-prelude268146%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude268146%_)))
                                '#f)))
                      (let _%lp268151%_ ((_%rest268153%_
                                          (cons _%gsc-prelude268148%_ '()))
                                         (_%user-decls268154%_ '()))
                        (let* ((_%rest268155268163%_ _%rest268153%_)
                               (_%else268157268171%_
                                (lambda ()
                                  (if (null? _%user-decls268154%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls268154%_)))))
                               (_%K268159268227%_
                                (lambda (_%rest268174%_ _%expr268175%_)
                                  (let* ((_%expr268176268188%_ _%expr268175%_)
                                         (_%else268179268196%_
                                          (lambda ()
                                            (_%lp268151%_
                                             _%rest268174%_
                                             _%user-decls268154%_))))
                                    (let ((_%K268184268217%_
                                           (lambda (_%decls268215%_)
                                             (_%lp268151%_
                                              _%rest268174%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls268154%_
                                                 _%decls268215%_)))))
                                          (_%K268181268202%_
                                           (lambda (_%exprs268200%_)
                                             (_%lp268151%_
                                              (append _%exprs268200%_
                                                      _%rest268174%_)
                                              _%user-decls268154%_))))
                                      (if (pair? _%expr268176268188%_)
                                          (let ((_%tl268186268222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr268176268188%_)))
                                                (_%hd268185268220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr268176268188%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd268185268220%_
                                                         'declare))
                                                (let ((_%decls268225%_
                                                       _%tl268186268222%_))
                                                  (_%K268184268217%_
                                                   _%decls268225%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd268185268220%_
                                                             'begin))
                                                    (let ((_%exprs268210%_
                                                           _%tl268186268222%_))
                                                      (_%K268181268202%_
                                                       _%exprs268210%_))
                                                    (_%else268179268196%_))))
                                          (_%else268179268196%_)))))))
                          (if (pair? _%rest268155268163%_)
                              (let ((_%hd268160268230%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest268155268163%_)))
                                    (_%tl268161268232%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest268155268163%_))))
                                (let* ((_%expr268235%_ _%hd268160268230%_)
                                       (_%rest268237%_ _%tl268161268232%_))
                                  (_%K268159268227%_
                                   _%rest268237%_
                                   _%expr268235%_)))
                              (_%else268157268171%_)))))))
                 (_%compile-stub268076%_
                  (lambda (_%output-scm268083%_ _%output-bin268084%_)
                    (let* ((_%gerbil-home268086%_
                            (let ((__tmp268859
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp268859)))
                           (_%gerbil-libdir268088%_
                            (path-expand '"lib" _%gerbil-home268086%_))
                           (_%runtime268090%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp268092%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home268086%_))
                           (_%include-gambit-sharp268094%_
                            (gxc#include-source _%gambit-sharp268092%_))
                           (_%bin-scm268096%_
                            (gxc#find-static-module-file _%ctx268070%_))
                           (_%deps268098%_
                            (gxc#find-runtime-module-deps _%ctx268070%_))
                           (_%deps268100%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps268098%_)))
                           (_%deps268105%_
                            (let ((__tmp268860
                                   (lambda (_%$obj268102%_)
                                     (not (gxc#file-empty? _%$obj268102%_)))))
                              (declare (not safe))
                              (##filter __tmp268860 _%deps268100%_)))
                           (_%deps268109%_
                            (let ((__tmp268861
                                   (lambda (_%f268107%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f268107%_
                                             _%runtime268090%_))))))
                              (declare (not safe))
                              (##filter __tmp268861 _%deps268105%_)))
                           (_%output-base268111%_
                            (let ((__tmp268862
                                   (path-strip-extension
                                    _%output-scm268083%_)))
                              (declare (not safe))
                              (##string-append __tmp268862)))
                           (_%output-c268113%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base268111%_ '".c")))
                           (_%output-o268115%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base268111%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_268117%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base268111%_ '"_.c")))
                           (_%output-o_268119%_
                            (let ((__tmp268863
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base268111%_
                               __tmp268863)))
                           (_%gsc-link-opts268121%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts268123%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts268125%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir268088%_)))
                           (_%output-ld-opts268127%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros268129%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp268094%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp268094%_
                                            '()))))
                           (_%gsc-link-opts268131%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts268121%_
                               _%gsc-gx-macros268129%_)))
                           (_%rpath268133%_
                            (gxc#gerbil-rpath _%gerbil-libdir268088%_))
                           (_%default-ld-options268135%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp268864
                             (lambda ()
                               (let ((__tmp268865
                                      (path-directory _%output-bin268084%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp268865)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp268864))
                      (gxc#with-output-to-scheme-file
                       _%output-scm268083%_
                       (lambda ()
                         (_%generate-stub268074%_
                          (let ((__tmp268866
                                 (let ((__tmp268867
                                        (cons _%bin-scm268096%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp268867
                                    _%deps268109%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp268866 _%runtime268090%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it268141%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_268117%_
                                                      (let ((__tmp268868
                                                             (cons _%output-scm268083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp268868 _%gsc-link-opts268131%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp268869
                                                 (let ((__tmp268870
                                                        (cons _%output-c268113%_
                                                              (cons _%output-c_268117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp268870
                                                    _%gsc-static-opts268125%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp268869
                                             _%gsc-cc-opts268123%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin268084%_
                                                      (cons _%output-o268115%_
                                                            (cons _%output-o_268119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp268871
                                 (let ((__tmp268873
                                        (cons '"-L"
                                              (cons _%gerbil-libdir268088%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options268135%_))))
                                       (__tmp268872
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath268133%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp268873 __tmp268872))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp268871
                             _%output-ld-opts268127%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it268141%_))
                                (_%compile-it268141%_)))
                          '#!void)))))
          (let* ((_%output-bin268078%_
                  (gxc#compile-exe-output-file _%ctx268070%_ _%opts268071%_))
                 (_%output-scm268080%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin268078%_ '"__exe.scm"))))
            (_%compile-stub268076%_
             _%output-scm268080%_
             _%output-bin268078%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx268019%_ _%id268020%_)
        (let ((_%$e268066%_
               (let ((__tmp268875
                      (lambda (_%e268021268023%_)
                        (let* ((_%e268021268025268035%_ _%e268021268023%_)
                               (_%else268027268043%_ (lambda () '#f))
                               (_%K268029268047%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e268021268025268035%_
                                 'gx#module-export::t))
                              (let* ((_%e268030268050%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e268021268025268035%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e268031268053%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e268021268025268035%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e268032268056%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e268021268025268035%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e268032268056%_ '0))
                                    (let ((_%e268033268059%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e268021268025268035%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g268061268063%_)
                                             (eq? _%g268061268063%_
                                                  _%id268020%_))
                                           _%e268033268059%_)
                                          (_%K268029268047%_)
                                          (_%else268027268043%_)))
                                    (_%else268027268043%_)))
                              (_%else268027268043%_)))))
                     (__tmp268874
                      (##structure-ref
                       _%ctx268019%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp268875 __tmp268874))))
          (if _%$e268066%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e268066%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx268010%_ _%id268011%_)
        (let ((_%$e268013%_
               (gxc#find-export-binding _%ctx268010%_ _%id268011%_)))
          (if _%$e268013%_
              ((lambda (_%bind268016%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind268016%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id268011%_)))
                 (##structure-ref _%bind268016%_ '1 gx#binding::t '#f))
               _%$e268013%_)
              (let ((__tmp268876
                     (##structure-ref
                      _%ctx268010%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp268876
                 _%id268011%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx267876%_)
        (letrec* ((_%ht267878%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template267879%_
                   (lambda (_%in267955%_ _%phi267956%_)
                     (let ((_%iphi267958%_
                            (fx+ _%phi267956%_
                                 (##direct-structure-ref
                                  _%in267955%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports267959%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in267955%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp267961%_ ((_%rest267963%_ _%imports267959%_)
                                          (_%r267964%_ '()))
                         (let* ((_%rest267965267973%_ _%rest267963%_)
                                (_%else267967267981%_ (lambda () _%r267964%_))
                                (_%K267969267998%_
                                 (lambda (_%rest267984%_ _%in267985%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in267985%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi267958%_))
                                           (_%lp267961%_
                                            _%rest267984%_
                                            (cons _%in267985%_ _%r267964%_))
                                           (_%lp267961%_
                                            _%rest267984%_
                                            _%r267964%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in267985%_
                                              'gx#module-import::t))
                                           (let ((_%iphi267989%_
                                                  (fx+ _%phi267956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in267985%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi267989%_))
                                                 (_%lp267961%_
                                                  _%rest267984%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in267985%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r267964%_))
                                                 (_%lp267961%_
                                                  _%rest267984%_
                                                  _%r267964%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in267985%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi267992%_
                                                      (fx+ _%iphi267958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in267985%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi267992%_))
                                                     (_%lp267961%_
                                                      _%rest267984%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in267985%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r267964%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi267992%_))
                                                         (_%lp267961%_
                                                          _%rest267984%_
                                                          (let ((__tmp268877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template267879%_
                          _%in267985%_
                          _%iphi267958%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r267964%_ __tmp268877)))
                 (_%lp267961%_ _%rest267984%_ _%r267964%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp267961%_
                                                _%rest267984%_
                                                _%r267964%_)))))))
                           (if (pair? _%rest267965267973%_)
                               (let ((_%hd267970268001%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest267965267973%_)))
                                     (_%tl267971268003%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest267965267973%_))))
                                 (let* ((_%in268006%_ _%hd267970268001%_)
                                        (_%rest268008%_ _%tl267971268003%_))
                                   (_%K267969267998%_
                                    _%rest268008%_
                                    _%in268006%_)))
                               (_%else267967267981%_)))))))
                  (_%find-deps267880%_
                   (lambda (_%rest267888%_ _%deps267889%_)
                     (let* ((_%rest267890267898%_ _%rest267888%_)
                            (_%else267892267906%_ (lambda () _%deps267889%_))
                            (_%K267894267943%_
                             (lambda (_%rest267909%_ _%hd267910%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd267910%_
                                      'gx#module-context::t))
                                   (let ((_%id267913%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd267910%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports267914%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd267910%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht267878%_
                                            _%id267913%_))
                                         (_%find-deps267880%_
                                          _%rest267909%_
                                          _%deps267889%_)
                                         (let ((_%$e267917%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd267910%_))))
                                           (if _%$e267917%_
                                               ((lambda (_%pre267920%_)
                                                  (let ((_%xdeps267922%_
                                                         (_%find-deps267880%_
                                                          (cons _%pre267920%_
                                                                _%imports267914%_)
                                                          _%deps267889%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht267878%_
                                                       _%id267913%_
                                                       _%hd267910%_))
                                                    (_%find-deps267880%_
                                                     _%rest267909%_
                                                     (cons _%hd267910%_
                                                           _%xdeps267922%_))))
                                                _%$e267917%_)
                                               (let ((_%xdeps267925%_
                                                      (_%find-deps267880%_
                                                       _%imports267914%_
                                                       _%deps267889%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht267878%_
                                                    _%id267913%_
                                                    _%hd267910%_))
                                                 (_%find-deps267880%_
                                                  _%rest267909%_
                                                  (cons _%hd267910%_
                                                        _%xdeps267925%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd267910%_
                                          'gx#prelude-context::t))
                                       (let ((_%id267928%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd267910%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht267878%_
                                                _%id267928%_))
                                             (_%find-deps267880%_
                                              _%rest267909%_
                                              _%deps267889%_)
                                             (let ((_%xdeps267932%_
                                                    (_%find-deps267880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd267910%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps267889%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht267878%_
                                                      _%id267928%_))
                                                   (_%find-deps267880%_
                                                    _%rest267909%_
                                                    _%xdeps267932%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht267878%_
                                                        _%id267928%_
                                                        _%hd267910%_))
                                                     (_%find-deps267880%_
                                                      _%rest267909%_
                                                      (cons _%hd267910%_
                                                            _%xdeps267932%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd267910%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd267910%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps267880%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd267910%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest267909%_)
                                                _%deps267889%_)
                                               (_%find-deps267880%_
                                                _%rest267909%_
                                                _%deps267889%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd267910%_
                                                  'gx#module-export::t))
                                               (_%find-deps267880%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd267910%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest267909%_)
                                                _%deps267889%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd267910%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd267910%_ '2 '#f '#f)))
               (_%find-deps267880%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd267910%_ '1 '#f '#f))
                      _%rest267909%_)
                _%deps267889%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd267910%_ '2 '#f '#f)))
                   (let ((_%xdeps267939%_
                          (_%import-set-template267879%_ _%hd267910%_ '0)))
                     (_%find-deps267880%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest267909%_ _%xdeps267939%_))
                      _%deps267889%_))
                   (_%find-deps267880%_ _%rest267909%_ _%deps267889%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd267910%_))))))))))
                       (if (pair? _%rest267890267898%_)
                           (let ((_%hd267895267946%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest267890267898%_)))
                                 (_%tl267896267948%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest267890267898%_))))
                             (let* ((_%hd267951%_ _%hd267895267946%_)
                                    (_%rest267953%_ _%tl267896267948%_))
                               (_%K267894267943%_
                                _%rest267953%_
                                _%hd267951%_)))
                           (_%else267892267906%_))))))
          (let ((__tmp268878
                 (filter gx#expander-context-id
                         (_%find-deps267880%_
                          (let ((_%$e267882%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx267876%_))))
                            (if _%$e267882%_
                                ((lambda (_%pre267885%_)
                                   (cons _%pre267885%_
                                         (##structure-ref
                                          _%ctx267876%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e267882%_)
                                (##structure-ref
                                 _%ctx267876%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp268878)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx267806%_)
        (let* ((_%context-id267808%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx267806%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx267806%_ '1 '#f '#f))
                    (string->symbol _%ctx267806%_)))
               (_%scm267810%_
                (let ((__tmp268879
                       (gxc#static-module-name _%context-id267808%_)))
                  (declare (not safe))
                  (##string-append __tmp268879 '".scm")))
               (_%dirs267812%_ (let () (declare (not safe)) (load-path)))
               (_%dirs267818%_
                (let ((_%user-libpath267814%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath267814%_
                      (let ((_%user-libpath267816%_
                             (path-expand '"lib" _%user-libpath267814%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath267816%_ _%dirs267812%_))
                            _%dirs267812%_
                            (cons _%user-libpath267816%_ _%dirs267812%_)))
                      _%dirs267812%_)))
               (_%dirs267828%_
                (let ((_%$e267820%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e267820%_
                      ((lambda (_%g267822267824%_)
                         (cons _%g267822267824%_ _%dirs267818%_))
                       _%$e267820%_)
                      _%dirs267818%_)))
               (_%dirs267834%_
                (let ((__tmp268880
                       (lambda (_%g267829267831%_)
                         (path-expand '"static" _%g267829267831%_))))
                  (declare (not safe))
                  (##map __tmp268880 _%dirs267828%_))))
          (let _%lp267837%_ ((_%rest267839%_ _%dirs267834%_))
            (let* ((_%rest267840267848%_ _%rest267839%_)
                   (_%else267842267856%_
                    (lambda ()
                      (let ((__tmp268881
                             (##structure-ref
                              _%ctx267806%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp268881
                         _%scm267810%_))))
                   (_%K267844267864%_
                    (lambda (_%rest267859%_ _%dir267860%_)
                      (let ((_%path267862%_
                             (path-expand _%scm267810%_ _%dir267860%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path267862%_))
                            _%path267862%_
                            (_%lp267837%_ _%rest267859%_))))))
              (if (pair? _%rest267840267848%_)
                  (let ((_%hd267845267867%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest267840267848%_)))
                        (_%tl267846267869%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest267840267848%_))))
                    (let* ((_%dir267872%_ _%hd267845267867%_)
                           (_%rest267874%_ _%tl267846267869%_))
                      (_%K267844267864%_ _%rest267874%_ _%dir267872%_)))
                  (_%else267842267856%_)))))))
    (define gxc#file-empty?
      (lambda (_%path267804%_)
        (zero? (let ((__tmp268882 (file-info _%path267804%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp268882)))))
    (define gxc#compile-top-module
      (lambda (_%ctx267795%_)
        (let ((__tmp268883
               (lambda ()
                 (let ((__tmp268884
                        (lambda ()
                          (let ((__tmp268885
                                 (lambda ()
                                   (let ((__tmp268887
                                          (lambda ()
                                            (let ((__tmp268889
                                                   (lambda ()
                                                     (let ((__tmp268891
                                                            (lambda ()
                                                              (let ((__tmp268892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx267795%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp268892))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp268893
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx267795%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp268893))
                          '#!void)
                      (gxc#collect-bindings _%ctx267795%_)
                      (gxc#compile-runtime-code _%ctx267795%_)
                      (gxc#compile-meta-code _%ctx267795%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx267795%_)
                          '#!void)))
                   (__tmp268890
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
                __tmp268891
                gxc#current-compile-runtime-names
                __tmp268890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp268888
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp268889
                                               gxc#current-compile-runtime-sections
                                               __tmp268888))))
                                         (__tmp268886
                                          (let ((__obj268784
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj268784))
                                            __obj268784)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp268887
                                      gxc#current-compile-symbol-table
                                      __tmp268886)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp268885
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp268884
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268883
           gx#current-expander-context
           _%ctx267795%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx267793%_)
        (let ((__tmp268894
               (##structure-ref _%ctx267793%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp268894))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx267738%_)
        (letrec ((_%compile1267740%_
                  (lambda (_%ctx267782%_)
                    (let* ((_%code267784%_
                            (##structure-ref
                             _%ctx267782%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm267788%_
                            (let ((_%idstr267786%_
                                   (let ((__tmp268895
                                          (##structure-ref
                                           _%ctx267782%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp268895))))
                              (declare (not safe))
                              (##string-append _%idstr267786%_ '"~0")))
                           (_%rtc?267790%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code267784%_))))
                      (if _%rtc?267790%_
                          (let ((__tmp268896
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp268896
                             _%ctx267782%_
                             _%rtm267788%_))
                          '#!void)
                      (_%generate-runtime-code267742%_
                       _%ctx267782%_
                       _%code267784%_
                       (if _%rtc?267790%_ _%rtm267788%_ '#f)))))
                 (_%context-timestamp267741%_
                  (lambda (_%ctx267780%_)
                    (let ((__tmp268897
                           (let ((__tmp268898
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx267780%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp268898 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp268897))))
                 (_%generate-runtime-code267742%_
                  (lambda (_%ctx267749%_ _%code267750%_ _%rtm267751%_)
                    (let* ((_%runtime-code?267753%_ (if _%rtm267751%_ '#t '#f))
                           (_%lifts267755%_ (box '()))
                           (_%runtime-code267761%_
                            (if _%runtime-code?267753%_
                                (let ((__tmp268899
                                       (lambda ()
                                         (let ((__tmp268900
                                                (lambda ()
                                                  (let ((__tmp268901
                                                         (lambda ()
                                                           (let ((__tmp268903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code267750%_))))
                         (__tmp268902
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp268903
                      gxc#current-compile-marks
                      __tmp268902)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp268901
                                                     gxc#current-compile-lift
                                                     _%lifts267755%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp268900
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp268899
                                   gx#current-expander-context
                                   _%ctx267749%_))
                                '#f))
                           (_%runtime-code267763%_
                            (if _%runtime-code?267753%_
                                (if (null? (unbox _%lifts267755%_))
                                    _%runtime-code267761%_
                                    (cons 'begin
                                          (let ((__tmp268905
                                                 (cons _%runtime-code267761%_
                                                       '()))
                                                (__tmp268904
                                                 (reverse (unbox _%lifts267755%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp268905
                                             __tmp268904))))
                                '#f))
                           (_%runtime-code267765%_
                            (if _%runtime-code?267753%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp267741%_
                                                         _%ctx267749%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code267763%_ '())))
                                '#f))
                           (_%loader-code267768%_
                            (let ((__tmp268906
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code267750%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp268906
                               gx#current-expander-context
                               _%ctx267749%_)))
                           (_%loader-code267770%_
                            (cons 'begin
                                  (cons _%loader-code267768%_
                                        (cons (if _%runtime-code?267753%_
                                                  (cons 'load-module
                                                        (cons _%rtm267751%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0267772%_
                            (gxc#compile-output-file _%ctx267749%_ '0 '".scm"))
                           (_%scmrt267774%_
                            (gxc#compile-output-file
                             _%ctx267749%_
                             '#f
                             '".scm"))
                           (_%scms267776%_
                            (gxc#compile-static-output-file _%ctx267749%_)))
                      (if _%runtime-code?267753%_
                          (gxc#compile-scm-file__0
                           _%scm0267772%_
                           _%runtime-code267765%_)
                          '#!void)
                      (let ((__tmp268907
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt267774%_
                                _%loader-code267770%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp268907
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms267776%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms267776%_))
                          '#!void)
                      (if _%runtime-code?267753%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0267772%_ _%scms267776%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms267776%_ void)))))))
          (let* ((_%all-modules267744%_
                  (cons _%ctx267738%_ (gxc#lift-nested-modules _%ctx267738%_)))
                 (__tmp268908
                  (lambda (_%ctx267746%_)
                    (let ((__tmp268909
                           (lambda () (_%compile1267740%_ _%ctx267746%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp268909
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp268908 _%all-modules267744%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx267637%_)
        (letrec ((_%compile-ssi267639%_
                  (lambda (_%code267706%_)
                    (let* ((_%path267708%_
                            (gxc#compile-output-file
                             _%ctx267637%_
                             '#f
                             '".ssi"))
                           (_%prelude267720%_
                            (let* ((_%super267710%_
                                    (##structure-ref
                                     _%ctx267637%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e267712%_
                                    (##structure-ref
                                     _%super267710%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e267712%_
                                  ((lambda (_%g267714267716%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g267714267716%_)))
                                   _%$e267712%_)
                                  ':<root>)))
                           (_%ns267722%_
                            (##structure-ref
                             _%ctx267637%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr267724%_
                            (symbol->string
                             (##structure-ref
                              _%ctx267637%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg267732%_
                            (let ((_%$e267726%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr267724%_ '#\/))))
                              (if _%$e267726%_
                                  ((lambda (_%x267729%_)
                                     (let ((__tmp268910
                                            (substring
                                             _%idstr267724%_
                                             '0
                                             _%x267729%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp268910)))
                                   _%$e267726%_)
                                  '#f)))
                           (_%rt267734%_
                            (let ((__tmp268911
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp268911 _%ctx267637%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path267708%_))
                      (gxc#with-output-to-scheme-file
                       _%path267708%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude267720%_))
                         (if _%pkg267732%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg267732%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns267722%_))
                         (newline)
                         (pretty-print _%code267706%_)
                         (if _%rt267734%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt267734%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi267640%_
                  (lambda (_%part267645%_)
                    (let* ((_%part267646267659%_ _%part267645%_)
                           (_%E267648267663%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part267646267659%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K267649267675%_
                            (lambda (_%code267666%_
                                     _%n267667%_
                                     _%phi267668%_
                                     _%phi-ctx267669%_)
                              (let ((_%code267673%_
                                     (let ((__tmp268912
                                            (lambda ()
                                              (let ((__tmp268913
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code267666%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp268913
                                                 gx#current-expander-phi
                                                 _%phi267668%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp268912
                                        gx#current-expander-context
                                        _%phi-ctx267669%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx267637%_
                                  _%n267667%_
                                  '".scm")
                                 _%code267673%_
                                 '#t)))))
                      (if (pair? _%part267646267659%_)
                          (let ((_%hd267650267678%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part267646267659%_)))
                                (_%tl267651267680%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part267646267659%_))))
                            (let ((_%phi-ctx267683%_ _%hd267650267678%_))
                              (if (pair? _%tl267651267680%_)
                                  (let ((_%hd267652267685%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl267651267680%_)))
                                        (_%tl267653267687%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl267651267680%_))))
                                    (let ((_%phi267690%_ _%hd267652267685%_))
                                      (if (pair? _%tl267653267687%_)
                                          (let ((_%hd267654267692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl267653267687%_)))
                                                (_%tl267655267694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl267653267687%_))))
                                            (let ((_%n267697%_
                                                   _%hd267654267692%_))
                                              (if (pair? _%tl267655267694%_)
                                                  (let ((_%hd267656267699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl267655267694%_)))
                                                        (_%tl267657267701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl267655267694%_))))
                                                    (let ((_%code267704%_
                                                           _%hd267656267699%_))
                                                      (if (null? _%tl267657267701%_)
                                                          (_%K267649267675%_
                                                           _%code267704%_
                                                           _%n267697%_
                                                           _%phi267690%_
                                                           _%phi-ctx267683%_)
                                                          (_%E267648267663%_))))
                                                  (_%E267648267663%_))))
                                          (_%E267648267663%_))))
                                  (_%E267648267663%_))))
                          (_%E267648267663%_))))))
          (let ((_g268914_ (gxc#generate-meta-code _%ctx267637%_)))
            (begin
              (let ((_g268915_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g268914_)
                           (##values-length _g268914_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g268915_ 2)))
                    (error "Context expects 2 values" _g268915_)))
              (let ((_%ssi-code267642%_
                     (let () (declare (not safe)) (##values-ref _g268914_ 0)))
                    (_%phi-code267643%_
                     (let () (declare (not safe)) (##values-ref _g268914_ 1))))
                (begin
                  (_%compile-ssi267639%_ _%ssi-code267642%_)
                  (for-each _%compile-phi267640%_ _%phi-code267643%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx267619%_)
        (let* ((_%path267621%_
                (gxc#compile-output-file _%ctx267619%_ '#f '".ssxi.ss"))
               (_%code267623%_
                (let ((__tmp268916
                       (##structure-ref
                        _%ctx267619%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp268916)))
               (_%idstr267625%_
                (symbol->string
                 (##structure-ref
                  _%ctx267619%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg267633%_
                (let ((_%$e267627%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr267625%_ '#\/))))
                  (if _%$e267627%_
                      ((lambda (_%x267630%_)
                         (let ((__tmp268917
                                (substring _%idstr267625%_ '0 _%x267630%_)))
                           (declare (not safe))
                           (##string->symbol __tmp268917)))
                       _%$e267627%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path267621%_))
          (gxc#with-output-to-scheme-file
           _%path267621%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg267633%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg267633%_))
                 '#!void)
             (newline)
             (pretty-print _%code267623%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx267612%_)
        (let* ((_%state267614%_
                (let ((__obj268785
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj268785 _%ctx267612%_))
                  __obj268785))
               (_%ssi-code267616%_
                (let ((__tmp268918
                       (##structure-ref
                        _%ctx267612%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state267614%_
                   __tmp268918))))
          (values _%ssi-code267616%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state267614%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx267604%_)
        (let* ((_%lifts267606%_ (box '()))
               (__tmp268919
                (lambda ()
                  (let ((__tmp268921
                         (lambda ()
                           (let ((_%code267610%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx267604%_))))
                             (if (null? (unbox _%lifts267606%_))
                                 _%code267610%_
                                 (cons 'begin
                                       (let ((__tmp268923
                                              (cons _%code267610%_ '()))
                                             (__tmp268922
                                              (reverse (unbox _%lifts267606%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp268923
                                          __tmp268922)))))))
                        (__tmp268920
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp268921
                     gxc#current-compile-marks
                     __tmp268920)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268919
           gxc#current-compile-lift
           _%lifts267606%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx267600%_)
        (let ((_%modules267602%_ (box '())))
          (let ((__tmp268924
                 (##structure-ref _%ctx267600%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules267602%_ __tmp268924))
          (reverse (unbox _%modules267602%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path267580%_ _%code267581%_ _%phi?267582%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path267580%_))
        (gxc#with-output-to-scheme-file
         _%path267580%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp268925
                                           (if _%phi?267582%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp268925)))))))
           (pretty-print _%code267581%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it267586%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path267580%_ _%phi?267582%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp268926
                         (cons 'compile-file (cons _%path267580%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it267586%_ __tmp268926))
                  (_%compile-it267586%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path267591%_ _%code267592%_)
        (let ((_%phi?267594%_ '#f))
          (gxc#compile-scm-file__%
           _%path267591%_
           _%code267592%_
           _%phi?267594%_))))
    (define gxc#compile-scm-file
      (lambda _g268927_
        (let ((_g268928_ (let () (declare (not safe)) (##length _g268927_))))
          (cond ((let () (declare (not safe)) (##fx= _g268928_ 2))
                 (apply gxc#compile-scm-file__0 _g268927_))
                ((let () (declare (not safe)) (##fx= _g268928_ 3))
                 (apply gxc#compile-scm-file__% _g268927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g268927_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?267481%_)
        (let _%lp267483%_ ((_%rest267485%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts267486%_ '()))
          (let* ((_%rest267487267507%_ _%rest267485%_)
                 (_%else267491267515%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts267486%_)))
                        (reverse _%opts267486%_)))))
            (let ((_%K267501267558%_
                   (lambda (_%rest267556%_)
                     (_%lp267483%_ _%rest267556%_ _%opts267486%_)))
                  (_%K267496267540%_
                   (lambda (_%rest267538%_)
                     (_%lp267483%_ _%rest267538%_ _%opts267486%_)))
                  (_%K267493267522%_
                   (lambda (_%rest267519%_ _%opt267520%_)
                     (_%lp267483%_
                      _%rest267519%_
                      (cons _%opt267520%_ _%opts267486%_)))))
              (if (pair? _%rest267487267507%_)
                  (let ((_%tl267503267563%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest267487267507%_)))
                        (_%hd267502267561%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest267487267507%_))))
                    (if (equal? _%hd267502267561%_ '"-cc-options")
                        (if (pair? _%tl267503267563%_)
                            (let* ((_%tl267505267566%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl267503267563%_)))
                                   (_%rest267569%_ _%tl267505267566%_))
                              (_%K267501267558%_ _%rest267569%_))
                            (let ((_%opt267530%_ _%hd267502267561%_)
                                  (_%rest267532%_ _%tl267503267563%_))
                              (_%K267493267522%_
                               _%rest267532%_
                               _%opt267530%_)))
                        (if (equal? _%hd267502267561%_ '"-ld-options")
                            (if (pair? _%tl267503267563%_)
                                (let* ((_%tl267500267548%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl267503267563%_)))
                                       (_%rest267551%_ _%tl267500267548%_))
                                  (_%K267496267540%_ _%rest267551%_))
                                (let ((_%opt267530%_ _%hd267502267561%_)
                                      (_%rest267532%_ _%tl267503267563%_))
                                  (_%K267493267522%_
                                   _%rest267532%_
                                   _%opt267530%_)))
                            (let ((_%opt267530%_ _%hd267502267561%_)
                                  (_%rest267532%_ _%tl267503267563%_))
                              (_%K267493267522%_
                               _%rest267532%_
                               _%opt267530%_)))))
                  (_%else267491267515%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?267575%_ '#f)) (gxc#gsc-link-options__% _%phi?267575%_))))
    (define gxc#gsc-link-options
      (lambda _g268929_
        (let ((_g268930_ (let () (declare (not safe)) (##length _g268929_))))
          (cond ((let () (declare (not safe)) (##fx= _g268930_ 0))
                 (apply gxc#gsc-link-options__0 _g268929_))
                ((let () (declare (not safe)) (##fx= _g268930_ 1))
                 (apply gxc#gsc-link-options__% _g268929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g268929_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords267331%_ _%static?267327267332%_ _%phi?267333%_)
        (let ((_%static?267335%_
               (if (eq? _%static?267327267332%_ absent-value)
                   '#f
                   _%static?267327267332%_)))
          (if _%phi?267333%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp267337%_ ((_%rest267339%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts267340%_ '()))
                (let* ((_%rest267341267367%_ _%rest267339%_)
                       (_%else267346267375%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts267340%_)))
                              (reverse! _%opts267340%_)))))
                  (let ((_%K267361267438%_
                         (lambda (_%rest267435%_ _%opt267436%_)
                           (if _%static?267335%_
                               (_%lp267337%_
                                _%rest267435%_
                                (cons _%opt267436%_
                                      (cons '"-cc-options" _%opts267340%_)))
                               (_%lp267337%_ _%rest267435%_ _%opts267340%_))))
                        (_%K267356267415%_
                         (lambda (_%rest267412%_ _%opt267413%_)
                           (_%lp267337%_
                            _%rest267412%_
                            (cons _%opt267413%_
                                  (cons '"-cc-options" _%opts267340%_)))))
                        (_%K267351267395%_
                         (lambda (_%rest267393%_)
                           (_%lp267337%_ _%rest267393%_ _%opts267340%_)))
                        (_%K267348267381%_
                         (lambda (_%rest267379%_)
                           (_%lp267337%_ _%rest267379%_ _%opts267340%_))))
                    (if (pair? _%rest267341267367%_)
                        (let ((_%tl267363267443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest267341267367%_)))
                              (_%hd267362267441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest267341267367%_))))
                          (if (equal? _%hd267362267441%_ '"-cc-options")
                              (if (pair? _%tl267363267443%_)
                                  (let ((_%tl267365267448%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl267363267443%_)))
                                        (_%hd267364267446%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl267363267443%_))))
                                    (if (equal? _%hd267364267446%_ '"-Bstatic")
                                        (let ((_%opt267451%_
                                               _%hd267364267446%_)
                                              (_%rest267453%_
                                               _%tl267365267448%_))
                                          (_%K267361267438%_
                                           _%rest267453%_
                                           _%opt267451%_))
                                        (let ((_%opt267428%_
                                               _%hd267364267446%_)
                                              (_%rest267430%_
                                               _%tl267365267448%_))
                                          (_%K267356267415%_
                                           _%rest267430%_
                                           _%opt267428%_))))
                                  (let ((_%rest267387%_ _%tl267363267443%_))
                                    (_%K267348267381%_ _%rest267387%_)))
                              (if (equal? _%hd267362267441%_ '"-ld-options")
                                  (if (pair? _%tl267363267443%_)
                                      (let* ((_%tl267355267403%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl267363267443%_)))
                                             (_%rest267406%_
                                              _%tl267355267403%_))
                                        (_%K267351267395%_ _%rest267406%_))
                                      (let ((_%rest267387%_
                                             _%tl267363267443%_))
                                        (_%K267348267381%_ _%rest267387%_)))
                                  (let ((_%rest267387%_ _%tl267363267443%_))
                                    (_%K267348267381%_ _%rest267387%_)))))
                        (_%else267346267375%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords267458%_ _%static?267327267459%_)
        (let ((_%phi?267461%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords267458%_
           _%static?267327267459%_
           _%phi?267461%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g268931_
        (let ((_g268932_ (let () (declare (not safe)) (##length _g268931_))))
          (cond ((let () (declare (not safe)) (##fx= _g268932_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g268931_))
                ((let () (declare (not safe)) (##fx= _g268932_ 3))
                 (apply gxc#gsc-cc-options__%__% _g268931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g268931_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords267470%_ . _%args267471%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords267470%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords267470%_
                  'static:
                  absent-value))
               _%args267471%_)))
    (define gxc#gsc-cc-options
      (lambda _%args267328267477%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args267328267477%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords267177%_ _%static?267173267178%_ _%phi?267179%_)
        (let ((_%static?267181%_
               (if (eq? _%static?267173267178%_ absent-value)
                   '#f
                   _%static?267173267178%_)))
          (if _%phi?267179%_
              '()
              (let _%lp267183%_ ((_%rest267185%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts267186%_ '()))
                (let* ((_%rest267187267213%_ _%rest267185%_)
                       (_%else267192267221%_
                        (lambda () (reverse! _%opts267186%_))))
                  (let ((_%K267207267284%_
                         (lambda (_%rest267281%_ _%opt267282%_)
                           (if _%static?267181%_
                               (_%lp267183%_
                                _%rest267281%_
                                (cons _%opt267282%_
                                      (cons '"-ld-options" _%opts267186%_)))
                               (_%lp267183%_ _%rest267281%_ _%opts267186%_))))
                        (_%K267202267261%_
                         (lambda (_%rest267258%_ _%opt267259%_)
                           (_%lp267183%_
                            _%rest267258%_
                            (cons _%opt267259%_
                                  (cons '"-ld-options" _%opts267186%_)))))
                        (_%K267197267241%_
                         (lambda (_%rest267239%_)
                           (_%lp267183%_ _%rest267239%_ _%opts267186%_)))
                        (_%K267194267227%_
                         (lambda (_%rest267225%_)
                           (_%lp267183%_ _%rest267225%_ _%opts267186%_))))
                    (if (pair? _%rest267187267213%_)
                        (let ((_%tl267209267289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest267187267213%_)))
                              (_%hd267208267287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest267187267213%_))))
                          (if (equal? _%hd267208267287%_ '"-ld-options")
                              (if (pair? _%tl267209267289%_)
                                  (let ((_%tl267211267294%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl267209267289%_)))
                                        (_%hd267210267292%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl267209267289%_))))
                                    (if (equal? _%hd267210267292%_ '"-static")
                                        (let ((_%opt267297%_
                                               _%hd267210267292%_)
                                              (_%rest267299%_
                                               _%tl267211267294%_))
                                          (_%K267207267284%_
                                           _%rest267299%_
                                           _%opt267297%_))
                                        (let ((_%opt267274%_
                                               _%hd267210267292%_)
                                              (_%rest267276%_
                                               _%tl267211267294%_))
                                          (_%K267202267261%_
                                           _%rest267276%_
                                           _%opt267274%_))))
                                  (let ((_%rest267233%_ _%tl267209267289%_))
                                    (_%K267194267227%_ _%rest267233%_)))
                              (if (equal? _%hd267208267287%_ '"-cc-options")
                                  (if (pair? _%tl267209267289%_)
                                      (let* ((_%tl267201267249%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl267209267289%_)))
                                             (_%rest267252%_
                                              _%tl267201267249%_))
                                        (_%K267197267241%_ _%rest267252%_))
                                      (let ((_%rest267233%_
                                             _%tl267209267289%_))
                                        (_%K267194267227%_ _%rest267233%_)))
                                  (let ((_%rest267233%_ _%tl267209267289%_))
                                    (_%K267194267227%_ _%rest267233%_)))))
                        (_%else267192267221%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords267304%_ _%static?267173267305%_)
        (let ((_%phi?267307%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords267304%_
           _%static?267173267305%_
           _%phi?267307%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g268933_
        (let ((_g268934_ (let () (declare (not safe)) (##length _g268933_))))
          (cond ((let () (declare (not safe)) (##fx= _g268934_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g268933_))
                ((let () (declare (not safe)) (##fx= _g268934_ 3))
                 (apply gxc#gsc-ld-options__%__% _g268933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g268933_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords267316%_ . _%args267317%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords267316%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords267316%_
                  'static:
                  absent-value))
               _%args267317%_)))
    (define gxc#gsc-ld-options
      (lambda _%args267174267323%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args267174267323%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir267168%_)
        (let ((_%user-staticdir267170%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir267168%_
                       '" -I "
                       _%user-staticdir267170%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp267080%_ ((_%rest267082%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts267083%_ '()))
          (let* ((_%rest267084267104%_ _%rest267082%_)
                 (_%else267088267112%_ (lambda () _%opts267083%_)))
            (let ((_%K267098267155%_
                   (lambda (_%rest267153%_)
                     (_%lp267080%_ _%rest267153%_ _%opts267083%_)))
                  (_%K267093267133%_
                   (lambda (_%rest267130%_ _%opt267131%_)
                     (_%lp267080%_
                      _%rest267130%_
                      (let ((__tmp268935
                             (let ((__tmp268936
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt267131%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp268936))))
                        (declare (not safe))
                        (##append _%opts267083%_ __tmp268935)))))
                  (_%K267090267118%_
                   (lambda (_%rest267116%_)
                     (_%lp267080%_ _%rest267116%_ _%opts267083%_))))
              (if (pair? _%rest267084267104%_)
                  (let ((_%tl267100267160%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest267084267104%_)))
                        (_%hd267099267158%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest267084267104%_))))
                    (if (equal? _%hd267099267158%_ '"-cc-options")
                        (if (pair? _%tl267100267160%_)
                            (let* ((_%tl267102267163%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl267100267160%_)))
                                   (_%rest267166%_ _%tl267102267163%_))
                              (_%K267098267155%_ _%rest267166%_))
                            (let ((_%rest267124%_ _%tl267100267160%_))
                              (_%K267090267118%_ _%rest267124%_)))
                        (if (equal? _%hd267099267158%_ '"-ld-options")
                            (if (pair? _%tl267100267160%_)
                                (let ((_%tl267097267143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl267100267160%_)))
                                      (_%hd267096267141%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl267100267160%_))))
                                  (let ((_%opt267146%_ _%hd267096267141%_)
                                        (_%rest267148%_ _%tl267097267143%_))
                                    (_%K267093267133%_
                                     _%rest267148%_
                                     _%opt267146%_)))
                                (let ((_%rest267124%_ _%tl267100267160%_))
                                  (_%K267090267118%_ _%rest267124%_)))
                            (let ((_%rest267124%_ _%tl267100267160%_))
                              (_%K267090267118%_ _%rest267124%_)))))
                  (_%else267088267112%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str267077%_)
        (not (let () (declare (not safe)) (string-empty? _%str267077%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path267070%_ _%phi?267071%_)
        (let ((_%gsc-link-opts267073%_
               (gxc#gsc-link-options__% _%phi?267071%_))
              (_%gsc-cc-opts267074%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?267071%_))
              (_%gsc-ld-opts267075%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?267071%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp268937
                  (let ((__tmp268938
                         (let ((__tmp268939 (cons _%path267070%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp268939
                            _%gsc-link-opts267073%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp268938 _%gsc-ld-opts267075%_))))
             (declare (not safe))
             (foldr__0 cons __tmp268937 _%gsc-cc-opts267074%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx267036%_ _%n267037%_ _%ext267038%_)
        (letrec ((_%module-relative-path267040%_
                  (lambda (_%ctx267068%_)
                    (path-strip-directory
                     (let ((__tmp268940
                            (##structure-ref
                             _%ctx267068%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp268940)))))
                 (_%module-source-directory267041%_
                  (lambda (_%ctx267064%_)
                    (path-directory
                     (let ((_%mpath267066%_
                            (##structure-ref
                             _%ctx267064%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath267066%_)
                           _%mpath267066%_
                           (last _%mpath267066%_))))))
                 (_%section-string267042%_
                  (lambda (_%n267058%_)
                    (if (number? _%n267058%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n267058%_))
                        (if (symbol? _%n267058%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n267058%_))
                            (if (string? _%n267058%_)
                                _%n267058%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n267058%_)))))))
                 (_%file-name267043%_
                  (lambda (_%path267056%_)
                    (if _%n267037%_
                        (string-append
                         _%path267056%_
                         '"~"
                         (_%section-string267042%_ _%n267037%_)
                         _%ext267038%_)
                        (string-append _%path267056%_ _%ext267038%_))))
                 (_%file-path267044%_
                  (lambda ()
                    (let ((_%$e267050%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e267050%_
                          ((lambda (_%outdir267053%_)
                             (path-expand
                              (_%file-name267043%_
                               (let ((__tmp268941
                                      (##structure-ref
                                       _%ctx267036%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp268941)))
                              _%outdir267053%_))
                           _%$e267050%_)
                          (path-expand
                           (_%file-name267043%_
                            (_%module-relative-path267040%_ _%ctx267036%_))
                           (_%module-source-directory267041%_
                            _%ctx267036%_)))))))
          (let ((_%path267046%_ (_%file-path267044%_)))
            (let ((__tmp268942
                   (lambda ()
                     (let ((__tmp268943 (path-directory _%path267046%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp268943)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp268942))
            _%path267046%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx267017%_)
        (letrec ((_%file-name267019%_
                  (lambda (_%id267034%_)
                    (let ((__tmp268944 (gxc#static-module-name _%id267034%_)))
                      (declare (not safe))
                      (##string-append __tmp268944 '".scm"))))
                 (_%file-path267020%_
                  (lambda ()
                    (let* ((_%file267026%_
                            (_%file-name267019%_
                             (##structure-ref
                              _%ctx267017%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e267028%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e267028%_
                          ((lambda (_%outdir267031%_)
                             (path-expand
                              _%file267026%_
                              (path-expand '"static" _%outdir267031%_)))
                           _%$e267028%_)
                          (path-expand _%file267026%_ '"static"))))))
          (let ((_%path267022%_ (_%file-path267020%_)))
            (let ((__tmp268945
                   (lambda ()
                     (let ((__tmp268946 (path-directory _%path267022%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp268946)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp268945))
            _%path267022%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx267010%_ _%opts267011%_)
        (let ((_%$e267013%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts267011%_))))
          (if _%$e267013%_
              _%$e267013%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx267010%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr267000%_)
        (if (string? _%idstr267000%_)
            (let* ((_%str267003%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr267000%_)))
                   (_%strs267005%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str267003%_ '#\/))))
              (declare (not safe))
              (string-join _%strs267005%_ '"__"))
            (if (symbol? _%idstr267000%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr267000%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr267000%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp268947
               (let ((__tmp268948 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp268948 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp268947))))
    (define gxc#invoke__%
      (lambda (_%@@keywords266966%_
               _%stdout-redirection266962266967%_
               _%stderr-redirection266963266968%_
               _%program266969%_
               _%args266970%_)
        (let* ((_%stdout-redirection266972%_
                (if (eq? _%stdout-redirection266962266967%_ absent-value)
                    '#f
                    _%stdout-redirection266962266967%_))
               (_%stderr-redirection266974%_
                (if (eq? _%stderr-redirection266963266968%_ absent-value)
                    '#f
                    _%stderr-redirection266963266968%_)))
          (let ((__tmp268949 (cons _%program266969%_ _%args266970%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp268949))
          (let* ((_%proc266976%_
                  (open-process
                   (cons 'path:
                         (cons _%program266969%_
                               (cons 'arguments:
                                     (cons _%args266970%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection266972%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection266974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output266981%_
                  (if (or _%stdout-redirection266972%_
                          _%stderr-redirection266974%_)
                      (read-line _%proc266976%_ '#f)
                      '#f))
                 (_%status266984%_ (process-status _%proc266976%_)))
            (let () (declare (not safe)) (##close-port _%proc266976%_))
            (if (zero? _%status266984%_)
                '#!void
                (begin
                  (display _%output266981%_)
                  (let ((__tmp268950 (cons _%program266969%_ _%args266970%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp268950
                     _%status266984%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords266989%_ . _%args266990%_)
        (apply gxc#invoke__%
               _%@@keywords266989%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords266989%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords266989%_
                  'stderr-redirection:
                  absent-value))
               _%args266990%_)))
    (define gxc#invoke
      (lambda _%args266964266996%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args266964266996%_)))))
