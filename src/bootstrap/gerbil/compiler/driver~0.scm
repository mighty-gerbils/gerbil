(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770752344)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp257881 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp257881))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp257882 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp257882))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path257738%_ _%fun257739%_)
        (with-output-to-file
         (cons 'path: (cons _%path257738%_ gxc#scheme-file-settings))
         _%fun257739%_)))
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
      (lambda (_%gerbil-libdir257733%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir257733%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path257731%_)
        (let ((__tmp257883 (object->string _%path257731%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp257883 '")"))))
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
      (lambda (_%dir257729%_) (delete-file-or-directory _%dir257729%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath257672%_ _%opts257673%_)
        (if (string? _%srcpath257672%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath257672%_)))
        (let* ((_%outdir257675%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts257673%_)))
               (_%invoke-gsc?257677%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts257673%_)))
               (_%target257682%_
                (let ((_%$e257679%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts257673%_))))
                  (if _%$e257679%_ _%$e257679%_ 'C)))
               (_%gsc-options257687%_
                (append (cons '"-target"
                              (cons (symbol->string _%target257682%_) '()))
                        (let ((_%$e257684%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts257673%_))))
                          (if _%$e257684%_ _%$e257684%_ '()))))
               (_%keep-scm?257689%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts257673%_)))
               (_%verbosity257691%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts257673%_)))
               (_%optimize257693%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts257673%_)))
               (_%debug257695%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts257673%_)))
               (_%gen-ssxi257697%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts257673%_)))
               (_%parallel?257699%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts257673%_))))
          (if _%outdir257675%_
              (let ((__tmp257884
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir257675%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp257884))
              '#!void)
          (if _%optimize257693%_
              (let ((__tmp257885
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp257885))
              '#!void)
          (let ((__tmp257886
                 (lambda ()
                   (let ((__tmp257887
                          (lambda ()
                            (let ((__tmp257888
                                   (lambda ()
                                     (let ((__tmp257889
                                            (lambda ()
                                              (let ((__tmp257890
                                                     (lambda ()
                                                       (let ((__tmp257891
                                                              (lambda ()
                                                                (let ((__tmp257892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp257893
                                        (lambda ()
                                          (let ((__tmp257894
                                                 (lambda ()
                                                   (let ((__tmp257896
                                                          (lambda ()
                                                            (let ((__tmp257898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp257900
                                    (lambda ()
                                      (let ((__tmp257901
                                             (lambda ()
                                               (let ((__tmp257902
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath257672%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp257903
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath257672%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp257903))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp257902
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp257901
                                         gxc#current-compile-parallel
                                         _%parallel?257699%_))))
                                   (__tmp257899
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp257900
                                gxc#current-compile-identifiers
                                __tmp257899))))
                          (__tmp257897
                           (cons (cons 'compile-module
                                       (cons _%srcpath257672%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp257898
                       gxc#current-compile-context
                       __tmp257897))))
                 (__tmp257895 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp257896
                                                      gxc#current-compile-timestamp
                                                      __tmp257895)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp257894
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi257697%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp257893
                                    gxc#current-compile-debug
                                    _%debug257695%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp257892
                           gxc#current-compile-optimize
                           _%optimize257693%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp257891
                  gxc#current-compile-verbose
                  _%verbosity257691%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp257890
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?257689%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp257889
                                        gxc#current-compile-gsc-options
                                        _%gsc-options257687%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp257888
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?257677%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp257887
                      gx#current-compilation-target
                      _%target257682%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp257886
             gxc#current-compile-output-dir
             _%outdir257675%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath257722%_)
        (let ((_%opts257724%_ '()))
          (gxc#compile-module__% _%srcpath257722%_ _%opts257724%_))))
    (define gxc#compile-module
      (lambda _g257904_
        (let ((_g257905_ (let () (declare (not safe)) (##length _g257904_))))
          (cond ((let () (declare (not safe)) (##fx= _g257905_ 1))
                 (apply gxc#compile-module__0 _g257904_))
                ((let () (declare (not safe)) (##fx= _g257905_ 2))
                 (apply gxc#compile-module__% _g257904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g257904_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath257621%_ _%opts257622%_)
        (if (string? _%srcpath257621%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath257621%_)))
        (let* ((_%outdir257624%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts257622%_)))
               (_%invoke-gsc?257626%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts257622%_)))
               (_%target257631%_
                (let ((_%$e257628%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts257622%_))))
                  (if _%$e257628%_ _%$e257628%_ 'C)))
               (_%gsc-options257636%_
                (append (cons '"-target"
                              (cons (symbol->string _%target257631%_) '()))
                        (let ((_%$e257633%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts257622%_))))
                          (if _%$e257633%_ _%$e257633%_ '()))))
               (_%keep-scm?257638%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts257622%_)))
               (_%verbosity257640%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts257622%_)))
               (_%debug257642%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts257622%_)))
               (_%parallel?257644%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts257622%_))))
          (if _%outdir257624%_
              (let ((__tmp257906
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir257624%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp257906))
              '#!void)
          (let ((__tmp257907
                 (lambda ()
                   (let ((__tmp257908
                          (lambda ()
                            (let ((__tmp257909
                                   (lambda ()
                                     (let ((__tmp257910
                                            (lambda ()
                                              (let ((__tmp257911
                                                     (lambda ()
                                                       (let ((__tmp257912
                                                              (lambda ()
                                                                (let ((__tmp257913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp257915
                                        (lambda ()
                                          (let ((__tmp257917
                                                 (lambda ()
                                                   (let ((__tmp257919
                                                          (lambda ()
                                                            (let ((__tmp257920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp257921
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath257621%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp257922
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath257621%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp257922))
                                       _%opts257622%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp257921
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp257920
                       gxc#current-compile-parallel
                       _%parallel?257644%_))))
                 (__tmp257918
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp257919
                                                      gxc#current-compile-identifiers
                                                      __tmp257918))))
                                                (__tmp257916
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath257621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp257917
                                             gxc#current-compile-context
                                             __tmp257916))))
                                       (__tmp257914 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp257915
                                    gxc#current-compile-timestamp
                                    __tmp257914)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp257913
                           gxc#current-compile-debug
                           _%debug257642%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp257912
                  gxc#current-compile-verbose
                  _%verbosity257640%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp257911
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?257638%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp257910
                                        gxc#current-compile-gsc-options
                                        _%gsc-options257636%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp257909
                               gx#current-compilation-target
                               _%target257631%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp257908
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?257626%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp257907
             gxc#current-compile-output-dir
             _%outdir257624%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath257664%_)
        (let ((_%opts257666%_ '()))
          (gxc#compile-exe__% _%srcpath257664%_ _%opts257666%_))))
    (define gxc#compile-exe
      (lambda _g257923_
        (let ((_g257924_ (let () (declare (not safe)) (##length _g257923_))))
          (cond ((let () (declare (not safe)) (##fx= _g257924_ 1))
                 (apply gxc#compile-exe__0 _g257923_))
                ((let () (declare (not safe)) (##fx= _g257924_ 2))
                 (apply gxc#compile-exe__% _g257923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g257923_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx257617%_ _%opts257618%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts257618%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx257617%_
             _%opts257618%_)
            (gxc#compile-executable-module/separate
             _%ctx257617%_
             _%opts257618%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx257343%_ _%opts257344%_)
        (letrec ((_%generate-stub257346%_
                  (lambda (_%builtin-modules257613%_)
                    (let ((_%mod-main257615%_
                           (gxc#find-runtime-symbol _%ctx257343%_ 'main)))
                      (let ((__tmp257925
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules257613%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp257925))
                      (let ((__tmp257926
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main257615%_
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
                        (##write __tmp257926))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts257347%_
                  (lambda (_%gerbil-libdir257611%_)
                    (let ((__tmp257927
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir257611%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp257927 read))))
                 (_%replace-extension257348%_
                  (lambda (_%path257608%_ _%ext257609%_)
                    (string-append
                     (path-strip-extension _%path257608%_)
                     _%ext257609%_)))
                 (_%replace-extension-with-c257349%_
                  (lambda (_%path257606%_)
                    (_%replace-extension257348%_ _%path257606%_ '".c")))
                 (_%replace-extension-with-object257350%_
                  (lambda (_%path257604%_)
                    (_%replace-extension257348%_
                     _%path257604%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?257351%_
                  (lambda (_%ctx257602%_)
                    (if (_%exclude-module?257353%_ _%ctx257602%_)
                        '#f
                        (not (_%libgerbil-module?257352%_ _%ctx257602%_)))))
                 (_%libgerbil-module?257352%_
                  (lambda (_%ctx257595%_)
                    (let ((_%id-str257597%_
                           (symbol->string
                            (##structure-ref
                             _%ctx257595%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?257353%_ _%id-str257597%_)
                          '#f
                          (let ((_%$e257599%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str257597%_))))
                            (if _%$e257599%_
                                _%$e257599%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str257597%_))))))))
                 (_%exclude-module?257353%_
                  (lambda (_%ctx-or-str257591%_)
                    (let ((_%str257593%_
                           (if (string? _%ctx-or-str257591%_)
                               _%ctx-or-str257591%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str257591%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str257593%_))))
                 (_%not-file-empty?257354%_
                  (lambda (_%path257589%_)
                    (not (gxc#file-empty? _%path257589%_))))
                 (_%fold-libgerbil-runtime-scm257355%_
                  (lambda (_%gerbil-staticdir257582%_ _%libgerbil-scm257583%_)
                    (let ((_%gerbil-runtime-scm257587%_
                           (let ((__tmp257928
                                  (lambda (_%rtm257585%_)
                                    (path-expand
                                     (let ((__tmp257929
                                            (let ((__tmp257930
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm257585%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp257930
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp257929 '".scm"))
                                     _%gerbil-staticdir257582%_))))
                             (declare (not safe))
                             (##map __tmp257928 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates257356%_
                       (append _%gerbil-runtime-scm257587%_
                               _%libgerbil-scm257583%_)))))
                 (_%remove-duplicates257356%_
                  (lambda (_%strlst257542%_)
                    (let _%loop257544%_ ((_%rest257546%_ _%strlst257542%_)
                                         (_%result257547%_ '()))
                      (let* ((_%rest257548257556%_ _%rest257546%_)
                             (_%else257550257564%_
                              (lambda () (reverse! _%result257547%_)))
                             (_%K257552257570%_
                              (lambda (_%rest257567%_ _%path257568%_)
                                (if (member _%path257568%_ _%result257547%_)
                                    (_%loop257544%_
                                     _%rest257567%_
                                     _%result257547%_)
                                    (_%loop257544%_
                                     _%rest257567%_
                                     (cons _%path257568%_
                                           _%result257547%_))))))
                        (if (pair? _%rest257548257556%_)
                            (let ((_%hd257553257573%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest257548257556%_)))
                                  (_%tl257554257575%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest257548257556%_))))
                              (let* ((_%path257578%_ _%hd257553257573%_)
                                     (_%rest257580%_ _%tl257554257575%_))
                                (_%K257552257570%_
                                 _%rest257580%_
                                 _%path257578%_)))
                            (_%else257550257564%_))))))
                 (_%compile-stub257357%_
                  (lambda (_%output-scm257364%_ _%output-bin257365%_)
                    (let* ((_%gerbil-home257367%_
                            (let ((__tmp257931
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp257931)))
                           (_%gerbil-libdir257369%_
                            (path-expand '"lib" _%gerbil-home257367%_))
                           (_%gerbil-staticdir257371%_
                            (path-expand '"static" _%gerbil-libdir257369%_))
                           (_%deps257373%_
                            (gxc#find-runtime-module-deps _%ctx257343%_))
                           (_%libgerbil-deps257375%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?257352%_
                               _%deps257373%_)))
                           (_%libgerbil-scm257377%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps257375%_)))
                           (_%libgerbil-scm257379%_
                            (_%fold-libgerbil-runtime-scm257355%_
                             _%gerbil-staticdir257371%_
                             _%libgerbil-scm257377%_))
                           (_%libgerbil-c257381%_
                            (map _%replace-extension-with-c257349%_
                                 _%libgerbil-scm257379%_))
                           (_%libgerbil-o257383%_
                            (map _%replace-extension-with-object257350%_
                                 _%libgerbil-scm257379%_))
                           (_%src-deps257385%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?257351%_
                               _%deps257373%_)))
                           (_%src-deps-scm257387%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps257385%_)))
                           (_%src-deps-scm257389%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?257354%_
                               _%src-deps-scm257387%_)))
                           (_%src-deps-scm257391%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm257389%_)))
                           (_%src-deps-c257393%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c257349%_
                                     _%src-deps-scm257391%_)))
                           (_%src-deps-o257395%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object257350%_
                                     _%src-deps-scm257391%_)))
                           (_%src-bin-scm257397%_
                            (gxc#find-static-module-file _%ctx257343%_))
                           (_%src-bin-scm257399%_
                            (path-expand _%src-bin-scm257397%_))
                           (_%src-bin-c257401%_
                            (_%replace-extension-with-c257349%_
                             _%src-bin-scm257399%_))
                           (_%src-bin-o257403%_
                            (_%replace-extension-with-object257350%_
                             _%src-bin-scm257399%_))
                           (_%output-bin257405%_
                            (path-expand _%output-bin257365%_))
                           (_%output-scm257407%_
                            (path-expand _%output-scm257364%_))
                           (_%output-c257409%_
                            (_%replace-extension-with-c257349%_
                             _%output-scm257407%_))
                           (_%output-o257411%_
                            (_%replace-extension-with-object257350%_
                             _%output-scm257407%_))
                           (_%output_-c257413%_
                            (_%replace-extension257348%_
                             _%output-scm257407%_
                             '"_.c"))
                           (_%output_-o257415%_
                            (_%replace-extension257348%_
                             _%output-scm257407%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts257417%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts257419%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts257421%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir257371%_))
                           (_%output-ld-opts257423%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts257425%_
                            (_%get-libgerbil-ld-opts257347%_
                             _%gerbil-libdir257369%_))
                           (_%rpath257427%_
                            (gxc#gerbil-rpath _%gerbil-libdir257369%_))
                           (_%builtin-modules257431%_
                            (_%remove-duplicates257356%_
                             (let ((__tmp257932
                                    (let ((__tmp257934
                                           (lambda (_%mod257429%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod257429%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp257933
                                           (cons _%ctx257343%_
                                                 _%deps257373%_)))
                                      (declare (not safe))
                                      (##map __tmp257934 __tmp257933))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp257932)))))
                      (letrec ((_%compile-obj257434%_
                                (lambda (_%scm-path257441%_ _%c-path257442%_)
                                  (let* ((_%o-path257444%_
                                          (_%replace-extension257348%_
                                           _%c-path257442%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock257446%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path257444%_
                                             '".lock")))
                                         (_%locked257448%_ '#f)
                                         (_%unlock257451%_
                                          (lambda ()
                                            (close-port _%locked257448%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock257446%_)))))
                                    (let _%retry257454%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock257446%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry257454%_))
                                          (begin
                                            (set! _%locked257448%_
                                                  (let* ((_%handler257457%_
                                                          false)
                                                         (_%thunk257461%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock257446%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler257466%_ _%handler257457%_)
                 (_%thunk257522%_ _%thunk257461%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler257466%_
                                                     _%thunk257522%_)))
                                            (if _%locked257448%_
                                                '#!void
                                                (_%retry257454%_)))))
                                    (let ((__tmp257936
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path257444%_)))
                                                     (not _%scm-path257441%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path257441%_
                                                        _%o-path257444%_)))
                                                 (let ((_%gsc-cc-opts257539%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp257937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp257938 (cons _%c-path257442%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp257938
                            _%gsc-static-opts257421%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp257937 _%gsc-cc-opts257539%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp257935
                                           (lambda () (_%unlock257451%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp257936
                                       __tmp257935))))))
                        (let ((__tmp257939
                               (lambda ()
                                 (let ((__tmp257940
                                        (path-directory _%output-bin257405%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp257940)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp257939))
                        (gxc#with-output-to-scheme-file
                         _%output-scm257407%_
                         (lambda ()
                           (_%generate-stub257346%_
                            _%builtin-modules257431%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it257439%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp257941
                                                   (let ((__tmp257942
                                                          (let ((__tmp257943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm257399%_
                               (cons _%output-scm257407%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp257943 _%src-deps-scm257391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp257942
                                                      _%libgerbil-c257381%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp257941
                                               _%gsc-link-opts257417%_))))
                                     (for-each
                                      _%compile-obj257434%_
                                      (let ((__tmp257944
                                             (cons _%src-bin-scm257399%_
                                                   (cons _%output-scm257407%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp257944
                                         _%src-deps-scm257391%_))
                                      (let ((__tmp257945
                                             (cons _%src-bin-c257401%_
                                                   (cons _%output-c257409%_
                                                         (cons _%output_-c257413%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp257945
                                         _%src-deps-c257393%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin257405%_
                                                        (let ((__tmp257946
                                                               (cons _%src-bin-o257403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o257411%_
                                   (cons _%output_-o257415%_
                                         (let ((__tmp257947
                                                (let ((__tmp257948
                                                       (let ((__tmp257950
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir257369%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts257425%_))))
                     (__tmp257949
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath257427%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp257950 __tmp257949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp257948
                                                   _%output-ld-opts257423%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp257947
                                            _%libgerbil-o257383%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp257946 _%src-deps-o257395%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp257951
                                            (cons _%output-c257409%_
                                                  (cons _%output_-c257413%_
                                                        (cons _%output-o257411%_
                                                              (cons _%output_-o257415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp257951)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it257439%_))
                                  (_%compile-it257439%_)))
                            '#!void))))))
          (let* ((_%output-bin257359%_
                  (gxc#compile-exe-output-file _%ctx257343%_ _%opts257344%_))
                 (_%output-scm257361%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin257359%_ '"__exe.scm"))))
            (_%compile-stub257357%_
             _%output-scm257361%_
             _%output-bin257359%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx257165%_ _%opts257166%_)
        (letrec ((_%reset-declare257168%_
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
                 (_%generate-stub257169%_
                  (lambda (_%deps257334%_)
                    (let ((_%mod-main257336%_
                           (gxc#find-runtime-symbol _%ctx257165%_ 'main))
                          (_%reset-decl257337%_ (_%reset-declare257168%_))
                          (_%user-decl257338%_ (_%user-declare257170%_)))
                      (for-each
                       (lambda (_%dep257340%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl257337%_))
                         (newline)
                         (if _%user-decl257338%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl257338%_))
                               (newline))
                             '#!void)
                         (let ((__tmp257952
                                (cons 'include (cons _%dep257340%_ '()))))
                           (declare (not safe))
                           (##write __tmp257952))
                         (newline))
                       _%deps257334%_)
                      (let ((__tmp257953
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main257336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp257953))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare257170%_
                  (lambda ()
                    (let* ((_%gsc-opts257239%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts257166%_)))
                           (_%gsc-prelude257241%_
                            (if _%gsc-opts257239%_
                                (member '"-prelude" _%gsc-opts257239%_)
                                '#f))
                           (_%gsc-prelude257243%_
                            (if _%gsc-prelude257241%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude257241%_)))
                                '#f)))
                      (let _%lp257246%_ ((_%rest257248%_
                                          (cons _%gsc-prelude257243%_ '()))
                                         (_%user-decls257249%_ '()))
                        (let* ((_%rest257250257258%_ _%rest257248%_)
                               (_%else257252257266%_
                                (lambda ()
                                  (if (null? _%user-decls257249%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls257249%_)))))
                               (_%K257254257322%_
                                (lambda (_%rest257269%_ _%expr257270%_)
                                  (let* ((_%expr257271257283%_ _%expr257270%_)
                                         (_%else257274257291%_
                                          (lambda ()
                                            (_%lp257246%_
                                             _%rest257269%_
                                             _%user-decls257249%_))))
                                    (let ((_%K257279257312%_
                                           (lambda (_%decls257310%_)
                                             (_%lp257246%_
                                              _%rest257269%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls257249%_
                                                 _%decls257310%_)))))
                                          (_%K257276257297%_
                                           (lambda (_%exprs257295%_)
                                             (_%lp257246%_
                                              (append _%exprs257295%_
                                                      _%rest257269%_)
                                              _%user-decls257249%_))))
                                      (if (pair? _%expr257271257283%_)
                                          (let ((_%tl257281257317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr257271257283%_)))
                                                (_%hd257280257315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr257271257283%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd257280257315%_
                                                         'declare))
                                                (let ((_%decls257320%_
                                                       _%tl257281257317%_))
                                                  (_%K257279257312%_
                                                   _%decls257320%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd257280257315%_
                                                             'begin))
                                                    (let ((_%exprs257305%_
                                                           _%tl257281257317%_))
                                                      (_%K257276257297%_
                                                       _%exprs257305%_))
                                                    (_%else257274257291%_))))
                                          (_%else257274257291%_)))))))
                          (if (pair? _%rest257250257258%_)
                              (let ((_%hd257255257325%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest257250257258%_)))
                                    (_%tl257256257327%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest257250257258%_))))
                                (let* ((_%expr257330%_ _%hd257255257325%_)
                                       (_%rest257332%_ _%tl257256257327%_))
                                  (_%K257254257322%_
                                   _%rest257332%_
                                   _%expr257330%_)))
                              (_%else257252257266%_)))))))
                 (_%compile-stub257171%_
                  (lambda (_%output-scm257178%_ _%output-bin257179%_)
                    (let* ((_%gerbil-home257181%_
                            (let ((__tmp257954
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp257954)))
                           (_%gerbil-libdir257183%_
                            (path-expand '"lib" _%gerbil-home257181%_))
                           (_%runtime257185%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp257187%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home257181%_))
                           (_%include-gambit-sharp257189%_
                            (gxc#include-source _%gambit-sharp257187%_))
                           (_%bin-scm257191%_
                            (gxc#find-static-module-file _%ctx257165%_))
                           (_%deps257193%_
                            (gxc#find-runtime-module-deps _%ctx257165%_))
                           (_%deps257195%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps257193%_)))
                           (_%deps257200%_
                            (let ((__tmp257955
                                   (lambda (_%$obj257197%_)
                                     (not (gxc#file-empty? _%$obj257197%_)))))
                              (declare (not safe))
                              (##filter __tmp257955 _%deps257195%_)))
                           (_%deps257204%_
                            (let ((__tmp257956
                                   (lambda (_%f257202%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f257202%_
                                             _%runtime257185%_))))))
                              (declare (not safe))
                              (##filter __tmp257956 _%deps257200%_)))
                           (_%output-base257206%_
                            (let ((__tmp257957
                                   (path-strip-extension
                                    _%output-scm257178%_)))
                              (declare (not safe))
                              (##string-append __tmp257957)))
                           (_%output-c257208%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base257206%_ '".c")))
                           (_%output-o257210%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base257206%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_257212%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base257206%_ '"_.c")))
                           (_%output-o_257214%_
                            (let ((__tmp257958
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base257206%_
                               __tmp257958)))
                           (_%gsc-link-opts257216%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts257218%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts257220%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir257183%_)))
                           (_%output-ld-opts257222%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros257224%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp257189%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp257189%_
                                            '()))))
                           (_%gsc-link-opts257226%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts257216%_
                               _%gsc-gx-macros257224%_)))
                           (_%rpath257228%_
                            (gxc#gerbil-rpath _%gerbil-libdir257183%_))
                           (_%default-ld-options257230%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp257959
                             (lambda ()
                               (let ((__tmp257960
                                      (path-directory _%output-bin257179%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp257960)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp257959))
                      (gxc#with-output-to-scheme-file
                       _%output-scm257178%_
                       (lambda ()
                         (_%generate-stub257169%_
                          (let ((__tmp257961
                                 (let ((__tmp257962
                                        (cons _%bin-scm257191%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp257962
                                    _%deps257204%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp257961 _%runtime257185%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it257236%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_257212%_
                                                      (let ((__tmp257963
                                                             (cons _%output-scm257178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp257963 _%gsc-link-opts257226%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp257964
                                                 (let ((__tmp257965
                                                        (cons _%output-c257208%_
                                                              (cons _%output-c_257212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp257965
                                                    _%gsc-static-opts257220%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp257964
                                             _%gsc-cc-opts257218%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin257179%_
                                                      (cons _%output-o257210%_
                                                            (cons _%output-o_257214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp257966
                                 (let ((__tmp257968
                                        (cons '"-L"
                                              (cons _%gerbil-libdir257183%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options257230%_))))
                                       (__tmp257967
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath257228%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp257968 __tmp257967))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp257966
                             _%output-ld-opts257222%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it257236%_))
                                (_%compile-it257236%_)))
                          '#!void)))))
          (let* ((_%output-bin257173%_
                  (gxc#compile-exe-output-file _%ctx257165%_ _%opts257166%_))
                 (_%output-scm257175%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin257173%_ '"__exe.scm"))))
            (_%compile-stub257171%_
             _%output-scm257175%_
             _%output-bin257173%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx257114%_ _%id257115%_)
        (let ((_%$e257161%_
               (let ((__tmp257970
                      (lambda (_%e257116257118%_)
                        (let* ((_%e257116257120257130%_ _%e257116257118%_)
                               (_%else257122257138%_ (lambda () '#f))
                               (_%K257124257142%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e257116257120257130%_
                                 'gx#module-export::t))
                              (let* ((_%e257125257145%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e257116257120257130%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e257126257148%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e257116257120257130%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e257127257151%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e257116257120257130%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e257127257151%_ '0))
                                    (let ((_%e257128257154%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e257116257120257130%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g257156257158%_)
                                             (eq? _%g257156257158%_
                                                  _%id257115%_))
                                           _%e257128257154%_)
                                          (_%K257124257142%_)
                                          (_%else257122257138%_)))
                                    (_%else257122257138%_)))
                              (_%else257122257138%_)))))
                     (__tmp257969
                      (##structure-ref
                       _%ctx257114%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp257970 __tmp257969))))
          (if _%$e257161%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e257161%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx257105%_ _%id257106%_)
        (let ((_%$e257108%_
               (gxc#find-export-binding _%ctx257105%_ _%id257106%_)))
          (if _%$e257108%_
              ((lambda (_%bind257111%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind257111%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id257106%_)))
                 (##structure-ref _%bind257111%_ '1 gx#binding::t '#f))
               _%$e257108%_)
              (let ((__tmp257971
                     (##structure-ref
                      _%ctx257105%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp257971
                 _%id257106%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx256971%_)
        (letrec* ((_%ht256973%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template256974%_
                   (lambda (_%in257050%_ _%phi257051%_)
                     (let ((_%iphi257053%_
                            (fx+ _%phi257051%_
                                 (##direct-structure-ref
                                  _%in257050%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports257054%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in257050%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp257056%_ ((_%rest257058%_ _%imports257054%_)
                                          (_%r257059%_ '()))
                         (let* ((_%rest257060257068%_ _%rest257058%_)
                                (_%else257062257076%_ (lambda () _%r257059%_))
                                (_%K257064257093%_
                                 (lambda (_%rest257079%_ _%in257080%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in257080%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi257053%_))
                                           (_%lp257056%_
                                            _%rest257079%_
                                            (cons _%in257080%_ _%r257059%_))
                                           (_%lp257056%_
                                            _%rest257079%_
                                            _%r257059%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in257080%_
                                              'gx#module-import::t))
                                           (let ((_%iphi257084%_
                                                  (fx+ _%phi257051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in257080%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi257084%_))
                                                 (_%lp257056%_
                                                  _%rest257079%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in257080%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r257059%_))
                                                 (_%lp257056%_
                                                  _%rest257079%_
                                                  _%r257059%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in257080%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi257087%_
                                                      (fx+ _%iphi257053%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in257080%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi257087%_))
                                                     (_%lp257056%_
                                                      _%rest257079%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in257080%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r257059%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi257087%_))
                                                         (_%lp257056%_
                                                          _%rest257079%_
                                                          (let ((__tmp257972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template256974%_
                          _%in257080%_
                          _%iphi257053%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r257059%_ __tmp257972)))
                 (_%lp257056%_ _%rest257079%_ _%r257059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp257056%_
                                                _%rest257079%_
                                                _%r257059%_)))))))
                           (if (pair? _%rest257060257068%_)
                               (let ((_%hd257065257096%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest257060257068%_)))
                                     (_%tl257066257098%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest257060257068%_))))
                                 (let* ((_%in257101%_ _%hd257065257096%_)
                                        (_%rest257103%_ _%tl257066257098%_))
                                   (_%K257064257093%_
                                    _%rest257103%_
                                    _%in257101%_)))
                               (_%else257062257076%_)))))))
                  (_%find-deps256975%_
                   (lambda (_%rest256983%_ _%deps256984%_)
                     (let* ((_%rest256985256993%_ _%rest256983%_)
                            (_%else256987257001%_ (lambda () _%deps256984%_))
                            (_%K256989257038%_
                             (lambda (_%rest257004%_ _%hd257005%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd257005%_
                                      'gx#module-context::t))
                                   (let ((_%id257008%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd257005%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports257009%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd257005%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht256973%_
                                            _%id257008%_))
                                         (_%find-deps256975%_
                                          _%rest257004%_
                                          _%deps256984%_)
                                         (let ((_%$e257012%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd257005%_))))
                                           (if _%$e257012%_
                                               ((lambda (_%pre257015%_)
                                                  (let ((_%xdeps257017%_
                                                         (_%find-deps256975%_
                                                          (cons _%pre257015%_
                                                                _%imports257009%_)
                                                          _%deps256984%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht256973%_
                                                       _%id257008%_
                                                       _%hd257005%_))
                                                    (_%find-deps256975%_
                                                     _%rest257004%_
                                                     (cons _%hd257005%_
                                                           _%xdeps257017%_))))
                                                _%$e257012%_)
                                               (let ((_%xdeps257020%_
                                                      (_%find-deps256975%_
                                                       _%imports257009%_
                                                       _%deps256984%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht256973%_
                                                    _%id257008%_
                                                    _%hd257005%_))
                                                 (_%find-deps256975%_
                                                  _%rest257004%_
                                                  (cons _%hd257005%_
                                                        _%xdeps257020%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd257005%_
                                          'gx#prelude-context::t))
                                       (let ((_%id257023%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd257005%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht256973%_
                                                _%id257023%_))
                                             (_%find-deps256975%_
                                              _%rest257004%_
                                              _%deps256984%_)
                                             (let ((_%xdeps257027%_
                                                    (_%find-deps256975%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd257005%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps256984%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht256973%_
                                                      _%id257023%_))
                                                   (_%find-deps256975%_
                                                    _%rest257004%_
                                                    _%xdeps257027%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht256973%_
                                                        _%id257023%_
                                                        _%hd257005%_))
                                                     (_%find-deps256975%_
                                                      _%rest257004%_
                                                      (cons _%hd257005%_
                                                            _%xdeps257027%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd257005%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd257005%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps256975%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd257005%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest257004%_)
                                                _%deps256984%_)
                                               (_%find-deps256975%_
                                                _%rest257004%_
                                                _%deps256984%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd257005%_
                                                  'gx#module-export::t))
                                               (_%find-deps256975%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd257005%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest257004%_)
                                                _%deps256984%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd257005%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd257005%_ '2 '#f '#f)))
               (_%find-deps256975%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd257005%_ '1 '#f '#f))
                      _%rest257004%_)
                _%deps256984%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd257005%_ '2 '#f '#f)))
                   (let ((_%xdeps257034%_
                          (_%import-set-template256974%_ _%hd257005%_ '0)))
                     (_%find-deps256975%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest257004%_ _%xdeps257034%_))
                      _%deps256984%_))
                   (_%find-deps256975%_ _%rest257004%_ _%deps256984%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd257005%_))))))))))
                       (if (pair? _%rest256985256993%_)
                           (let ((_%hd256990257041%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest256985256993%_)))
                                 (_%tl256991257043%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest256985256993%_))))
                             (let* ((_%hd257046%_ _%hd256990257041%_)
                                    (_%rest257048%_ _%tl256991257043%_))
                               (_%K256989257038%_
                                _%rest257048%_
                                _%hd257046%_)))
                           (_%else256987257001%_))))))
          (let ((__tmp257973
                 (filter gx#expander-context-id
                         (_%find-deps256975%_
                          (let ((_%$e256977%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx256971%_))))
                            (if _%$e256977%_
                                ((lambda (_%pre256980%_)
                                   (cons _%pre256980%_
                                         (##structure-ref
                                          _%ctx256971%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e256977%_)
                                (##structure-ref
                                 _%ctx256971%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp257973)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx256901%_)
        (let* ((_%context-id256903%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx256901%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx256901%_ '1 '#f '#f))
                    (string->symbol _%ctx256901%_)))
               (_%scm256905%_
                (let ((__tmp257974
                       (gxc#static-module-name _%context-id256903%_)))
                  (declare (not safe))
                  (##string-append __tmp257974 '".scm")))
               (_%dirs256907%_ (let () (declare (not safe)) (load-path)))
               (_%dirs256913%_
                (let ((_%user-libpath256909%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath256909%_
                      (let ((_%user-libpath256911%_
                             (path-expand '"lib" _%user-libpath256909%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath256911%_ _%dirs256907%_))
                            _%dirs256907%_
                            (cons _%user-libpath256911%_ _%dirs256907%_)))
                      _%dirs256907%_)))
               (_%dirs256923%_
                (let ((_%$e256915%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e256915%_
                      ((lambda (_%g256917256919%_)
                         (cons _%g256917256919%_ _%dirs256913%_))
                       _%$e256915%_)
                      _%dirs256913%_)))
               (_%dirs256929%_
                (let ((__tmp257975
                       (lambda (_%g256924256926%_)
                         (path-expand '"static" _%g256924256926%_))))
                  (declare (not safe))
                  (##map __tmp257975 _%dirs256923%_))))
          (let _%lp256932%_ ((_%rest256934%_ _%dirs256929%_))
            (let* ((_%rest256935256943%_ _%rest256934%_)
                   (_%else256937256951%_
                    (lambda ()
                      (let ((__tmp257976
                             (##structure-ref
                              _%ctx256901%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp257976
                         _%scm256905%_))))
                   (_%K256939256959%_
                    (lambda (_%rest256954%_ _%dir256955%_)
                      (let ((_%path256957%_
                             (path-expand _%scm256905%_ _%dir256955%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path256957%_))
                            _%path256957%_
                            (_%lp256932%_ _%rest256954%_))))))
              (if (pair? _%rest256935256943%_)
                  (let ((_%hd256940256962%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest256935256943%_)))
                        (_%tl256941256964%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest256935256943%_))))
                    (let* ((_%dir256967%_ _%hd256940256962%_)
                           (_%rest256969%_ _%tl256941256964%_))
                      (_%K256939256959%_ _%rest256969%_ _%dir256967%_)))
                  (_%else256937256951%_)))))))
    (define gxc#file-empty?
      (lambda (_%path256899%_)
        (zero? (let ((__tmp257977 (file-info _%path256899%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp257977)))))
    (define gxc#compile-top-module
      (lambda (_%ctx256890%_)
        (let ((__tmp257978
               (lambda ()
                 (let ((__tmp257979
                        (lambda ()
                          (let ((__tmp257980
                                 (lambda ()
                                   (let ((__tmp257982
                                          (lambda ()
                                            (let ((__tmp257984
                                                   (lambda ()
                                                     (let ((__tmp257986
                                                            (lambda ()
                                                              (let ((__tmp257987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx256890%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp257987))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp257988
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx256890%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp257988))
                          '#!void)
                      (gxc#collect-bindings _%ctx256890%_)
                      (gxc#compile-runtime-code _%ctx256890%_)
                      (gxc#compile-meta-code _%ctx256890%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx256890%_)
                          '#!void)))
                   (__tmp257985
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
                __tmp257986
                gxc#current-compile-runtime-names
                __tmp257985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp257983
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp257984
                                               gxc#current-compile-runtime-sections
                                               __tmp257983))))
                                         (__tmp257981
                                          (let ((__obj257879
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj257879))
                                            __obj257879)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp257982
                                      gxc#current-compile-symbol-table
                                      __tmp257981)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp257980
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp257979
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257978
           gx#current-expander-context
           _%ctx256890%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx256888%_)
        (let ((__tmp257989
               (##structure-ref _%ctx256888%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp257989))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx256833%_)
        (letrec ((_%compile1256835%_
                  (lambda (_%ctx256877%_)
                    (let* ((_%code256879%_
                            (##structure-ref
                             _%ctx256877%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm256883%_
                            (let ((_%idstr256881%_
                                   (let ((__tmp257990
                                          (##structure-ref
                                           _%ctx256877%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp257990))))
                              (declare (not safe))
                              (##string-append _%idstr256881%_ '"~0")))
                           (_%rtc?256885%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code256879%_))))
                      (if _%rtc?256885%_
                          (let ((__tmp257991
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp257991
                             _%ctx256877%_
                             _%rtm256883%_))
                          '#!void)
                      (_%generate-runtime-code256837%_
                       _%ctx256877%_
                       _%code256879%_
                       (if _%rtc?256885%_ _%rtm256883%_ '#f)))))
                 (_%context-timestamp256836%_
                  (lambda (_%ctx256875%_)
                    (let ((__tmp257992
                           (let ((__tmp257993
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx256875%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp257993 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp257992))))
                 (_%generate-runtime-code256837%_
                  (lambda (_%ctx256844%_ _%code256845%_ _%rtm256846%_)
                    (let* ((_%runtime-code?256848%_ (if _%rtm256846%_ '#t '#f))
                           (_%lifts256850%_ (box '()))
                           (_%runtime-code256856%_
                            (if _%runtime-code?256848%_
                                (let ((__tmp257994
                                       (lambda ()
                                         (let ((__tmp257995
                                                (lambda ()
                                                  (let ((__tmp257996
                                                         (lambda ()
                                                           (let ((__tmp257998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code256845%_))))
                         (__tmp257997
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp257998
                      gxc#current-compile-marks
                      __tmp257997)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp257996
                                                     gxc#current-compile-lift
                                                     _%lifts256850%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp257995
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp257994
                                   gx#current-expander-context
                                   _%ctx256844%_))
                                '#f))
                           (_%runtime-code256858%_
                            (if _%runtime-code?256848%_
                                (if (null? (unbox _%lifts256850%_))
                                    _%runtime-code256856%_
                                    (cons 'begin
                                          (let ((__tmp258000
                                                 (cons _%runtime-code256856%_
                                                       '()))
                                                (__tmp257999
                                                 (reverse (unbox _%lifts256850%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp258000
                                             __tmp257999))))
                                '#f))
                           (_%runtime-code256860%_
                            (if _%runtime-code?256848%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp256836%_
                                                         _%ctx256844%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code256858%_ '())))
                                '#f))
                           (_%loader-code256863%_
                            (let ((__tmp258001
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code256845%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp258001
                               gx#current-expander-context
                               _%ctx256844%_)))
                           (_%loader-code256865%_
                            (cons 'begin
                                  (cons _%loader-code256863%_
                                        (cons (if _%runtime-code?256848%_
                                                  (cons 'load-module
                                                        (cons _%rtm256846%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0256867%_
                            (gxc#compile-output-file _%ctx256844%_ '0 '".scm"))
                           (_%scmrt256869%_
                            (gxc#compile-output-file
                             _%ctx256844%_
                             '#f
                             '".scm"))
                           (_%scms256871%_
                            (gxc#compile-static-output-file _%ctx256844%_)))
                      (if _%runtime-code?256848%_
                          (gxc#compile-scm-file__0
                           _%scm0256867%_
                           _%runtime-code256860%_)
                          '#!void)
                      (let ((__tmp258002
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt256869%_
                                _%loader-code256865%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp258002
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms256871%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms256871%_))
                          '#!void)
                      (if _%runtime-code?256848%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0256867%_ _%scms256871%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms256871%_ void)))))))
          (let* ((_%all-modules256839%_
                  (cons _%ctx256833%_ (gxc#lift-nested-modules _%ctx256833%_)))
                 (__tmp258003
                  (lambda (_%ctx256841%_)
                    (let ((__tmp258004
                           (lambda () (_%compile1256835%_ _%ctx256841%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp258004
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp258003 _%all-modules256839%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx256732%_)
        (letrec ((_%compile-ssi256734%_
                  (lambda (_%code256801%_)
                    (let* ((_%path256803%_
                            (gxc#compile-output-file
                             _%ctx256732%_
                             '#f
                             '".ssi"))
                           (_%prelude256815%_
                            (let* ((_%super256805%_
                                    (##structure-ref
                                     _%ctx256732%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e256807%_
                                    (##structure-ref
                                     _%super256805%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e256807%_
                                  ((lambda (_%g256809256811%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g256809256811%_)))
                                   _%$e256807%_)
                                  ':<root>)))
                           (_%ns256817%_
                            (##structure-ref
                             _%ctx256732%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr256819%_
                            (symbol->string
                             (##structure-ref
                              _%ctx256732%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg256827%_
                            (let ((_%$e256821%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr256819%_ '#\/))))
                              (if _%$e256821%_
                                  ((lambda (_%x256824%_)
                                     (let ((__tmp258005
                                            (substring
                                             _%idstr256819%_
                                             '0
                                             _%x256824%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp258005)))
                                   _%$e256821%_)
                                  '#f)))
                           (_%rt256829%_
                            (let ((__tmp258006
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp258006 _%ctx256732%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path256803%_))
                      (gxc#with-output-to-scheme-file
                       _%path256803%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude256815%_))
                         (if _%pkg256827%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg256827%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns256817%_))
                         (newline)
                         (pretty-print _%code256801%_)
                         (if _%rt256829%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt256829%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi256735%_
                  (lambda (_%part256740%_)
                    (let* ((_%part256741256754%_ _%part256740%_)
                           (_%E256743256758%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part256741256754%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K256744256770%_
                            (lambda (_%code256761%_
                                     _%n256762%_
                                     _%phi256763%_
                                     _%phi-ctx256764%_)
                              (let ((_%code256768%_
                                     (let ((__tmp258007
                                            (lambda ()
                                              (let ((__tmp258008
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code256761%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp258008
                                                 gx#current-expander-phi
                                                 _%phi256763%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp258007
                                        gx#current-expander-context
                                        _%phi-ctx256764%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx256732%_
                                  _%n256762%_
                                  '".scm")
                                 _%code256768%_
                                 '#t)))))
                      (if (pair? _%part256741256754%_)
                          (let ((_%hd256745256773%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part256741256754%_)))
                                (_%tl256746256775%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part256741256754%_))))
                            (let ((_%phi-ctx256778%_ _%hd256745256773%_))
                              (if (pair? _%tl256746256775%_)
                                  (let ((_%hd256747256780%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl256746256775%_)))
                                        (_%tl256748256782%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl256746256775%_))))
                                    (let ((_%phi256785%_ _%hd256747256780%_))
                                      (if (pair? _%tl256748256782%_)
                                          (let ((_%hd256749256787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl256748256782%_)))
                                                (_%tl256750256789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl256748256782%_))))
                                            (let ((_%n256792%_
                                                   _%hd256749256787%_))
                                              (if (pair? _%tl256750256789%_)
                                                  (let ((_%hd256751256794%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl256750256789%_)))
                                                        (_%tl256752256796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl256750256789%_))))
                                                    (let ((_%code256799%_
                                                           _%hd256751256794%_))
                                                      (if (null? _%tl256752256796%_)
                                                          (_%K256744256770%_
                                                           _%code256799%_
                                                           _%n256792%_
                                                           _%phi256785%_
                                                           _%phi-ctx256778%_)
                                                          (_%E256743256758%_))))
                                                  (_%E256743256758%_))))
                                          (_%E256743256758%_))))
                                  (_%E256743256758%_))))
                          (_%E256743256758%_))))))
          (let ((_g258009_ (gxc#generate-meta-code _%ctx256732%_)))
            (begin
              (let ((_g258010_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g258009_)
                           (##values-length _g258009_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g258010_ 2)))
                    (error "Context expects 2 values" _g258010_)))
              (let ((_%ssi-code256737%_
                     (let () (declare (not safe)) (##values-ref _g258009_ 0)))
                    (_%phi-code256738%_
                     (let () (declare (not safe)) (##values-ref _g258009_ 1))))
                (begin
                  (_%compile-ssi256734%_ _%ssi-code256737%_)
                  (for-each _%compile-phi256735%_ _%phi-code256738%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx256714%_)
        (let* ((_%path256716%_
                (gxc#compile-output-file _%ctx256714%_ '#f '".ssxi.ss"))
               (_%code256718%_
                (let ((__tmp258011
                       (##structure-ref
                        _%ctx256714%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp258011)))
               (_%idstr256720%_
                (symbol->string
                 (##structure-ref
                  _%ctx256714%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg256728%_
                (let ((_%$e256722%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr256720%_ '#\/))))
                  (if _%$e256722%_
                      ((lambda (_%x256725%_)
                         (let ((__tmp258012
                                (substring _%idstr256720%_ '0 _%x256725%_)))
                           (declare (not safe))
                           (##string->symbol __tmp258012)))
                       _%$e256722%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path256716%_))
          (gxc#with-output-to-scheme-file
           _%path256716%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg256728%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg256728%_))
                 '#!void)
             (newline)
             (pretty-print _%code256718%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx256707%_)
        (let* ((_%state256709%_
                (let ((__obj257880
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj257880 _%ctx256707%_))
                  __obj257880))
               (_%ssi-code256711%_
                (let ((__tmp258013
                       (##structure-ref
                        _%ctx256707%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state256709%_
                   __tmp258013))))
          (values _%ssi-code256711%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state256709%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx256699%_)
        (let* ((_%lifts256701%_ (box '()))
               (__tmp258014
                (lambda ()
                  (let ((__tmp258016
                         (lambda ()
                           (let ((_%code256705%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx256699%_))))
                             (if (null? (unbox _%lifts256701%_))
                                 _%code256705%_
                                 (cons 'begin
                                       (let ((__tmp258018
                                              (cons _%code256705%_ '()))
                                             (__tmp258017
                                              (reverse (unbox _%lifts256701%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp258018
                                          __tmp258017)))))))
                        (__tmp258015
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp258016
                     gxc#current-compile-marks
                     __tmp258015)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258014
           gxc#current-compile-lift
           _%lifts256701%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx256695%_)
        (let ((_%modules256697%_ (box '())))
          (let ((__tmp258019
                 (##structure-ref _%ctx256695%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules256697%_ __tmp258019))
          (reverse (unbox _%modules256697%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path256675%_ _%code256676%_ _%phi?256677%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path256675%_))
        (gxc#with-output-to-scheme-file
         _%path256675%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp258020
                                           (if _%phi?256677%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp258020)))))))
           (pretty-print _%code256676%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it256681%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path256675%_ _%phi?256677%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp258021
                         (cons 'compile-file (cons _%path256675%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it256681%_ __tmp258021))
                  (_%compile-it256681%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path256686%_ _%code256687%_)
        (let ((_%phi?256689%_ '#f))
          (gxc#compile-scm-file__%
           _%path256686%_
           _%code256687%_
           _%phi?256689%_))))
    (define gxc#compile-scm-file
      (lambda _g258022_
        (let ((_g258023_ (let () (declare (not safe)) (##length _g258022_))))
          (cond ((let () (declare (not safe)) (##fx= _g258023_ 2))
                 (apply gxc#compile-scm-file__0 _g258022_))
                ((let () (declare (not safe)) (##fx= _g258023_ 3))
                 (apply gxc#compile-scm-file__% _g258022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g258022_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?256576%_)
        (let _%lp256578%_ ((_%rest256580%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts256581%_ '()))
          (let* ((_%rest256582256602%_ _%rest256580%_)
                 (_%else256586256610%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts256581%_)))
                        (reverse _%opts256581%_)))))
            (let ((_%K256596256653%_
                   (lambda (_%rest256651%_)
                     (_%lp256578%_ _%rest256651%_ _%opts256581%_)))
                  (_%K256591256635%_
                   (lambda (_%rest256633%_)
                     (_%lp256578%_ _%rest256633%_ _%opts256581%_)))
                  (_%K256588256617%_
                   (lambda (_%rest256614%_ _%opt256615%_)
                     (_%lp256578%_
                      _%rest256614%_
                      (cons _%opt256615%_ _%opts256581%_)))))
              (if (pair? _%rest256582256602%_)
                  (let ((_%tl256598256658%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest256582256602%_)))
                        (_%hd256597256656%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest256582256602%_))))
                    (if (equal? _%hd256597256656%_ '"-cc-options")
                        (if (pair? _%tl256598256658%_)
                            (let* ((_%tl256600256661%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl256598256658%_)))
                                   (_%rest256664%_ _%tl256600256661%_))
                              (_%K256596256653%_ _%rest256664%_))
                            (let ((_%opt256625%_ _%hd256597256656%_)
                                  (_%rest256627%_ _%tl256598256658%_))
                              (_%K256588256617%_
                               _%rest256627%_
                               _%opt256625%_)))
                        (if (equal? _%hd256597256656%_ '"-ld-options")
                            (if (pair? _%tl256598256658%_)
                                (let* ((_%tl256595256643%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl256598256658%_)))
                                       (_%rest256646%_ _%tl256595256643%_))
                                  (_%K256591256635%_ _%rest256646%_))
                                (let ((_%opt256625%_ _%hd256597256656%_)
                                      (_%rest256627%_ _%tl256598256658%_))
                                  (_%K256588256617%_
                                   _%rest256627%_
                                   _%opt256625%_)))
                            (let ((_%opt256625%_ _%hd256597256656%_)
                                  (_%rest256627%_ _%tl256598256658%_))
                              (_%K256588256617%_
                               _%rest256627%_
                               _%opt256625%_)))))
                  (_%else256586256610%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?256670%_ '#f)) (gxc#gsc-link-options__% _%phi?256670%_))))
    (define gxc#gsc-link-options
      (lambda _g258024_
        (let ((_g258025_ (let () (declare (not safe)) (##length _g258024_))))
          (cond ((let () (declare (not safe)) (##fx= _g258025_ 0))
                 (apply gxc#gsc-link-options__0 _g258024_))
                ((let () (declare (not safe)) (##fx= _g258025_ 1))
                 (apply gxc#gsc-link-options__% _g258024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g258024_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords256426%_ _%static?256422256427%_ _%phi?256428%_)
        (let ((_%static?256430%_
               (if (eq? _%static?256422256427%_ absent-value)
                   '#f
                   _%static?256422256427%_)))
          (if _%phi?256428%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp256432%_ ((_%rest256434%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts256435%_ '()))
                (let* ((_%rest256436256462%_ _%rest256434%_)
                       (_%else256441256470%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts256435%_)))
                              (reverse! _%opts256435%_)))))
                  (let ((_%K256456256533%_
                         (lambda (_%rest256530%_ _%opt256531%_)
                           (if _%static?256430%_
                               (_%lp256432%_
                                _%rest256530%_
                                (cons _%opt256531%_
                                      (cons '"-cc-options" _%opts256435%_)))
                               (_%lp256432%_ _%rest256530%_ _%opts256435%_))))
                        (_%K256451256510%_
                         (lambda (_%rest256507%_ _%opt256508%_)
                           (_%lp256432%_
                            _%rest256507%_
                            (cons _%opt256508%_
                                  (cons '"-cc-options" _%opts256435%_)))))
                        (_%K256446256490%_
                         (lambda (_%rest256488%_)
                           (_%lp256432%_ _%rest256488%_ _%opts256435%_)))
                        (_%K256443256476%_
                         (lambda (_%rest256474%_)
                           (_%lp256432%_ _%rest256474%_ _%opts256435%_))))
                    (if (pair? _%rest256436256462%_)
                        (let ((_%tl256458256538%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest256436256462%_)))
                              (_%hd256457256536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest256436256462%_))))
                          (if (equal? _%hd256457256536%_ '"-cc-options")
                              (if (pair? _%tl256458256538%_)
                                  (let ((_%tl256460256543%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl256458256538%_)))
                                        (_%hd256459256541%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl256458256538%_))))
                                    (if (equal? _%hd256459256541%_ '"-Bstatic")
                                        (let ((_%opt256546%_
                                               _%hd256459256541%_)
                                              (_%rest256548%_
                                               _%tl256460256543%_))
                                          (_%K256456256533%_
                                           _%rest256548%_
                                           _%opt256546%_))
                                        (let ((_%opt256523%_
                                               _%hd256459256541%_)
                                              (_%rest256525%_
                                               _%tl256460256543%_))
                                          (_%K256451256510%_
                                           _%rest256525%_
                                           _%opt256523%_))))
                                  (let ((_%rest256482%_ _%tl256458256538%_))
                                    (_%K256443256476%_ _%rest256482%_)))
                              (if (equal? _%hd256457256536%_ '"-ld-options")
                                  (if (pair? _%tl256458256538%_)
                                      (let* ((_%tl256450256498%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl256458256538%_)))
                                             (_%rest256501%_
                                              _%tl256450256498%_))
                                        (_%K256446256490%_ _%rest256501%_))
                                      (let ((_%rest256482%_
                                             _%tl256458256538%_))
                                        (_%K256443256476%_ _%rest256482%_)))
                                  (let ((_%rest256482%_ _%tl256458256538%_))
                                    (_%K256443256476%_ _%rest256482%_)))))
                        (_%else256441256470%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords256553%_ _%static?256422256554%_)
        (let ((_%phi?256556%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords256553%_
           _%static?256422256554%_
           _%phi?256556%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g258026_
        (let ((_g258027_ (let () (declare (not safe)) (##length _g258026_))))
          (cond ((let () (declare (not safe)) (##fx= _g258027_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g258026_))
                ((let () (declare (not safe)) (##fx= _g258027_ 3))
                 (apply gxc#gsc-cc-options__%__% _g258026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g258026_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords256565%_ . _%args256566%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords256565%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords256565%_
                  'static:
                  absent-value))
               _%args256566%_)))
    (define gxc#gsc-cc-options
      (lambda _%args256423256572%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args256423256572%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords256272%_ _%static?256268256273%_ _%phi?256274%_)
        (let ((_%static?256276%_
               (if (eq? _%static?256268256273%_ absent-value)
                   '#f
                   _%static?256268256273%_)))
          (if _%phi?256274%_
              '()
              (let _%lp256278%_ ((_%rest256280%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts256281%_ '()))
                (let* ((_%rest256282256308%_ _%rest256280%_)
                       (_%else256287256316%_
                        (lambda () (reverse! _%opts256281%_))))
                  (let ((_%K256302256379%_
                         (lambda (_%rest256376%_ _%opt256377%_)
                           (if _%static?256276%_
                               (_%lp256278%_
                                _%rest256376%_
                                (cons _%opt256377%_
                                      (cons '"-ld-options" _%opts256281%_)))
                               (_%lp256278%_ _%rest256376%_ _%opts256281%_))))
                        (_%K256297256356%_
                         (lambda (_%rest256353%_ _%opt256354%_)
                           (_%lp256278%_
                            _%rest256353%_
                            (cons _%opt256354%_
                                  (cons '"-ld-options" _%opts256281%_)))))
                        (_%K256292256336%_
                         (lambda (_%rest256334%_)
                           (_%lp256278%_ _%rest256334%_ _%opts256281%_)))
                        (_%K256289256322%_
                         (lambda (_%rest256320%_)
                           (_%lp256278%_ _%rest256320%_ _%opts256281%_))))
                    (if (pair? _%rest256282256308%_)
                        (let ((_%tl256304256384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest256282256308%_)))
                              (_%hd256303256382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest256282256308%_))))
                          (if (equal? _%hd256303256382%_ '"-ld-options")
                              (if (pair? _%tl256304256384%_)
                                  (let ((_%tl256306256389%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl256304256384%_)))
                                        (_%hd256305256387%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl256304256384%_))))
                                    (if (equal? _%hd256305256387%_ '"-static")
                                        (let ((_%opt256392%_
                                               _%hd256305256387%_)
                                              (_%rest256394%_
                                               _%tl256306256389%_))
                                          (_%K256302256379%_
                                           _%rest256394%_
                                           _%opt256392%_))
                                        (let ((_%opt256369%_
                                               _%hd256305256387%_)
                                              (_%rest256371%_
                                               _%tl256306256389%_))
                                          (_%K256297256356%_
                                           _%rest256371%_
                                           _%opt256369%_))))
                                  (let ((_%rest256328%_ _%tl256304256384%_))
                                    (_%K256289256322%_ _%rest256328%_)))
                              (if (equal? _%hd256303256382%_ '"-cc-options")
                                  (if (pair? _%tl256304256384%_)
                                      (let* ((_%tl256296256344%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl256304256384%_)))
                                             (_%rest256347%_
                                              _%tl256296256344%_))
                                        (_%K256292256336%_ _%rest256347%_))
                                      (let ((_%rest256328%_
                                             _%tl256304256384%_))
                                        (_%K256289256322%_ _%rest256328%_)))
                                  (let ((_%rest256328%_ _%tl256304256384%_))
                                    (_%K256289256322%_ _%rest256328%_)))))
                        (_%else256287256316%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords256399%_ _%static?256268256400%_)
        (let ((_%phi?256402%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords256399%_
           _%static?256268256400%_
           _%phi?256402%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g258028_
        (let ((_g258029_ (let () (declare (not safe)) (##length _g258028_))))
          (cond ((let () (declare (not safe)) (##fx= _g258029_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g258028_))
                ((let () (declare (not safe)) (##fx= _g258029_ 3))
                 (apply gxc#gsc-ld-options__%__% _g258028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g258028_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords256411%_ . _%args256412%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords256411%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords256411%_
                  'static:
                  absent-value))
               _%args256412%_)))
    (define gxc#gsc-ld-options
      (lambda _%args256269256418%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args256269256418%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir256263%_)
        (let ((_%user-staticdir256265%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir256263%_
                       '" -I "
                       _%user-staticdir256265%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp256175%_ ((_%rest256177%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts256178%_ '()))
          (let* ((_%rest256179256199%_ _%rest256177%_)
                 (_%else256183256207%_ (lambda () _%opts256178%_)))
            (let ((_%K256193256250%_
                   (lambda (_%rest256248%_)
                     (_%lp256175%_ _%rest256248%_ _%opts256178%_)))
                  (_%K256188256228%_
                   (lambda (_%rest256225%_ _%opt256226%_)
                     (_%lp256175%_
                      _%rest256225%_
                      (let ((__tmp258030
                             (let ((__tmp258031
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt256226%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp258031))))
                        (declare (not safe))
                        (##append _%opts256178%_ __tmp258030)))))
                  (_%K256185256213%_
                   (lambda (_%rest256211%_)
                     (_%lp256175%_ _%rest256211%_ _%opts256178%_))))
              (if (pair? _%rest256179256199%_)
                  (let ((_%tl256195256255%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest256179256199%_)))
                        (_%hd256194256253%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest256179256199%_))))
                    (if (equal? _%hd256194256253%_ '"-cc-options")
                        (if (pair? _%tl256195256255%_)
                            (let* ((_%tl256197256258%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl256195256255%_)))
                                   (_%rest256261%_ _%tl256197256258%_))
                              (_%K256193256250%_ _%rest256261%_))
                            (let ((_%rest256219%_ _%tl256195256255%_))
                              (_%K256185256213%_ _%rest256219%_)))
                        (if (equal? _%hd256194256253%_ '"-ld-options")
                            (if (pair? _%tl256195256255%_)
                                (let ((_%tl256192256238%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl256195256255%_)))
                                      (_%hd256191256236%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl256195256255%_))))
                                  (let ((_%opt256241%_ _%hd256191256236%_)
                                        (_%rest256243%_ _%tl256192256238%_))
                                    (_%K256188256228%_
                                     _%rest256243%_
                                     _%opt256241%_)))
                                (let ((_%rest256219%_ _%tl256195256255%_))
                                  (_%K256185256213%_ _%rest256219%_)))
                            (let ((_%rest256219%_ _%tl256195256255%_))
                              (_%K256185256213%_ _%rest256219%_)))))
                  (_%else256183256207%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str256172%_)
        (not (let () (declare (not safe)) (string-empty? _%str256172%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path256165%_ _%phi?256166%_)
        (let ((_%gsc-link-opts256168%_
               (gxc#gsc-link-options__% _%phi?256166%_))
              (_%gsc-cc-opts256169%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?256166%_))
              (_%gsc-ld-opts256170%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?256166%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp258032
                  (let ((__tmp258033
                         (let ((__tmp258034 (cons _%path256165%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp258034
                            _%gsc-link-opts256168%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp258033 _%gsc-ld-opts256170%_))))
             (declare (not safe))
             (foldr__0 cons __tmp258032 _%gsc-cc-opts256169%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx256131%_ _%n256132%_ _%ext256133%_)
        (letrec ((_%module-relative-path256135%_
                  (lambda (_%ctx256163%_)
                    (path-strip-directory
                     (let ((__tmp258035
                            (##structure-ref
                             _%ctx256163%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp258035)))))
                 (_%module-source-directory256136%_
                  (lambda (_%ctx256159%_)
                    (path-directory
                     (let ((_%mpath256161%_
                            (##structure-ref
                             _%ctx256159%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath256161%_)
                           _%mpath256161%_
                           (last _%mpath256161%_))))))
                 (_%section-string256137%_
                  (lambda (_%n256153%_)
                    (if (number? _%n256153%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n256153%_))
                        (if (symbol? _%n256153%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n256153%_))
                            (if (string? _%n256153%_)
                                _%n256153%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n256153%_)))))))
                 (_%file-name256138%_
                  (lambda (_%path256151%_)
                    (if _%n256132%_
                        (string-append
                         _%path256151%_
                         '"~"
                         (_%section-string256137%_ _%n256132%_)
                         _%ext256133%_)
                        (string-append _%path256151%_ _%ext256133%_))))
                 (_%file-path256139%_
                  (lambda ()
                    (let ((_%$e256145%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e256145%_
                          ((lambda (_%outdir256148%_)
                             (path-expand
                              (_%file-name256138%_
                               (let ((__tmp258036
                                      (##structure-ref
                                       _%ctx256131%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp258036)))
                              _%outdir256148%_))
                           _%$e256145%_)
                          (path-expand
                           (_%file-name256138%_
                            (_%module-relative-path256135%_ _%ctx256131%_))
                           (_%module-source-directory256136%_
                            _%ctx256131%_)))))))
          (let ((_%path256141%_ (_%file-path256139%_)))
            (let ((__tmp258037
                   (lambda ()
                     (let ((__tmp258038 (path-directory _%path256141%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp258038)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp258037))
            _%path256141%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx256112%_)
        (letrec ((_%file-name256114%_
                  (lambda (_%id256129%_)
                    (let ((__tmp258039 (gxc#static-module-name _%id256129%_)))
                      (declare (not safe))
                      (##string-append __tmp258039 '".scm"))))
                 (_%file-path256115%_
                  (lambda ()
                    (let* ((_%file256121%_
                            (_%file-name256114%_
                             (##structure-ref
                              _%ctx256112%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e256123%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e256123%_
                          ((lambda (_%outdir256126%_)
                             (path-expand
                              _%file256121%_
                              (path-expand '"static" _%outdir256126%_)))
                           _%$e256123%_)
                          (path-expand _%file256121%_ '"static"))))))
          (let ((_%path256117%_ (_%file-path256115%_)))
            (let ((__tmp258040
                   (lambda ()
                     (let ((__tmp258041 (path-directory _%path256117%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp258041)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp258040))
            _%path256117%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx256105%_ _%opts256106%_)
        (let ((_%$e256108%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts256106%_))))
          (if _%$e256108%_
              _%$e256108%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx256105%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr256095%_)
        (if (string? _%idstr256095%_)
            (let* ((_%str256098%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr256095%_)))
                   (_%strs256100%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str256098%_ '#\/))))
              (declare (not safe))
              (string-join _%strs256100%_ '"__"))
            (if (symbol? _%idstr256095%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr256095%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr256095%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp258042
               (let ((__tmp258043 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp258043 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp258042))))
    (define gxc#invoke__%
      (lambda (_%@@keywords256061%_
               _%stdout-redirection256057256062%_
               _%stderr-redirection256058256063%_
               _%program256064%_
               _%args256065%_)
        (let* ((_%stdout-redirection256067%_
                (if (eq? _%stdout-redirection256057256062%_ absent-value)
                    '#f
                    _%stdout-redirection256057256062%_))
               (_%stderr-redirection256069%_
                (if (eq? _%stderr-redirection256058256063%_ absent-value)
                    '#f
                    _%stderr-redirection256058256063%_)))
          (let ((__tmp258044 (cons _%program256064%_ _%args256065%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp258044))
          (let* ((_%proc256071%_
                  (open-process
                   (cons 'path:
                         (cons _%program256064%_
                               (cons 'arguments:
                                     (cons _%args256065%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection256067%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection256069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output256076%_
                  (if (or _%stdout-redirection256067%_
                          _%stderr-redirection256069%_)
                      (read-line _%proc256071%_ '#f)
                      '#f))
                 (_%status256079%_ (process-status _%proc256071%_)))
            (let () (declare (not safe)) (##close-port _%proc256071%_))
            (if (zero? _%status256079%_)
                '#!void
                (begin
                  (display _%output256076%_)
                  (let ((__tmp258045 (cons _%program256064%_ _%args256065%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp258045
                     _%status256079%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords256084%_ . _%args256085%_)
        (apply gxc#invoke__%
               _%@@keywords256084%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords256084%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords256084%_
                  'stderr-redirection:
                  absent-value))
               _%args256085%_)))
    (define gxc#invoke
      (lambda _%args256059256091%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args256059256091%_)))))
