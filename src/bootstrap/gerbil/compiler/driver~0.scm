(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770660774)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp257874 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp257874))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp257875 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp257875))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path257731%_ _%fun257732%_)
        (with-output-to-file
         (cons 'path: (cons _%path257731%_ gxc#scheme-file-settings))
         _%fun257732%_)))
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
      (lambda (_%gerbil-libdir257726%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir257726%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path257724%_)
        (let ((__tmp257876 (object->string _%path257724%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp257876 '")"))))
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
      (lambda (_%dir257722%_) (delete-file-or-directory _%dir257722%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath257665%_ _%opts257666%_)
        (if (string? _%srcpath257665%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath257665%_)))
        (let* ((_%outdir257668%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts257666%_)))
               (_%invoke-gsc?257670%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts257666%_)))
               (_%target257675%_
                (let ((_%$e257672%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts257666%_))))
                  (if _%$e257672%_ _%$e257672%_ 'C)))
               (_%gsc-options257680%_
                (append (cons '"-target"
                              (cons (symbol->string _%target257675%_) '()))
                        (let ((_%$e257677%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts257666%_))))
                          (if _%$e257677%_ _%$e257677%_ '()))))
               (_%keep-scm?257682%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts257666%_)))
               (_%verbosity257684%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts257666%_)))
               (_%optimize257686%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts257666%_)))
               (_%debug257688%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts257666%_)))
               (_%gen-ssxi257690%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts257666%_)))
               (_%parallel?257692%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts257666%_))))
          (if _%outdir257668%_
              (let ((__tmp257877
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir257668%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp257877))
              '#!void)
          (if _%optimize257686%_
              (let ((__tmp257878
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp257878))
              '#!void)
          (let ((__tmp257879
                 (lambda ()
                   (let ((__tmp257880
                          (lambda ()
                            (let ((__tmp257881
                                   (lambda ()
                                     (let ((__tmp257882
                                            (lambda ()
                                              (let ((__tmp257883
                                                     (lambda ()
                                                       (let ((__tmp257884
                                                              (lambda ()
                                                                (let ((__tmp257885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp257886
                                        (lambda ()
                                          (let ((__tmp257887
                                                 (lambda ()
                                                   (let ((__tmp257889
                                                          (lambda ()
                                                            (let ((__tmp257891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp257893
                                    (lambda ()
                                      (let ((__tmp257894
                                             (lambda ()
                                               (let ((__tmp257895
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath257665%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp257896
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath257665%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp257896))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp257895
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp257894
                                         gxc#current-compile-parallel
                                         _%parallel?257692%_))))
                                   (__tmp257892
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp257893
                                gxc#current-compile-identifiers
                                __tmp257892))))
                          (__tmp257890
                           (cons (cons 'compile-module
                                       (cons _%srcpath257665%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp257891
                       gxc#current-compile-context
                       __tmp257890))))
                 (__tmp257888 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp257889
                                                      gxc#current-compile-timestamp
                                                      __tmp257888)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp257887
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi257690%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp257886
                                    gxc#current-compile-debug
                                    _%debug257688%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp257885
                           gxc#current-compile-optimize
                           _%optimize257686%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp257884
                  gxc#current-compile-verbose
                  _%verbosity257684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp257883
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?257682%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp257882
                                        gxc#current-compile-gsc-options
                                        _%gsc-options257680%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp257881
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?257670%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp257880
                      gx#current-compilation-target
                      _%target257675%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp257879
             gxc#current-compile-output-dir
             _%outdir257668%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath257715%_)
        (let ((_%opts257717%_ '()))
          (gxc#compile-module__% _%srcpath257715%_ _%opts257717%_))))
    (define gxc#compile-module
      (lambda _g257897_
        (let ((_g257898_ (let () (declare (not safe)) (##length _g257897_))))
          (cond ((let () (declare (not safe)) (##fx= _g257898_ 1))
                 (apply gxc#compile-module__0 _g257897_))
                ((let () (declare (not safe)) (##fx= _g257898_ 2))
                 (apply gxc#compile-module__% _g257897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g257897_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath257614%_ _%opts257615%_)
        (if (string? _%srcpath257614%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath257614%_)))
        (let* ((_%outdir257617%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts257615%_)))
               (_%invoke-gsc?257619%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts257615%_)))
               (_%target257624%_
                (let ((_%$e257621%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts257615%_))))
                  (if _%$e257621%_ _%$e257621%_ 'C)))
               (_%gsc-options257629%_
                (append (cons '"-target"
                              (cons (symbol->string _%target257624%_) '()))
                        (let ((_%$e257626%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts257615%_))))
                          (if _%$e257626%_ _%$e257626%_ '()))))
               (_%keep-scm?257631%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts257615%_)))
               (_%verbosity257633%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts257615%_)))
               (_%debug257635%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts257615%_)))
               (_%parallel?257637%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts257615%_))))
          (if _%outdir257617%_
              (let ((__tmp257899
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir257617%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp257899))
              '#!void)
          (let ((__tmp257900
                 (lambda ()
                   (let ((__tmp257901
                          (lambda ()
                            (let ((__tmp257902
                                   (lambda ()
                                     (let ((__tmp257903
                                            (lambda ()
                                              (let ((__tmp257904
                                                     (lambda ()
                                                       (let ((__tmp257905
                                                              (lambda ()
                                                                (let ((__tmp257906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp257908
                                        (lambda ()
                                          (let ((__tmp257910
                                                 (lambda ()
                                                   (let ((__tmp257912
                                                          (lambda ()
                                                            (let ((__tmp257913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp257914
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath257614%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp257915
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath257614%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp257915))
                                       _%opts257615%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp257914
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp257913
                       gxc#current-compile-parallel
                       _%parallel?257637%_))))
                 (__tmp257911
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp257912
                                                      gxc#current-compile-identifiers
                                                      __tmp257911))))
                                                (__tmp257909
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath257614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp257910
                                             gxc#current-compile-context
                                             __tmp257909))))
                                       (__tmp257907 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp257908
                                    gxc#current-compile-timestamp
                                    __tmp257907)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp257906
                           gxc#current-compile-debug
                           _%debug257635%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp257905
                  gxc#current-compile-verbose
                  _%verbosity257633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp257904
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?257631%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp257903
                                        gxc#current-compile-gsc-options
                                        _%gsc-options257629%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp257902
                               gx#current-compilation-target
                               _%target257624%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp257901
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?257619%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp257900
             gxc#current-compile-output-dir
             _%outdir257617%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath257657%_)
        (let ((_%opts257659%_ '()))
          (gxc#compile-exe__% _%srcpath257657%_ _%opts257659%_))))
    (define gxc#compile-exe
      (lambda _g257916_
        (let ((_g257917_ (let () (declare (not safe)) (##length _g257916_))))
          (cond ((let () (declare (not safe)) (##fx= _g257917_ 1))
                 (apply gxc#compile-exe__0 _g257916_))
                ((let () (declare (not safe)) (##fx= _g257917_ 2))
                 (apply gxc#compile-exe__% _g257916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g257916_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx257610%_ _%opts257611%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts257611%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx257610%_
             _%opts257611%_)
            (gxc#compile-executable-module/separate
             _%ctx257610%_
             _%opts257611%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx257336%_ _%opts257337%_)
        (letrec ((_%generate-stub257339%_
                  (lambda (_%builtin-modules257606%_)
                    (let ((_%mod-main257608%_
                           (gxc#find-runtime-symbol _%ctx257336%_ 'main)))
                      (let ((__tmp257918
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules257606%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp257918))
                      (let ((__tmp257919
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main257608%_
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
                        (##write __tmp257919))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts257340%_
                  (lambda (_%gerbil-libdir257604%_)
                    (let ((__tmp257920
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir257604%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp257920 read))))
                 (_%replace-extension257341%_
                  (lambda (_%path257601%_ _%ext257602%_)
                    (string-append
                     (path-strip-extension _%path257601%_)
                     _%ext257602%_)))
                 (_%replace-extension-with-c257342%_
                  (lambda (_%path257599%_)
                    (_%replace-extension257341%_ _%path257599%_ '".c")))
                 (_%replace-extension-with-object257343%_
                  (lambda (_%path257597%_)
                    (_%replace-extension257341%_
                     _%path257597%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?257344%_
                  (lambda (_%ctx257595%_)
                    (if (_%exclude-module?257346%_ _%ctx257595%_)
                        '#f
                        (not (_%libgerbil-module?257345%_ _%ctx257595%_)))))
                 (_%libgerbil-module?257345%_
                  (lambda (_%ctx257588%_)
                    (let ((_%id-str257590%_
                           (symbol->string
                            (##structure-ref
                             _%ctx257588%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?257346%_ _%id-str257590%_)
                          '#f
                          (let ((_%$e257592%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str257590%_))))
                            (if _%$e257592%_
                                _%$e257592%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str257590%_))))))))
                 (_%exclude-module?257346%_
                  (lambda (_%ctx-or-str257584%_)
                    (let ((_%str257586%_
                           (if (string? _%ctx-or-str257584%_)
                               _%ctx-or-str257584%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str257584%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str257586%_))))
                 (_%not-file-empty?257347%_
                  (lambda (_%path257582%_)
                    (not (gxc#file-empty? _%path257582%_))))
                 (_%fold-libgerbil-runtime-scm257348%_
                  (lambda (_%gerbil-staticdir257575%_ _%libgerbil-scm257576%_)
                    (let ((_%gerbil-runtime-scm257580%_
                           (let ((__tmp257921
                                  (lambda (_%rtm257578%_)
                                    (path-expand
                                     (let ((__tmp257922
                                            (let ((__tmp257923
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm257578%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp257923
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp257922 '".scm"))
                                     _%gerbil-staticdir257575%_))))
                             (declare (not safe))
                             (##map __tmp257921 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates257349%_
                       (append _%gerbil-runtime-scm257580%_
                               _%libgerbil-scm257576%_)))))
                 (_%remove-duplicates257349%_
                  (lambda (_%strlst257535%_)
                    (let _%loop257537%_ ((_%rest257539%_ _%strlst257535%_)
                                         (_%result257540%_ '()))
                      (let* ((_%rest257541257549%_ _%rest257539%_)
                             (_%else257543257557%_
                              (lambda () (reverse! _%result257540%_)))
                             (_%K257545257563%_
                              (lambda (_%rest257560%_ _%path257561%_)
                                (if (member _%path257561%_ _%result257540%_)
                                    (_%loop257537%_
                                     _%rest257560%_
                                     _%result257540%_)
                                    (_%loop257537%_
                                     _%rest257560%_
                                     (cons _%path257561%_
                                           _%result257540%_))))))
                        (if (pair? _%rest257541257549%_)
                            (let ((_%hd257546257566%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest257541257549%_)))
                                  (_%tl257547257568%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest257541257549%_))))
                              (let* ((_%path257571%_ _%hd257546257566%_)
                                     (_%rest257573%_ _%tl257547257568%_))
                                (_%K257545257563%_
                                 _%rest257573%_
                                 _%path257571%_)))
                            (_%else257543257557%_))))))
                 (_%compile-stub257350%_
                  (lambda (_%output-scm257357%_ _%output-bin257358%_)
                    (let* ((_%gerbil-home257360%_
                            (let ((__tmp257924
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp257924)))
                           (_%gerbil-libdir257362%_
                            (path-expand '"lib" _%gerbil-home257360%_))
                           (_%gerbil-staticdir257364%_
                            (path-expand '"static" _%gerbil-libdir257362%_))
                           (_%deps257366%_
                            (gxc#find-runtime-module-deps _%ctx257336%_))
                           (_%libgerbil-deps257368%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?257345%_
                               _%deps257366%_)))
                           (_%libgerbil-scm257370%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps257368%_)))
                           (_%libgerbil-scm257372%_
                            (_%fold-libgerbil-runtime-scm257348%_
                             _%gerbil-staticdir257364%_
                             _%libgerbil-scm257370%_))
                           (_%libgerbil-c257374%_
                            (map _%replace-extension-with-c257342%_
                                 _%libgerbil-scm257372%_))
                           (_%libgerbil-o257376%_
                            (map _%replace-extension-with-object257343%_
                                 _%libgerbil-scm257372%_))
                           (_%src-deps257378%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?257344%_
                               _%deps257366%_)))
                           (_%src-deps-scm257380%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps257378%_)))
                           (_%src-deps-scm257382%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?257347%_
                               _%src-deps-scm257380%_)))
                           (_%src-deps-scm257384%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm257382%_)))
                           (_%src-deps-c257386%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c257342%_
                                     _%src-deps-scm257384%_)))
                           (_%src-deps-o257388%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object257343%_
                                     _%src-deps-scm257384%_)))
                           (_%src-bin-scm257390%_
                            (gxc#find-static-module-file _%ctx257336%_))
                           (_%src-bin-scm257392%_
                            (path-expand _%src-bin-scm257390%_))
                           (_%src-bin-c257394%_
                            (_%replace-extension-with-c257342%_
                             _%src-bin-scm257392%_))
                           (_%src-bin-o257396%_
                            (_%replace-extension-with-object257343%_
                             _%src-bin-scm257392%_))
                           (_%output-bin257398%_
                            (path-expand _%output-bin257358%_))
                           (_%output-scm257400%_
                            (path-expand _%output-scm257357%_))
                           (_%output-c257402%_
                            (_%replace-extension-with-c257342%_
                             _%output-scm257400%_))
                           (_%output-o257404%_
                            (_%replace-extension-with-object257343%_
                             _%output-scm257400%_))
                           (_%output_-c257406%_
                            (_%replace-extension257341%_
                             _%output-scm257400%_
                             '"_.c"))
                           (_%output_-o257408%_
                            (_%replace-extension257341%_
                             _%output-scm257400%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts257410%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts257412%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts257414%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir257364%_))
                           (_%output-ld-opts257416%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts257418%_
                            (_%get-libgerbil-ld-opts257340%_
                             _%gerbil-libdir257362%_))
                           (_%rpath257420%_
                            (gxc#gerbil-rpath _%gerbil-libdir257362%_))
                           (_%builtin-modules257424%_
                            (_%remove-duplicates257349%_
                             (let ((__tmp257925
                                    (let ((__tmp257927
                                           (lambda (_%mod257422%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod257422%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp257926
                                           (cons _%ctx257336%_
                                                 _%deps257366%_)))
                                      (declare (not safe))
                                      (##map __tmp257927 __tmp257926))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp257925)))))
                      (letrec ((_%compile-obj257427%_
                                (lambda (_%scm-path257434%_ _%c-path257435%_)
                                  (let* ((_%o-path257437%_
                                          (_%replace-extension257341%_
                                           _%c-path257435%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock257439%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path257437%_
                                             '".lock")))
                                         (_%locked257441%_ '#f)
                                         (_%unlock257444%_
                                          (lambda ()
                                            (close-port _%locked257441%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock257439%_)))))
                                    (let _%retry257447%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock257439%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry257447%_))
                                          (begin
                                            (set! _%locked257441%_
                                                  (let* ((_%handler257450%_
                                                          false)
                                                         (_%thunk257454%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock257439%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler257459%_ _%handler257450%_)
                 (_%thunk257515%_ _%thunk257454%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler257459%_
                                                     _%thunk257515%_)))
                                            (if _%locked257441%_
                                                '#!void
                                                (_%retry257447%_)))))
                                    (let ((__tmp257929
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path257437%_)))
                                                     (not _%scm-path257434%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path257434%_
                                                        _%o-path257437%_)))
                                                 (let ((_%gsc-cc-opts257532%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp257930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp257931 (cons _%c-path257435%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp257931
                            _%gsc-static-opts257414%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp257930 _%gsc-cc-opts257532%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp257928
                                           (lambda () (_%unlock257444%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp257929
                                       __tmp257928))))))
                        (let ((__tmp257932
                               (lambda ()
                                 (let ((__tmp257933
                                        (path-directory _%output-bin257398%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp257933)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp257932))
                        (gxc#with-output-to-scheme-file
                         _%output-scm257400%_
                         (lambda ()
                           (_%generate-stub257339%_
                            _%builtin-modules257424%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it257432%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp257934
                                                   (let ((__tmp257935
                                                          (let ((__tmp257936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm257392%_
                               (cons _%output-scm257400%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp257936 _%src-deps-scm257384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp257935
                                                      _%libgerbil-c257374%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp257934
                                               _%gsc-link-opts257410%_))))
                                     (for-each
                                      _%compile-obj257427%_
                                      (let ((__tmp257937
                                             (cons _%src-bin-scm257392%_
                                                   (cons _%output-scm257400%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp257937
                                         _%src-deps-scm257384%_))
                                      (let ((__tmp257938
                                             (cons _%src-bin-c257394%_
                                                   (cons _%output-c257402%_
                                                         (cons _%output_-c257406%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp257938
                                         _%src-deps-c257386%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin257398%_
                                                        (let ((__tmp257939
                                                               (cons _%src-bin-o257396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o257404%_
                                   (cons _%output_-o257408%_
                                         (let ((__tmp257940
                                                (let ((__tmp257941
                                                       (let ((__tmp257943
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir257362%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts257418%_))))
                     (__tmp257942
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath257420%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp257943 __tmp257942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp257941
                                                   _%output-ld-opts257416%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp257940
                                            _%libgerbil-o257376%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp257939 _%src-deps-o257388%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp257944
                                            (cons _%output-c257402%_
                                                  (cons _%output_-c257406%_
                                                        (cons _%output-o257404%_
                                                              (cons _%output_-o257408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp257944)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it257432%_))
                                  (_%compile-it257432%_)))
                            '#!void))))))
          (let* ((_%output-bin257352%_
                  (gxc#compile-exe-output-file _%ctx257336%_ _%opts257337%_))
                 (_%output-scm257354%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin257352%_ '"__exe.scm"))))
            (_%compile-stub257350%_
             _%output-scm257354%_
             _%output-bin257352%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx257158%_ _%opts257159%_)
        (letrec ((_%reset-declare257161%_
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
                 (_%generate-stub257162%_
                  (lambda (_%deps257327%_)
                    (let ((_%mod-main257329%_
                           (gxc#find-runtime-symbol _%ctx257158%_ 'main))
                          (_%reset-decl257330%_ (_%reset-declare257161%_))
                          (_%user-decl257331%_ (_%user-declare257163%_)))
                      (for-each
                       (lambda (_%dep257333%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl257330%_))
                         (newline)
                         (if _%user-decl257331%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl257331%_))
                               (newline))
                             '#!void)
                         (let ((__tmp257945
                                (cons 'include (cons _%dep257333%_ '()))))
                           (declare (not safe))
                           (##write __tmp257945))
                         (newline))
                       _%deps257327%_)
                      (let ((__tmp257946
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main257329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp257946))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare257163%_
                  (lambda ()
                    (let* ((_%gsc-opts257232%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts257159%_)))
                           (_%gsc-prelude257234%_
                            (if _%gsc-opts257232%_
                                (member '"-prelude" _%gsc-opts257232%_)
                                '#f))
                           (_%gsc-prelude257236%_
                            (if _%gsc-prelude257234%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude257234%_)))
                                '#f)))
                      (let _%lp257239%_ ((_%rest257241%_
                                          (cons _%gsc-prelude257236%_ '()))
                                         (_%user-decls257242%_ '()))
                        (let* ((_%rest257243257251%_ _%rest257241%_)
                               (_%else257245257259%_
                                (lambda ()
                                  (if (null? _%user-decls257242%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls257242%_)))))
                               (_%K257247257315%_
                                (lambda (_%rest257262%_ _%expr257263%_)
                                  (let* ((_%expr257264257276%_ _%expr257263%_)
                                         (_%else257267257284%_
                                          (lambda ()
                                            (_%lp257239%_
                                             _%rest257262%_
                                             _%user-decls257242%_))))
                                    (let ((_%K257272257305%_
                                           (lambda (_%decls257303%_)
                                             (_%lp257239%_
                                              _%rest257262%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls257242%_
                                                 _%decls257303%_)))))
                                          (_%K257269257290%_
                                           (lambda (_%exprs257288%_)
                                             (_%lp257239%_
                                              (append _%exprs257288%_
                                                      _%rest257262%_)
                                              _%user-decls257242%_))))
                                      (if (pair? _%expr257264257276%_)
                                          (let ((_%tl257274257310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr257264257276%_)))
                                                (_%hd257273257308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr257264257276%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd257273257308%_
                                                         'declare))
                                                (let ((_%decls257313%_
                                                       _%tl257274257310%_))
                                                  (_%K257272257305%_
                                                   _%decls257313%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd257273257308%_
                                                             'begin))
                                                    (let ((_%exprs257298%_
                                                           _%tl257274257310%_))
                                                      (_%K257269257290%_
                                                       _%exprs257298%_))
                                                    (_%else257267257284%_))))
                                          (_%else257267257284%_)))))))
                          (if (pair? _%rest257243257251%_)
                              (let ((_%hd257248257318%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest257243257251%_)))
                                    (_%tl257249257320%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest257243257251%_))))
                                (let* ((_%expr257323%_ _%hd257248257318%_)
                                       (_%rest257325%_ _%tl257249257320%_))
                                  (_%K257247257315%_
                                   _%rest257325%_
                                   _%expr257323%_)))
                              (_%else257245257259%_)))))))
                 (_%compile-stub257164%_
                  (lambda (_%output-scm257171%_ _%output-bin257172%_)
                    (let* ((_%gerbil-home257174%_
                            (let ((__tmp257947
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp257947)))
                           (_%gerbil-libdir257176%_
                            (path-expand '"lib" _%gerbil-home257174%_))
                           (_%runtime257178%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp257180%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home257174%_))
                           (_%include-gambit-sharp257182%_
                            (gxc#include-source _%gambit-sharp257180%_))
                           (_%bin-scm257184%_
                            (gxc#find-static-module-file _%ctx257158%_))
                           (_%deps257186%_
                            (gxc#find-runtime-module-deps _%ctx257158%_))
                           (_%deps257188%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps257186%_)))
                           (_%deps257193%_
                            (let ((__tmp257948
                                   (lambda (_%$obj257190%_)
                                     (not (gxc#file-empty? _%$obj257190%_)))))
                              (declare (not safe))
                              (##filter __tmp257948 _%deps257188%_)))
                           (_%deps257197%_
                            (let ((__tmp257949
                                   (lambda (_%f257195%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f257195%_
                                             _%runtime257178%_))))))
                              (declare (not safe))
                              (##filter __tmp257949 _%deps257193%_)))
                           (_%output-base257199%_
                            (let ((__tmp257950
                                   (path-strip-extension
                                    _%output-scm257171%_)))
                              (declare (not safe))
                              (##string-append __tmp257950)))
                           (_%output-c257201%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base257199%_ '".c")))
                           (_%output-o257203%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base257199%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_257205%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base257199%_ '"_.c")))
                           (_%output-o_257207%_
                            (let ((__tmp257951
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base257199%_
                               __tmp257951)))
                           (_%gsc-link-opts257209%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts257211%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts257213%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir257176%_)))
                           (_%output-ld-opts257215%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros257217%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp257182%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp257182%_
                                            '()))))
                           (_%gsc-link-opts257219%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts257209%_
                               _%gsc-gx-macros257217%_)))
                           (_%rpath257221%_
                            (gxc#gerbil-rpath _%gerbil-libdir257176%_))
                           (_%default-ld-options257223%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp257952
                             (lambda ()
                               (let ((__tmp257953
                                      (path-directory _%output-bin257172%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp257953)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp257952))
                      (gxc#with-output-to-scheme-file
                       _%output-scm257171%_
                       (lambda ()
                         (_%generate-stub257162%_
                          (let ((__tmp257954
                                 (let ((__tmp257955
                                        (cons _%bin-scm257184%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp257955
                                    _%deps257197%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp257954 _%runtime257178%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it257229%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_257205%_
                                                      (let ((__tmp257956
                                                             (cons _%output-scm257171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp257956 _%gsc-link-opts257219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp257957
                                                 (let ((__tmp257958
                                                        (cons _%output-c257201%_
                                                              (cons _%output-c_257205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp257958
                                                    _%gsc-static-opts257213%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp257957
                                             _%gsc-cc-opts257211%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin257172%_
                                                      (cons _%output-o257203%_
                                                            (cons _%output-o_257207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp257959
                                 (let ((__tmp257961
                                        (cons '"-L"
                                              (cons _%gerbil-libdir257176%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options257223%_))))
                                       (__tmp257960
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath257221%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp257961 __tmp257960))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp257959
                             _%output-ld-opts257215%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it257229%_))
                                (_%compile-it257229%_)))
                          '#!void)))))
          (let* ((_%output-bin257166%_
                  (gxc#compile-exe-output-file _%ctx257158%_ _%opts257159%_))
                 (_%output-scm257168%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin257166%_ '"__exe.scm"))))
            (_%compile-stub257164%_
             _%output-scm257168%_
             _%output-bin257166%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx257107%_ _%id257108%_)
        (let ((_%$e257154%_
               (let ((__tmp257963
                      (lambda (_%e257109257111%_)
                        (let* ((_%e257109257113257123%_ _%e257109257111%_)
                               (_%else257115257131%_ (lambda () '#f))
                               (_%K257117257135%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e257109257113257123%_
                                 'gx#module-export::t))
                              (let* ((_%e257118257138%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e257109257113257123%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e257119257141%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e257109257113257123%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e257120257144%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e257109257113257123%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e257120257144%_ '0))
                                    (let ((_%e257121257147%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e257109257113257123%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g257149257151%_)
                                             (eq? _%g257149257151%_
                                                  _%id257108%_))
                                           _%e257121257147%_)
                                          (_%K257117257135%_)
                                          (_%else257115257131%_)))
                                    (_%else257115257131%_)))
                              (_%else257115257131%_)))))
                     (__tmp257962
                      (##structure-ref
                       _%ctx257107%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp257963 __tmp257962))))
          (if _%$e257154%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e257154%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx257098%_ _%id257099%_)
        (let ((_%$e257101%_
               (gxc#find-export-binding _%ctx257098%_ _%id257099%_)))
          (if _%$e257101%_
              ((lambda (_%bind257104%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind257104%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id257099%_)))
                 (##structure-ref _%bind257104%_ '1 gx#binding::t '#f))
               _%$e257101%_)
              (let ((__tmp257964
                     (##structure-ref
                      _%ctx257098%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp257964
                 _%id257099%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx256964%_)
        (letrec* ((_%ht256966%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template256967%_
                   (lambda (_%in257043%_ _%phi257044%_)
                     (let ((_%iphi257046%_
                            (fx+ _%phi257044%_
                                 (##direct-structure-ref
                                  _%in257043%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports257047%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in257043%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp257049%_ ((_%rest257051%_ _%imports257047%_)
                                          (_%r257052%_ '()))
                         (let* ((_%rest257053257061%_ _%rest257051%_)
                                (_%else257055257069%_ (lambda () _%r257052%_))
                                (_%K257057257086%_
                                 (lambda (_%rest257072%_ _%in257073%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in257073%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi257046%_))
                                           (_%lp257049%_
                                            _%rest257072%_
                                            (cons _%in257073%_ _%r257052%_))
                                           (_%lp257049%_
                                            _%rest257072%_
                                            _%r257052%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in257073%_
                                              'gx#module-import::t))
                                           (let ((_%iphi257077%_
                                                  (fx+ _%phi257044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in257073%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi257077%_))
                                                 (_%lp257049%_
                                                  _%rest257072%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in257073%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r257052%_))
                                                 (_%lp257049%_
                                                  _%rest257072%_
                                                  _%r257052%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in257073%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi257080%_
                                                      (fx+ _%iphi257046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in257073%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi257080%_))
                                                     (_%lp257049%_
                                                      _%rest257072%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in257073%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r257052%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi257080%_))
                                                         (_%lp257049%_
                                                          _%rest257072%_
                                                          (let ((__tmp257965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template256967%_
                          _%in257073%_
                          _%iphi257046%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r257052%_ __tmp257965)))
                 (_%lp257049%_ _%rest257072%_ _%r257052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp257049%_
                                                _%rest257072%_
                                                _%r257052%_)))))))
                           (if (pair? _%rest257053257061%_)
                               (let ((_%hd257058257089%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest257053257061%_)))
                                     (_%tl257059257091%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest257053257061%_))))
                                 (let* ((_%in257094%_ _%hd257058257089%_)
                                        (_%rest257096%_ _%tl257059257091%_))
                                   (_%K257057257086%_
                                    _%rest257096%_
                                    _%in257094%_)))
                               (_%else257055257069%_)))))))
                  (_%find-deps256968%_
                   (lambda (_%rest256976%_ _%deps256977%_)
                     (let* ((_%rest256978256986%_ _%rest256976%_)
                            (_%else256980256994%_ (lambda () _%deps256977%_))
                            (_%K256982257031%_
                             (lambda (_%rest256997%_ _%hd256998%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd256998%_
                                      'gx#module-context::t))
                                   (let ((_%id257001%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd256998%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports257002%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd256998%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht256966%_
                                            _%id257001%_))
                                         (_%find-deps256968%_
                                          _%rest256997%_
                                          _%deps256977%_)
                                         (let ((_%$e257005%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd256998%_))))
                                           (if _%$e257005%_
                                               ((lambda (_%pre257008%_)
                                                  (let ((_%xdeps257010%_
                                                         (_%find-deps256968%_
                                                          (cons _%pre257008%_
                                                                _%imports257002%_)
                                                          _%deps256977%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht256966%_
                                                       _%id257001%_
                                                       _%hd256998%_))
                                                    (_%find-deps256968%_
                                                     _%rest256997%_
                                                     (cons _%hd256998%_
                                                           _%xdeps257010%_))))
                                                _%$e257005%_)
                                               (let ((_%xdeps257013%_
                                                      (_%find-deps256968%_
                                                       _%imports257002%_
                                                       _%deps256977%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht256966%_
                                                    _%id257001%_
                                                    _%hd256998%_))
                                                 (_%find-deps256968%_
                                                  _%rest256997%_
                                                  (cons _%hd256998%_
                                                        _%xdeps257013%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd256998%_
                                          'gx#prelude-context::t))
                                       (let ((_%id257016%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd256998%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht256966%_
                                                _%id257016%_))
                                             (_%find-deps256968%_
                                              _%rest256997%_
                                              _%deps256977%_)
                                             (let ((_%xdeps257020%_
                                                    (_%find-deps256968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd256998%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps256977%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht256966%_
                                                      _%id257016%_))
                                                   (_%find-deps256968%_
                                                    _%rest256997%_
                                                    _%xdeps257020%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht256966%_
                                                        _%id257016%_
                                                        _%hd256998%_))
                                                     (_%find-deps256968%_
                                                      _%rest256997%_
                                                      (cons _%hd256998%_
                                                            _%xdeps257020%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd256998%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd256998%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps256968%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd256998%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest256997%_)
                                                _%deps256977%_)
                                               (_%find-deps256968%_
                                                _%rest256997%_
                                                _%deps256977%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd256998%_
                                                  'gx#module-export::t))
                                               (_%find-deps256968%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd256998%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest256997%_)
                                                _%deps256977%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd256998%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd256998%_ '2 '#f '#f)))
               (_%find-deps256968%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd256998%_ '1 '#f '#f))
                      _%rest256997%_)
                _%deps256977%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd256998%_ '2 '#f '#f)))
                   (let ((_%xdeps257027%_
                          (_%import-set-template256967%_ _%hd256998%_ '0)))
                     (_%find-deps256968%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest256997%_ _%xdeps257027%_))
                      _%deps256977%_))
                   (_%find-deps256968%_ _%rest256997%_ _%deps256977%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd256998%_))))))))))
                       (if (pair? _%rest256978256986%_)
                           (let ((_%hd256983257034%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest256978256986%_)))
                                 (_%tl256984257036%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest256978256986%_))))
                             (let* ((_%hd257039%_ _%hd256983257034%_)
                                    (_%rest257041%_ _%tl256984257036%_))
                               (_%K256982257031%_
                                _%rest257041%_
                                _%hd257039%_)))
                           (_%else256980256994%_))))))
          (let ((__tmp257966
                 (filter gx#expander-context-id
                         (_%find-deps256968%_
                          (let ((_%$e256970%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx256964%_))))
                            (if _%$e256970%_
                                ((lambda (_%pre256973%_)
                                   (cons _%pre256973%_
                                         (##structure-ref
                                          _%ctx256964%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e256970%_)
                                (##structure-ref
                                 _%ctx256964%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp257966)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx256894%_)
        (let* ((_%context-id256896%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx256894%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx256894%_ '1 '#f '#f))
                    (string->symbol _%ctx256894%_)))
               (_%scm256898%_
                (let ((__tmp257967
                       (gxc#static-module-name _%context-id256896%_)))
                  (declare (not safe))
                  (##string-append __tmp257967 '".scm")))
               (_%dirs256900%_ (let () (declare (not safe)) (load-path)))
               (_%dirs256906%_
                (let ((_%user-libpath256902%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath256902%_
                      (let ((_%user-libpath256904%_
                             (path-expand '"lib" _%user-libpath256902%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath256904%_ _%dirs256900%_))
                            _%dirs256900%_
                            (cons _%user-libpath256904%_ _%dirs256900%_)))
                      _%dirs256900%_)))
               (_%dirs256916%_
                (let ((_%$e256908%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e256908%_
                      ((lambda (_%g256910256912%_)
                         (cons _%g256910256912%_ _%dirs256906%_))
                       _%$e256908%_)
                      _%dirs256906%_)))
               (_%dirs256922%_
                (let ((__tmp257968
                       (lambda (_%g256917256919%_)
                         (path-expand '"static" _%g256917256919%_))))
                  (declare (not safe))
                  (##map __tmp257968 _%dirs256916%_))))
          (let _%lp256925%_ ((_%rest256927%_ _%dirs256922%_))
            (let* ((_%rest256928256936%_ _%rest256927%_)
                   (_%else256930256944%_
                    (lambda ()
                      (let ((__tmp257969
                             (##structure-ref
                              _%ctx256894%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp257969
                         _%scm256898%_))))
                   (_%K256932256952%_
                    (lambda (_%rest256947%_ _%dir256948%_)
                      (let ((_%path256950%_
                             (path-expand _%scm256898%_ _%dir256948%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path256950%_))
                            _%path256950%_
                            (_%lp256925%_ _%rest256947%_))))))
              (if (pair? _%rest256928256936%_)
                  (let ((_%hd256933256955%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest256928256936%_)))
                        (_%tl256934256957%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest256928256936%_))))
                    (let* ((_%dir256960%_ _%hd256933256955%_)
                           (_%rest256962%_ _%tl256934256957%_))
                      (_%K256932256952%_ _%rest256962%_ _%dir256960%_)))
                  (_%else256930256944%_)))))))
    (define gxc#file-empty?
      (lambda (_%path256892%_)
        (zero? (let ((__tmp257970 (file-info _%path256892%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp257970)))))
    (define gxc#compile-top-module
      (lambda (_%ctx256883%_)
        (let ((__tmp257971
               (lambda ()
                 (let ((__tmp257972
                        (lambda ()
                          (let ((__tmp257973
                                 (lambda ()
                                   (let ((__tmp257975
                                          (lambda ()
                                            (let ((__tmp257977
                                                   (lambda ()
                                                     (let ((__tmp257979
                                                            (lambda ()
                                                              (let ((__tmp257980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx256883%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp257980))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp257981
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx256883%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp257981))
                          '#!void)
                      (gxc#collect-bindings _%ctx256883%_)
                      (gxc#compile-runtime-code _%ctx256883%_)
                      (gxc#compile-meta-code _%ctx256883%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx256883%_)
                          '#!void)))
                   (__tmp257978
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
                __tmp257979
                gxc#current-compile-runtime-names
                __tmp257978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp257976
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp257977
                                               gxc#current-compile-runtime-sections
                                               __tmp257976))))
                                         (__tmp257974
                                          (let ((__obj257872
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj257872))
                                            __obj257872)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp257975
                                      gxc#current-compile-symbol-table
                                      __tmp257974)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp257973
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp257972
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257971
           gx#current-expander-context
           _%ctx256883%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx256881%_)
        (let ((__tmp257982
               (##structure-ref _%ctx256881%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp257982))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx256826%_)
        (letrec ((_%compile1256828%_
                  (lambda (_%ctx256870%_)
                    (let* ((_%code256872%_
                            (##structure-ref
                             _%ctx256870%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm256876%_
                            (let ((_%idstr256874%_
                                   (let ((__tmp257983
                                          (##structure-ref
                                           _%ctx256870%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp257983))))
                              (declare (not safe))
                              (##string-append _%idstr256874%_ '"~0")))
                           (_%rtc?256878%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code256872%_))))
                      (if _%rtc?256878%_
                          (let ((__tmp257984
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp257984
                             _%ctx256870%_
                             _%rtm256876%_))
                          '#!void)
                      (_%generate-runtime-code256830%_
                       _%ctx256870%_
                       _%code256872%_
                       (if _%rtc?256878%_ _%rtm256876%_ '#f)))))
                 (_%context-timestamp256829%_
                  (lambda (_%ctx256868%_)
                    (let ((__tmp257985
                           (let ((__tmp257986
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx256868%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp257986 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp257985))))
                 (_%generate-runtime-code256830%_
                  (lambda (_%ctx256837%_ _%code256838%_ _%rtm256839%_)
                    (let* ((_%runtime-code?256841%_ (if _%rtm256839%_ '#t '#f))
                           (_%lifts256843%_ (box '()))
                           (_%runtime-code256849%_
                            (if _%runtime-code?256841%_
                                (let ((__tmp257987
                                       (lambda ()
                                         (let ((__tmp257988
                                                (lambda ()
                                                  (let ((__tmp257989
                                                         (lambda ()
                                                           (let ((__tmp257991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code256838%_))))
                         (__tmp257990
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp257991
                      gxc#current-compile-marks
                      __tmp257990)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp257989
                                                     gxc#current-compile-lift
                                                     _%lifts256843%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp257988
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp257987
                                   gx#current-expander-context
                                   _%ctx256837%_))
                                '#f))
                           (_%runtime-code256851%_
                            (if _%runtime-code?256841%_
                                (if (null? (unbox _%lifts256843%_))
                                    _%runtime-code256849%_
                                    (cons 'begin
                                          (let ((__tmp257993
                                                 (cons _%runtime-code256849%_
                                                       '()))
                                                (__tmp257992
                                                 (reverse (unbox _%lifts256843%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp257993
                                             __tmp257992))))
                                '#f))
                           (_%runtime-code256853%_
                            (if _%runtime-code?256841%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp256829%_
                                                         _%ctx256837%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code256851%_ '())))
                                '#f))
                           (_%loader-code256856%_
                            (let ((__tmp257994
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code256838%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp257994
                               gx#current-expander-context
                               _%ctx256837%_)))
                           (_%loader-code256858%_
                            (cons 'begin
                                  (cons _%loader-code256856%_
                                        (cons (if _%runtime-code?256841%_
                                                  (cons 'load-module
                                                        (cons _%rtm256839%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0256860%_
                            (gxc#compile-output-file _%ctx256837%_ '0 '".scm"))
                           (_%scmrt256862%_
                            (gxc#compile-output-file
                             _%ctx256837%_
                             '#f
                             '".scm"))
                           (_%scms256864%_
                            (gxc#compile-static-output-file _%ctx256837%_)))
                      (if _%runtime-code?256841%_
                          (gxc#compile-scm-file__0
                           _%scm0256860%_
                           _%runtime-code256853%_)
                          '#!void)
                      (let ((__tmp257995
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt256862%_
                                _%loader-code256858%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp257995
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms256864%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms256864%_))
                          '#!void)
                      (if _%runtime-code?256841%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0256860%_ _%scms256864%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms256864%_ void)))))))
          (let* ((_%all-modules256832%_
                  (cons _%ctx256826%_ (gxc#lift-nested-modules _%ctx256826%_)))
                 (__tmp257996
                  (lambda (_%ctx256834%_)
                    (let ((__tmp257997
                           (lambda () (_%compile1256828%_ _%ctx256834%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp257997
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp257996 _%all-modules256832%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx256725%_)
        (letrec ((_%compile-ssi256727%_
                  (lambda (_%code256794%_)
                    (let* ((_%path256796%_
                            (gxc#compile-output-file
                             _%ctx256725%_
                             '#f
                             '".ssi"))
                           (_%prelude256808%_
                            (let* ((_%super256798%_
                                    (##structure-ref
                                     _%ctx256725%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e256800%_
                                    (##structure-ref
                                     _%super256798%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e256800%_
                                  ((lambda (_%g256802256804%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g256802256804%_)))
                                   _%$e256800%_)
                                  ':<root>)))
                           (_%ns256810%_
                            (##structure-ref
                             _%ctx256725%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr256812%_
                            (symbol->string
                             (##structure-ref
                              _%ctx256725%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg256820%_
                            (let ((_%$e256814%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr256812%_ '#\/))))
                              (if _%$e256814%_
                                  ((lambda (_%x256817%_)
                                     (let ((__tmp257998
                                            (substring
                                             _%idstr256812%_
                                             '0
                                             _%x256817%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp257998)))
                                   _%$e256814%_)
                                  '#f)))
                           (_%rt256822%_
                            (let ((__tmp257999
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp257999 _%ctx256725%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path256796%_))
                      (gxc#with-output-to-scheme-file
                       _%path256796%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude256808%_))
                         (if _%pkg256820%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg256820%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns256810%_))
                         (newline)
                         (pretty-print _%code256794%_)
                         (if _%rt256822%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt256822%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi256728%_
                  (lambda (_%part256733%_)
                    (let* ((_%part256734256747%_ _%part256733%_)
                           (_%E256736256751%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part256734256747%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K256737256763%_
                            (lambda (_%code256754%_
                                     _%n256755%_
                                     _%phi256756%_
                                     _%phi-ctx256757%_)
                              (let ((_%code256761%_
                                     (let ((__tmp258000
                                            (lambda ()
                                              (let ((__tmp258001
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code256754%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp258001
                                                 gx#current-expander-phi
                                                 _%phi256756%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp258000
                                        gx#current-expander-context
                                        _%phi-ctx256757%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx256725%_
                                  _%n256755%_
                                  '".scm")
                                 _%code256761%_
                                 '#t)))))
                      (if (pair? _%part256734256747%_)
                          (let ((_%hd256738256766%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part256734256747%_)))
                                (_%tl256739256768%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part256734256747%_))))
                            (let ((_%phi-ctx256771%_ _%hd256738256766%_))
                              (if (pair? _%tl256739256768%_)
                                  (let ((_%hd256740256773%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl256739256768%_)))
                                        (_%tl256741256775%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl256739256768%_))))
                                    (let ((_%phi256778%_ _%hd256740256773%_))
                                      (if (pair? _%tl256741256775%_)
                                          (let ((_%hd256742256780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl256741256775%_)))
                                                (_%tl256743256782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl256741256775%_))))
                                            (let ((_%n256785%_
                                                   _%hd256742256780%_))
                                              (if (pair? _%tl256743256782%_)
                                                  (let ((_%hd256744256787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl256743256782%_)))
                                                        (_%tl256745256789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl256743256782%_))))
                                                    (let ((_%code256792%_
                                                           _%hd256744256787%_))
                                                      (if (null? _%tl256745256789%_)
                                                          (_%K256737256763%_
                                                           _%code256792%_
                                                           _%n256785%_
                                                           _%phi256778%_
                                                           _%phi-ctx256771%_)
                                                          (_%E256736256751%_))))
                                                  (_%E256736256751%_))))
                                          (_%E256736256751%_))))
                                  (_%E256736256751%_))))
                          (_%E256736256751%_))))))
          (let ((_g258002_ (gxc#generate-meta-code _%ctx256725%_)))
            (begin
              (let ((_g258003_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g258002_)
                           (##values-length _g258002_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g258003_ 2)))
                    (error "Context expects 2 values" _g258003_)))
              (let ((_%ssi-code256730%_
                     (let () (declare (not safe)) (##values-ref _g258002_ 0)))
                    (_%phi-code256731%_
                     (let () (declare (not safe)) (##values-ref _g258002_ 1))))
                (begin
                  (_%compile-ssi256727%_ _%ssi-code256730%_)
                  (for-each _%compile-phi256728%_ _%phi-code256731%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx256707%_)
        (let* ((_%path256709%_
                (gxc#compile-output-file _%ctx256707%_ '#f '".ssxi.ss"))
               (_%code256711%_
                (let ((__tmp258004
                       (##structure-ref
                        _%ctx256707%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp258004)))
               (_%idstr256713%_
                (symbol->string
                 (##structure-ref
                  _%ctx256707%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg256721%_
                (let ((_%$e256715%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr256713%_ '#\/))))
                  (if _%$e256715%_
                      ((lambda (_%x256718%_)
                         (let ((__tmp258005
                                (substring _%idstr256713%_ '0 _%x256718%_)))
                           (declare (not safe))
                           (##string->symbol __tmp258005)))
                       _%$e256715%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path256709%_))
          (gxc#with-output-to-scheme-file
           _%path256709%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg256721%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg256721%_))
                 '#!void)
             (newline)
             (pretty-print _%code256711%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx256700%_)
        (let* ((_%state256702%_
                (let ((__obj257873
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj257873 _%ctx256700%_))
                  __obj257873))
               (_%ssi-code256704%_
                (let ((__tmp258006
                       (##structure-ref
                        _%ctx256700%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state256702%_
                   __tmp258006))))
          (values _%ssi-code256704%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state256702%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx256692%_)
        (let* ((_%lifts256694%_ (box '()))
               (__tmp258007
                (lambda ()
                  (let ((__tmp258009
                         (lambda ()
                           (let ((_%code256698%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx256692%_))))
                             (if (null? (unbox _%lifts256694%_))
                                 _%code256698%_
                                 (cons 'begin
                                       (let ((__tmp258011
                                              (cons _%code256698%_ '()))
                                             (__tmp258010
                                              (reverse (unbox _%lifts256694%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp258011
                                          __tmp258010)))))))
                        (__tmp258008
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp258009
                     gxc#current-compile-marks
                     __tmp258008)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258007
           gxc#current-compile-lift
           _%lifts256694%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx256688%_)
        (let ((_%modules256690%_ (box '())))
          (let ((__tmp258012
                 (##structure-ref _%ctx256688%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules256690%_ __tmp258012))
          (reverse (unbox _%modules256690%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path256668%_ _%code256669%_ _%phi?256670%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path256668%_))
        (gxc#with-output-to-scheme-file
         _%path256668%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp258013
                                           (if _%phi?256670%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp258013)))))))
           (pretty-print _%code256669%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it256674%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path256668%_ _%phi?256670%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp258014
                         (cons 'compile-file (cons _%path256668%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it256674%_ __tmp258014))
                  (_%compile-it256674%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path256679%_ _%code256680%_)
        (let ((_%phi?256682%_ '#f))
          (gxc#compile-scm-file__%
           _%path256679%_
           _%code256680%_
           _%phi?256682%_))))
    (define gxc#compile-scm-file
      (lambda _g258015_
        (let ((_g258016_ (let () (declare (not safe)) (##length _g258015_))))
          (cond ((let () (declare (not safe)) (##fx= _g258016_ 2))
                 (apply gxc#compile-scm-file__0 _g258015_))
                ((let () (declare (not safe)) (##fx= _g258016_ 3))
                 (apply gxc#compile-scm-file__% _g258015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g258015_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?256569%_)
        (let _%lp256571%_ ((_%rest256573%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts256574%_ '()))
          (let* ((_%rest256575256595%_ _%rest256573%_)
                 (_%else256579256603%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts256574%_)))
                        (reverse _%opts256574%_)))))
            (let ((_%K256589256646%_
                   (lambda (_%rest256644%_)
                     (_%lp256571%_ _%rest256644%_ _%opts256574%_)))
                  (_%K256584256628%_
                   (lambda (_%rest256626%_)
                     (_%lp256571%_ _%rest256626%_ _%opts256574%_)))
                  (_%K256581256610%_
                   (lambda (_%rest256607%_ _%opt256608%_)
                     (_%lp256571%_
                      _%rest256607%_
                      (cons _%opt256608%_ _%opts256574%_)))))
              (if (pair? _%rest256575256595%_)
                  (let ((_%tl256591256651%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest256575256595%_)))
                        (_%hd256590256649%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest256575256595%_))))
                    (if (equal? _%hd256590256649%_ '"-cc-options")
                        (if (pair? _%tl256591256651%_)
                            (let* ((_%tl256593256654%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl256591256651%_)))
                                   (_%rest256657%_ _%tl256593256654%_))
                              (_%K256589256646%_ _%rest256657%_))
                            (let ((_%opt256618%_ _%hd256590256649%_)
                                  (_%rest256620%_ _%tl256591256651%_))
                              (_%K256581256610%_
                               _%rest256620%_
                               _%opt256618%_)))
                        (if (equal? _%hd256590256649%_ '"-ld-options")
                            (if (pair? _%tl256591256651%_)
                                (let* ((_%tl256588256636%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl256591256651%_)))
                                       (_%rest256639%_ _%tl256588256636%_))
                                  (_%K256584256628%_ _%rest256639%_))
                                (let ((_%opt256618%_ _%hd256590256649%_)
                                      (_%rest256620%_ _%tl256591256651%_))
                                  (_%K256581256610%_
                                   _%rest256620%_
                                   _%opt256618%_)))
                            (let ((_%opt256618%_ _%hd256590256649%_)
                                  (_%rest256620%_ _%tl256591256651%_))
                              (_%K256581256610%_
                               _%rest256620%_
                               _%opt256618%_)))))
                  (_%else256579256603%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?256663%_ '#f)) (gxc#gsc-link-options__% _%phi?256663%_))))
    (define gxc#gsc-link-options
      (lambda _g258017_
        (let ((_g258018_ (let () (declare (not safe)) (##length _g258017_))))
          (cond ((let () (declare (not safe)) (##fx= _g258018_ 0))
                 (apply gxc#gsc-link-options__0 _g258017_))
                ((let () (declare (not safe)) (##fx= _g258018_ 1))
                 (apply gxc#gsc-link-options__% _g258017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g258017_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords256419%_ _%static?256415256420%_ _%phi?256421%_)
        (let ((_%static?256423%_
               (if (eq? _%static?256415256420%_ absent-value)
                   '#f
                   _%static?256415256420%_)))
          (if _%phi?256421%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp256425%_ ((_%rest256427%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts256428%_ '()))
                (let* ((_%rest256429256455%_ _%rest256427%_)
                       (_%else256434256463%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts256428%_)))
                              (reverse! _%opts256428%_)))))
                  (let ((_%K256449256526%_
                         (lambda (_%rest256523%_ _%opt256524%_)
                           (if _%static?256423%_
                               (_%lp256425%_
                                _%rest256523%_
                                (cons _%opt256524%_
                                      (cons '"-cc-options" _%opts256428%_)))
                               (_%lp256425%_ _%rest256523%_ _%opts256428%_))))
                        (_%K256444256503%_
                         (lambda (_%rest256500%_ _%opt256501%_)
                           (_%lp256425%_
                            _%rest256500%_
                            (cons _%opt256501%_
                                  (cons '"-cc-options" _%opts256428%_)))))
                        (_%K256439256483%_
                         (lambda (_%rest256481%_)
                           (_%lp256425%_ _%rest256481%_ _%opts256428%_)))
                        (_%K256436256469%_
                         (lambda (_%rest256467%_)
                           (_%lp256425%_ _%rest256467%_ _%opts256428%_))))
                    (if (pair? _%rest256429256455%_)
                        (let ((_%tl256451256531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest256429256455%_)))
                              (_%hd256450256529%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest256429256455%_))))
                          (if (equal? _%hd256450256529%_ '"-cc-options")
                              (if (pair? _%tl256451256531%_)
                                  (let ((_%tl256453256536%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl256451256531%_)))
                                        (_%hd256452256534%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl256451256531%_))))
                                    (if (equal? _%hd256452256534%_ '"-Bstatic")
                                        (let ((_%opt256539%_
                                               _%hd256452256534%_)
                                              (_%rest256541%_
                                               _%tl256453256536%_))
                                          (_%K256449256526%_
                                           _%rest256541%_
                                           _%opt256539%_))
                                        (let ((_%opt256516%_
                                               _%hd256452256534%_)
                                              (_%rest256518%_
                                               _%tl256453256536%_))
                                          (_%K256444256503%_
                                           _%rest256518%_
                                           _%opt256516%_))))
                                  (let ((_%rest256475%_ _%tl256451256531%_))
                                    (_%K256436256469%_ _%rest256475%_)))
                              (if (equal? _%hd256450256529%_ '"-ld-options")
                                  (if (pair? _%tl256451256531%_)
                                      (let* ((_%tl256443256491%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl256451256531%_)))
                                             (_%rest256494%_
                                              _%tl256443256491%_))
                                        (_%K256439256483%_ _%rest256494%_))
                                      (let ((_%rest256475%_
                                             _%tl256451256531%_))
                                        (_%K256436256469%_ _%rest256475%_)))
                                  (let ((_%rest256475%_ _%tl256451256531%_))
                                    (_%K256436256469%_ _%rest256475%_)))))
                        (_%else256434256463%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords256546%_ _%static?256415256547%_)
        (let ((_%phi?256549%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords256546%_
           _%static?256415256547%_
           _%phi?256549%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g258019_
        (let ((_g258020_ (let () (declare (not safe)) (##length _g258019_))))
          (cond ((let () (declare (not safe)) (##fx= _g258020_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g258019_))
                ((let () (declare (not safe)) (##fx= _g258020_ 3))
                 (apply gxc#gsc-cc-options__%__% _g258019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g258019_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords256558%_ . _%args256559%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords256558%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords256558%_
                  'static:
                  absent-value))
               _%args256559%_)))
    (define gxc#gsc-cc-options
      (lambda _%args256416256565%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args256416256565%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords256265%_ _%static?256261256266%_ _%phi?256267%_)
        (let ((_%static?256269%_
               (if (eq? _%static?256261256266%_ absent-value)
                   '#f
                   _%static?256261256266%_)))
          (if _%phi?256267%_
              '()
              (let _%lp256271%_ ((_%rest256273%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts256274%_ '()))
                (let* ((_%rest256275256301%_ _%rest256273%_)
                       (_%else256280256309%_
                        (lambda () (reverse! _%opts256274%_))))
                  (let ((_%K256295256372%_
                         (lambda (_%rest256369%_ _%opt256370%_)
                           (if _%static?256269%_
                               (_%lp256271%_
                                _%rest256369%_
                                (cons _%opt256370%_
                                      (cons '"-ld-options" _%opts256274%_)))
                               (_%lp256271%_ _%rest256369%_ _%opts256274%_))))
                        (_%K256290256349%_
                         (lambda (_%rest256346%_ _%opt256347%_)
                           (_%lp256271%_
                            _%rest256346%_
                            (cons _%opt256347%_
                                  (cons '"-ld-options" _%opts256274%_)))))
                        (_%K256285256329%_
                         (lambda (_%rest256327%_)
                           (_%lp256271%_ _%rest256327%_ _%opts256274%_)))
                        (_%K256282256315%_
                         (lambda (_%rest256313%_)
                           (_%lp256271%_ _%rest256313%_ _%opts256274%_))))
                    (if (pair? _%rest256275256301%_)
                        (let ((_%tl256297256377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest256275256301%_)))
                              (_%hd256296256375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest256275256301%_))))
                          (if (equal? _%hd256296256375%_ '"-ld-options")
                              (if (pair? _%tl256297256377%_)
                                  (let ((_%tl256299256382%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl256297256377%_)))
                                        (_%hd256298256380%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl256297256377%_))))
                                    (if (equal? _%hd256298256380%_ '"-static")
                                        (let ((_%opt256385%_
                                               _%hd256298256380%_)
                                              (_%rest256387%_
                                               _%tl256299256382%_))
                                          (_%K256295256372%_
                                           _%rest256387%_
                                           _%opt256385%_))
                                        (let ((_%opt256362%_
                                               _%hd256298256380%_)
                                              (_%rest256364%_
                                               _%tl256299256382%_))
                                          (_%K256290256349%_
                                           _%rest256364%_
                                           _%opt256362%_))))
                                  (let ((_%rest256321%_ _%tl256297256377%_))
                                    (_%K256282256315%_ _%rest256321%_)))
                              (if (equal? _%hd256296256375%_ '"-cc-options")
                                  (if (pair? _%tl256297256377%_)
                                      (let* ((_%tl256289256337%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl256297256377%_)))
                                             (_%rest256340%_
                                              _%tl256289256337%_))
                                        (_%K256285256329%_ _%rest256340%_))
                                      (let ((_%rest256321%_
                                             _%tl256297256377%_))
                                        (_%K256282256315%_ _%rest256321%_)))
                                  (let ((_%rest256321%_ _%tl256297256377%_))
                                    (_%K256282256315%_ _%rest256321%_)))))
                        (_%else256280256309%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords256392%_ _%static?256261256393%_)
        (let ((_%phi?256395%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords256392%_
           _%static?256261256393%_
           _%phi?256395%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g258021_
        (let ((_g258022_ (let () (declare (not safe)) (##length _g258021_))))
          (cond ((let () (declare (not safe)) (##fx= _g258022_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g258021_))
                ((let () (declare (not safe)) (##fx= _g258022_ 3))
                 (apply gxc#gsc-ld-options__%__% _g258021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g258021_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords256404%_ . _%args256405%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords256404%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords256404%_
                  'static:
                  absent-value))
               _%args256405%_)))
    (define gxc#gsc-ld-options
      (lambda _%args256262256411%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args256262256411%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir256256%_)
        (let ((_%user-staticdir256258%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir256256%_
                       '" -I "
                       _%user-staticdir256258%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp256168%_ ((_%rest256170%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts256171%_ '()))
          (let* ((_%rest256172256192%_ _%rest256170%_)
                 (_%else256176256200%_ (lambda () _%opts256171%_)))
            (let ((_%K256186256243%_
                   (lambda (_%rest256241%_)
                     (_%lp256168%_ _%rest256241%_ _%opts256171%_)))
                  (_%K256181256221%_
                   (lambda (_%rest256218%_ _%opt256219%_)
                     (_%lp256168%_
                      _%rest256218%_
                      (let ((__tmp258023
                             (let ((__tmp258024
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt256219%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp258024))))
                        (declare (not safe))
                        (##append _%opts256171%_ __tmp258023)))))
                  (_%K256178256206%_
                   (lambda (_%rest256204%_)
                     (_%lp256168%_ _%rest256204%_ _%opts256171%_))))
              (if (pair? _%rest256172256192%_)
                  (let ((_%tl256188256248%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest256172256192%_)))
                        (_%hd256187256246%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest256172256192%_))))
                    (if (equal? _%hd256187256246%_ '"-cc-options")
                        (if (pair? _%tl256188256248%_)
                            (let* ((_%tl256190256251%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl256188256248%_)))
                                   (_%rest256254%_ _%tl256190256251%_))
                              (_%K256186256243%_ _%rest256254%_))
                            (let ((_%rest256212%_ _%tl256188256248%_))
                              (_%K256178256206%_ _%rest256212%_)))
                        (if (equal? _%hd256187256246%_ '"-ld-options")
                            (if (pair? _%tl256188256248%_)
                                (let ((_%tl256185256231%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl256188256248%_)))
                                      (_%hd256184256229%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl256188256248%_))))
                                  (let ((_%opt256234%_ _%hd256184256229%_)
                                        (_%rest256236%_ _%tl256185256231%_))
                                    (_%K256181256221%_
                                     _%rest256236%_
                                     _%opt256234%_)))
                                (let ((_%rest256212%_ _%tl256188256248%_))
                                  (_%K256178256206%_ _%rest256212%_)))
                            (let ((_%rest256212%_ _%tl256188256248%_))
                              (_%K256178256206%_ _%rest256212%_)))))
                  (_%else256176256200%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str256165%_)
        (not (let () (declare (not safe)) (string-empty? _%str256165%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path256158%_ _%phi?256159%_)
        (let ((_%gsc-link-opts256161%_
               (gxc#gsc-link-options__% _%phi?256159%_))
              (_%gsc-cc-opts256162%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?256159%_))
              (_%gsc-ld-opts256163%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?256159%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp258025
                  (let ((__tmp258026
                         (let ((__tmp258027 (cons _%path256158%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp258027
                            _%gsc-link-opts256161%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp258026 _%gsc-ld-opts256163%_))))
             (declare (not safe))
             (foldr__0 cons __tmp258025 _%gsc-cc-opts256162%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx256124%_ _%n256125%_ _%ext256126%_)
        (letrec ((_%module-relative-path256128%_
                  (lambda (_%ctx256156%_)
                    (path-strip-directory
                     (let ((__tmp258028
                            (##structure-ref
                             _%ctx256156%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp258028)))))
                 (_%module-source-directory256129%_
                  (lambda (_%ctx256152%_)
                    (path-directory
                     (let ((_%mpath256154%_
                            (##structure-ref
                             _%ctx256152%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath256154%_)
                           _%mpath256154%_
                           (last _%mpath256154%_))))))
                 (_%section-string256130%_
                  (lambda (_%n256146%_)
                    (if (number? _%n256146%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n256146%_))
                        (if (symbol? _%n256146%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n256146%_))
                            (if (string? _%n256146%_)
                                _%n256146%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n256146%_)))))))
                 (_%file-name256131%_
                  (lambda (_%path256144%_)
                    (if _%n256125%_
                        (string-append
                         _%path256144%_
                         '"~"
                         (_%section-string256130%_ _%n256125%_)
                         _%ext256126%_)
                        (string-append _%path256144%_ _%ext256126%_))))
                 (_%file-path256132%_
                  (lambda ()
                    (let ((_%$e256138%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e256138%_
                          ((lambda (_%outdir256141%_)
                             (path-expand
                              (_%file-name256131%_
                               (let ((__tmp258029
                                      (##structure-ref
                                       _%ctx256124%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp258029)))
                              _%outdir256141%_))
                           _%$e256138%_)
                          (path-expand
                           (_%file-name256131%_
                            (_%module-relative-path256128%_ _%ctx256124%_))
                           (_%module-source-directory256129%_
                            _%ctx256124%_)))))))
          (let ((_%path256134%_ (_%file-path256132%_)))
            (let ((__tmp258030
                   (lambda ()
                     (let ((__tmp258031 (path-directory _%path256134%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp258031)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp258030))
            _%path256134%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx256105%_)
        (letrec ((_%file-name256107%_
                  (lambda (_%id256122%_)
                    (let ((__tmp258032 (gxc#static-module-name _%id256122%_)))
                      (declare (not safe))
                      (##string-append __tmp258032 '".scm"))))
                 (_%file-path256108%_
                  (lambda ()
                    (let* ((_%file256114%_
                            (_%file-name256107%_
                             (##structure-ref
                              _%ctx256105%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e256116%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e256116%_
                          ((lambda (_%outdir256119%_)
                             (path-expand
                              _%file256114%_
                              (path-expand '"static" _%outdir256119%_)))
                           _%$e256116%_)
                          (path-expand _%file256114%_ '"static"))))))
          (let ((_%path256110%_ (_%file-path256108%_)))
            (let ((__tmp258033
                   (lambda ()
                     (let ((__tmp258034 (path-directory _%path256110%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp258034)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp258033))
            _%path256110%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx256098%_ _%opts256099%_)
        (let ((_%$e256101%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts256099%_))))
          (if _%$e256101%_
              _%$e256101%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx256098%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr256088%_)
        (if (string? _%idstr256088%_)
            (let* ((_%str256091%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr256088%_)))
                   (_%strs256093%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str256091%_ '#\/))))
              (declare (not safe))
              (string-join _%strs256093%_ '"__"))
            (if (symbol? _%idstr256088%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr256088%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr256088%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp258035
               (let ((__tmp258036 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp258036 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp258035))))
    (define gxc#invoke__%
      (lambda (_%@@keywords256054%_
               _%stdout-redirection256050256055%_
               _%stderr-redirection256051256056%_
               _%program256057%_
               _%args256058%_)
        (let* ((_%stdout-redirection256060%_
                (if (eq? _%stdout-redirection256050256055%_ absent-value)
                    '#f
                    _%stdout-redirection256050256055%_))
               (_%stderr-redirection256062%_
                (if (eq? _%stderr-redirection256051256056%_ absent-value)
                    '#f
                    _%stderr-redirection256051256056%_)))
          (let ((__tmp258037 (cons _%program256057%_ _%args256058%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp258037))
          (let* ((_%proc256064%_
                  (open-process
                   (cons 'path:
                         (cons _%program256057%_
                               (cons 'arguments:
                                     (cons _%args256058%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection256060%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection256062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output256069%_
                  (if (or _%stdout-redirection256060%_
                          _%stderr-redirection256062%_)
                      (read-line _%proc256064%_ '#f)
                      '#f))
                 (_%status256072%_ (process-status _%proc256064%_)))
            (let () (declare (not safe)) (##close-port _%proc256064%_))
            (if (zero? _%status256072%_)
                '#!void
                (begin
                  (display _%output256069%_)
                  (let ((__tmp258038 (cons _%program256057%_ _%args256058%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp258038
                     _%status256072%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords256077%_ . _%args256078%_)
        (apply gxc#invoke__%
               _%@@keywords256077%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords256077%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords256077%_
                  'stderr-redirection:
                  absent-value))
               _%args256078%_)))
    (define gxc#invoke
      (lambda _%args256052256084%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args256052256084%_)))))
