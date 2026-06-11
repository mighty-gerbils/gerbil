(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1781138372)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp263457 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp263457))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp263458 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp263458))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path263314%_ _%fun263315%_)
        (with-output-to-file
         (cons 'path: (cons _%path263314%_ gxc#scheme-file-settings))
         _%fun263315%_)))
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
      (lambda (_%gerbil-libdir263309%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir263309%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path263307%_)
        (let ((__tmp263459 (object->string _%path263307%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp263459 '")"))))
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
      (lambda (_%dir263305%_) (delete-file-or-directory _%dir263305%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath263248%_ _%opts263249%_)
        (if (string? _%srcpath263248%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath263248%_)))
        (let* ((_%outdir263251%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts263249%_)))
               (_%invoke-gsc?263253%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts263249%_)))
               (_%target263258%_
                (let ((_%$e263255%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts263249%_))))
                  (if _%$e263255%_ _%$e263255%_ 'C)))
               (_%gsc-options263263%_
                (append (cons '"-target"
                              (cons (symbol->string _%target263258%_) '()))
                        (let ((_%$e263260%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts263249%_))))
                          (if _%$e263260%_ _%$e263260%_ '()))))
               (_%keep-scm?263265%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts263249%_)))
               (_%verbosity263267%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts263249%_)))
               (_%optimize263269%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts263249%_)))
               (_%debug263271%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts263249%_)))
               (_%gen-ssxi263273%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts263249%_)))
               (_%parallel?263275%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts263249%_))))
          (if _%outdir263251%_
              (let ((__tmp263460
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir263251%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp263460))
              '#!void)
          (if _%optimize263269%_
              (let ((__tmp263461
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp263461))
              '#!void)
          (let ((__tmp263462
                 (lambda ()
                   (let ((__tmp263463
                          (lambda ()
                            (let ((__tmp263464
                                   (lambda ()
                                     (let ((__tmp263465
                                            (lambda ()
                                              (let ((__tmp263466
                                                     (lambda ()
                                                       (let ((__tmp263467
                                                              (lambda ()
                                                                (let ((__tmp263468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp263469
                                        (lambda ()
                                          (let ((__tmp263471
                                                 (lambda ()
                                                   (let ((__tmp263473
                                                          (lambda ()
                                                            (let ((__tmp263475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp263476
                                    (lambda ()
                                      (let ((__tmp263477
                                             (lambda ()
                                               (let ((__tmp263478
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath263248%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp263479
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath263248%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp263479))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp263478
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp263477
                                         gx#current-compilation-target
                                         _%target263258%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp263476
                                gxc#current-compile-parallel
                                _%parallel?263275%_))))
                          (__tmp263474
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp263475
                       gxc#current-compile-identifiers
                       __tmp263474))))
                 (__tmp263472
                  (cons (cons 'compile-module (cons _%srcpath263248%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp263473
                                                      gxc#current-compile-context
                                                      __tmp263472))))
                                                (__tmp263470
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp263471
                                             gxc#current-compile-timestamp
                                             __tmp263470)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp263469
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi263273%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp263468
                           gxc#current-compile-debug
                           _%debug263271%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp263467
                  gxc#current-compile-optimize
                  _%optimize263269%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp263466
                                                 gxc#current-compile-verbose
                                                 _%verbosity263267%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp263465
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?263265%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp263464
                               gxc#current-compile-gsc-options
                               _%gsc-options263263%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp263463
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?263253%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp263462
             gxc#current-compile-output-dir
             _%outdir263251%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath263298%_)
        (let ((_%opts263300%_ '()))
          (gxc#compile-module__% _%srcpath263298%_ _%opts263300%_))))
    (define gxc#compile-module
      (lambda _g263480_
        (let ((_g263481_ (let () (declare (not safe)) (##length _g263480_))))
          (cond ((let () (declare (not safe)) (##fx= _g263481_ 1))
                 (apply gxc#compile-module__0 _g263480_))
                ((let () (declare (not safe)) (##fx= _g263481_ 2))
                 (apply gxc#compile-module__% _g263480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g263480_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath263197%_ _%opts263198%_)
        (if (string? _%srcpath263197%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath263197%_)))
        (let* ((_%outdir263200%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts263198%_)))
               (_%invoke-gsc?263202%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts263198%_)))
               (_%target263207%_
                (let ((_%$e263204%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts263198%_))))
                  (if _%$e263204%_ _%$e263204%_ 'C)))
               (_%gsc-options263212%_
                (append (cons '"-target"
                              (cons (symbol->string _%target263207%_) '()))
                        (let ((_%$e263209%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts263198%_))))
                          (if _%$e263209%_ _%$e263209%_ '()))))
               (_%keep-scm?263214%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts263198%_)))
               (_%verbosity263216%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts263198%_)))
               (_%debug263218%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts263198%_)))
               (_%parallel?263220%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts263198%_))))
          (if _%outdir263200%_
              (let ((__tmp263482
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir263200%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp263482))
              '#!void)
          (let ((__tmp263483
                 (lambda ()
                   (let ((__tmp263484
                          (lambda ()
                            (let ((__tmp263485
                                   (lambda ()
                                     (let ((__tmp263486
                                            (lambda ()
                                              (let ((__tmp263487
                                                     (lambda ()
                                                       (let ((__tmp263488
                                                              (lambda ()
                                                                (let ((__tmp263489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp263491
                                        (lambda ()
                                          (let ((__tmp263493
                                                 (lambda ()
                                                   (let ((__tmp263495
                                                          (lambda ()
                                                            (let ((__tmp263496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp263497
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath263197%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp263498
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath263197%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp263498))
                                       _%opts263198%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp263497
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp263496
                       gxc#current-compile-parallel
                       _%parallel?263220%_))))
                 (__tmp263494
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp263495
                                                      gxc#current-compile-identifiers
                                                      __tmp263494))))
                                                (__tmp263492
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath263197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp263493
                                             gxc#current-compile-context
                                             __tmp263492))))
                                       (__tmp263490 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp263491
                                    gxc#current-compile-timestamp
                                    __tmp263490)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp263489
                           gxc#current-compile-debug
                           _%debug263218%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp263488
                  gxc#current-compile-verbose
                  _%verbosity263216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp263487
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?263214%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp263486
                                        gxc#current-compile-gsc-options
                                        _%gsc-options263212%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp263485
                               gx#current-compilation-target
                               _%target263207%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp263484
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?263202%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp263483
             gxc#current-compile-output-dir
             _%outdir263200%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath263240%_)
        (let ((_%opts263242%_ '()))
          (gxc#compile-exe__% _%srcpath263240%_ _%opts263242%_))))
    (define gxc#compile-exe
      (lambda _g263499_
        (let ((_g263500_ (let () (declare (not safe)) (##length _g263499_))))
          (cond ((let () (declare (not safe)) (##fx= _g263500_ 1))
                 (apply gxc#compile-exe__0 _g263499_))
                ((let () (declare (not safe)) (##fx= _g263500_ 2))
                 (apply gxc#compile-exe__% _g263499_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g263499_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx263193%_ _%opts263194%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts263194%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx263193%_
             _%opts263194%_)
            (gxc#compile-executable-module/separate
             _%ctx263193%_
             _%opts263194%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx262919%_ _%opts262920%_)
        (letrec ((_%generate-stub262922%_
                  (lambda (_%builtin-modules263189%_)
                    (let ((_%mod-main263191%_
                           (gxc#find-runtime-symbol _%ctx262919%_ 'main)))
                      (let ((__tmp263501
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules263189%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp263501))
                      (let ((__tmp263502
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main263191%_
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
                        (##write __tmp263502))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts262923%_
                  (lambda (_%gerbil-libdir263187%_)
                    (let ((__tmp263503
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir263187%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp263503 read))))
                 (_%replace-extension262924%_
                  (lambda (_%path263184%_ _%ext263185%_)
                    (string-append
                     (path-strip-extension _%path263184%_)
                     _%ext263185%_)))
                 (_%replace-extension-with-c262925%_
                  (lambda (_%path263182%_)
                    (_%replace-extension262924%_ _%path263182%_ '".c")))
                 (_%replace-extension-with-object262926%_
                  (lambda (_%path263180%_)
                    (_%replace-extension262924%_
                     _%path263180%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?262927%_
                  (lambda (_%ctx263178%_)
                    (if (_%exclude-module?262929%_ _%ctx263178%_)
                        '#f
                        (not (_%libgerbil-module?262928%_ _%ctx263178%_)))))
                 (_%libgerbil-module?262928%_
                  (lambda (_%ctx263171%_)
                    (let ((_%id-str263173%_
                           (symbol->string
                            (##structure-ref
                             _%ctx263171%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?262929%_ _%id-str263173%_)
                          '#f
                          (let ((_%$e263175%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str263173%_))))
                            (if _%$e263175%_
                                _%$e263175%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str263173%_))))))))
                 (_%exclude-module?262929%_
                  (lambda (_%ctx-or-str263167%_)
                    (let ((_%str263169%_
                           (if (string? _%ctx-or-str263167%_)
                               _%ctx-or-str263167%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str263167%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str263169%_))))
                 (_%not-file-empty?262930%_
                  (lambda (_%path263165%_)
                    (not (gxc#file-empty? _%path263165%_))))
                 (_%fold-libgerbil-runtime-scm262931%_
                  (lambda (_%gerbil-staticdir263158%_ _%libgerbil-scm263159%_)
                    (let ((_%gerbil-runtime-scm263163%_
                           (let ((__tmp263504
                                  (lambda (_%rtm263161%_)
                                    (path-expand
                                     (let ((__tmp263505
                                            (let ((__tmp263506
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm263161%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp263506
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp263505 '".scm"))
                                     _%gerbil-staticdir263158%_))))
                             (declare (not safe))
                             (##map __tmp263504 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates262932%_
                       (append _%gerbil-runtime-scm263163%_
                               _%libgerbil-scm263159%_)))))
                 (_%remove-duplicates262932%_
                  (lambda (_%strlst263118%_)
                    (let _%loop263120%_ ((_%rest263122%_ _%strlst263118%_)
                                         (_%result263123%_ '()))
                      (let* ((_%$%rest263124263132%_ _%rest263122%_)
                             (_%$%else263126263140%_
                              (lambda () (reverse! _%result263123%_)))
                             (_%$%K263128263146%_
                              (lambda (_%rest263143%_ _%path263144%_)
                                (if (member _%path263144%_ _%result263123%_)
                                    (_%loop263120%_
                                     _%rest263143%_
                                     _%result263123%_)
                                    (_%loop263120%_
                                     _%rest263143%_
                                     (cons _%path263144%_
                                           _%result263123%_))))))
                        (if (pair? _%$%rest263124263132%_)
                            (let ((_%$%hd263129263149%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest263124263132%_)))
                                  (_%$%tl263130263151%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest263124263132%_))))
                              (let* ((_%path263154%_ _%$%hd263129263149%_)
                                     (_%rest263156%_ _%$%tl263130263151%_))
                                (_%$%K263128263146%_
                                 _%rest263156%_
                                 _%path263154%_)))
                            (_%$%else263126263140%_))))))
                 (_%compile-stub262933%_
                  (lambda (_%output-scm262940%_ _%output-bin262941%_)
                    (let* ((_%gerbil-home262943%_
                            (let ((__tmp263507
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp263507)))
                           (_%gerbil-libdir262945%_
                            (path-expand '"lib" _%gerbil-home262943%_))
                           (_%gerbil-staticdir262947%_
                            (path-expand '"static" _%gerbil-libdir262945%_))
                           (_%deps262949%_
                            (gxc#find-runtime-module-deps _%ctx262919%_))
                           (_%libgerbil-deps262951%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?262928%_
                               _%deps262949%_)))
                           (_%libgerbil-scm262953%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps262951%_)))
                           (_%libgerbil-scm262955%_
                            (_%fold-libgerbil-runtime-scm262931%_
                             _%gerbil-staticdir262947%_
                             _%libgerbil-scm262953%_))
                           (_%libgerbil-c262957%_
                            (map _%replace-extension-with-c262925%_
                                 _%libgerbil-scm262955%_))
                           (_%libgerbil-o262959%_
                            (map _%replace-extension-with-object262926%_
                                 _%libgerbil-scm262955%_))
                           (_%src-deps262961%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?262927%_
                               _%deps262949%_)))
                           (_%src-deps-scm262963%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps262961%_)))
                           (_%src-deps-scm262965%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?262930%_
                               _%src-deps-scm262963%_)))
                           (_%src-deps-scm262967%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm262965%_)))
                           (_%src-deps-c262969%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c262925%_
                                     _%src-deps-scm262967%_)))
                           (_%src-deps-o262971%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object262926%_
                                     _%src-deps-scm262967%_)))
                           (_%src-bin-scm262973%_
                            (gxc#find-static-module-file _%ctx262919%_))
                           (_%src-bin-scm262975%_
                            (path-expand _%src-bin-scm262973%_))
                           (_%src-bin-c262977%_
                            (_%replace-extension-with-c262925%_
                             _%src-bin-scm262975%_))
                           (_%src-bin-o262979%_
                            (_%replace-extension-with-object262926%_
                             _%src-bin-scm262975%_))
                           (_%output-bin262981%_
                            (path-expand _%output-bin262941%_))
                           (_%output-scm262983%_
                            (path-expand _%output-scm262940%_))
                           (_%output-c262985%_
                            (_%replace-extension-with-c262925%_
                             _%output-scm262983%_))
                           (_%output-o262987%_
                            (_%replace-extension-with-object262926%_
                             _%output-scm262983%_))
                           (_%output_-c262989%_
                            (_%replace-extension262924%_
                             _%output-scm262983%_
                             '"_.c"))
                           (_%output_-o262991%_
                            (_%replace-extension262924%_
                             _%output-scm262983%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts262993%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts262995%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts262997%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir262947%_))
                           (_%output-ld-opts262999%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts263001%_
                            (_%get-libgerbil-ld-opts262923%_
                             _%gerbil-libdir262945%_))
                           (_%rpath263003%_
                            (gxc#gerbil-rpath _%gerbil-libdir262945%_))
                           (_%builtin-modules263007%_
                            (_%remove-duplicates262932%_
                             (let ((__tmp263508
                                    (let ((__tmp263510
                                           (lambda (_%mod263005%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod263005%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp263509
                                           (cons _%ctx262919%_
                                                 _%deps262949%_)))
                                      (declare (not safe))
                                      (##map __tmp263510 __tmp263509))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp263508)))))
                      (letrec ((_%compile-obj263010%_
                                (lambda (_%scm-path263017%_ _%c-path263018%_)
                                  (let* ((_%o-path263020%_
                                          (_%replace-extension262924%_
                                           _%c-path263018%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock263022%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path263020%_
                                             '".lock")))
                                         (_%locked263024%_ '#f)
                                         (_%unlock263027%_
                                          (lambda ()
                                            (close-port _%locked263024%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock263022%_)))))
                                    (let _%retry263030%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock263022%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry263030%_))
                                          (begin
                                            (set! _%locked263024%_
                                                  (let* ((_%handler263033%_
                                                          false)
                                                         (_%thunk263037%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock263022%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler263042%_ _%handler263033%_)
                 (_%thunk263098%_ _%thunk263037%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler263042%_
                                                     _%thunk263098%_)))
                                            (if _%locked263024%_
                                                '#!void
                                                (_%retry263030%_)))))
                                    (let ((__tmp263512
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path263020%_)))
                                                     (not _%scm-path263017%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path263017%_
                                                        _%o-path263020%_)))
                                                 (let ((_%gsc-cc-opts263115%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp263513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp263514 (cons _%c-path263018%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp263514
                            _%gsc-static-opts262997%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp263513 _%gsc-cc-opts263115%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp263511
                                           (lambda () (_%unlock263027%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp263512
                                       __tmp263511))))))
                        (let ((__tmp263515
                               (lambda ()
                                 (let ((__tmp263516
                                        (path-directory _%output-bin262981%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp263516)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp263515))
                        (gxc#with-output-to-scheme-file
                         _%output-scm262983%_
                         (lambda ()
                           (_%generate-stub262922%_
                            _%builtin-modules263007%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it263015%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp263517
                                                   (let ((__tmp263518
                                                          (let ((__tmp263519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm262975%_
                               (cons _%output-scm262983%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp263519 _%src-deps-scm262967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp263518
                                                      _%libgerbil-c262957%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp263517
                                               _%gsc-link-opts262993%_))))
                                     (for-each
                                      _%compile-obj263010%_
                                      (let ((__tmp263520
                                             (cons _%src-bin-scm262975%_
                                                   (cons _%output-scm262983%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp263520
                                         _%src-deps-scm262967%_))
                                      (let ((__tmp263521
                                             (cons _%src-bin-c262977%_
                                                   (cons _%output-c262985%_
                                                         (cons _%output_-c262989%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp263521
                                         _%src-deps-c262969%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin262981%_
                                                        (let ((__tmp263522
                                                               (cons _%src-bin-o262979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o262987%_
                                   (cons _%output_-o262991%_
                                         (let ((__tmp263523
                                                (let ((__tmp263524
                                                       (let ((__tmp263526
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir262945%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts263001%_))))
                     (__tmp263525
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath263003%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp263526 __tmp263525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp263524
                                                   _%output-ld-opts262999%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp263523
                                            _%libgerbil-o262959%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp263522 _%src-deps-o262971%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp263527
                                            (cons _%output-c262985%_
                                                  (cons _%output_-c262989%_
                                                        (cons _%output-o262987%_
                                                              (cons _%output_-o262991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp263527)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it263015%_))
                                  (_%compile-it263015%_)))
                            '#!void))))))
          (let* ((_%output-bin262935%_
                  (gxc#compile-exe-output-file _%ctx262919%_ _%opts262920%_))
                 (_%output-scm262937%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin262935%_ '"__exe.scm"))))
            (_%compile-stub262933%_
             _%output-scm262937%_
             _%output-bin262935%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx262741%_ _%opts262742%_)
        (letrec ((_%reset-declare262744%_
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
                 (_%generate-stub262745%_
                  (lambda (_%deps262910%_)
                    (let ((_%mod-main262912%_
                           (gxc#find-runtime-symbol _%ctx262741%_ 'main))
                          (_%reset-decl262913%_ (_%reset-declare262744%_))
                          (_%user-decl262914%_ (_%user-declare262746%_)))
                      (for-each
                       (lambda (_%dep262916%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl262913%_))
                         (newline)
                         (if _%user-decl262914%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl262914%_))
                               (newline))
                             '#!void)
                         (let ((__tmp263528
                                (cons 'include (cons _%dep262916%_ '()))))
                           (declare (not safe))
                           (##write __tmp263528))
                         (newline))
                       _%deps262910%_)
                      (let ((__tmp263529
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main262912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp263529))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare262746%_
                  (lambda ()
                    (let* ((_%gsc-opts262815%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts262742%_)))
                           (_%gsc-prelude262817%_
                            (if _%gsc-opts262815%_
                                (member '"-prelude" _%gsc-opts262815%_)
                                '#f))
                           (_%gsc-prelude262819%_
                            (if _%gsc-prelude262817%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude262817%_)))
                                '#f)))
                      (let _%lp262822%_ ((_%rest262824%_
                                          (cons _%gsc-prelude262819%_ '()))
                                         (_%user-decls262825%_ '()))
                        (let* ((_%$%rest262826262834%_ _%rest262824%_)
                               (_%$%else262828262842%_
                                (lambda ()
                                  (if (null? _%user-decls262825%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls262825%_)))))
                               (_%$%K262830262898%_
                                (lambda (_%rest262845%_ _%expr262846%_)
                                  (let* ((_%$%expr262847262859%_
                                          _%expr262846%_)
                                         (_%$%else262850262867%_
                                          (lambda ()
                                            (_%lp262822%_
                                             _%rest262845%_
                                             _%user-decls262825%_))))
                                    (let ((_%$%K262855262888%_
                                           (lambda (_%decls262886%_)
                                             (_%lp262822%_
                                              _%rest262845%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls262825%_
                                                 _%decls262886%_)))))
                                          (_%$%K262852262873%_
                                           (lambda (_%exprs262871%_)
                                             (_%lp262822%_
                                              (append _%exprs262871%_
                                                      _%rest262845%_)
                                              _%user-decls262825%_))))
                                      (if (pair? _%$%expr262847262859%_)
                                          (let ((_%$%tl262857262893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr262847262859%_)))
                                                (_%$%hd262856262891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr262847262859%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd262856262891%_
                                                         'declare))
                                                (let ((_%decls262896%_
                                                       _%$%tl262857262893%_))
                                                  (_%$%K262855262888%_
                                                   _%decls262896%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd262856262891%_
                                                             'begin))
                                                    (let ((_%exprs262881%_
                                                           _%$%tl262857262893%_))
                                                      (_%$%K262852262873%_
                                                       _%exprs262881%_))
                                                    (_%$%else262850262867%_))))
                                          (_%$%else262850262867%_)))))))
                          (if (pair? _%$%rest262826262834%_)
                              (let ((_%$%hd262831262901%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest262826262834%_)))
                                    (_%$%tl262832262903%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest262826262834%_))))
                                (let* ((_%expr262906%_ _%$%hd262831262901%_)
                                       (_%rest262908%_ _%$%tl262832262903%_))
                                  (_%$%K262830262898%_
                                   _%rest262908%_
                                   _%expr262906%_)))
                              (_%$%else262828262842%_)))))))
                 (_%compile-stub262747%_
                  (lambda (_%output-scm262754%_ _%output-bin262755%_)
                    (let* ((_%gerbil-home262757%_
                            (let ((__tmp263530
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp263530)))
                           (_%gerbil-libdir262759%_
                            (path-expand '"lib" _%gerbil-home262757%_))
                           (_%runtime262761%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp262763%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home262757%_))
                           (_%include-gambit-sharp262765%_
                            (gxc#include-source _%gambit-sharp262763%_))
                           (_%bin-scm262767%_
                            (gxc#find-static-module-file _%ctx262741%_))
                           (_%deps262769%_
                            (gxc#find-runtime-module-deps _%ctx262741%_))
                           (_%deps262771%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps262769%_)))
                           (_%deps262776%_
                            (let ((__tmp263531
                                   (lambda (_%$obj262773%_)
                                     (not (gxc#file-empty? _%$obj262773%_)))))
                              (declare (not safe))
                              (##filter __tmp263531 _%deps262771%_)))
                           (_%deps262780%_
                            (let ((__tmp263532
                                   (lambda (_%f262778%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f262778%_
                                             _%runtime262761%_))))))
                              (declare (not safe))
                              (##filter __tmp263532 _%deps262776%_)))
                           (_%output-base262782%_
                            (let ((__tmp263533
                                   (path-strip-extension
                                    _%output-scm262754%_)))
                              (declare (not safe))
                              (##string-append __tmp263533)))
                           (_%output-c262784%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base262782%_ '".c")))
                           (_%output-o262786%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base262782%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_262788%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base262782%_ '"_.c")))
                           (_%output-o_262790%_
                            (let ((__tmp263534
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base262782%_
                               __tmp263534)))
                           (_%gsc-link-opts262792%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts262794%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts262796%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir262759%_)))
                           (_%output-ld-opts262798%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros262800%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp262765%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp262765%_
                                            '()))))
                           (_%gsc-link-opts262802%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts262792%_
                               _%gsc-gx-macros262800%_)))
                           (_%rpath262804%_
                            (gxc#gerbil-rpath _%gerbil-libdir262759%_))
                           (_%default-ld-options262806%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp263535
                             (lambda ()
                               (let ((__tmp263536
                                      (path-directory _%output-bin262755%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp263536)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp263535))
                      (gxc#with-output-to-scheme-file
                       _%output-scm262754%_
                       (lambda ()
                         (_%generate-stub262745%_
                          (let ((__tmp263537
                                 (let ((__tmp263538
                                        (cons _%bin-scm262767%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp263538
                                    _%deps262780%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp263537 _%runtime262761%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it262812%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_262788%_
                                                      (let ((__tmp263539
                                                             (cons _%output-scm262754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp263539 _%gsc-link-opts262802%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp263540
                                                 (let ((__tmp263541
                                                        (cons _%output-c262784%_
                                                              (cons _%output-c_262788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp263541
                                                    _%gsc-static-opts262796%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp263540
                                             _%gsc-cc-opts262794%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin262755%_
                                                      (cons _%output-o262786%_
                                                            (cons _%output-o_262790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp263542
                                 (let ((__tmp263544
                                        (cons '"-L"
                                              (cons _%gerbil-libdir262759%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options262806%_))))
                                       (__tmp263543
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath262804%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp263544 __tmp263543))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp263542
                             _%output-ld-opts262798%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it262812%_))
                                (_%compile-it262812%_)))
                          '#!void)))))
          (let* ((_%output-bin262749%_
                  (gxc#compile-exe-output-file _%ctx262741%_ _%opts262742%_))
                 (_%output-scm262751%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin262749%_ '"__exe.scm"))))
            (_%compile-stub262747%_
             _%output-scm262751%_
             _%output-bin262749%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx262690%_ _%id262691%_)
        (let ((_%$e262737%_
               (let ((__tmp263546
                      (lambda (_%$%e262692262694%_)
                        (let* ((_%$%$%e262692262696262706%_
                                _%$%e262692262694%_)
                               (_%$%else262698262714%_ (lambda () '#f))
                               (_%$%K262700262718%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e262692262696262706%_
                                 'gx#module-export::t))
                              (let* ((_%$%e262701262721%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e262692262696262706%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e262702262724%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e262692262696262706%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e262703262727%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e262692262696262706%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e262703262727%_ '0))
                                    (let ((_%$%e262704262730%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e262692262696262706%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e262704262730%_
                                               _%id262691%_)
                                          (_%$%K262700262718%_)
                                          (_%$%else262698262714%_)))
                                    (_%$%else262698262714%_)))
                              (_%$%else262698262714%_)))))
                     (__tmp263545
                      (##structure-ref
                       _%ctx262690%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp263546 __tmp263545))))
          (if _%$e262737%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e262737%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx262681%_ _%id262682%_)
        (let ((_%$e262684%_
               (gxc#find-export-binding _%ctx262681%_ _%id262682%_)))
          (if _%$e262684%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e262684%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id262682%_)))
                (##structure-ref _%$e262684%_ '1 gx#binding::t '#f))
              (let ((__tmp263547
                     (##structure-ref
                      _%ctx262681%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp263547
                 _%id262682%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx262547%_)
        (letrec* ((_%ht262549%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template262550%_
                   (lambda (_%in262626%_ _%phi262627%_)
                     (let ((_%iphi262629%_
                            (fx+ _%phi262627%_
                                 (##direct-structure-ref
                                  _%in262626%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports262630%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in262626%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp262632%_ ((_%rest262634%_ _%imports262630%_)
                                          (_%r262635%_ '()))
                         (let* ((_%$%rest262636262644%_ _%rest262634%_)
                                (_%$%else262638262652%_
                                 (lambda () _%r262635%_))
                                (_%$%K262640262669%_
                                 (lambda (_%rest262655%_ _%in262656%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in262656%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi262629%_))
                                           (_%lp262632%_
                                            _%rest262655%_
                                            (cons _%in262656%_ _%r262635%_))
                                           (_%lp262632%_
                                            _%rest262655%_
                                            _%r262635%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in262656%_
                                              'gx#module-import::t))
                                           (let ((_%iphi262660%_
                                                  (fx+ _%phi262627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in262656%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi262660%_))
                                                 (_%lp262632%_
                                                  _%rest262655%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in262656%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r262635%_))
                                                 (_%lp262632%_
                                                  _%rest262655%_
                                                  _%r262635%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in262656%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi262663%_
                                                      (fx+ _%iphi262629%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in262656%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi262663%_))
                                                     (_%lp262632%_
                                                      _%rest262655%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in262656%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r262635%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi262663%_))
                                                         (_%lp262632%_
                                                          _%rest262655%_
                                                          (let ((__tmp263548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template262550%_
                          _%in262656%_
                          _%iphi262629%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r262635%_ __tmp263548)))
                 (_%lp262632%_ _%rest262655%_ _%r262635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp262632%_
                                                _%rest262655%_
                                                _%r262635%_)))))))
                           (if (pair? _%$%rest262636262644%_)
                               (let ((_%$%hd262641262672%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest262636262644%_)))
                                     (_%$%tl262642262674%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest262636262644%_))))
                                 (let* ((_%in262677%_ _%$%hd262641262672%_)
                                        (_%rest262679%_ _%$%tl262642262674%_))
                                   (_%$%K262640262669%_
                                    _%rest262679%_
                                    _%in262677%_)))
                               (_%$%else262638262652%_)))))))
                  (_%find-deps262551%_
                   (lambda (_%rest262559%_ _%deps262560%_)
                     (let* ((_%$%rest262561262569%_ _%rest262559%_)
                            (_%$%else262563262577%_ (lambda () _%deps262560%_))
                            (_%$%K262565262614%_
                             (lambda (_%rest262580%_ _%hd262581%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd262581%_
                                      'gx#module-context::t))
                                   (let ((_%id262584%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd262581%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports262585%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd262581%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht262549%_
                                            _%id262584%_))
                                         (_%find-deps262551%_
                                          _%rest262580%_
                                          _%deps262560%_)
                                         (let ((_%$e262588%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd262581%_))))
                                           (if _%$e262588%_
                                               (let ((_%xdeps262593%_
                                                      (_%find-deps262551%_
                                                       (cons _%$e262588%_
                                                             _%imports262585%_)
                                                       _%deps262560%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht262549%_
                                                    _%id262584%_
                                                    _%hd262581%_))
                                                 (_%find-deps262551%_
                                                  _%rest262580%_
                                                  (cons _%hd262581%_
                                                        _%xdeps262593%_)))
                                               (let ((_%xdeps262596%_
                                                      (_%find-deps262551%_
                                                       _%imports262585%_
                                                       _%deps262560%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht262549%_
                                                    _%id262584%_
                                                    _%hd262581%_))
                                                 (_%find-deps262551%_
                                                  _%rest262580%_
                                                  (cons _%hd262581%_
                                                        _%xdeps262596%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd262581%_
                                          'gx#prelude-context::t))
                                       (let ((_%id262599%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd262581%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht262549%_
                                                _%id262599%_))
                                             (_%find-deps262551%_
                                              _%rest262580%_
                                              _%deps262560%_)
                                             (let ((_%xdeps262603%_
                                                    (_%find-deps262551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd262581%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps262560%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht262549%_
                                                      _%id262599%_))
                                                   (_%find-deps262551%_
                                                    _%rest262580%_
                                                    _%xdeps262603%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht262549%_
                                                        _%id262599%_
                                                        _%hd262581%_))
                                                     (_%find-deps262551%_
                                                      _%rest262580%_
                                                      (cons _%hd262581%_
                                                            _%xdeps262603%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd262581%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd262581%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps262551%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd262581%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest262580%_)
                                                _%deps262560%_)
                                               (_%find-deps262551%_
                                                _%rest262580%_
                                                _%deps262560%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd262581%_
                                                  'gx#module-export::t))
                                               (_%find-deps262551%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd262581%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest262580%_)
                                                _%deps262560%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd262581%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd262581%_ '2 '#f '#f)))
               (_%find-deps262551%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd262581%_ '1 '#f '#f))
                      _%rest262580%_)
                _%deps262560%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd262581%_ '2 '#f '#f)))
                   (let ((_%xdeps262610%_
                          (_%import-set-template262550%_ _%hd262581%_ '0)))
                     (_%find-deps262551%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest262580%_ _%xdeps262610%_))
                      _%deps262560%_))
                   (_%find-deps262551%_ _%rest262580%_ _%deps262560%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd262581%_))))))))))
                       (if (pair? _%$%rest262561262569%_)
                           (let ((_%$%hd262566262617%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest262561262569%_)))
                                 (_%$%tl262567262619%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest262561262569%_))))
                             (let* ((_%hd262622%_ _%$%hd262566262617%_)
                                    (_%rest262624%_ _%$%tl262567262619%_))
                               (_%$%K262565262614%_
                                _%rest262624%_
                                _%hd262622%_)))
                           (_%$%else262563262577%_))))))
          (let ((__tmp263549
                 (filter gx#expander-context-id
                         (_%find-deps262551%_
                          (let ((_%$e262553%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx262547%_))))
                            (if _%$e262553%_
                                (cons _%$e262553%_
                                      (##structure-ref
                                       _%ctx262547%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx262547%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp263549)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx262477%_)
        (let* ((_%context-id262479%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx262477%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx262477%_ '1 '#f '#f))
                    (string->symbol _%ctx262477%_)))
               (_%scm262481%_
                (let ((__tmp263550
                       (gxc#static-module-name _%context-id262479%_)))
                  (declare (not safe))
                  (##string-append __tmp263550 '".scm")))
               (_%dirs262483%_ (let () (declare (not safe)) (load-path)))
               (_%dirs262489%_
                (let ((_%user-libpath262485%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath262485%_
                      (let ((_%user-libpath262487%_
                             (path-expand '"lib" _%user-libpath262485%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath262487%_ _%dirs262483%_))
                            _%dirs262483%_
                            (cons _%user-libpath262487%_ _%dirs262483%_)))
                      _%dirs262483%_)))
               (_%dirs262499%_
                (let ((_%$e262491%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e262491%_
                      (cons _%$e262491%_ _%dirs262489%_)
                      _%dirs262489%_)))
               (_%dirs262505%_
                (let ((__tmp263551
                       (lambda (_%$%g262500262502%_)
                         (path-expand '"static" _%$%g262500262502%_))))
                  (declare (not safe))
                  (##map __tmp263551 _%dirs262499%_))))
          (let _%lp262508%_ ((_%rest262510%_ _%dirs262505%_))
            (let* ((_%$%rest262511262519%_ _%rest262510%_)
                   (_%$%else262513262527%_
                    (lambda ()
                      (let ((__tmp263552
                             (##structure-ref
                              _%ctx262477%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp263552
                         _%scm262481%_))))
                   (_%$%K262515262535%_
                    (lambda (_%rest262530%_ _%dir262531%_)
                      (let ((_%path262533%_
                             (path-expand _%scm262481%_ _%dir262531%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path262533%_))
                            _%path262533%_
                            (_%lp262508%_ _%rest262530%_))))))
              (if (pair? _%$%rest262511262519%_)
                  (let ((_%$%hd262516262538%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest262511262519%_)))
                        (_%$%tl262517262540%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest262511262519%_))))
                    (let* ((_%dir262543%_ _%$%hd262516262538%_)
                           (_%rest262545%_ _%$%tl262517262540%_))
                      (_%$%K262515262535%_ _%rest262545%_ _%dir262543%_)))
                  (_%$%else262513262527%_)))))))
    (define gxc#file-empty?
      (lambda (_%path262475%_)
        (zero? (let ((__tmp263553 (file-info _%path262475%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp263553)))))
    (define gxc#compile-top-module
      (lambda (_%ctx262466%_)
        (let ((__tmp263554
               (lambda ()
                 (let ((__tmp263555
                        (lambda ()
                          (let ((__tmp263556
                                 (lambda ()
                                   (let ((__tmp263558
                                          (lambda ()
                                            (let ((__tmp263560
                                                   (lambda ()
                                                     (let ((__tmp263562
                                                            (lambda ()
                                                              (let ((__tmp263563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx262466%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp263563))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp263564
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx262466%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp263564))
                          '#!void)
                      (gxc#collect-bindings _%ctx262466%_)
                      (gxc#compile-runtime-code _%ctx262466%_)
                      (gxc#compile-meta-code _%ctx262466%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx262466%_)
                          '#!void)))
                   (__tmp263561
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
                __tmp263562
                gxc#current-compile-runtime-names
                __tmp263561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp263559
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp263560
                                               gxc#current-compile-runtime-sections
                                               __tmp263559))))
                                         (__tmp263557
                                          (let ((__obj263455
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj263455))
                                            __obj263455)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp263558
                                      gxc#current-compile-symbol-table
                                      __tmp263557)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp263556
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp263555
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp263554
           gx#current-expander-context
           _%ctx262466%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx262464%_)
        (let ((__tmp263565
               (##structure-ref _%ctx262464%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp263565))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx262409%_)
        (letrec ((_%compile1262411%_
                  (lambda (_%ctx262453%_)
                    (let* ((_%code262455%_
                            (##structure-ref
                             _%ctx262453%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm262459%_
                            (let ((_%idstr262457%_
                                   (let ((__tmp263566
                                          (##structure-ref
                                           _%ctx262453%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp263566))))
                              (declare (not safe))
                              (##string-append _%idstr262457%_ '"~0")))
                           (_%rtc?262461%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code262455%_))))
                      (if _%rtc?262461%_
                          (let ((__tmp263567
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp263567
                             _%ctx262453%_
                             _%rtm262459%_))
                          '#!void)
                      (_%generate-runtime-code262413%_
                       _%ctx262453%_
                       _%code262455%_
                       (if _%rtc?262461%_ _%rtm262459%_ '#f)))))
                 (_%context-timestamp262412%_
                  (lambda (_%ctx262451%_)
                    (let ((__tmp263568
                           (let ((__tmp263569
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx262451%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp263569 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp263568))))
                 (_%generate-runtime-code262413%_
                  (lambda (_%ctx262420%_ _%code262421%_ _%rtm262422%_)
                    (let* ((_%runtime-code?262424%_ (if _%rtm262422%_ '#t '#f))
                           (_%lifts262426%_ (box '()))
                           (_%runtime-code262432%_
                            (if _%runtime-code?262424%_
                                (let ((__tmp263570
                                       (lambda ()
                                         (let ((__tmp263571
                                                (lambda ()
                                                  (let ((__tmp263572
                                                         (lambda ()
                                                           (let ((__tmp263574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code262421%_))))
                         (__tmp263573
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp263574
                      gxc#current-compile-marks
                      __tmp263573)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp263572
                                                     gxc#current-compile-lift
                                                     _%lifts262426%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp263571
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp263570
                                   gx#current-expander-context
                                   _%ctx262420%_))
                                '#f))
                           (_%runtime-code262434%_
                            (if _%runtime-code?262424%_
                                (if (null? (unbox _%lifts262426%_))
                                    _%runtime-code262432%_
                                    (cons 'begin
                                          (let ((__tmp263576
                                                 (cons _%runtime-code262432%_
                                                       '()))
                                                (__tmp263575
                                                 (reverse (unbox _%lifts262426%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp263576
                                             __tmp263575))))
                                '#f))
                           (_%runtime-code262436%_
                            (if _%runtime-code?262424%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp262412%_
                                                         _%ctx262420%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code262434%_ '())))
                                '#f))
                           (_%loader-code262439%_
                            (let ((__tmp263577
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code262421%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp263577
                               gx#current-expander-context
                               _%ctx262420%_)))
                           (_%loader-code262441%_
                            (cons 'begin
                                  (cons _%loader-code262439%_
                                        (cons (if _%runtime-code?262424%_
                                                  (cons 'load-module
                                                        (cons _%rtm262422%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0262443%_
                            (gxc#compile-output-file _%ctx262420%_ '0 '".scm"))
                           (_%scmrt262445%_
                            (gxc#compile-output-file
                             _%ctx262420%_
                             '#f
                             '".scm"))
                           (_%scms262447%_
                            (gxc#compile-static-output-file _%ctx262420%_)))
                      (if _%runtime-code?262424%_
                          (gxc#compile-scm-file__0
                           _%scm0262443%_
                           _%runtime-code262436%_)
                          '#!void)
                      (let ((__tmp263578
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt262445%_
                                _%loader-code262441%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp263578
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms262447%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms262447%_))
                          '#!void)
                      (if _%runtime-code?262424%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0262443%_ _%scms262447%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms262447%_ void)))))))
          (let* ((_%all-modules262415%_
                  (cons _%ctx262409%_ (gxc#lift-nested-modules _%ctx262409%_)))
                 (__tmp263579
                  (lambda (_%ctx262417%_)
                    (let ((__tmp263580
                           (lambda () (_%compile1262411%_ _%ctx262417%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp263580
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp263579 _%all-modules262415%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx262308%_)
        (letrec ((_%compile-ssi262310%_
                  (lambda (_%code262377%_)
                    (let* ((_%path262379%_
                            (gxc#compile-output-file
                             _%ctx262308%_
                             '#f
                             '".ssi"))
                           (_%prelude262391%_
                            (let* ((_%super262381%_
                                    (##structure-ref
                                     _%ctx262308%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e262383%_
                                    (##structure-ref
                                     _%super262381%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e262383%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e262383%_))
                                  ':<root>)))
                           (_%ns262393%_
                            (##structure-ref
                             _%ctx262308%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr262395%_
                            (symbol->string
                             (##structure-ref
                              _%ctx262308%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg262403%_
                            (let ((_%$e262397%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr262395%_ '#\/))))
                              (if _%$e262397%_
                                  (let ((__tmp263581
                                         (substring
                                          _%idstr262395%_
                                          '0
                                          _%$e262397%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp263581))
                                  '#f)))
                           (_%rt262405%_
                            (let ((__tmp263582
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp263582 _%ctx262308%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path262379%_))
                      (gxc#with-output-to-scheme-file
                       _%path262379%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude262391%_))
                         (if _%pkg262403%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg262403%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns262393%_))
                         (newline)
                         (pretty-print _%code262377%_)
                         (if _%rt262405%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt262405%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi262311%_
                  (lambda (_%part262316%_)
                    (let* ((_%$%part262317262330%_ _%part262316%_)
                           (_%$%E262319262334%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part262317262330%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K262320262346%_
                            (lambda (_%code262337%_
                                     _%n262338%_
                                     _%phi262339%_
                                     _%phi-ctx262340%_)
                              (let ((_%code262344%_
                                     (let ((__tmp263583
                                            (lambda ()
                                              (let ((__tmp263584
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code262337%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp263584
                                                 gx#current-expander-phi
                                                 _%phi262339%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp263583
                                        gx#current-expander-context
                                        _%phi-ctx262340%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx262308%_
                                  _%n262338%_
                                  '".scm")
                                 _%code262344%_
                                 '#t)))))
                      (if (pair? _%$%part262317262330%_)
                          (let ((_%$%hd262321262349%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part262317262330%_)))
                                (_%$%tl262322262351%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part262317262330%_))))
                            (let ((_%phi-ctx262354%_ _%$%hd262321262349%_))
                              (if (pair? _%$%tl262322262351%_)
                                  (let ((_%$%hd262323262356%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl262322262351%_)))
                                        (_%$%tl262324262358%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl262322262351%_))))
                                    (let ((_%phi262361%_ _%$%hd262323262356%_))
                                      (if (pair? _%$%tl262324262358%_)
                                          (let ((_%$%hd262325262363%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl262324262358%_)))
                                                (_%$%tl262326262365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl262324262358%_))))
                                            (let ((_%n262368%_
                                                   _%$%hd262325262363%_))
                                              (if (pair? _%$%tl262326262365%_)
                                                  (let ((_%$%hd262327262370%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl262326262365%_)))
                                                        (_%$%tl262328262372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl262326262365%_))))
                                                    (let ((_%code262375%_
                                                           _%$%hd262327262370%_))
                                                      (if (null? _%$%tl262328262372%_)
                                                          (_%$%K262320262346%_
                                                           _%code262375%_
                                                           _%n262368%_
                                                           _%phi262361%_
                                                           _%phi-ctx262354%_)
                                                          (_%$%E262319262334%_))))
                                                  (_%$%E262319262334%_))))
                                          (_%$%E262319262334%_))))
                                  (_%$%E262319262334%_))))
                          (_%$%E262319262334%_))))))
          (let ((_g263585_ (gxc#generate-meta-code _%ctx262308%_)))
            (begin
              (let ((_g263586_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g263585_)
                           (##values-length _g263585_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g263586_ 2)))
                    (error "Context expects 2 values" _g263586_)))
              (let ((_%ssi-code262313%_
                     (let () (declare (not safe)) (##values-ref _g263585_ 0)))
                    (_%phi-code262314%_
                     (let () (declare (not safe)) (##values-ref _g263585_ 1))))
                (begin
                  (_%compile-ssi262310%_ _%ssi-code262313%_)
                  (for-each _%compile-phi262311%_ _%phi-code262314%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx262290%_)
        (let* ((_%path262292%_
                (gxc#compile-output-file _%ctx262290%_ '#f '".ssxi.ss"))
               (_%code262294%_
                (let ((__tmp263587
                       (##structure-ref
                        _%ctx262290%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp263587)))
               (_%idstr262296%_
                (symbol->string
                 (##structure-ref
                  _%ctx262290%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg262304%_
                (let ((_%$e262298%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr262296%_ '#\/))))
                  (if _%$e262298%_
                      (let ((__tmp263588
                             (substring _%idstr262296%_ '0 _%$e262298%_)))
                        (declare (not safe))
                        (##string->symbol __tmp263588))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path262292%_))
          (gxc#with-output-to-scheme-file
           _%path262292%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg262304%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg262304%_))
                 '#!void)
             (newline)
             (pretty-print _%code262294%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx262283%_)
        (let* ((_%state262285%_
                (let ((__obj263456
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj263456 _%ctx262283%_))
                  __obj263456))
               (_%ssi-code262287%_
                (let ((__tmp263589
                       (##structure-ref
                        _%ctx262283%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state262285%_
                   __tmp263589))))
          (values _%ssi-code262287%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state262285%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx262275%_)
        (let* ((_%lifts262277%_ (box '()))
               (__tmp263590
                (lambda ()
                  (let ((__tmp263592
                         (lambda ()
                           (let ((_%code262281%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx262275%_))))
                             (if (null? (unbox _%lifts262277%_))
                                 _%code262281%_
                                 (cons 'begin
                                       (let ((__tmp263594
                                              (cons _%code262281%_ '()))
                                             (__tmp263593
                                              (reverse (unbox _%lifts262277%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp263594
                                          __tmp263593)))))))
                        (__tmp263591
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp263592
                     gxc#current-compile-marks
                     __tmp263591)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp263590
           gxc#current-compile-lift
           _%lifts262277%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx262271%_)
        (let ((_%modules262273%_ (box '())))
          (let ((__tmp263595
                 (##structure-ref _%ctx262271%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules262273%_ __tmp263595))
          (reverse (unbox _%modules262273%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path262251%_ _%code262252%_ _%phi?262253%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path262251%_))
        (gxc#with-output-to-scheme-file
         _%path262251%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp263596
                                           (if _%phi?262253%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp263596)))))))
           (pretty-print _%code262252%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it262257%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path262251%_ _%phi?262253%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp263597
                         (cons 'compile-file (cons _%path262251%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it262257%_ __tmp263597))
                  (_%compile-it262257%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path262262%_ _%code262263%_)
        (let ((_%phi?262265%_ '#f))
          (gxc#compile-scm-file__%
           _%path262262%_
           _%code262263%_
           _%phi?262265%_))))
    (define gxc#compile-scm-file
      (lambda _g263598_
        (let ((_g263599_ (let () (declare (not safe)) (##length _g263598_))))
          (cond ((let () (declare (not safe)) (##fx= _g263599_ 2))
                 (apply gxc#compile-scm-file__0 _g263598_))
                ((let () (declare (not safe)) (##fx= _g263599_ 3))
                 (apply gxc#compile-scm-file__% _g263598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g263598_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?262152%_)
        (let _%lp262154%_ ((_%rest262156%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts262157%_ '()))
          (let* ((_%$%rest262158262178%_ _%rest262156%_)
                 (_%$%else262162262186%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts262157%_)))
                        (reverse _%opts262157%_)))))
            (let ((_%$%K262172262229%_
                   (lambda (_%rest262227%_)
                     (_%lp262154%_ _%rest262227%_ _%opts262157%_)))
                  (_%$%K262167262211%_
                   (lambda (_%rest262209%_)
                     (_%lp262154%_ _%rest262209%_ _%opts262157%_)))
                  (_%$%K262164262193%_
                   (lambda (_%rest262190%_ _%opt262191%_)
                     (_%lp262154%_
                      _%rest262190%_
                      (cons _%opt262191%_ _%opts262157%_)))))
              (if (pair? _%$%rest262158262178%_)
                  (let ((_%$%tl262174262234%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest262158262178%_)))
                        (_%$%hd262173262232%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest262158262178%_))))
                    (if (equal? _%$%hd262173262232%_ '"-cc-options")
                        (if (pair? _%$%tl262174262234%_)
                            (let* ((_%$%tl262176262237%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl262174262234%_)))
                                   (_%rest262240%_ _%$%tl262176262237%_))
                              (_%$%K262172262229%_ _%rest262240%_))
                            (let ((_%opt262201%_ _%$%hd262173262232%_)
                                  (_%rest262203%_ _%$%tl262174262234%_))
                              (_%$%K262164262193%_
                               _%rest262203%_
                               _%opt262201%_)))
                        (if (equal? _%$%hd262173262232%_ '"-ld-options")
                            (if (pair? _%$%tl262174262234%_)
                                (let* ((_%$%tl262171262219%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl262174262234%_)))
                                       (_%rest262222%_ _%$%tl262171262219%_))
                                  (_%$%K262167262211%_ _%rest262222%_))
                                (let ((_%opt262201%_ _%$%hd262173262232%_)
                                      (_%rest262203%_ _%$%tl262174262234%_))
                                  (_%$%K262164262193%_
                                   _%rest262203%_
                                   _%opt262201%_)))
                            (let ((_%opt262201%_ _%$%hd262173262232%_)
                                  (_%rest262203%_ _%$%tl262174262234%_))
                              (_%$%K262164262193%_
                               _%rest262203%_
                               _%opt262201%_)))))
                  (_%$%else262162262186%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?262246%_ '#f)) (gxc#gsc-link-options__% _%phi?262246%_))))
    (define gxc#gsc-link-options
      (lambda _g263600_
        (let ((_g263601_ (let () (declare (not safe)) (##length _g263600_))))
          (cond ((let () (declare (not safe)) (##fx= _g263601_ 0))
                 (apply gxc#gsc-link-options__0 _g263600_))
                ((let () (declare (not safe)) (##fx= _g263601_ 1))
                 (apply gxc#gsc-link-options__% _g263600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g263600_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords262002%_ _%$%static?261998262003%_ _%phi?262004%_)
        (let ((_%static?262006%_
               (if (eq? _%$%static?261998262003%_ absent-value)
                   '#f
                   _%$%static?261998262003%_)))
          (if _%phi?262004%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp262008%_ ((_%rest262010%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts262011%_ '()))
                (let* ((_%$%rest262012262038%_ _%rest262010%_)
                       (_%$%else262017262046%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts262011%_)))
                              (reverse! _%opts262011%_)))))
                  (let ((_%$%K262032262109%_
                         (lambda (_%rest262106%_ _%opt262107%_)
                           (if _%static?262006%_
                               (_%lp262008%_
                                _%rest262106%_
                                (cons _%opt262107%_
                                      (cons '"-cc-options" _%opts262011%_)))
                               (_%lp262008%_ _%rest262106%_ _%opts262011%_))))
                        (_%$%K262027262086%_
                         (lambda (_%rest262083%_ _%opt262084%_)
                           (_%lp262008%_
                            _%rest262083%_
                            (cons _%opt262084%_
                                  (cons '"-cc-options" _%opts262011%_)))))
                        (_%$%K262022262066%_
                         (lambda (_%rest262064%_)
                           (_%lp262008%_ _%rest262064%_ _%opts262011%_)))
                        (_%$%K262019262052%_
                         (lambda (_%rest262050%_)
                           (_%lp262008%_ _%rest262050%_ _%opts262011%_))))
                    (if (pair? _%$%rest262012262038%_)
                        (let ((_%$%tl262034262114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest262012262038%_)))
                              (_%$%hd262033262112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest262012262038%_))))
                          (if (equal? _%$%hd262033262112%_ '"-cc-options")
                              (if (pair? _%$%tl262034262114%_)
                                  (let ((_%$%tl262036262119%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl262034262114%_)))
                                        (_%$%hd262035262117%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl262034262114%_))))
                                    (if (equal? _%$%hd262035262117%_
                                                '"-Bstatic")
                                        (let ((_%opt262122%_
                                               _%$%hd262035262117%_)
                                              (_%rest262124%_
                                               _%$%tl262036262119%_))
                                          (_%$%K262032262109%_
                                           _%rest262124%_
                                           _%opt262122%_))
                                        (let ((_%opt262099%_
                                               _%$%hd262035262117%_)
                                              (_%rest262101%_
                                               _%$%tl262036262119%_))
                                          (_%$%K262027262086%_
                                           _%rest262101%_
                                           _%opt262099%_))))
                                  (let ((_%rest262058%_ _%$%tl262034262114%_))
                                    (_%$%K262019262052%_ _%rest262058%_)))
                              (if (equal? _%$%hd262033262112%_ '"-ld-options")
                                  (if (pair? _%$%tl262034262114%_)
                                      (let* ((_%$%tl262026262074%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl262034262114%_)))
                                             (_%rest262077%_
                                              _%$%tl262026262074%_))
                                        (_%$%K262022262066%_ _%rest262077%_))
                                      (let ((_%rest262058%_
                                             _%$%tl262034262114%_))
                                        (_%$%K262019262052%_ _%rest262058%_)))
                                  (let ((_%rest262058%_ _%$%tl262034262114%_))
                                    (_%$%K262019262052%_ _%rest262058%_)))))
                        (_%$%else262017262046%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords262129%_ _%$%static?261998262130%_)
        (let ((_%phi?262132%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords262129%_
           _%$%static?261998262130%_
           _%phi?262132%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g263602_
        (let ((_g263603_ (let () (declare (not safe)) (##length _g263602_))))
          (cond ((let () (declare (not safe)) (##fx= _g263603_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g263602_))
                ((let () (declare (not safe)) (##fx= _g263603_ 3))
                 (apply gxc#gsc-cc-options__%__% _g263602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g263602_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords262141%_ . _%args262142%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords262141%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords262141%_
                  'static:
                  absent-value))
               _%args262142%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args261999262148%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args261999262148%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords261848%_ _%$%static?261844261849%_ _%phi?261850%_)
        (let ((_%static?261852%_
               (if (eq? _%$%static?261844261849%_ absent-value)
                   '#f
                   _%$%static?261844261849%_)))
          (if _%phi?261850%_
              '()
              (let _%lp261854%_ ((_%rest261856%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts261857%_ '()))
                (let* ((_%$%rest261858261884%_ _%rest261856%_)
                       (_%$%else261863261892%_
                        (lambda () (reverse! _%opts261857%_))))
                  (let ((_%$%K261878261955%_
                         (lambda (_%rest261952%_ _%opt261953%_)
                           (if _%static?261852%_
                               (_%lp261854%_
                                _%rest261952%_
                                (cons _%opt261953%_
                                      (cons '"-ld-options" _%opts261857%_)))
                               (_%lp261854%_ _%rest261952%_ _%opts261857%_))))
                        (_%$%K261873261932%_
                         (lambda (_%rest261929%_ _%opt261930%_)
                           (_%lp261854%_
                            _%rest261929%_
                            (cons _%opt261930%_
                                  (cons '"-ld-options" _%opts261857%_)))))
                        (_%$%K261868261912%_
                         (lambda (_%rest261910%_)
                           (_%lp261854%_ _%rest261910%_ _%opts261857%_)))
                        (_%$%K261865261898%_
                         (lambda (_%rest261896%_)
                           (_%lp261854%_ _%rest261896%_ _%opts261857%_))))
                    (if (pair? _%$%rest261858261884%_)
                        (let ((_%$%tl261880261960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest261858261884%_)))
                              (_%$%hd261879261958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest261858261884%_))))
                          (if (equal? _%$%hd261879261958%_ '"-ld-options")
                              (if (pair? _%$%tl261880261960%_)
                                  (let ((_%$%tl261882261965%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl261880261960%_)))
                                        (_%$%hd261881261963%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl261880261960%_))))
                                    (if (equal? _%$%hd261881261963%_
                                                '"-static")
                                        (let ((_%opt261968%_
                                               _%$%hd261881261963%_)
                                              (_%rest261970%_
                                               _%$%tl261882261965%_))
                                          (_%$%K261878261955%_
                                           _%rest261970%_
                                           _%opt261968%_))
                                        (let ((_%opt261945%_
                                               _%$%hd261881261963%_)
                                              (_%rest261947%_
                                               _%$%tl261882261965%_))
                                          (_%$%K261873261932%_
                                           _%rest261947%_
                                           _%opt261945%_))))
                                  (let ((_%rest261904%_ _%$%tl261880261960%_))
                                    (_%$%K261865261898%_ _%rest261904%_)))
                              (if (equal? _%$%hd261879261958%_ '"-cc-options")
                                  (if (pair? _%$%tl261880261960%_)
                                      (let* ((_%$%tl261872261920%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl261880261960%_)))
                                             (_%rest261923%_
                                              _%$%tl261872261920%_))
                                        (_%$%K261868261912%_ _%rest261923%_))
                                      (let ((_%rest261904%_
                                             _%$%tl261880261960%_))
                                        (_%$%K261865261898%_ _%rest261904%_)))
                                  (let ((_%rest261904%_ _%$%tl261880261960%_))
                                    (_%$%K261865261898%_ _%rest261904%_)))))
                        (_%$%else261863261892%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords261975%_ _%$%static?261844261976%_)
        (let ((_%phi?261978%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords261975%_
           _%$%static?261844261976%_
           _%phi?261978%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g263604_
        (let ((_g263605_ (let () (declare (not safe)) (##length _g263604_))))
          (cond ((let () (declare (not safe)) (##fx= _g263605_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g263604_))
                ((let () (declare (not safe)) (##fx= _g263605_ 3))
                 (apply gxc#gsc-ld-options__%__% _g263604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g263604_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords261987%_ . _%args261988%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords261987%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords261987%_
                  'static:
                  absent-value))
               _%args261988%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args261845261994%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args261845261994%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir261839%_)
        (let ((_%user-staticdir261841%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir261839%_
                       '" -I "
                       _%user-staticdir261841%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp261751%_ ((_%rest261753%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts261754%_ '()))
          (let* ((_%$%rest261755261775%_ _%rest261753%_)
                 (_%$%else261759261783%_ (lambda () _%opts261754%_)))
            (let ((_%$%K261769261826%_
                   (lambda (_%rest261824%_)
                     (_%lp261751%_ _%rest261824%_ _%opts261754%_)))
                  (_%$%K261764261804%_
                   (lambda (_%rest261801%_ _%opt261802%_)
                     (_%lp261751%_
                      _%rest261801%_
                      (let ((__tmp263606
                             (let ((__tmp263607
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt261802%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp263607))))
                        (declare (not safe))
                        (##append _%opts261754%_ __tmp263606)))))
                  (_%$%K261761261789%_
                   (lambda (_%rest261787%_)
                     (_%lp261751%_ _%rest261787%_ _%opts261754%_))))
              (if (pair? _%$%rest261755261775%_)
                  (let ((_%$%tl261771261831%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest261755261775%_)))
                        (_%$%hd261770261829%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest261755261775%_))))
                    (if (equal? _%$%hd261770261829%_ '"-cc-options")
                        (if (pair? _%$%tl261771261831%_)
                            (let* ((_%$%tl261773261834%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl261771261831%_)))
                                   (_%rest261837%_ _%$%tl261773261834%_))
                              (_%$%K261769261826%_ _%rest261837%_))
                            (let ((_%rest261795%_ _%$%tl261771261831%_))
                              (_%$%K261761261789%_ _%rest261795%_)))
                        (if (equal? _%$%hd261770261829%_ '"-ld-options")
                            (if (pair? _%$%tl261771261831%_)
                                (let ((_%$%tl261768261814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl261771261831%_)))
                                      (_%$%hd261767261812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl261771261831%_))))
                                  (let ((_%opt261817%_ _%$%hd261767261812%_)
                                        (_%rest261819%_ _%$%tl261768261814%_))
                                    (_%$%K261764261804%_
                                     _%rest261819%_
                                     _%opt261817%_)))
                                (let ((_%rest261795%_ _%$%tl261771261831%_))
                                  (_%$%K261761261789%_ _%rest261795%_)))
                            (let ((_%rest261795%_ _%$%tl261771261831%_))
                              (_%$%K261761261789%_ _%rest261795%_)))))
                  (_%$%else261759261783%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str261748%_)
        (not (let () (declare (not safe)) (string-empty? _%str261748%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path261741%_ _%phi?261742%_)
        (let ((_%gsc-link-opts261744%_
               (gxc#gsc-link-options__% _%phi?261742%_))
              (_%gsc-cc-opts261745%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?261742%_))
              (_%gsc-ld-opts261746%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?261742%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp263608
                  (let ((__tmp263609
                         (let ((__tmp263610 (cons _%path261741%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp263610
                            _%gsc-link-opts261744%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp263609 _%gsc-ld-opts261746%_))))
             (declare (not safe))
             (foldr__0 cons __tmp263608 _%gsc-cc-opts261745%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx261707%_ _%n261708%_ _%ext261709%_)
        (letrec ((_%module-relative-path261711%_
                  (lambda (_%ctx261739%_)
                    (path-strip-directory
                     (let ((__tmp263611
                            (##structure-ref
                             _%ctx261739%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp263611)))))
                 (_%module-source-directory261712%_
                  (lambda (_%ctx261735%_)
                    (path-directory
                     (let ((_%mpath261737%_
                            (##structure-ref
                             _%ctx261735%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath261737%_)
                           _%mpath261737%_
                           (last _%mpath261737%_))))))
                 (_%section-string261713%_
                  (lambda (_%n261729%_)
                    (if (number? _%n261729%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n261729%_))
                        (if (symbol? _%n261729%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n261729%_))
                            (if (string? _%n261729%_)
                                _%n261729%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n261729%_)))))))
                 (_%file-name261714%_
                  (lambda (_%path261727%_)
                    (if _%n261708%_
                        (string-append
                         _%path261727%_
                         '"~"
                         (_%section-string261713%_ _%n261708%_)
                         _%ext261709%_)
                        (string-append _%path261727%_ _%ext261709%_))))
                 (_%file-path261715%_
                  (lambda ()
                    (let ((_%$e261721%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e261721%_
                          (path-expand
                           (_%file-name261714%_
                            (let ((__tmp263612
                                   (##structure-ref
                                    _%ctx261707%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp263612)))
                           _%$e261721%_)
                          (path-expand
                           (_%file-name261714%_
                            (_%module-relative-path261711%_ _%ctx261707%_))
                           (_%module-source-directory261712%_
                            _%ctx261707%_)))))))
          (let ((_%path261717%_ (_%file-path261715%_)))
            (let ((__tmp263613
                   (lambda ()
                     (let ((__tmp263614 (path-directory _%path261717%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp263614)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp263613))
            _%path261717%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx261688%_)
        (letrec ((_%file-name261690%_
                  (lambda (_%id261705%_)
                    (let ((__tmp263615 (gxc#static-module-name _%id261705%_)))
                      (declare (not safe))
                      (##string-append __tmp263615 '".scm"))))
                 (_%file-path261691%_
                  (lambda ()
                    (let* ((_%file261697%_
                            (_%file-name261690%_
                             (##structure-ref
                              _%ctx261688%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e261699%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e261699%_
                          (path-expand
                           _%file261697%_
                           (path-expand '"static" _%$e261699%_))
                          (path-expand _%file261697%_ '"static"))))))
          (let ((_%path261693%_ (_%file-path261691%_)))
            (let ((__tmp263616
                   (lambda ()
                     (let ((__tmp263617 (path-directory _%path261693%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp263617)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp263616))
            _%path261693%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx261681%_ _%opts261682%_)
        (let ((_%$e261684%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts261682%_))))
          (if _%$e261684%_
              _%$e261684%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx261681%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr261671%_)
        (if (string? _%idstr261671%_)
            (let* ((_%str261674%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr261671%_)))
                   (_%strs261676%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str261674%_ '#\/))))
              (declare (not safe))
              (string-join _%strs261676%_ '"__"))
            (if (symbol? _%idstr261671%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr261671%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr261671%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp263618
               (let ((__tmp263619 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp263619 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp263618))))
    (define gxc#invoke__%
      (lambda (_%@@keywords261637%_
               _%$%stdout-redirection261633261638%_
               _%$%stderr-redirection261634261639%_
               _%program261640%_
               _%args261641%_)
        (let* ((_%stdout-redirection261643%_
                (if (eq? _%$%stdout-redirection261633261638%_ absent-value)
                    '#f
                    _%$%stdout-redirection261633261638%_))
               (_%stderr-redirection261645%_
                (if (eq? _%$%stderr-redirection261634261639%_ absent-value)
                    '#f
                    _%$%stderr-redirection261634261639%_)))
          (let ((__tmp263620 (cons _%program261640%_ _%args261641%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp263620))
          (let* ((_%proc261647%_
                  (open-process
                   (cons 'path:
                         (cons _%program261640%_
                               (cons 'arguments:
                                     (cons _%args261641%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection261643%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection261645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output261652%_
                  (if (or _%stdout-redirection261643%_
                          _%stderr-redirection261645%_)
                      (read-line _%proc261647%_ '#f)
                      '#f))
                 (_%status261655%_ (process-status _%proc261647%_)))
            (let () (declare (not safe)) (##close-port _%proc261647%_))
            (if (zero? _%status261655%_)
                '#!void
                (begin
                  (display _%output261652%_)
                  (let ((__tmp263621 (cons _%program261640%_ _%args261641%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp263621
                     _%status261655%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords261660%_ . _%args261661%_)
        (apply gxc#invoke__%
               _%@@keywords261660%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords261660%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords261660%_
                  'stderr-redirection:
                  absent-value))
               _%args261661%_)))
    (define gxc#invoke
      (lambda _%$%args261635261667%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args261635261667%_)))))
