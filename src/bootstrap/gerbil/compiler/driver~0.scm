(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1781697577)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp266145 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp266145))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp266146 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp266146))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path266002%_ _%fun266003%_)
        (with-output-to-file
         (cons 'path: (cons _%path266002%_ gxc#scheme-file-settings))
         _%fun266003%_)))
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
      (lambda (_%gerbil-libdir265997%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir265997%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path265995%_)
        (let ((__tmp266147 (object->string _%path265995%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp266147 '")"))))
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
      (lambda (_%dir265993%_) (delete-file-or-directory _%dir265993%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath265936%_ _%opts265937%_)
        (if (string? _%srcpath265936%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath265936%_)))
        (let* ((_%outdir265939%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts265937%_)))
               (_%invoke-gsc?265941%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts265937%_)))
               (_%target265946%_
                (let ((_%$e265943%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts265937%_))))
                  (if _%$e265943%_ _%$e265943%_ 'C)))
               (_%gsc-options265951%_
                (append (cons '"-target"
                              (cons (symbol->string _%target265946%_) '()))
                        (let ((_%$e265948%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts265937%_))))
                          (if _%$e265948%_ _%$e265948%_ '()))))
               (_%keep-scm?265953%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts265937%_)))
               (_%verbosity265955%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts265937%_)))
               (_%optimize265957%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts265937%_)))
               (_%debug265959%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts265937%_)))
               (_%gen-ssxi265961%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts265937%_)))
               (_%parallel?265963%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts265937%_))))
          (if _%outdir265939%_
              (let ((__tmp266148
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir265939%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp266148))
              '#!void)
          (if _%optimize265957%_
              (let ((__tmp266149
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp266149))
              '#!void)
          (let ((__tmp266150
                 (lambda ()
                   (let ((__tmp266151
                          (lambda ()
                            (let ((__tmp266152
                                   (lambda ()
                                     (let ((__tmp266153
                                            (lambda ()
                                              (let ((__tmp266154
                                                     (lambda ()
                                                       (let ((__tmp266155
                                                              (lambda ()
                                                                (let ((__tmp266156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp266157
                                        (lambda ()
                                          (let ((__tmp266159
                                                 (lambda ()
                                                   (let ((__tmp266161
                                                          (lambda ()
                                                            (let ((__tmp266163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp266164
                                    (lambda ()
                                      (let ((__tmp266165
                                             (lambda ()
                                               (let ((__tmp266166
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath265936%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp266167
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath265936%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp266167))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp266166
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp266165
                                         gx#current-compilation-target
                                         _%target265946%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp266164
                                gxc#current-compile-parallel
                                _%parallel?265963%_))))
                          (__tmp266162
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp266163
                       gxc#current-compile-identifiers
                       __tmp266162))))
                 (__tmp266160
                  (cons (cons 'compile-module (cons _%srcpath265936%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp266161
                                                      gxc#current-compile-context
                                                      __tmp266160))))
                                                (__tmp266158
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp266159
                                             gxc#current-compile-timestamp
                                             __tmp266158)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp266157
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi265961%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp266156
                           gxc#current-compile-debug
                           _%debug265959%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp266155
                  gxc#current-compile-optimize
                  _%optimize265957%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp266154
                                                 gxc#current-compile-verbose
                                                 _%verbosity265955%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp266153
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?265953%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp266152
                               gxc#current-compile-gsc-options
                               _%gsc-options265951%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp266151
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?265941%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp266150
             gxc#current-compile-output-dir
             _%outdir265939%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath265986%_)
        (let ((_%opts265988%_ '()))
          (gxc#compile-module__% _%srcpath265986%_ _%opts265988%_))))
    (define gxc#compile-module
      (lambda _g266168_
        (let ((_g266169_ (let () (declare (not safe)) (##length _g266168_))))
          (cond ((let () (declare (not safe)) (##fx= _g266169_ 1))
                 (apply gxc#compile-module__0 _g266168_))
                ((let () (declare (not safe)) (##fx= _g266169_ 2))
                 (apply gxc#compile-module__% _g266168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g266168_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath265885%_ _%opts265886%_)
        (if (string? _%srcpath265885%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath265885%_)))
        (let* ((_%outdir265888%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts265886%_)))
               (_%invoke-gsc?265890%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts265886%_)))
               (_%target265895%_
                (let ((_%$e265892%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts265886%_))))
                  (if _%$e265892%_ _%$e265892%_ 'C)))
               (_%gsc-options265900%_
                (append (cons '"-target"
                              (cons (symbol->string _%target265895%_) '()))
                        (let ((_%$e265897%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts265886%_))))
                          (if _%$e265897%_ _%$e265897%_ '()))))
               (_%keep-scm?265902%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts265886%_)))
               (_%verbosity265904%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts265886%_)))
               (_%debug265906%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts265886%_)))
               (_%parallel?265908%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts265886%_))))
          (if _%outdir265888%_
              (let ((__tmp266170
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir265888%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp266170))
              '#!void)
          (let ((__tmp266171
                 (lambda ()
                   (let ((__tmp266172
                          (lambda ()
                            (let ((__tmp266173
                                   (lambda ()
                                     (let ((__tmp266174
                                            (lambda ()
                                              (let ((__tmp266175
                                                     (lambda ()
                                                       (let ((__tmp266176
                                                              (lambda ()
                                                                (let ((__tmp266177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp266179
                                        (lambda ()
                                          (let ((__tmp266181
                                                 (lambda ()
                                                   (let ((__tmp266183
                                                          (lambda ()
                                                            (let ((__tmp266184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp266185
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath265885%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp266186
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath265885%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp266186))
                                       _%opts265886%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp266185
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp266184
                       gxc#current-compile-parallel
                       _%parallel?265908%_))))
                 (__tmp266182
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp266183
                                                      gxc#current-compile-identifiers
                                                      __tmp266182))))
                                                (__tmp266180
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath265885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp266181
                                             gxc#current-compile-context
                                             __tmp266180))))
                                       (__tmp266178 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp266179
                                    gxc#current-compile-timestamp
                                    __tmp266178)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp266177
                           gxc#current-compile-debug
                           _%debug265906%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp266176
                  gxc#current-compile-verbose
                  _%verbosity265904%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp266175
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?265902%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp266174
                                        gxc#current-compile-gsc-options
                                        _%gsc-options265900%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp266173
                               gx#current-compilation-target
                               _%target265895%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp266172
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?265890%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp266171
             gxc#current-compile-output-dir
             _%outdir265888%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath265928%_)
        (let ((_%opts265930%_ '()))
          (gxc#compile-exe__% _%srcpath265928%_ _%opts265930%_))))
    (define gxc#compile-exe
      (lambda _g266187_
        (let ((_g266188_ (let () (declare (not safe)) (##length _g266187_))))
          (cond ((let () (declare (not safe)) (##fx= _g266188_ 1))
                 (apply gxc#compile-exe__0 _g266187_))
                ((let () (declare (not safe)) (##fx= _g266188_ 2))
                 (apply gxc#compile-exe__% _g266187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g266187_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx265881%_ _%opts265882%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts265882%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx265881%_
             _%opts265882%_)
            (gxc#compile-executable-module/separate
             _%ctx265881%_
             _%opts265882%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx265607%_ _%opts265608%_)
        (letrec ((_%generate-stub265610%_
                  (lambda (_%builtin-modules265877%_)
                    (let ((_%mod-main265879%_
                           (gxc#find-runtime-symbol _%ctx265607%_ 'main)))
                      (let ((__tmp266189
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules265877%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp266189))
                      (let ((__tmp266190
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main265879%_
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
                        (##write __tmp266190))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts265611%_
                  (lambda (_%gerbil-libdir265875%_)
                    (let ((__tmp266191
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir265875%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp266191 read))))
                 (_%replace-extension265612%_
                  (lambda (_%path265872%_ _%ext265873%_)
                    (string-append
                     (path-strip-extension _%path265872%_)
                     _%ext265873%_)))
                 (_%replace-extension-with-c265613%_
                  (lambda (_%path265870%_)
                    (_%replace-extension265612%_ _%path265870%_ '".c")))
                 (_%replace-extension-with-object265614%_
                  (lambda (_%path265868%_)
                    (_%replace-extension265612%_
                     _%path265868%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?265615%_
                  (lambda (_%ctx265866%_)
                    (if (_%exclude-module?265617%_ _%ctx265866%_)
                        '#f
                        (not (_%libgerbil-module?265616%_ _%ctx265866%_)))))
                 (_%libgerbil-module?265616%_
                  (lambda (_%ctx265859%_)
                    (let ((_%id-str265861%_
                           (symbol->string
                            (##structure-ref
                             _%ctx265859%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?265617%_ _%id-str265861%_)
                          '#f
                          (let ((_%$e265863%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str265861%_))))
                            (if _%$e265863%_
                                _%$e265863%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str265861%_))))))))
                 (_%exclude-module?265617%_
                  (lambda (_%ctx-or-str265855%_)
                    (let ((_%str265857%_
                           (if (string? _%ctx-or-str265855%_)
                               _%ctx-or-str265855%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str265855%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str265857%_))))
                 (_%not-file-empty?265618%_
                  (lambda (_%path265853%_)
                    (not (gxc#file-empty? _%path265853%_))))
                 (_%fold-libgerbil-runtime-scm265619%_
                  (lambda (_%gerbil-staticdir265846%_ _%libgerbil-scm265847%_)
                    (let ((_%gerbil-runtime-scm265851%_
                           (let ((__tmp266192
                                  (lambda (_%rtm265849%_)
                                    (path-expand
                                     (let ((__tmp266193
                                            (let ((__tmp266194
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm265849%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp266194
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp266193 '".scm"))
                                     _%gerbil-staticdir265846%_))))
                             (declare (not safe))
                             (##map __tmp266192 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates265620%_
                       (append _%gerbil-runtime-scm265851%_
                               _%libgerbil-scm265847%_)))))
                 (_%remove-duplicates265620%_
                  (lambda (_%strlst265806%_)
                    (let _%loop265808%_ ((_%rest265810%_ _%strlst265806%_)
                                         (_%result265811%_ '()))
                      (let* ((_%$%rest265812265820%_ _%rest265810%_)
                             (_%$%else265814265828%_
                              (lambda () (reverse! _%result265811%_)))
                             (_%$%K265816265834%_
                              (lambda (_%rest265831%_ _%path265832%_)
                                (if (member _%path265832%_ _%result265811%_)
                                    (_%loop265808%_
                                     _%rest265831%_
                                     _%result265811%_)
                                    (_%loop265808%_
                                     _%rest265831%_
                                     (cons _%path265832%_
                                           _%result265811%_))))))
                        (if (pair? _%$%rest265812265820%_)
                            (let ((_%$%hd265817265837%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest265812265820%_)))
                                  (_%$%tl265818265839%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest265812265820%_))))
                              (let* ((_%path265842%_ _%$%hd265817265837%_)
                                     (_%rest265844%_ _%$%tl265818265839%_))
                                (_%$%K265816265834%_
                                 _%rest265844%_
                                 _%path265842%_)))
                            (_%$%else265814265828%_))))))
                 (_%compile-stub265621%_
                  (lambda (_%output-scm265628%_ _%output-bin265629%_)
                    (let* ((_%gerbil-home265631%_
                            (let ((__tmp266195
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp266195)))
                           (_%gerbil-libdir265633%_
                            (path-expand '"lib" _%gerbil-home265631%_))
                           (_%gerbil-staticdir265635%_
                            (path-expand '"static" _%gerbil-libdir265633%_))
                           (_%deps265637%_
                            (gxc#find-runtime-module-deps _%ctx265607%_))
                           (_%libgerbil-deps265639%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?265616%_
                               _%deps265637%_)))
                           (_%libgerbil-scm265641%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps265639%_)))
                           (_%libgerbil-scm265643%_
                            (_%fold-libgerbil-runtime-scm265619%_
                             _%gerbil-staticdir265635%_
                             _%libgerbil-scm265641%_))
                           (_%libgerbil-c265645%_
                            (map _%replace-extension-with-c265613%_
                                 _%libgerbil-scm265643%_))
                           (_%libgerbil-o265647%_
                            (map _%replace-extension-with-object265614%_
                                 _%libgerbil-scm265643%_))
                           (_%src-deps265649%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?265615%_
                               _%deps265637%_)))
                           (_%src-deps-scm265651%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps265649%_)))
                           (_%src-deps-scm265653%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?265618%_
                               _%src-deps-scm265651%_)))
                           (_%src-deps-scm265655%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm265653%_)))
                           (_%src-deps-c265657%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c265613%_
                                     _%src-deps-scm265655%_)))
                           (_%src-deps-o265659%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object265614%_
                                     _%src-deps-scm265655%_)))
                           (_%src-bin-scm265661%_
                            (gxc#find-static-module-file _%ctx265607%_))
                           (_%src-bin-scm265663%_
                            (path-expand _%src-bin-scm265661%_))
                           (_%src-bin-c265665%_
                            (_%replace-extension-with-c265613%_
                             _%src-bin-scm265663%_))
                           (_%src-bin-o265667%_
                            (_%replace-extension-with-object265614%_
                             _%src-bin-scm265663%_))
                           (_%output-bin265669%_
                            (path-expand _%output-bin265629%_))
                           (_%output-scm265671%_
                            (path-expand _%output-scm265628%_))
                           (_%output-c265673%_
                            (_%replace-extension-with-c265613%_
                             _%output-scm265671%_))
                           (_%output-o265675%_
                            (_%replace-extension-with-object265614%_
                             _%output-scm265671%_))
                           (_%output_-c265677%_
                            (_%replace-extension265612%_
                             _%output-scm265671%_
                             '"_.c"))
                           (_%output_-o265679%_
                            (_%replace-extension265612%_
                             _%output-scm265671%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts265681%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts265683%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts265685%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir265635%_))
                           (_%output-ld-opts265687%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts265689%_
                            (_%get-libgerbil-ld-opts265611%_
                             _%gerbil-libdir265633%_))
                           (_%rpath265691%_
                            (gxc#gerbil-rpath _%gerbil-libdir265633%_))
                           (_%builtin-modules265695%_
                            (_%remove-duplicates265620%_
                             (let ((__tmp266196
                                    (let ((__tmp266198
                                           (lambda (_%mod265693%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod265693%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp266197
                                           (cons _%ctx265607%_
                                                 _%deps265637%_)))
                                      (declare (not safe))
                                      (##map __tmp266198 __tmp266197))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp266196)))))
                      (letrec ((_%compile-obj265698%_
                                (lambda (_%scm-path265705%_ _%c-path265706%_)
                                  (let* ((_%o-path265708%_
                                          (_%replace-extension265612%_
                                           _%c-path265706%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock265710%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path265708%_
                                             '".lock")))
                                         (_%locked265712%_ '#f)
                                         (_%unlock265715%_
                                          (lambda ()
                                            (close-port _%locked265712%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock265710%_)))))
                                    (let _%retry265718%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock265710%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry265718%_))
                                          (begin
                                            (set! _%locked265712%_
                                                  (let* ((_%handler265721%_
                                                          false)
                                                         (_%thunk265725%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock265710%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler265730%_ _%handler265721%_)
                 (_%thunk265786%_ _%thunk265725%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler265730%_
                                                     _%thunk265786%_)))
                                            (if _%locked265712%_
                                                '#!void
                                                (_%retry265718%_)))))
                                    (let ((__tmp266200
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path265708%_)))
                                                     (not _%scm-path265705%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path265705%_
                                                        _%o-path265708%_)))
                                                 (let ((_%gsc-cc-opts265803%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp266201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp266202 (cons _%c-path265706%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp266202
                            _%gsc-static-opts265685%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp266201 _%gsc-cc-opts265803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp266199
                                           (lambda () (_%unlock265715%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp266200
                                       __tmp266199))))))
                        (let ((__tmp266203
                               (lambda ()
                                 (let ((__tmp266204
                                        (path-directory _%output-bin265669%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp266204)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp266203))
                        (gxc#with-output-to-scheme-file
                         _%output-scm265671%_
                         (lambda ()
                           (_%generate-stub265610%_
                            _%builtin-modules265695%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it265703%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp266205
                                                   (let ((__tmp266206
                                                          (let ((__tmp266207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm265663%_
                               (cons _%output-scm265671%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp266207 _%src-deps-scm265655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp266206
                                                      _%libgerbil-c265645%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp266205
                                               _%gsc-link-opts265681%_))))
                                     (for-each
                                      _%compile-obj265698%_
                                      (let ((__tmp266208
                                             (cons _%src-bin-scm265663%_
                                                   (cons _%output-scm265671%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp266208
                                         _%src-deps-scm265655%_))
                                      (let ((__tmp266209
                                             (cons _%src-bin-c265665%_
                                                   (cons _%output-c265673%_
                                                         (cons _%output_-c265677%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp266209
                                         _%src-deps-c265657%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin265669%_
                                                        (let ((__tmp266210
                                                               (cons _%src-bin-o265667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o265675%_
                                   (cons _%output_-o265679%_
                                         (let ((__tmp266211
                                                (let ((__tmp266212
                                                       (let ((__tmp266214
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir265633%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts265689%_))))
                     (__tmp266213
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath265691%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp266214 __tmp266213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp266212
                                                   _%output-ld-opts265687%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp266211
                                            _%libgerbil-o265647%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp266210 _%src-deps-o265659%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp266215
                                            (cons _%output-c265673%_
                                                  (cons _%output_-c265677%_
                                                        (cons _%output-o265675%_
                                                              (cons _%output_-o265679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp266215)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it265703%_))
                                  (_%compile-it265703%_)))
                            '#!void))))))
          (let* ((_%output-bin265623%_
                  (gxc#compile-exe-output-file _%ctx265607%_ _%opts265608%_))
                 (_%output-scm265625%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin265623%_ '"__exe.scm"))))
            (_%compile-stub265621%_
             _%output-scm265625%_
             _%output-bin265623%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx265429%_ _%opts265430%_)
        (letrec ((_%reset-declare265432%_
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
                 (_%generate-stub265433%_
                  (lambda (_%deps265598%_)
                    (let ((_%mod-main265600%_
                           (gxc#find-runtime-symbol _%ctx265429%_ 'main))
                          (_%reset-decl265601%_ (_%reset-declare265432%_))
                          (_%user-decl265602%_ (_%user-declare265434%_)))
                      (for-each
                       (lambda (_%dep265604%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl265601%_))
                         (newline)
                         (if _%user-decl265602%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl265602%_))
                               (newline))
                             '#!void)
                         (let ((__tmp266216
                                (cons 'include (cons _%dep265604%_ '()))))
                           (declare (not safe))
                           (##write __tmp266216))
                         (newline))
                       _%deps265598%_)
                      (let ((__tmp266217
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main265600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp266217))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare265434%_
                  (lambda ()
                    (let* ((_%gsc-opts265503%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts265430%_)))
                           (_%gsc-prelude265505%_
                            (if _%gsc-opts265503%_
                                (member '"-prelude" _%gsc-opts265503%_)
                                '#f))
                           (_%gsc-prelude265507%_
                            (if _%gsc-prelude265505%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude265505%_)))
                                '#f)))
                      (let _%lp265510%_ ((_%rest265512%_
                                          (cons _%gsc-prelude265507%_ '()))
                                         (_%user-decls265513%_ '()))
                        (let* ((_%$%rest265514265522%_ _%rest265512%_)
                               (_%$%else265516265530%_
                                (lambda ()
                                  (if (null? _%user-decls265513%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls265513%_)))))
                               (_%$%K265518265586%_
                                (lambda (_%rest265533%_ _%expr265534%_)
                                  (let* ((_%$%expr265535265547%_
                                          _%expr265534%_)
                                         (_%$%else265538265555%_
                                          (lambda ()
                                            (_%lp265510%_
                                             _%rest265533%_
                                             _%user-decls265513%_))))
                                    (let ((_%$%K265543265576%_
                                           (lambda (_%decls265574%_)
                                             (_%lp265510%_
                                              _%rest265533%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls265513%_
                                                 _%decls265574%_)))))
                                          (_%$%K265540265561%_
                                           (lambda (_%exprs265559%_)
                                             (_%lp265510%_
                                              (append _%exprs265559%_
                                                      _%rest265533%_)
                                              _%user-decls265513%_))))
                                      (if (pair? _%$%expr265535265547%_)
                                          (let ((_%$%tl265545265581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr265535265547%_)))
                                                (_%$%hd265544265579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr265535265547%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd265544265579%_
                                                         'declare))
                                                (let ((_%decls265584%_
                                                       _%$%tl265545265581%_))
                                                  (_%$%K265543265576%_
                                                   _%decls265584%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd265544265579%_
                                                             'begin))
                                                    (let ((_%exprs265569%_
                                                           _%$%tl265545265581%_))
                                                      (_%$%K265540265561%_
                                                       _%exprs265569%_))
                                                    (_%$%else265538265555%_))))
                                          (_%$%else265538265555%_)))))))
                          (if (pair? _%$%rest265514265522%_)
                              (let ((_%$%hd265519265589%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest265514265522%_)))
                                    (_%$%tl265520265591%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest265514265522%_))))
                                (let* ((_%expr265594%_ _%$%hd265519265589%_)
                                       (_%rest265596%_ _%$%tl265520265591%_))
                                  (_%$%K265518265586%_
                                   _%rest265596%_
                                   _%expr265594%_)))
                              (_%$%else265516265530%_)))))))
                 (_%compile-stub265435%_
                  (lambda (_%output-scm265442%_ _%output-bin265443%_)
                    (let* ((_%gerbil-home265445%_
                            (let ((__tmp266218
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp266218)))
                           (_%gerbil-libdir265447%_
                            (path-expand '"lib" _%gerbil-home265445%_))
                           (_%runtime265449%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp265451%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home265445%_))
                           (_%include-gambit-sharp265453%_
                            (gxc#include-source _%gambit-sharp265451%_))
                           (_%bin-scm265455%_
                            (gxc#find-static-module-file _%ctx265429%_))
                           (_%deps265457%_
                            (gxc#find-runtime-module-deps _%ctx265429%_))
                           (_%deps265459%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps265457%_)))
                           (_%deps265464%_
                            (let ((__tmp266219
                                   (lambda (_%$obj265461%_)
                                     (not (gxc#file-empty? _%$obj265461%_)))))
                              (declare (not safe))
                              (##filter __tmp266219 _%deps265459%_)))
                           (_%deps265468%_
                            (let ((__tmp266220
                                   (lambda (_%f265466%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f265466%_
                                             _%runtime265449%_))))))
                              (declare (not safe))
                              (##filter __tmp266220 _%deps265464%_)))
                           (_%output-base265470%_
                            (let ((__tmp266221
                                   (path-strip-extension
                                    _%output-scm265442%_)))
                              (declare (not safe))
                              (##string-append __tmp266221)))
                           (_%output-c265472%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base265470%_ '".c")))
                           (_%output-o265474%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base265470%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_265476%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base265470%_ '"_.c")))
                           (_%output-o_265478%_
                            (let ((__tmp266222
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base265470%_
                               __tmp266222)))
                           (_%gsc-link-opts265480%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts265482%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts265484%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir265447%_)))
                           (_%output-ld-opts265486%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros265488%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp265453%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp265453%_
                                            '()))))
                           (_%gsc-link-opts265490%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts265480%_
                               _%gsc-gx-macros265488%_)))
                           (_%rpath265492%_
                            (gxc#gerbil-rpath _%gerbil-libdir265447%_))
                           (_%default-ld-options265494%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp266223
                             (lambda ()
                               (let ((__tmp266224
                                      (path-directory _%output-bin265443%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp266224)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp266223))
                      (gxc#with-output-to-scheme-file
                       _%output-scm265442%_
                       (lambda ()
                         (_%generate-stub265433%_
                          (let ((__tmp266225
                                 (let ((__tmp266226
                                        (cons _%bin-scm265455%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp266226
                                    _%deps265468%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp266225 _%runtime265449%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it265500%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_265476%_
                                                      (let ((__tmp266227
                                                             (cons _%output-scm265442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp266227 _%gsc-link-opts265490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp266228
                                                 (let ((__tmp266229
                                                        (cons _%output-c265472%_
                                                              (cons _%output-c_265476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp266229
                                                    _%gsc-static-opts265484%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp266228
                                             _%gsc-cc-opts265482%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin265443%_
                                                      (cons _%output-o265474%_
                                                            (cons _%output-o_265478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp266230
                                 (let ((__tmp266232
                                        (cons '"-L"
                                              (cons _%gerbil-libdir265447%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options265494%_))))
                                       (__tmp266231
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath265492%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp266232 __tmp266231))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp266230
                             _%output-ld-opts265486%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it265500%_))
                                (_%compile-it265500%_)))
                          '#!void)))))
          (let* ((_%output-bin265437%_
                  (gxc#compile-exe-output-file _%ctx265429%_ _%opts265430%_))
                 (_%output-scm265439%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin265437%_ '"__exe.scm"))))
            (_%compile-stub265435%_
             _%output-scm265439%_
             _%output-bin265437%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx265378%_ _%id265379%_)
        (let ((_%$e265425%_
               (let ((__tmp266234
                      (lambda (_%$%e265380265382%_)
                        (let* ((_%$%$%e265380265384265394%_
                                _%$%e265380265382%_)
                               (_%$%else265386265402%_ (lambda () '#f))
                               (_%$%K265388265406%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e265380265384265394%_
                                 'gx#module-export::t))
                              (let* ((_%$%e265389265409%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e265380265384265394%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e265390265412%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e265380265384265394%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e265391265415%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e265380265384265394%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e265391265415%_ '0))
                                    (let ((_%$%e265392265418%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e265380265384265394%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e265392265418%_
                                               _%id265379%_)
                                          (_%$%K265388265406%_)
                                          (_%$%else265386265402%_)))
                                    (_%$%else265386265402%_)))
                              (_%$%else265386265402%_)))))
                     (__tmp266233
                      (##structure-ref
                       _%ctx265378%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp266234 __tmp266233))))
          (if _%$e265425%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e265425%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx265369%_ _%id265370%_)
        (let ((_%$e265372%_
               (gxc#find-export-binding _%ctx265369%_ _%id265370%_)))
          (if _%$e265372%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e265372%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id265370%_)))
                (##structure-ref _%$e265372%_ '1 gx#binding::t '#f))
              (let ((__tmp266235
                     (##structure-ref
                      _%ctx265369%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp266235
                 _%id265370%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx265235%_)
        (letrec* ((_%ht265237%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template265238%_
                   (lambda (_%in265314%_ _%phi265315%_)
                     (let ((_%iphi265317%_
                            (fx+ _%phi265315%_
                                 (##direct-structure-ref
                                  _%in265314%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports265318%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in265314%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp265320%_ ((_%rest265322%_ _%imports265318%_)
                                          (_%r265323%_ '()))
                         (let* ((_%$%rest265324265332%_ _%rest265322%_)
                                (_%$%else265326265340%_
                                 (lambda () _%r265323%_))
                                (_%$%K265328265357%_
                                 (lambda (_%rest265343%_ _%in265344%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in265344%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi265317%_))
                                           (_%lp265320%_
                                            _%rest265343%_
                                            (cons _%in265344%_ _%r265323%_))
                                           (_%lp265320%_
                                            _%rest265343%_
                                            _%r265323%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in265344%_
                                              'gx#module-import::t))
                                           (let ((_%iphi265348%_
                                                  (fx+ _%phi265315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in265344%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi265348%_))
                                                 (_%lp265320%_
                                                  _%rest265343%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in265344%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r265323%_))
                                                 (_%lp265320%_
                                                  _%rest265343%_
                                                  _%r265323%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in265344%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi265351%_
                                                      (fx+ _%iphi265317%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in265344%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi265351%_))
                                                     (_%lp265320%_
                                                      _%rest265343%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in265344%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r265323%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi265351%_))
                                                         (_%lp265320%_
                                                          _%rest265343%_
                                                          (let ((__tmp266236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template265238%_
                          _%in265344%_
                          _%iphi265317%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r265323%_ __tmp266236)))
                 (_%lp265320%_ _%rest265343%_ _%r265323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp265320%_
                                                _%rest265343%_
                                                _%r265323%_)))))))
                           (if (pair? _%$%rest265324265332%_)
                               (let ((_%$%hd265329265360%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest265324265332%_)))
                                     (_%$%tl265330265362%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest265324265332%_))))
                                 (let* ((_%in265365%_ _%$%hd265329265360%_)
                                        (_%rest265367%_ _%$%tl265330265362%_))
                                   (_%$%K265328265357%_
                                    _%rest265367%_
                                    _%in265365%_)))
                               (_%$%else265326265340%_)))))))
                  (_%find-deps265239%_
                   (lambda (_%rest265247%_ _%deps265248%_)
                     (let* ((_%$%rest265249265257%_ _%rest265247%_)
                            (_%$%else265251265265%_ (lambda () _%deps265248%_))
                            (_%$%K265253265302%_
                             (lambda (_%rest265268%_ _%hd265269%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd265269%_
                                      'gx#module-context::t))
                                   (let ((_%id265272%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd265269%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports265273%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd265269%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht265237%_
                                            _%id265272%_))
                                         (_%find-deps265239%_
                                          _%rest265268%_
                                          _%deps265248%_)
                                         (let ((_%$e265276%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd265269%_))))
                                           (if _%$e265276%_
                                               (let ((_%xdeps265281%_
                                                      (_%find-deps265239%_
                                                       (cons _%$e265276%_
                                                             _%imports265273%_)
                                                       _%deps265248%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht265237%_
                                                    _%id265272%_
                                                    _%hd265269%_))
                                                 (_%find-deps265239%_
                                                  _%rest265268%_
                                                  (cons _%hd265269%_
                                                        _%xdeps265281%_)))
                                               (let ((_%xdeps265284%_
                                                      (_%find-deps265239%_
                                                       _%imports265273%_
                                                       _%deps265248%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht265237%_
                                                    _%id265272%_
                                                    _%hd265269%_))
                                                 (_%find-deps265239%_
                                                  _%rest265268%_
                                                  (cons _%hd265269%_
                                                        _%xdeps265284%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd265269%_
                                          'gx#prelude-context::t))
                                       (let ((_%id265287%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd265269%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht265237%_
                                                _%id265287%_))
                                             (_%find-deps265239%_
                                              _%rest265268%_
                                              _%deps265248%_)
                                             (let ((_%xdeps265291%_
                                                    (_%find-deps265239%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd265269%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps265248%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht265237%_
                                                      _%id265287%_))
                                                   (_%find-deps265239%_
                                                    _%rest265268%_
                                                    _%xdeps265291%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht265237%_
                                                        _%id265287%_
                                                        _%hd265269%_))
                                                     (_%find-deps265239%_
                                                      _%rest265268%_
                                                      (cons _%hd265269%_
                                                            _%xdeps265291%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd265269%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd265269%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps265239%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd265269%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest265268%_)
                                                _%deps265248%_)
                                               (_%find-deps265239%_
                                                _%rest265268%_
                                                _%deps265248%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd265269%_
                                                  'gx#module-export::t))
                                               (_%find-deps265239%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd265269%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest265268%_)
                                                _%deps265248%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd265269%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd265269%_ '2 '#f '#f)))
               (_%find-deps265239%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd265269%_ '1 '#f '#f))
                      _%rest265268%_)
                _%deps265248%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd265269%_ '2 '#f '#f)))
                   (let ((_%xdeps265298%_
                          (_%import-set-template265238%_ _%hd265269%_ '0)))
                     (_%find-deps265239%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest265268%_ _%xdeps265298%_))
                      _%deps265248%_))
                   (_%find-deps265239%_ _%rest265268%_ _%deps265248%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd265269%_))))))))))
                       (if (pair? _%$%rest265249265257%_)
                           (let ((_%$%hd265254265305%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest265249265257%_)))
                                 (_%$%tl265255265307%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest265249265257%_))))
                             (let* ((_%hd265310%_ _%$%hd265254265305%_)
                                    (_%rest265312%_ _%$%tl265255265307%_))
                               (_%$%K265253265302%_
                                _%rest265312%_
                                _%hd265310%_)))
                           (_%$%else265251265265%_))))))
          (let ((__tmp266237
                 (filter gx#expander-context-id
                         (_%find-deps265239%_
                          (let ((_%$e265241%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx265235%_))))
                            (if _%$e265241%_
                                (cons _%$e265241%_
                                      (##structure-ref
                                       _%ctx265235%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx265235%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp266237)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx265165%_)
        (let* ((_%context-id265167%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx265165%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx265165%_ '1 '#f '#f))
                    (string->symbol _%ctx265165%_)))
               (_%scm265169%_
                (let ((__tmp266238
                       (gxc#static-module-name _%context-id265167%_)))
                  (declare (not safe))
                  (##string-append __tmp266238 '".scm")))
               (_%dirs265171%_ (let () (declare (not safe)) (load-path)))
               (_%dirs265177%_
                (let ((_%user-libpath265173%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath265173%_
                      (let ((_%user-libpath265175%_
                             (path-expand '"lib" _%user-libpath265173%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath265175%_ _%dirs265171%_))
                            _%dirs265171%_
                            (cons _%user-libpath265175%_ _%dirs265171%_)))
                      _%dirs265171%_)))
               (_%dirs265187%_
                (let ((_%$e265179%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e265179%_
                      (cons _%$e265179%_ _%dirs265177%_)
                      _%dirs265177%_)))
               (_%dirs265193%_
                (let ((__tmp266239
                       (lambda (_%$%g265188265190%_)
                         (path-expand '"static" _%$%g265188265190%_))))
                  (declare (not safe))
                  (##map __tmp266239 _%dirs265187%_))))
          (let _%lp265196%_ ((_%rest265198%_ _%dirs265193%_))
            (let* ((_%$%rest265199265207%_ _%rest265198%_)
                   (_%$%else265201265215%_
                    (lambda ()
                      (let ((__tmp266240
                             (##structure-ref
                              _%ctx265165%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp266240
                         _%scm265169%_))))
                   (_%$%K265203265223%_
                    (lambda (_%rest265218%_ _%dir265219%_)
                      (let ((_%path265221%_
                             (path-expand _%scm265169%_ _%dir265219%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path265221%_))
                            _%path265221%_
                            (_%lp265196%_ _%rest265218%_))))))
              (if (pair? _%$%rest265199265207%_)
                  (let ((_%$%hd265204265226%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest265199265207%_)))
                        (_%$%tl265205265228%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest265199265207%_))))
                    (let* ((_%dir265231%_ _%$%hd265204265226%_)
                           (_%rest265233%_ _%$%tl265205265228%_))
                      (_%$%K265203265223%_ _%rest265233%_ _%dir265231%_)))
                  (_%$%else265201265215%_)))))))
    (define gxc#file-empty?
      (lambda (_%path265163%_)
        (zero? (let ((__tmp266241 (file-info _%path265163%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp266241)))))
    (define gxc#compile-top-module
      (lambda (_%ctx265154%_)
        (let ((__tmp266242
               (lambda ()
                 (let ((__tmp266243
                        (lambda ()
                          (let ((__tmp266244
                                 (lambda ()
                                   (let ((__tmp266246
                                          (lambda ()
                                            (let ((__tmp266248
                                                   (lambda ()
                                                     (let ((__tmp266250
                                                            (lambda ()
                                                              (let ((__tmp266251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx265154%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp266251))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp266252
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx265154%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp266252))
                          '#!void)
                      (gxc#collect-bindings _%ctx265154%_)
                      (gxc#compile-runtime-code _%ctx265154%_)
                      (gxc#compile-meta-code _%ctx265154%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx265154%_)
                          '#!void)))
                   (__tmp266249
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
                __tmp266250
                gxc#current-compile-runtime-names
                __tmp266249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp266247
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp266248
                                               gxc#current-compile-runtime-sections
                                               __tmp266247))))
                                         (__tmp266245
                                          (let ((__obj266143
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj266143))
                                            __obj266143)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp266246
                                      gxc#current-compile-symbol-table
                                      __tmp266245)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp266244
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp266243
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp266242
           gx#current-expander-context
           _%ctx265154%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx265152%_)
        (let ((__tmp266253
               (##structure-ref _%ctx265152%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp266253))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx265097%_)
        (letrec ((_%compile1265099%_
                  (lambda (_%ctx265141%_)
                    (let* ((_%code265143%_
                            (##structure-ref
                             _%ctx265141%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm265147%_
                            (let ((_%idstr265145%_
                                   (let ((__tmp266254
                                          (##structure-ref
                                           _%ctx265141%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp266254))))
                              (declare (not safe))
                              (##string-append _%idstr265145%_ '"~0")))
                           (_%rtc?265149%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code265143%_))))
                      (if _%rtc?265149%_
                          (let ((__tmp266255
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp266255
                             _%ctx265141%_
                             _%rtm265147%_))
                          '#!void)
                      (_%generate-runtime-code265101%_
                       _%ctx265141%_
                       _%code265143%_
                       (if _%rtc?265149%_ _%rtm265147%_ '#f)))))
                 (_%context-timestamp265100%_
                  (lambda (_%ctx265139%_)
                    (let ((__tmp266256
                           (let ((__tmp266257
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx265139%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp266257 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp266256))))
                 (_%generate-runtime-code265101%_
                  (lambda (_%ctx265108%_ _%code265109%_ _%rtm265110%_)
                    (let* ((_%runtime-code?265112%_ (if _%rtm265110%_ '#t '#f))
                           (_%lifts265114%_ (box '()))
                           (_%runtime-code265120%_
                            (if _%runtime-code?265112%_
                                (let ((__tmp266258
                                       (lambda ()
                                         (let ((__tmp266259
                                                (lambda ()
                                                  (let ((__tmp266260
                                                         (lambda ()
                                                           (let ((__tmp266262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code265109%_))))
                         (__tmp266261
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp266262
                      gxc#current-compile-marks
                      __tmp266261)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp266260
                                                     gxc#current-compile-lift
                                                     _%lifts265114%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp266259
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp266258
                                   gx#current-expander-context
                                   _%ctx265108%_))
                                '#f))
                           (_%runtime-code265122%_
                            (if _%runtime-code?265112%_
                                (if (null? (unbox _%lifts265114%_))
                                    _%runtime-code265120%_
                                    (cons 'begin
                                          (let ((__tmp266264
                                                 (cons _%runtime-code265120%_
                                                       '()))
                                                (__tmp266263
                                                 (reverse (unbox _%lifts265114%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp266264
                                             __tmp266263))))
                                '#f))
                           (_%runtime-code265124%_
                            (if _%runtime-code?265112%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp265100%_
                                                         _%ctx265108%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code265122%_ '())))
                                '#f))
                           (_%loader-code265127%_
                            (let ((__tmp266265
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code265109%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp266265
                               gx#current-expander-context
                               _%ctx265108%_)))
                           (_%loader-code265129%_
                            (cons 'begin
                                  (cons _%loader-code265127%_
                                        (cons (if _%runtime-code?265112%_
                                                  (cons 'load-module
                                                        (cons _%rtm265110%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0265131%_
                            (gxc#compile-output-file _%ctx265108%_ '0 '".scm"))
                           (_%scmrt265133%_
                            (gxc#compile-output-file
                             _%ctx265108%_
                             '#f
                             '".scm"))
                           (_%scms265135%_
                            (gxc#compile-static-output-file _%ctx265108%_)))
                      (if _%runtime-code?265112%_
                          (gxc#compile-scm-file__0
                           _%scm0265131%_
                           _%runtime-code265124%_)
                          '#!void)
                      (let ((__tmp266266
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt265133%_
                                _%loader-code265129%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp266266
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms265135%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms265135%_))
                          '#!void)
                      (if _%runtime-code?265112%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0265131%_ _%scms265135%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms265135%_ void)))))))
          (let* ((_%all-modules265103%_
                  (cons _%ctx265097%_ (gxc#lift-nested-modules _%ctx265097%_)))
                 (__tmp266267
                  (lambda (_%ctx265105%_)
                    (let ((__tmp266268
                           (lambda () (_%compile1265099%_ _%ctx265105%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp266268
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp266267 _%all-modules265103%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx264996%_)
        (letrec ((_%compile-ssi264998%_
                  (lambda (_%code265065%_)
                    (let* ((_%path265067%_
                            (gxc#compile-output-file
                             _%ctx264996%_
                             '#f
                             '".ssi"))
                           (_%prelude265079%_
                            (let* ((_%super265069%_
                                    (##structure-ref
                                     _%ctx264996%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e265071%_
                                    (##structure-ref
                                     _%super265069%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e265071%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e265071%_))
                                  ':<root>)))
                           (_%ns265081%_
                            (##structure-ref
                             _%ctx264996%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr265083%_
                            (symbol->string
                             (##structure-ref
                              _%ctx264996%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg265091%_
                            (let ((_%$e265085%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr265083%_ '#\/))))
                              (if _%$e265085%_
                                  (let ((__tmp266269
                                         (substring
                                          _%idstr265083%_
                                          '0
                                          _%$e265085%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp266269))
                                  '#f)))
                           (_%rt265093%_
                            (let ((__tmp266270
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp266270 _%ctx264996%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path265067%_))
                      (gxc#with-output-to-scheme-file
                       _%path265067%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude265079%_))
                         (if _%pkg265091%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg265091%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns265081%_))
                         (newline)
                         (pretty-print _%code265065%_)
                         (if _%rt265093%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt265093%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi264999%_
                  (lambda (_%part265004%_)
                    (let* ((_%$%part265005265018%_ _%part265004%_)
                           (_%$%E265007265022%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part265005265018%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K265008265034%_
                            (lambda (_%code265025%_
                                     _%n265026%_
                                     _%phi265027%_
                                     _%phi-ctx265028%_)
                              (let ((_%code265032%_
                                     (let ((__tmp266271
                                            (lambda ()
                                              (let ((__tmp266272
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code265025%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp266272
                                                 gx#current-expander-phi
                                                 _%phi265027%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp266271
                                        gx#current-expander-context
                                        _%phi-ctx265028%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx264996%_
                                  _%n265026%_
                                  '".scm")
                                 _%code265032%_
                                 '#t)))))
                      (if (pair? _%$%part265005265018%_)
                          (let ((_%$%hd265009265037%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part265005265018%_)))
                                (_%$%tl265010265039%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part265005265018%_))))
                            (let ((_%phi-ctx265042%_ _%$%hd265009265037%_))
                              (if (pair? _%$%tl265010265039%_)
                                  (let ((_%$%hd265011265044%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl265010265039%_)))
                                        (_%$%tl265012265046%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl265010265039%_))))
                                    (let ((_%phi265049%_ _%$%hd265011265044%_))
                                      (if (pair? _%$%tl265012265046%_)
                                          (let ((_%$%hd265013265051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl265012265046%_)))
                                                (_%$%tl265014265053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl265012265046%_))))
                                            (let ((_%n265056%_
                                                   _%$%hd265013265051%_))
                                              (if (pair? _%$%tl265014265053%_)
                                                  (let ((_%$%hd265015265058%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl265014265053%_)))
                                                        (_%$%tl265016265060%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl265014265053%_))))
                                                    (let ((_%code265063%_
                                                           _%$%hd265015265058%_))
                                                      (if (null? _%$%tl265016265060%_)
                                                          (_%$%K265008265034%_
                                                           _%code265063%_
                                                           _%n265056%_
                                                           _%phi265049%_
                                                           _%phi-ctx265042%_)
                                                          (_%$%E265007265022%_))))
                                                  (_%$%E265007265022%_))))
                                          (_%$%E265007265022%_))))
                                  (_%$%E265007265022%_))))
                          (_%$%E265007265022%_))))))
          (let ((_g266273_ (gxc#generate-meta-code _%ctx264996%_)))
            (begin
              (let ((_g266274_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g266273_)
                           (##values-length _g266273_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g266274_ 2)))
                    (error "Context expects 2 values" _g266274_)))
              (let ((_%ssi-code265001%_
                     (let () (declare (not safe)) (##values-ref _g266273_ 0)))
                    (_%phi-code265002%_
                     (let () (declare (not safe)) (##values-ref _g266273_ 1))))
                (begin
                  (_%compile-ssi264998%_ _%ssi-code265001%_)
                  (for-each _%compile-phi264999%_ _%phi-code265002%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx264978%_)
        (let* ((_%path264980%_
                (gxc#compile-output-file _%ctx264978%_ '#f '".ssxi.ss"))
               (_%code264982%_
                (let ((__tmp266275
                       (##structure-ref
                        _%ctx264978%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp266275)))
               (_%idstr264984%_
                (symbol->string
                 (##structure-ref
                  _%ctx264978%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg264992%_
                (let ((_%$e264986%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr264984%_ '#\/))))
                  (if _%$e264986%_
                      (let ((__tmp266276
                             (substring _%idstr264984%_ '0 _%$e264986%_)))
                        (declare (not safe))
                        (##string->symbol __tmp266276))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path264980%_))
          (gxc#with-output-to-scheme-file
           _%path264980%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg264992%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg264992%_))
                 '#!void)
             (newline)
             (pretty-print _%code264982%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx264971%_)
        (let* ((_%state264973%_
                (let ((__obj266144
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj266144 _%ctx264971%_))
                  __obj266144))
               (_%ssi-code264975%_
                (let ((__tmp266277
                       (##structure-ref
                        _%ctx264971%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state264973%_
                   __tmp266277))))
          (values _%ssi-code264975%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state264973%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx264963%_)
        (let* ((_%lifts264965%_ (box '()))
               (__tmp266278
                (lambda ()
                  (let ((__tmp266280
                         (lambda ()
                           (let ((_%code264969%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx264963%_))))
                             (if (null? (unbox _%lifts264965%_))
                                 _%code264969%_
                                 (cons 'begin
                                       (let ((__tmp266282
                                              (cons _%code264969%_ '()))
                                             (__tmp266281
                                              (reverse (unbox _%lifts264965%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp266282
                                          __tmp266281)))))))
                        (__tmp266279
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp266280
                     gxc#current-compile-marks
                     __tmp266279)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp266278
           gxc#current-compile-lift
           _%lifts264965%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx264959%_)
        (let ((_%modules264961%_ (box '())))
          (let ((__tmp266283
                 (##structure-ref _%ctx264959%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules264961%_ __tmp266283))
          (reverse (unbox _%modules264961%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path264939%_ _%code264940%_ _%phi?264941%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path264939%_))
        (gxc#with-output-to-scheme-file
         _%path264939%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp266284
                                           (if _%phi?264941%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp266284)))))))
           (pretty-print _%code264940%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it264945%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path264939%_ _%phi?264941%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp266285
                         (cons 'compile-file (cons _%path264939%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it264945%_ __tmp266285))
                  (_%compile-it264945%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path264950%_ _%code264951%_)
        (let ((_%phi?264953%_ '#f))
          (gxc#compile-scm-file__%
           _%path264950%_
           _%code264951%_
           _%phi?264953%_))))
    (define gxc#compile-scm-file
      (lambda _g266286_
        (let ((_g266287_ (let () (declare (not safe)) (##length _g266286_))))
          (cond ((let () (declare (not safe)) (##fx= _g266287_ 2))
                 (apply gxc#compile-scm-file__0 _g266286_))
                ((let () (declare (not safe)) (##fx= _g266287_ 3))
                 (apply gxc#compile-scm-file__% _g266286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g266286_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?264840%_)
        (let _%lp264842%_ ((_%rest264844%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts264845%_ '()))
          (let* ((_%$%rest264846264866%_ _%rest264844%_)
                 (_%$%else264850264874%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts264845%_)))
                        (reverse _%opts264845%_)))))
            (let ((_%$%K264860264917%_
                   (lambda (_%rest264915%_)
                     (_%lp264842%_ _%rest264915%_ _%opts264845%_)))
                  (_%$%K264855264899%_
                   (lambda (_%rest264897%_)
                     (_%lp264842%_ _%rest264897%_ _%opts264845%_)))
                  (_%$%K264852264881%_
                   (lambda (_%rest264878%_ _%opt264879%_)
                     (_%lp264842%_
                      _%rest264878%_
                      (cons _%opt264879%_ _%opts264845%_)))))
              (if (pair? _%$%rest264846264866%_)
                  (let ((_%$%tl264862264922%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest264846264866%_)))
                        (_%$%hd264861264920%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest264846264866%_))))
                    (if (equal? _%$%hd264861264920%_ '"-cc-options")
                        (if (pair? _%$%tl264862264922%_)
                            (let* ((_%$%tl264864264925%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl264862264922%_)))
                                   (_%rest264928%_ _%$%tl264864264925%_))
                              (_%$%K264860264917%_ _%rest264928%_))
                            (let ((_%opt264889%_ _%$%hd264861264920%_)
                                  (_%rest264891%_ _%$%tl264862264922%_))
                              (_%$%K264852264881%_
                               _%rest264891%_
                               _%opt264889%_)))
                        (if (equal? _%$%hd264861264920%_ '"-ld-options")
                            (if (pair? _%$%tl264862264922%_)
                                (let* ((_%$%tl264859264907%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl264862264922%_)))
                                       (_%rest264910%_ _%$%tl264859264907%_))
                                  (_%$%K264855264899%_ _%rest264910%_))
                                (let ((_%opt264889%_ _%$%hd264861264920%_)
                                      (_%rest264891%_ _%$%tl264862264922%_))
                                  (_%$%K264852264881%_
                                   _%rest264891%_
                                   _%opt264889%_)))
                            (let ((_%opt264889%_ _%$%hd264861264920%_)
                                  (_%rest264891%_ _%$%tl264862264922%_))
                              (_%$%K264852264881%_
                               _%rest264891%_
                               _%opt264889%_)))))
                  (_%$%else264850264874%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?264934%_ '#f)) (gxc#gsc-link-options__% _%phi?264934%_))))
    (define gxc#gsc-link-options
      (lambda _g266288_
        (let ((_g266289_ (let () (declare (not safe)) (##length _g266288_))))
          (cond ((let () (declare (not safe)) (##fx= _g266289_ 0))
                 (apply gxc#gsc-link-options__0 _g266288_))
                ((let () (declare (not safe)) (##fx= _g266289_ 1))
                 (apply gxc#gsc-link-options__% _g266288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g266288_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords264690%_ _%$%static?264686264691%_ _%phi?264692%_)
        (let ((_%static?264694%_
               (if (eq? _%$%static?264686264691%_ absent-value)
                   '#f
                   _%$%static?264686264691%_)))
          (if _%phi?264692%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp264696%_ ((_%rest264698%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts264699%_ '()))
                (let* ((_%$%rest264700264726%_ _%rest264698%_)
                       (_%$%else264705264734%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts264699%_)))
                              (reverse! _%opts264699%_)))))
                  (let ((_%$%K264720264797%_
                         (lambda (_%rest264794%_ _%opt264795%_)
                           (if _%static?264694%_
                               (_%lp264696%_
                                _%rest264794%_
                                (cons _%opt264795%_
                                      (cons '"-cc-options" _%opts264699%_)))
                               (_%lp264696%_ _%rest264794%_ _%opts264699%_))))
                        (_%$%K264715264774%_
                         (lambda (_%rest264771%_ _%opt264772%_)
                           (_%lp264696%_
                            _%rest264771%_
                            (cons _%opt264772%_
                                  (cons '"-cc-options" _%opts264699%_)))))
                        (_%$%K264710264754%_
                         (lambda (_%rest264752%_)
                           (_%lp264696%_ _%rest264752%_ _%opts264699%_)))
                        (_%$%K264707264740%_
                         (lambda (_%rest264738%_)
                           (_%lp264696%_ _%rest264738%_ _%opts264699%_))))
                    (if (pair? _%$%rest264700264726%_)
                        (let ((_%$%tl264722264802%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest264700264726%_)))
                              (_%$%hd264721264800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest264700264726%_))))
                          (if (equal? _%$%hd264721264800%_ '"-cc-options")
                              (if (pair? _%$%tl264722264802%_)
                                  (let ((_%$%tl264724264807%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl264722264802%_)))
                                        (_%$%hd264723264805%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl264722264802%_))))
                                    (if (equal? _%$%hd264723264805%_
                                                '"-Bstatic")
                                        (let ((_%opt264810%_
                                               _%$%hd264723264805%_)
                                              (_%rest264812%_
                                               _%$%tl264724264807%_))
                                          (_%$%K264720264797%_
                                           _%rest264812%_
                                           _%opt264810%_))
                                        (let ((_%opt264787%_
                                               _%$%hd264723264805%_)
                                              (_%rest264789%_
                                               _%$%tl264724264807%_))
                                          (_%$%K264715264774%_
                                           _%rest264789%_
                                           _%opt264787%_))))
                                  (let ((_%rest264746%_ _%$%tl264722264802%_))
                                    (_%$%K264707264740%_ _%rest264746%_)))
                              (if (equal? _%$%hd264721264800%_ '"-ld-options")
                                  (if (pair? _%$%tl264722264802%_)
                                      (let* ((_%$%tl264714264762%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl264722264802%_)))
                                             (_%rest264765%_
                                              _%$%tl264714264762%_))
                                        (_%$%K264710264754%_ _%rest264765%_))
                                      (let ((_%rest264746%_
                                             _%$%tl264722264802%_))
                                        (_%$%K264707264740%_ _%rest264746%_)))
                                  (let ((_%rest264746%_ _%$%tl264722264802%_))
                                    (_%$%K264707264740%_ _%rest264746%_)))))
                        (_%$%else264705264734%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords264817%_ _%$%static?264686264818%_)
        (let ((_%phi?264820%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords264817%_
           _%$%static?264686264818%_
           _%phi?264820%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g266290_
        (let ((_g266291_ (let () (declare (not safe)) (##length _g266290_))))
          (cond ((let () (declare (not safe)) (##fx= _g266291_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g266290_))
                ((let () (declare (not safe)) (##fx= _g266291_ 3))
                 (apply gxc#gsc-cc-options__%__% _g266290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g266290_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords264829%_ . _%args264830%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords264829%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords264829%_
                  'static:
                  absent-value))
               _%args264830%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args264687264836%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args264687264836%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords264536%_ _%$%static?264532264537%_ _%phi?264538%_)
        (let ((_%static?264540%_
               (if (eq? _%$%static?264532264537%_ absent-value)
                   '#f
                   _%$%static?264532264537%_)))
          (if _%phi?264538%_
              '()
              (let _%lp264542%_ ((_%rest264544%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts264545%_ '()))
                (let* ((_%$%rest264546264572%_ _%rest264544%_)
                       (_%$%else264551264580%_
                        (lambda () (reverse! _%opts264545%_))))
                  (let ((_%$%K264566264643%_
                         (lambda (_%rest264640%_ _%opt264641%_)
                           (if _%static?264540%_
                               (_%lp264542%_
                                _%rest264640%_
                                (cons _%opt264641%_
                                      (cons '"-ld-options" _%opts264545%_)))
                               (_%lp264542%_ _%rest264640%_ _%opts264545%_))))
                        (_%$%K264561264620%_
                         (lambda (_%rest264617%_ _%opt264618%_)
                           (_%lp264542%_
                            _%rest264617%_
                            (cons _%opt264618%_
                                  (cons '"-ld-options" _%opts264545%_)))))
                        (_%$%K264556264600%_
                         (lambda (_%rest264598%_)
                           (_%lp264542%_ _%rest264598%_ _%opts264545%_)))
                        (_%$%K264553264586%_
                         (lambda (_%rest264584%_)
                           (_%lp264542%_ _%rest264584%_ _%opts264545%_))))
                    (if (pair? _%$%rest264546264572%_)
                        (let ((_%$%tl264568264648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest264546264572%_)))
                              (_%$%hd264567264646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest264546264572%_))))
                          (if (equal? _%$%hd264567264646%_ '"-ld-options")
                              (if (pair? _%$%tl264568264648%_)
                                  (let ((_%$%tl264570264653%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl264568264648%_)))
                                        (_%$%hd264569264651%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl264568264648%_))))
                                    (if (equal? _%$%hd264569264651%_
                                                '"-static")
                                        (let ((_%opt264656%_
                                               _%$%hd264569264651%_)
                                              (_%rest264658%_
                                               _%$%tl264570264653%_))
                                          (_%$%K264566264643%_
                                           _%rest264658%_
                                           _%opt264656%_))
                                        (let ((_%opt264633%_
                                               _%$%hd264569264651%_)
                                              (_%rest264635%_
                                               _%$%tl264570264653%_))
                                          (_%$%K264561264620%_
                                           _%rest264635%_
                                           _%opt264633%_))))
                                  (let ((_%rest264592%_ _%$%tl264568264648%_))
                                    (_%$%K264553264586%_ _%rest264592%_)))
                              (if (equal? _%$%hd264567264646%_ '"-cc-options")
                                  (if (pair? _%$%tl264568264648%_)
                                      (let* ((_%$%tl264560264608%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl264568264648%_)))
                                             (_%rest264611%_
                                              _%$%tl264560264608%_))
                                        (_%$%K264556264600%_ _%rest264611%_))
                                      (let ((_%rest264592%_
                                             _%$%tl264568264648%_))
                                        (_%$%K264553264586%_ _%rest264592%_)))
                                  (let ((_%rest264592%_ _%$%tl264568264648%_))
                                    (_%$%K264553264586%_ _%rest264592%_)))))
                        (_%$%else264551264580%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords264663%_ _%$%static?264532264664%_)
        (let ((_%phi?264666%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords264663%_
           _%$%static?264532264664%_
           _%phi?264666%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g266292_
        (let ((_g266293_ (let () (declare (not safe)) (##length _g266292_))))
          (cond ((let () (declare (not safe)) (##fx= _g266293_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g266292_))
                ((let () (declare (not safe)) (##fx= _g266293_ 3))
                 (apply gxc#gsc-ld-options__%__% _g266292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g266292_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords264675%_ . _%args264676%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords264675%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords264675%_
                  'static:
                  absent-value))
               _%args264676%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args264533264682%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args264533264682%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir264527%_)
        (let ((_%user-staticdir264529%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir264527%_
                       '" -I "
                       _%user-staticdir264529%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp264439%_ ((_%rest264441%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts264442%_ '()))
          (let* ((_%$%rest264443264463%_ _%rest264441%_)
                 (_%$%else264447264471%_ (lambda () _%opts264442%_)))
            (let ((_%$%K264457264514%_
                   (lambda (_%rest264512%_)
                     (_%lp264439%_ _%rest264512%_ _%opts264442%_)))
                  (_%$%K264452264492%_
                   (lambda (_%rest264489%_ _%opt264490%_)
                     (_%lp264439%_
                      _%rest264489%_
                      (let ((__tmp266294
                             (let ((__tmp266295
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt264490%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp266295))))
                        (declare (not safe))
                        (##append _%opts264442%_ __tmp266294)))))
                  (_%$%K264449264477%_
                   (lambda (_%rest264475%_)
                     (_%lp264439%_ _%rest264475%_ _%opts264442%_))))
              (if (pair? _%$%rest264443264463%_)
                  (let ((_%$%tl264459264519%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest264443264463%_)))
                        (_%$%hd264458264517%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest264443264463%_))))
                    (if (equal? _%$%hd264458264517%_ '"-cc-options")
                        (if (pair? _%$%tl264459264519%_)
                            (let* ((_%$%tl264461264522%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl264459264519%_)))
                                   (_%rest264525%_ _%$%tl264461264522%_))
                              (_%$%K264457264514%_ _%rest264525%_))
                            (let ((_%rest264483%_ _%$%tl264459264519%_))
                              (_%$%K264449264477%_ _%rest264483%_)))
                        (if (equal? _%$%hd264458264517%_ '"-ld-options")
                            (if (pair? _%$%tl264459264519%_)
                                (let ((_%$%tl264456264502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl264459264519%_)))
                                      (_%$%hd264455264500%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl264459264519%_))))
                                  (let ((_%opt264505%_ _%$%hd264455264500%_)
                                        (_%rest264507%_ _%$%tl264456264502%_))
                                    (_%$%K264452264492%_
                                     _%rest264507%_
                                     _%opt264505%_)))
                                (let ((_%rest264483%_ _%$%tl264459264519%_))
                                  (_%$%K264449264477%_ _%rest264483%_)))
                            (let ((_%rest264483%_ _%$%tl264459264519%_))
                              (_%$%K264449264477%_ _%rest264483%_)))))
                  (_%$%else264447264471%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str264436%_)
        (not (let () (declare (not safe)) (string-empty? _%str264436%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path264429%_ _%phi?264430%_)
        (let ((_%gsc-link-opts264432%_
               (gxc#gsc-link-options__% _%phi?264430%_))
              (_%gsc-cc-opts264433%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?264430%_))
              (_%gsc-ld-opts264434%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?264430%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp266296
                  (let ((__tmp266297
                         (let ((__tmp266298 (cons _%path264429%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp266298
                            _%gsc-link-opts264432%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp266297 _%gsc-ld-opts264434%_))))
             (declare (not safe))
             (foldr__0 cons __tmp266296 _%gsc-cc-opts264433%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx264395%_ _%n264396%_ _%ext264397%_)
        (letrec ((_%module-relative-path264399%_
                  (lambda (_%ctx264427%_)
                    (path-strip-directory
                     (let ((__tmp266299
                            (##structure-ref
                             _%ctx264427%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp266299)))))
                 (_%module-source-directory264400%_
                  (lambda (_%ctx264423%_)
                    (path-directory
                     (let ((_%mpath264425%_
                            (##structure-ref
                             _%ctx264423%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath264425%_)
                           _%mpath264425%_
                           (last _%mpath264425%_))))))
                 (_%section-string264401%_
                  (lambda (_%n264417%_)
                    (if (number? _%n264417%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n264417%_))
                        (if (symbol? _%n264417%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n264417%_))
                            (if (string? _%n264417%_)
                                _%n264417%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n264417%_)))))))
                 (_%file-name264402%_
                  (lambda (_%path264415%_)
                    (if _%n264396%_
                        (string-append
                         _%path264415%_
                         '"~"
                         (_%section-string264401%_ _%n264396%_)
                         _%ext264397%_)
                        (string-append _%path264415%_ _%ext264397%_))))
                 (_%file-path264403%_
                  (lambda ()
                    (let ((_%$e264409%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e264409%_
                          (path-expand
                           (_%file-name264402%_
                            (let ((__tmp266300
                                   (##structure-ref
                                    _%ctx264395%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp266300)))
                           _%$e264409%_)
                          (path-expand
                           (_%file-name264402%_
                            (_%module-relative-path264399%_ _%ctx264395%_))
                           (_%module-source-directory264400%_
                            _%ctx264395%_)))))))
          (let ((_%path264405%_ (_%file-path264403%_)))
            (let ((__tmp266301
                   (lambda ()
                     (let ((__tmp266302 (path-directory _%path264405%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp266302)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp266301))
            _%path264405%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx264376%_)
        (letrec ((_%file-name264378%_
                  (lambda (_%id264393%_)
                    (let ((__tmp266303 (gxc#static-module-name _%id264393%_)))
                      (declare (not safe))
                      (##string-append __tmp266303 '".scm"))))
                 (_%file-path264379%_
                  (lambda ()
                    (let* ((_%file264385%_
                            (_%file-name264378%_
                             (##structure-ref
                              _%ctx264376%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e264387%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e264387%_
                          (path-expand
                           _%file264385%_
                           (path-expand '"static" _%$e264387%_))
                          (path-expand _%file264385%_ '"static"))))))
          (let ((_%path264381%_ (_%file-path264379%_)))
            (let ((__tmp266304
                   (lambda ()
                     (let ((__tmp266305 (path-directory _%path264381%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp266305)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp266304))
            _%path264381%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx264369%_ _%opts264370%_)
        (let ((_%$e264372%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts264370%_))))
          (if _%$e264372%_
              _%$e264372%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx264369%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr264359%_)
        (if (string? _%idstr264359%_)
            (let* ((_%str264362%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr264359%_)))
                   (_%strs264364%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str264362%_ '#\/))))
              (declare (not safe))
              (string-join _%strs264364%_ '"__"))
            (if (symbol? _%idstr264359%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr264359%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr264359%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp266306
               (let ((__tmp266307 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp266307 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp266306))))
    (define gxc#invoke__%
      (lambda (_%@@keywords264325%_
               _%$%stdout-redirection264321264326%_
               _%$%stderr-redirection264322264327%_
               _%program264328%_
               _%args264329%_)
        (let* ((_%stdout-redirection264331%_
                (if (eq? _%$%stdout-redirection264321264326%_ absent-value)
                    '#f
                    _%$%stdout-redirection264321264326%_))
               (_%stderr-redirection264333%_
                (if (eq? _%$%stderr-redirection264322264327%_ absent-value)
                    '#f
                    _%$%stderr-redirection264322264327%_)))
          (let ((__tmp266308 (cons _%program264328%_ _%args264329%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp266308))
          (let* ((_%proc264335%_
                  (open-process
                   (cons 'path:
                         (cons _%program264328%_
                               (cons 'arguments:
                                     (cons _%args264329%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection264331%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection264333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output264340%_
                  (if (or _%stdout-redirection264331%_
                          _%stderr-redirection264333%_)
                      (read-line _%proc264335%_ '#f)
                      '#f))
                 (_%status264343%_ (process-status _%proc264335%_)))
            (let () (declare (not safe)) (##close-port _%proc264335%_))
            (if (zero? _%status264343%_)
                '#!void
                (begin
                  (display _%output264340%_)
                  (let ((__tmp266309 (cons _%program264328%_ _%args264329%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp266309
                     _%status264343%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords264348%_ . _%args264349%_)
        (apply gxc#invoke__%
               _%@@keywords264348%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords264348%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords264348%_
                  'stderr-redirection:
                  absent-value))
               _%args264349%_)))
    (define gxc#invoke
      (lambda _%$%args264323264355%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args264323264355%_)))))
