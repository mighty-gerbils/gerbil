(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1771101418)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp260206 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp260206))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp260207 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp260207))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path260063%_ _%fun260064%_)
        (with-output-to-file
         (cons 'path: (cons _%path260063%_ gxc#scheme-file-settings))
         _%fun260064%_)))
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
      (lambda (_%gerbil-libdir260058%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir260058%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path260056%_)
        (let ((__tmp260208 (object->string _%path260056%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp260208 '")"))))
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
      (lambda (_%dir260054%_) (delete-file-or-directory _%dir260054%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath259997%_ _%opts259998%_)
        (if (string? _%srcpath259997%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath259997%_)))
        (let* ((_%outdir260000%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts259998%_)))
               (_%invoke-gsc?260002%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts259998%_)))
               (_%target260007%_
                (let ((_%$e260004%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts259998%_))))
                  (if _%$e260004%_ _%$e260004%_ 'C)))
               (_%gsc-options260012%_
                (append (cons '"-target"
                              (cons (symbol->string _%target260007%_) '()))
                        (let ((_%$e260009%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts259998%_))))
                          (if _%$e260009%_ _%$e260009%_ '()))))
               (_%keep-scm?260014%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts259998%_)))
               (_%verbosity260016%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts259998%_)))
               (_%optimize260018%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts259998%_)))
               (_%debug260020%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts259998%_)))
               (_%gen-ssxi260022%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts259998%_)))
               (_%parallel?260024%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts259998%_))))
          (if _%outdir260000%_
              (let ((__tmp260209
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir260000%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260209))
              '#!void)
          (if _%optimize260018%_
              (let ((__tmp260210
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260210))
              '#!void)
          (let ((__tmp260211
                 (lambda ()
                   (let ((__tmp260212
                          (lambda ()
                            (let ((__tmp260213
                                   (lambda ()
                                     (let ((__tmp260214
                                            (lambda ()
                                              (let ((__tmp260215
                                                     (lambda ()
                                                       (let ((__tmp260216
                                                              (lambda ()
                                                                (let ((__tmp260217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp260218
                                        (lambda ()
                                          (let ((__tmp260219
                                                 (lambda ()
                                                   (let ((__tmp260221
                                                          (lambda ()
                                                            (let ((__tmp260223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp260225
                                    (lambda ()
                                      (let ((__tmp260226
                                             (lambda ()
                                               (let ((__tmp260227
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath259997%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp260228
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath259997%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp260228))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp260227
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp260226
                                         gxc#current-compile-parallel
                                         _%parallel?260024%_))))
                                   (__tmp260224
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp260225
                                gxc#current-compile-identifiers
                                __tmp260224))))
                          (__tmp260222
                           (cons (cons 'compile-module
                                       (cons _%srcpath259997%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260223
                       gxc#current-compile-context
                       __tmp260222))))
                 (__tmp260220 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp260221
                                                      gxc#current-compile-timestamp
                                                      __tmp260220)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp260219
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi260022%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp260218
                                    gxc#current-compile-debug
                                    _%debug260020%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp260217
                           gxc#current-compile-optimize
                           _%optimize260018%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp260216
                  gxc#current-compile-verbose
                  _%verbosity260016%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260215
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?260014%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260214
                                        gxc#current-compile-gsc-options
                                        _%gsc-options260012%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260213
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?260002%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260212
                      gx#current-compilation-target
                      _%target260007%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp260211
             gxc#current-compile-output-dir
             _%outdir260000%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath260047%_)
        (let ((_%opts260049%_ '()))
          (gxc#compile-module__% _%srcpath260047%_ _%opts260049%_))))
    (define gxc#compile-module
      (lambda _g260229_
        (let ((_g260230_ (let () (declare (not safe)) (##length _g260229_))))
          (cond ((let () (declare (not safe)) (##fx= _g260230_ 1))
                 (apply gxc#compile-module__0 _g260229_))
                ((let () (declare (not safe)) (##fx= _g260230_ 2))
                 (apply gxc#compile-module__% _g260229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g260229_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath259946%_ _%opts259947%_)
        (if (string? _%srcpath259946%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath259946%_)))
        (let* ((_%outdir259949%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts259947%_)))
               (_%invoke-gsc?259951%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts259947%_)))
               (_%target259956%_
                (let ((_%$e259953%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts259947%_))))
                  (if _%$e259953%_ _%$e259953%_ 'C)))
               (_%gsc-options259961%_
                (append (cons '"-target"
                              (cons (symbol->string _%target259956%_) '()))
                        (let ((_%$e259958%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts259947%_))))
                          (if _%$e259958%_ _%$e259958%_ '()))))
               (_%keep-scm?259963%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts259947%_)))
               (_%verbosity259965%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts259947%_)))
               (_%debug259967%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts259947%_)))
               (_%parallel?259969%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts259947%_))))
          (if _%outdir259949%_
              (let ((__tmp260231
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir259949%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260231))
              '#!void)
          (let ((__tmp260232
                 (lambda ()
                   (let ((__tmp260233
                          (lambda ()
                            (let ((__tmp260234
                                   (lambda ()
                                     (let ((__tmp260235
                                            (lambda ()
                                              (let ((__tmp260236
                                                     (lambda ()
                                                       (let ((__tmp260237
                                                              (lambda ()
                                                                (let ((__tmp260238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp260240
                                        (lambda ()
                                          (let ((__tmp260242
                                                 (lambda ()
                                                   (let ((__tmp260244
                                                          (lambda ()
                                                            (let ((__tmp260245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp260246
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath259946%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp260247
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath259946%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp260247))
                                       _%opts259947%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp260246
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260245
                       gxc#current-compile-parallel
                       _%parallel?259969%_))))
                 (__tmp260243
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp260244
                                                      gxc#current-compile-identifiers
                                                      __tmp260243))))
                                                (__tmp260241
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath259946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp260242
                                             gxc#current-compile-context
                                             __tmp260241))))
                                       (__tmp260239 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp260240
                                    gxc#current-compile-timestamp
                                    __tmp260239)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp260238
                           gxc#current-compile-debug
                           _%debug259967%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp260237
                  gxc#current-compile-verbose
                  _%verbosity259965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260236
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?259963%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260235
                                        gxc#current-compile-gsc-options
                                        _%gsc-options259961%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260234
                               gx#current-compilation-target
                               _%target259956%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260233
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?259951%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp260232
             gxc#current-compile-output-dir
             _%outdir259949%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath259989%_)
        (let ((_%opts259991%_ '()))
          (gxc#compile-exe__% _%srcpath259989%_ _%opts259991%_))))
    (define gxc#compile-exe
      (lambda _g260248_
        (let ((_g260249_ (let () (declare (not safe)) (##length _g260248_))))
          (cond ((let () (declare (not safe)) (##fx= _g260249_ 1))
                 (apply gxc#compile-exe__0 _g260248_))
                ((let () (declare (not safe)) (##fx= _g260249_ 2))
                 (apply gxc#compile-exe__% _g260248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g260248_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx259942%_ _%opts259943%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts259943%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx259942%_
             _%opts259943%_)
            (gxc#compile-executable-module/separate
             _%ctx259942%_
             _%opts259943%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx259668%_ _%opts259669%_)
        (letrec ((_%generate-stub259671%_
                  (lambda (_%builtin-modules259938%_)
                    (let ((_%mod-main259940%_
                           (gxc#find-runtime-symbol _%ctx259668%_ 'main)))
                      (let ((__tmp260250
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules259938%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp260250))
                      (let ((__tmp260251
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main259940%_
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
                        (##write __tmp260251))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts259672%_
                  (lambda (_%gerbil-libdir259936%_)
                    (let ((__tmp260252
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir259936%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp260252 read))))
                 (_%replace-extension259673%_
                  (lambda (_%path259933%_ _%ext259934%_)
                    (string-append
                     (path-strip-extension _%path259933%_)
                     _%ext259934%_)))
                 (_%replace-extension-with-c259674%_
                  (lambda (_%path259931%_)
                    (_%replace-extension259673%_ _%path259931%_ '".c")))
                 (_%replace-extension-with-object259675%_
                  (lambda (_%path259929%_)
                    (_%replace-extension259673%_
                     _%path259929%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?259676%_
                  (lambda (_%ctx259927%_)
                    (if (_%exclude-module?259678%_ _%ctx259927%_)
                        '#f
                        (not (_%libgerbil-module?259677%_ _%ctx259927%_)))))
                 (_%libgerbil-module?259677%_
                  (lambda (_%ctx259920%_)
                    (let ((_%id-str259922%_
                           (symbol->string
                            (##structure-ref
                             _%ctx259920%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?259678%_ _%id-str259922%_)
                          '#f
                          (let ((_%$e259924%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str259922%_))))
                            (if _%$e259924%_
                                _%$e259924%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str259922%_))))))))
                 (_%exclude-module?259678%_
                  (lambda (_%ctx-or-str259916%_)
                    (let ((_%str259918%_
                           (if (string? _%ctx-or-str259916%_)
                               _%ctx-or-str259916%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str259916%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str259918%_))))
                 (_%not-file-empty?259679%_
                  (lambda (_%path259914%_)
                    (not (gxc#file-empty? _%path259914%_))))
                 (_%fold-libgerbil-runtime-scm259680%_
                  (lambda (_%gerbil-staticdir259907%_ _%libgerbil-scm259908%_)
                    (let ((_%gerbil-runtime-scm259912%_
                           (let ((__tmp260253
                                  (lambda (_%rtm259910%_)
                                    (path-expand
                                     (let ((__tmp260254
                                            (let ((__tmp260255
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm259910%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp260255
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp260254 '".scm"))
                                     _%gerbil-staticdir259907%_))))
                             (declare (not safe))
                             (##map __tmp260253 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates259681%_
                       (append _%gerbil-runtime-scm259912%_
                               _%libgerbil-scm259908%_)))))
                 (_%remove-duplicates259681%_
                  (lambda (_%strlst259867%_)
                    (let _%loop259869%_ ((_%rest259871%_ _%strlst259867%_)
                                         (_%result259872%_ '()))
                      (let* ((_%rest259873259881%_ _%rest259871%_)
                             (_%else259875259889%_
                              (lambda () (reverse! _%result259872%_)))
                             (_%K259877259895%_
                              (lambda (_%rest259892%_ _%path259893%_)
                                (if (member _%path259893%_ _%result259872%_)
                                    (_%loop259869%_
                                     _%rest259892%_
                                     _%result259872%_)
                                    (_%loop259869%_
                                     _%rest259892%_
                                     (cons _%path259893%_
                                           _%result259872%_))))))
                        (if (pair? _%rest259873259881%_)
                            (let ((_%hd259878259898%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest259873259881%_)))
                                  (_%tl259879259900%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest259873259881%_))))
                              (let* ((_%path259903%_ _%hd259878259898%_)
                                     (_%rest259905%_ _%tl259879259900%_))
                                (_%K259877259895%_
                                 _%rest259905%_
                                 _%path259903%_)))
                            (_%else259875259889%_))))))
                 (_%compile-stub259682%_
                  (lambda (_%output-scm259689%_ _%output-bin259690%_)
                    (let* ((_%gerbil-home259692%_
                            (let ((__tmp260256
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp260256)))
                           (_%gerbil-libdir259694%_
                            (path-expand '"lib" _%gerbil-home259692%_))
                           (_%gerbil-staticdir259696%_
                            (path-expand '"static" _%gerbil-libdir259694%_))
                           (_%deps259698%_
                            (gxc#find-runtime-module-deps _%ctx259668%_))
                           (_%libgerbil-deps259700%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?259677%_
                               _%deps259698%_)))
                           (_%libgerbil-scm259702%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps259700%_)))
                           (_%libgerbil-scm259704%_
                            (_%fold-libgerbil-runtime-scm259680%_
                             _%gerbil-staticdir259696%_
                             _%libgerbil-scm259702%_))
                           (_%libgerbil-c259706%_
                            (map _%replace-extension-with-c259674%_
                                 _%libgerbil-scm259704%_))
                           (_%libgerbil-o259708%_
                            (map _%replace-extension-with-object259675%_
                                 _%libgerbil-scm259704%_))
                           (_%src-deps259710%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?259676%_
                               _%deps259698%_)))
                           (_%src-deps-scm259712%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps259710%_)))
                           (_%src-deps-scm259714%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?259679%_
                               _%src-deps-scm259712%_)))
                           (_%src-deps-scm259716%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm259714%_)))
                           (_%src-deps-c259718%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c259674%_
                                     _%src-deps-scm259716%_)))
                           (_%src-deps-o259720%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object259675%_
                                     _%src-deps-scm259716%_)))
                           (_%src-bin-scm259722%_
                            (gxc#find-static-module-file _%ctx259668%_))
                           (_%src-bin-scm259724%_
                            (path-expand _%src-bin-scm259722%_))
                           (_%src-bin-c259726%_
                            (_%replace-extension-with-c259674%_
                             _%src-bin-scm259724%_))
                           (_%src-bin-o259728%_
                            (_%replace-extension-with-object259675%_
                             _%src-bin-scm259724%_))
                           (_%output-bin259730%_
                            (path-expand _%output-bin259690%_))
                           (_%output-scm259732%_
                            (path-expand _%output-scm259689%_))
                           (_%output-c259734%_
                            (_%replace-extension-with-c259674%_
                             _%output-scm259732%_))
                           (_%output-o259736%_
                            (_%replace-extension-with-object259675%_
                             _%output-scm259732%_))
                           (_%output_-c259738%_
                            (_%replace-extension259673%_
                             _%output-scm259732%_
                             '"_.c"))
                           (_%output_-o259740%_
                            (_%replace-extension259673%_
                             _%output-scm259732%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts259742%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts259744%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts259746%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir259696%_))
                           (_%output-ld-opts259748%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts259750%_
                            (_%get-libgerbil-ld-opts259672%_
                             _%gerbil-libdir259694%_))
                           (_%rpath259752%_
                            (gxc#gerbil-rpath _%gerbil-libdir259694%_))
                           (_%builtin-modules259756%_
                            (_%remove-duplicates259681%_
                             (let ((__tmp260257
                                    (let ((__tmp260259
                                           (lambda (_%mod259754%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod259754%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp260258
                                           (cons _%ctx259668%_
                                                 _%deps259698%_)))
                                      (declare (not safe))
                                      (##map __tmp260259 __tmp260258))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp260257)))))
                      (letrec ((_%compile-obj259759%_
                                (lambda (_%scm-path259766%_ _%c-path259767%_)
                                  (let* ((_%o-path259769%_
                                          (_%replace-extension259673%_
                                           _%c-path259767%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock259771%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path259769%_
                                             '".lock")))
                                         (_%locked259773%_ '#f)
                                         (_%unlock259776%_
                                          (lambda ()
                                            (close-port _%locked259773%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock259771%_)))))
                                    (let _%retry259779%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock259771%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry259779%_))
                                          (begin
                                            (set! _%locked259773%_
                                                  (let* ((_%handler259782%_
                                                          false)
                                                         (_%thunk259786%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock259771%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler259791%_ _%handler259782%_)
                 (_%thunk259847%_ _%thunk259786%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler259791%_
                                                     _%thunk259847%_)))
                                            (if _%locked259773%_
                                                '#!void
                                                (_%retry259779%_)))))
                                    (let ((__tmp260261
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path259769%_)))
                                                     (not _%scm-path259766%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path259766%_
                                                        _%o-path259769%_)))
                                                 (let ((_%gsc-cc-opts259864%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp260262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp260263 (cons _%c-path259767%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp260263
                            _%gsc-static-opts259746%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260262 _%gsc-cc-opts259864%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp260260
                                           (lambda () (_%unlock259776%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp260261
                                       __tmp260260))))))
                        (let ((__tmp260264
                               (lambda ()
                                 (let ((__tmp260265
                                        (path-directory _%output-bin259730%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp260265)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp260264))
                        (gxc#with-output-to-scheme-file
                         _%output-scm259732%_
                         (lambda ()
                           (_%generate-stub259671%_
                            _%builtin-modules259756%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it259764%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp260266
                                                   (let ((__tmp260267
                                                          (let ((__tmp260268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm259724%_
                               (cons _%output-scm259732%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260268 _%src-deps-scm259716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp260267
                                                      _%libgerbil-c259706%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp260266
                                               _%gsc-link-opts259742%_))))
                                     (for-each
                                      _%compile-obj259759%_
                                      (let ((__tmp260269
                                             (cons _%src-bin-scm259724%_
                                                   (cons _%output-scm259732%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp260269
                                         _%src-deps-scm259716%_))
                                      (let ((__tmp260270
                                             (cons _%src-bin-c259726%_
                                                   (cons _%output-c259734%_
                                                         (cons _%output_-c259738%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp260270
                                         _%src-deps-c259718%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin259730%_
                                                        (let ((__tmp260271
                                                               (cons _%src-bin-o259728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o259736%_
                                   (cons _%output_-o259740%_
                                         (let ((__tmp260272
                                                (let ((__tmp260273
                                                       (let ((__tmp260275
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir259694%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts259750%_))))
                     (__tmp260274
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath259752%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp260275 __tmp260274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp260273
                                                   _%output-ld-opts259748%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp260272
                                            _%libgerbil-o259708%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp260271 _%src-deps-o259720%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp260276
                                            (cons _%output-c259734%_
                                                  (cons _%output_-c259738%_
                                                        (cons _%output-o259736%_
                                                              (cons _%output_-o259740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp260276)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it259764%_))
                                  (_%compile-it259764%_)))
                            '#!void))))))
          (let* ((_%output-bin259684%_
                  (gxc#compile-exe-output-file _%ctx259668%_ _%opts259669%_))
                 (_%output-scm259686%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin259684%_ '"__exe.scm"))))
            (_%compile-stub259682%_
             _%output-scm259686%_
             _%output-bin259684%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx259490%_ _%opts259491%_)
        (letrec ((_%reset-declare259493%_
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
                 (_%generate-stub259494%_
                  (lambda (_%deps259659%_)
                    (let ((_%mod-main259661%_
                           (gxc#find-runtime-symbol _%ctx259490%_ 'main))
                          (_%reset-decl259662%_ (_%reset-declare259493%_))
                          (_%user-decl259663%_ (_%user-declare259495%_)))
                      (for-each
                       (lambda (_%dep259665%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl259662%_))
                         (newline)
                         (if _%user-decl259663%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl259663%_))
                               (newline))
                             '#!void)
                         (let ((__tmp260277
                                (cons 'include (cons _%dep259665%_ '()))))
                           (declare (not safe))
                           (##write __tmp260277))
                         (newline))
                       _%deps259659%_)
                      (let ((__tmp260278
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main259661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp260278))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare259495%_
                  (lambda ()
                    (let* ((_%gsc-opts259564%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts259491%_)))
                           (_%gsc-prelude259566%_
                            (if _%gsc-opts259564%_
                                (member '"-prelude" _%gsc-opts259564%_)
                                '#f))
                           (_%gsc-prelude259568%_
                            (if _%gsc-prelude259566%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude259566%_)))
                                '#f)))
                      (let _%lp259571%_ ((_%rest259573%_
                                          (cons _%gsc-prelude259568%_ '()))
                                         (_%user-decls259574%_ '()))
                        (let* ((_%rest259575259583%_ _%rest259573%_)
                               (_%else259577259591%_
                                (lambda ()
                                  (if (null? _%user-decls259574%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls259574%_)))))
                               (_%K259579259647%_
                                (lambda (_%rest259594%_ _%expr259595%_)
                                  (let* ((_%expr259596259608%_ _%expr259595%_)
                                         (_%else259599259616%_
                                          (lambda ()
                                            (_%lp259571%_
                                             _%rest259594%_
                                             _%user-decls259574%_))))
                                    (let ((_%K259604259637%_
                                           (lambda (_%decls259635%_)
                                             (_%lp259571%_
                                              _%rest259594%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls259574%_
                                                 _%decls259635%_)))))
                                          (_%K259601259622%_
                                           (lambda (_%exprs259620%_)
                                             (_%lp259571%_
                                              (append _%exprs259620%_
                                                      _%rest259594%_)
                                              _%user-decls259574%_))))
                                      (if (pair? _%expr259596259608%_)
                                          (let ((_%tl259606259642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr259596259608%_)))
                                                (_%hd259605259640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr259596259608%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd259605259640%_
                                                         'declare))
                                                (let ((_%decls259645%_
                                                       _%tl259606259642%_))
                                                  (_%K259604259637%_
                                                   _%decls259645%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd259605259640%_
                                                             'begin))
                                                    (let ((_%exprs259630%_
                                                           _%tl259606259642%_))
                                                      (_%K259601259622%_
                                                       _%exprs259630%_))
                                                    (_%else259599259616%_))))
                                          (_%else259599259616%_)))))))
                          (if (pair? _%rest259575259583%_)
                              (let ((_%hd259580259650%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest259575259583%_)))
                                    (_%tl259581259652%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest259575259583%_))))
                                (let* ((_%expr259655%_ _%hd259580259650%_)
                                       (_%rest259657%_ _%tl259581259652%_))
                                  (_%K259579259647%_
                                   _%rest259657%_
                                   _%expr259655%_)))
                              (_%else259577259591%_)))))))
                 (_%compile-stub259496%_
                  (lambda (_%output-scm259503%_ _%output-bin259504%_)
                    (let* ((_%gerbil-home259506%_
                            (let ((__tmp260279
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp260279)))
                           (_%gerbil-libdir259508%_
                            (path-expand '"lib" _%gerbil-home259506%_))
                           (_%runtime259510%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp259512%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home259506%_))
                           (_%include-gambit-sharp259514%_
                            (gxc#include-source _%gambit-sharp259512%_))
                           (_%bin-scm259516%_
                            (gxc#find-static-module-file _%ctx259490%_))
                           (_%deps259518%_
                            (gxc#find-runtime-module-deps _%ctx259490%_))
                           (_%deps259520%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps259518%_)))
                           (_%deps259525%_
                            (let ((__tmp260280
                                   (lambda (_%$obj259522%_)
                                     (not (gxc#file-empty? _%$obj259522%_)))))
                              (declare (not safe))
                              (##filter __tmp260280 _%deps259520%_)))
                           (_%deps259529%_
                            (let ((__tmp260281
                                   (lambda (_%f259527%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f259527%_
                                             _%runtime259510%_))))))
                              (declare (not safe))
                              (##filter __tmp260281 _%deps259525%_)))
                           (_%output-base259531%_
                            (let ((__tmp260282
                                   (path-strip-extension
                                    _%output-scm259503%_)))
                              (declare (not safe))
                              (##string-append __tmp260282)))
                           (_%output-c259533%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base259531%_ '".c")))
                           (_%output-o259535%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base259531%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_259537%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base259531%_ '"_.c")))
                           (_%output-o_259539%_
                            (let ((__tmp260283
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base259531%_
                               __tmp260283)))
                           (_%gsc-link-opts259541%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts259543%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts259545%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir259508%_)))
                           (_%output-ld-opts259547%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros259549%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp259514%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp259514%_
                                            '()))))
                           (_%gsc-link-opts259551%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts259541%_
                               _%gsc-gx-macros259549%_)))
                           (_%rpath259553%_
                            (gxc#gerbil-rpath _%gerbil-libdir259508%_))
                           (_%default-ld-options259555%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp260284
                             (lambda ()
                               (let ((__tmp260285
                                      (path-directory _%output-bin259504%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp260285)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp260284))
                      (gxc#with-output-to-scheme-file
                       _%output-scm259503%_
                       (lambda ()
                         (_%generate-stub259494%_
                          (let ((__tmp260286
                                 (let ((__tmp260287
                                        (cons _%bin-scm259516%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp260287
                                    _%deps259529%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp260286 _%runtime259510%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it259561%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_259537%_
                                                      (let ((__tmp260288
                                                             (cons _%output-scm259503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp260288 _%gsc-link-opts259551%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp260289
                                                 (let ((__tmp260290
                                                        (cons _%output-c259533%_
                                                              (cons _%output-c_259537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp260290
                                                    _%gsc-static-opts259545%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp260289
                                             _%gsc-cc-opts259543%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin259504%_
                                                      (cons _%output-o259535%_
                                                            (cons _%output-o_259539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp260291
                                 (let ((__tmp260293
                                        (cons '"-L"
                                              (cons _%gerbil-libdir259508%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options259555%_))))
                                       (__tmp260292
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath259553%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp260293 __tmp260292))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp260291
                             _%output-ld-opts259547%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it259561%_))
                                (_%compile-it259561%_)))
                          '#!void)))))
          (let* ((_%output-bin259498%_
                  (gxc#compile-exe-output-file _%ctx259490%_ _%opts259491%_))
                 (_%output-scm259500%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin259498%_ '"__exe.scm"))))
            (_%compile-stub259496%_
             _%output-scm259500%_
             _%output-bin259498%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx259439%_ _%id259440%_)
        (let ((_%$e259486%_
               (let ((__tmp260295
                      (lambda (_%e259441259443%_)
                        (let* ((_%e259441259445259455%_ _%e259441259443%_)
                               (_%else259447259463%_ (lambda () '#f))
                               (_%K259449259467%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e259441259445259455%_
                                 'gx#module-export::t))
                              (let* ((_%e259450259470%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259441259445259455%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e259451259473%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259441259445259455%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e259452259476%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259441259445259455%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e259452259476%_ '0))
                                    (let ((_%e259453259479%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e259441259445259455%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g259481259483%_)
                                             (eq? _%g259481259483%_
                                                  _%id259440%_))
                                           _%e259453259479%_)
                                          (_%K259449259467%_)
                                          (_%else259447259463%_)))
                                    (_%else259447259463%_)))
                              (_%else259447259463%_)))))
                     (__tmp260294
                      (##structure-ref
                       _%ctx259439%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp260295 __tmp260294))))
          (if _%$e259486%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e259486%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx259430%_ _%id259431%_)
        (let ((_%$e259433%_
               (gxc#find-export-binding _%ctx259430%_ _%id259431%_)))
          (if _%$e259433%_
              ((lambda (_%bind259436%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind259436%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id259431%_)))
                 (##structure-ref _%bind259436%_ '1 gx#binding::t '#f))
               _%$e259433%_)
              (let ((__tmp260296
                     (##structure-ref
                      _%ctx259430%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp260296
                 _%id259431%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx259296%_)
        (letrec* ((_%ht259298%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template259299%_
                   (lambda (_%in259375%_ _%phi259376%_)
                     (let ((_%iphi259378%_
                            (fx+ _%phi259376%_
                                 (##direct-structure-ref
                                  _%in259375%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports259379%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in259375%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp259381%_ ((_%rest259383%_ _%imports259379%_)
                                          (_%r259384%_ '()))
                         (let* ((_%rest259385259393%_ _%rest259383%_)
                                (_%else259387259401%_ (lambda () _%r259384%_))
                                (_%K259389259418%_
                                 (lambda (_%rest259404%_ _%in259405%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in259405%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi259378%_))
                                           (_%lp259381%_
                                            _%rest259404%_
                                            (cons _%in259405%_ _%r259384%_))
                                           (_%lp259381%_
                                            _%rest259404%_
                                            _%r259384%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in259405%_
                                              'gx#module-import::t))
                                           (let ((_%iphi259409%_
                                                  (fx+ _%phi259376%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in259405%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi259409%_))
                                                 (_%lp259381%_
                                                  _%rest259404%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in259405%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r259384%_))
                                                 (_%lp259381%_
                                                  _%rest259404%_
                                                  _%r259384%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in259405%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi259412%_
                                                      (fx+ _%iphi259378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in259405%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi259412%_))
                                                     (_%lp259381%_
                                                      _%rest259404%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in259405%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r259384%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi259412%_))
                                                         (_%lp259381%_
                                                          _%rest259404%_
                                                          (let ((__tmp260297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template259299%_
                          _%in259405%_
                          _%iphi259378%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r259384%_ __tmp260297)))
                 (_%lp259381%_ _%rest259404%_ _%r259384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp259381%_
                                                _%rest259404%_
                                                _%r259384%_)))))))
                           (if (pair? _%rest259385259393%_)
                               (let ((_%hd259390259421%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest259385259393%_)))
                                     (_%tl259391259423%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest259385259393%_))))
                                 (let* ((_%in259426%_ _%hd259390259421%_)
                                        (_%rest259428%_ _%tl259391259423%_))
                                   (_%K259389259418%_
                                    _%rest259428%_
                                    _%in259426%_)))
                               (_%else259387259401%_)))))))
                  (_%find-deps259300%_
                   (lambda (_%rest259308%_ _%deps259309%_)
                     (let* ((_%rest259310259318%_ _%rest259308%_)
                            (_%else259312259326%_ (lambda () _%deps259309%_))
                            (_%K259314259363%_
                             (lambda (_%rest259329%_ _%hd259330%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd259330%_
                                      'gx#module-context::t))
                                   (let ((_%id259333%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd259330%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports259334%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd259330%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht259298%_
                                            _%id259333%_))
                                         (_%find-deps259300%_
                                          _%rest259329%_
                                          _%deps259309%_)
                                         (let ((_%$e259337%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd259330%_))))
                                           (if _%$e259337%_
                                               ((lambda (_%pre259340%_)
                                                  (let ((_%xdeps259342%_
                                                         (_%find-deps259300%_
                                                          (cons _%pre259340%_
                                                                _%imports259334%_)
                                                          _%deps259309%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht259298%_
                                                       _%id259333%_
                                                       _%hd259330%_))
                                                    (_%find-deps259300%_
                                                     _%rest259329%_
                                                     (cons _%hd259330%_
                                                           _%xdeps259342%_))))
                                                _%$e259337%_)
                                               (let ((_%xdeps259345%_
                                                      (_%find-deps259300%_
                                                       _%imports259334%_
                                                       _%deps259309%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht259298%_
                                                    _%id259333%_
                                                    _%hd259330%_))
                                                 (_%find-deps259300%_
                                                  _%rest259329%_
                                                  (cons _%hd259330%_
                                                        _%xdeps259345%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd259330%_
                                          'gx#prelude-context::t))
                                       (let ((_%id259348%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd259330%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht259298%_
                                                _%id259348%_))
                                             (_%find-deps259300%_
                                              _%rest259329%_
                                              _%deps259309%_)
                                             (let ((_%xdeps259352%_
                                                    (_%find-deps259300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd259330%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps259309%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht259298%_
                                                      _%id259348%_))
                                                   (_%find-deps259300%_
                                                    _%rest259329%_
                                                    _%xdeps259352%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht259298%_
                                                        _%id259348%_
                                                        _%hd259330%_))
                                                     (_%find-deps259300%_
                                                      _%rest259329%_
                                                      (cons _%hd259330%_
                                                            _%xdeps259352%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd259330%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd259330%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps259300%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd259330%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest259329%_)
                                                _%deps259309%_)
                                               (_%find-deps259300%_
                                                _%rest259329%_
                                                _%deps259309%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd259330%_
                                                  'gx#module-export::t))
                                               (_%find-deps259300%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd259330%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest259329%_)
                                                _%deps259309%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd259330%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd259330%_ '2 '#f '#f)))
               (_%find-deps259300%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd259330%_ '1 '#f '#f))
                      _%rest259329%_)
                _%deps259309%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd259330%_ '2 '#f '#f)))
                   (let ((_%xdeps259359%_
                          (_%import-set-template259299%_ _%hd259330%_ '0)))
                     (_%find-deps259300%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest259329%_ _%xdeps259359%_))
                      _%deps259309%_))
                   (_%find-deps259300%_ _%rest259329%_ _%deps259309%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd259330%_))))))))))
                       (if (pair? _%rest259310259318%_)
                           (let ((_%hd259315259366%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest259310259318%_)))
                                 (_%tl259316259368%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest259310259318%_))))
                             (let* ((_%hd259371%_ _%hd259315259366%_)
                                    (_%rest259373%_ _%tl259316259368%_))
                               (_%K259314259363%_
                                _%rest259373%_
                                _%hd259371%_)))
                           (_%else259312259326%_))))))
          (let ((__tmp260298
                 (filter gx#expander-context-id
                         (_%find-deps259300%_
                          (let ((_%$e259302%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx259296%_))))
                            (if _%$e259302%_
                                ((lambda (_%pre259305%_)
                                   (cons _%pre259305%_
                                         (##structure-ref
                                          _%ctx259296%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e259302%_)
                                (##structure-ref
                                 _%ctx259296%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp260298)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx259226%_)
        (let* ((_%context-id259228%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx259226%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx259226%_ '1 '#f '#f))
                    (string->symbol _%ctx259226%_)))
               (_%scm259230%_
                (let ((__tmp260299
                       (gxc#static-module-name _%context-id259228%_)))
                  (declare (not safe))
                  (##string-append __tmp260299 '".scm")))
               (_%dirs259232%_ (let () (declare (not safe)) (load-path)))
               (_%dirs259238%_
                (let ((_%user-libpath259234%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath259234%_
                      (let ((_%user-libpath259236%_
                             (path-expand '"lib" _%user-libpath259234%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath259236%_ _%dirs259232%_))
                            _%dirs259232%_
                            (cons _%user-libpath259236%_ _%dirs259232%_)))
                      _%dirs259232%_)))
               (_%dirs259248%_
                (let ((_%$e259240%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e259240%_
                      ((lambda (_%g259242259244%_)
                         (cons _%g259242259244%_ _%dirs259238%_))
                       _%$e259240%_)
                      _%dirs259238%_)))
               (_%dirs259254%_
                (let ((__tmp260300
                       (lambda (_%g259249259251%_)
                         (path-expand '"static" _%g259249259251%_))))
                  (declare (not safe))
                  (##map __tmp260300 _%dirs259248%_))))
          (let _%lp259257%_ ((_%rest259259%_ _%dirs259254%_))
            (let* ((_%rest259260259268%_ _%rest259259%_)
                   (_%else259262259276%_
                    (lambda ()
                      (let ((__tmp260301
                             (##structure-ref
                              _%ctx259226%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp260301
                         _%scm259230%_))))
                   (_%K259264259284%_
                    (lambda (_%rest259279%_ _%dir259280%_)
                      (let ((_%path259282%_
                             (path-expand _%scm259230%_ _%dir259280%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path259282%_))
                            _%path259282%_
                            (_%lp259257%_ _%rest259279%_))))))
              (if (pair? _%rest259260259268%_)
                  (let ((_%hd259265259287%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259260259268%_)))
                        (_%tl259266259289%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259260259268%_))))
                    (let* ((_%dir259292%_ _%hd259265259287%_)
                           (_%rest259294%_ _%tl259266259289%_))
                      (_%K259264259284%_ _%rest259294%_ _%dir259292%_)))
                  (_%else259262259276%_)))))))
    (define gxc#file-empty?
      (lambda (_%path259224%_)
        (zero? (let ((__tmp260302 (file-info _%path259224%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp260302)))))
    (define gxc#compile-top-module
      (lambda (_%ctx259215%_)
        (let ((__tmp260303
               (lambda ()
                 (let ((__tmp260304
                        (lambda ()
                          (let ((__tmp260305
                                 (lambda ()
                                   (let ((__tmp260307
                                          (lambda ()
                                            (let ((__tmp260309
                                                   (lambda ()
                                                     (let ((__tmp260311
                                                            (lambda ()
                                                              (let ((__tmp260312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx259215%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp260312))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp260313
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx259215%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp260313))
                          '#!void)
                      (gxc#collect-bindings _%ctx259215%_)
                      (gxc#compile-runtime-code _%ctx259215%_)
                      (gxc#compile-meta-code _%ctx259215%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx259215%_)
                          '#!void)))
                   (__tmp260310
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
                __tmp260311
                gxc#current-compile-runtime-names
                __tmp260310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp260308
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp260309
                                               gxc#current-compile-runtime-sections
                                               __tmp260308))))
                                         (__tmp260306
                                          (let ((__obj260204
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj260204))
                                            __obj260204)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp260307
                                      gxc#current-compile-symbol-table
                                      __tmp260306)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp260305
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp260304
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260303
           gx#current-expander-context
           _%ctx259215%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx259213%_)
        (let ((__tmp260314
               (##structure-ref _%ctx259213%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp260314))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx259158%_)
        (letrec ((_%compile1259160%_
                  (lambda (_%ctx259202%_)
                    (let* ((_%code259204%_
                            (##structure-ref
                             _%ctx259202%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm259208%_
                            (let ((_%idstr259206%_
                                   (let ((__tmp260315
                                          (##structure-ref
                                           _%ctx259202%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp260315))))
                              (declare (not safe))
                              (##string-append _%idstr259206%_ '"~0")))
                           (_%rtc?259210%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code259204%_))))
                      (if _%rtc?259210%_
                          (let ((__tmp260316
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp260316
                             _%ctx259202%_
                             _%rtm259208%_))
                          '#!void)
                      (_%generate-runtime-code259162%_
                       _%ctx259202%_
                       _%code259204%_
                       (if _%rtc?259210%_ _%rtm259208%_ '#f)))))
                 (_%context-timestamp259161%_
                  (lambda (_%ctx259200%_)
                    (let ((__tmp260317
                           (let ((__tmp260318
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx259200%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp260318 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp260317))))
                 (_%generate-runtime-code259162%_
                  (lambda (_%ctx259169%_ _%code259170%_ _%rtm259171%_)
                    (let* ((_%runtime-code?259173%_ (if _%rtm259171%_ '#t '#f))
                           (_%lifts259175%_ (box '()))
                           (_%runtime-code259181%_
                            (if _%runtime-code?259173%_
                                (let ((__tmp260319
                                       (lambda ()
                                         (let ((__tmp260320
                                                (lambda ()
                                                  (let ((__tmp260321
                                                         (lambda ()
                                                           (let ((__tmp260323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code259170%_))))
                         (__tmp260322
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260323
                      gxc#current-compile-marks
                      __tmp260322)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp260321
                                                     gxc#current-compile-lift
                                                     _%lifts259175%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp260320
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp260319
                                   gx#current-expander-context
                                   _%ctx259169%_))
                                '#f))
                           (_%runtime-code259183%_
                            (if _%runtime-code?259173%_
                                (if (null? (unbox _%lifts259175%_))
                                    _%runtime-code259181%_
                                    (cons 'begin
                                          (let ((__tmp260325
                                                 (cons _%runtime-code259181%_
                                                       '()))
                                                (__tmp260324
                                                 (reverse (unbox _%lifts259175%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp260325
                                             __tmp260324))))
                                '#f))
                           (_%runtime-code259185%_
                            (if _%runtime-code?259173%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp259161%_
                                                         _%ctx259169%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code259183%_ '())))
                                '#f))
                           (_%loader-code259188%_
                            (let ((__tmp260326
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code259170%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260326
                               gx#current-expander-context
                               _%ctx259169%_)))
                           (_%loader-code259190%_
                            (cons 'begin
                                  (cons _%loader-code259188%_
                                        (cons (if _%runtime-code?259173%_
                                                  (cons 'load-module
                                                        (cons _%rtm259171%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0259192%_
                            (gxc#compile-output-file _%ctx259169%_ '0 '".scm"))
                           (_%scmrt259194%_
                            (gxc#compile-output-file
                             _%ctx259169%_
                             '#f
                             '".scm"))
                           (_%scms259196%_
                            (gxc#compile-static-output-file _%ctx259169%_)))
                      (if _%runtime-code?259173%_
                          (gxc#compile-scm-file__0
                           _%scm0259192%_
                           _%runtime-code259185%_)
                          '#!void)
                      (let ((__tmp260327
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt259194%_
                                _%loader-code259190%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp260327
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms259196%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms259196%_))
                          '#!void)
                      (if _%runtime-code?259173%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0259192%_ _%scms259196%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms259196%_ void)))))))
          (let* ((_%all-modules259164%_
                  (cons _%ctx259158%_ (gxc#lift-nested-modules _%ctx259158%_)))
                 (__tmp260328
                  (lambda (_%ctx259166%_)
                    (let ((__tmp260329
                           (lambda () (_%compile1259160%_ _%ctx259166%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260329
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp260328 _%all-modules259164%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx259057%_)
        (letrec ((_%compile-ssi259059%_
                  (lambda (_%code259126%_)
                    (let* ((_%path259128%_
                            (gxc#compile-output-file
                             _%ctx259057%_
                             '#f
                             '".ssi"))
                           (_%prelude259140%_
                            (let* ((_%super259130%_
                                    (##structure-ref
                                     _%ctx259057%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e259132%_
                                    (##structure-ref
                                     _%super259130%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e259132%_
                                  ((lambda (_%g259134259136%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g259134259136%_)))
                                   _%$e259132%_)
                                  ':<root>)))
                           (_%ns259142%_
                            (##structure-ref
                             _%ctx259057%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr259144%_
                            (symbol->string
                             (##structure-ref
                              _%ctx259057%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg259152%_
                            (let ((_%$e259146%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr259144%_ '#\/))))
                              (if _%$e259146%_
                                  ((lambda (_%x259149%_)
                                     (let ((__tmp260330
                                            (substring
                                             _%idstr259144%_
                                             '0
                                             _%x259149%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp260330)))
                                   _%$e259146%_)
                                  '#f)))
                           (_%rt259154%_
                            (let ((__tmp260331
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp260331 _%ctx259057%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path259128%_))
                      (gxc#with-output-to-scheme-file
                       _%path259128%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude259140%_))
                         (if _%pkg259152%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg259152%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns259142%_))
                         (newline)
                         (pretty-print _%code259126%_)
                         (if _%rt259154%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt259154%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi259060%_
                  (lambda (_%part259065%_)
                    (let* ((_%part259066259079%_ _%part259065%_)
                           (_%E259068259083%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part259066259079%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K259069259095%_
                            (lambda (_%code259086%_
                                     _%n259087%_
                                     _%phi259088%_
                                     _%phi-ctx259089%_)
                              (let ((_%code259093%_
                                     (let ((__tmp260332
                                            (lambda ()
                                              (let ((__tmp260333
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code259086%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260333
                                                 gx#current-expander-phi
                                                 _%phi259088%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260332
                                        gx#current-expander-context
                                        _%phi-ctx259089%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx259057%_
                                  _%n259087%_
                                  '".scm")
                                 _%code259093%_
                                 '#t)))))
                      (if (pair? _%part259066259079%_)
                          (let ((_%hd259070259098%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part259066259079%_)))
                                (_%tl259071259100%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part259066259079%_))))
                            (let ((_%phi-ctx259103%_ _%hd259070259098%_))
                              (if (pair? _%tl259071259100%_)
                                  (let ((_%hd259072259105%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl259071259100%_)))
                                        (_%tl259073259107%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl259071259100%_))))
                                    (let ((_%phi259110%_ _%hd259072259105%_))
                                      (if (pair? _%tl259073259107%_)
                                          (let ((_%hd259074259112%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl259073259107%_)))
                                                (_%tl259075259114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl259073259107%_))))
                                            (let ((_%n259117%_
                                                   _%hd259074259112%_))
                                              (if (pair? _%tl259075259114%_)
                                                  (let ((_%hd259076259119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl259075259114%_)))
                                                        (_%tl259077259121%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl259075259114%_))))
                                                    (let ((_%code259124%_
                                                           _%hd259076259119%_))
                                                      (if (null? _%tl259077259121%_)
                                                          (_%K259069259095%_
                                                           _%code259124%_
                                                           _%n259117%_
                                                           _%phi259110%_
                                                           _%phi-ctx259103%_)
                                                          (_%E259068259083%_))))
                                                  (_%E259068259083%_))))
                                          (_%E259068259083%_))))
                                  (_%E259068259083%_))))
                          (_%E259068259083%_))))))
          (let ((_g260334_ (gxc#generate-meta-code _%ctx259057%_)))
            (begin
              (let ((_g260335_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g260334_)
                           (##values-length _g260334_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g260335_ 2)))
                    (error "Context expects 2 values" _g260335_)))
              (let ((_%ssi-code259062%_
                     (let () (declare (not safe)) (##values-ref _g260334_ 0)))
                    (_%phi-code259063%_
                     (let () (declare (not safe)) (##values-ref _g260334_ 1))))
                (begin
                  (_%compile-ssi259059%_ _%ssi-code259062%_)
                  (for-each _%compile-phi259060%_ _%phi-code259063%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx259039%_)
        (let* ((_%path259041%_
                (gxc#compile-output-file _%ctx259039%_ '#f '".ssxi.ss"))
               (_%code259043%_
                (let ((__tmp260336
                       (##structure-ref
                        _%ctx259039%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp260336)))
               (_%idstr259045%_
                (symbol->string
                 (##structure-ref
                  _%ctx259039%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg259053%_
                (let ((_%$e259047%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr259045%_ '#\/))))
                  (if _%$e259047%_
                      ((lambda (_%x259050%_)
                         (let ((__tmp260337
                                (substring _%idstr259045%_ '0 _%x259050%_)))
                           (declare (not safe))
                           (##string->symbol __tmp260337)))
                       _%$e259047%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path259041%_))
          (gxc#with-output-to-scheme-file
           _%path259041%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg259053%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg259053%_))
                 '#!void)
             (newline)
             (pretty-print _%code259043%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx259032%_)
        (let* ((_%state259034%_
                (let ((__obj260205
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj260205 _%ctx259032%_))
                  __obj260205))
               (_%ssi-code259036%_
                (let ((__tmp260338
                       (##structure-ref
                        _%ctx259032%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state259034%_
                   __tmp260338))))
          (values _%ssi-code259036%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state259034%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx259024%_)
        (let* ((_%lifts259026%_ (box '()))
               (__tmp260339
                (lambda ()
                  (let ((__tmp260341
                         (lambda ()
                           (let ((_%code259030%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx259024%_))))
                             (if (null? (unbox _%lifts259026%_))
                                 _%code259030%_
                                 (cons 'begin
                                       (let ((__tmp260343
                                              (cons _%code259030%_ '()))
                                             (__tmp260342
                                              (reverse (unbox _%lifts259026%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp260343
                                          __tmp260342)))))))
                        (__tmp260340
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp260341
                     gxc#current-compile-marks
                     __tmp260340)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260339
           gxc#current-compile-lift
           _%lifts259026%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx259020%_)
        (let ((_%modules259022%_ (box '())))
          (let ((__tmp260344
                 (##structure-ref _%ctx259020%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules259022%_ __tmp260344))
          (reverse (unbox _%modules259022%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path259000%_ _%code259001%_ _%phi?259002%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path259000%_))
        (gxc#with-output-to-scheme-file
         _%path259000%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp260345
                                           (if _%phi?259002%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp260345)))))))
           (pretty-print _%code259001%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it259006%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path259000%_ _%phi?259002%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp260346
                         (cons 'compile-file (cons _%path259000%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it259006%_ __tmp260346))
                  (_%compile-it259006%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path259011%_ _%code259012%_)
        (let ((_%phi?259014%_ '#f))
          (gxc#compile-scm-file__%
           _%path259011%_
           _%code259012%_
           _%phi?259014%_))))
    (define gxc#compile-scm-file
      (lambda _g260347_
        (let ((_g260348_ (let () (declare (not safe)) (##length _g260347_))))
          (cond ((let () (declare (not safe)) (##fx= _g260348_ 2))
                 (apply gxc#compile-scm-file__0 _g260347_))
                ((let () (declare (not safe)) (##fx= _g260348_ 3))
                 (apply gxc#compile-scm-file__% _g260347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g260347_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?258901%_)
        (let _%lp258903%_ ((_%rest258905%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts258906%_ '()))
          (let* ((_%rest258907258927%_ _%rest258905%_)
                 (_%else258911258935%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts258906%_)))
                        (reverse _%opts258906%_)))))
            (let ((_%K258921258978%_
                   (lambda (_%rest258976%_)
                     (_%lp258903%_ _%rest258976%_ _%opts258906%_)))
                  (_%K258916258960%_
                   (lambda (_%rest258958%_)
                     (_%lp258903%_ _%rest258958%_ _%opts258906%_)))
                  (_%K258913258942%_
                   (lambda (_%rest258939%_ _%opt258940%_)
                     (_%lp258903%_
                      _%rest258939%_
                      (cons _%opt258940%_ _%opts258906%_)))))
              (if (pair? _%rest258907258927%_)
                  (let ((_%tl258923258983%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258907258927%_)))
                        (_%hd258922258981%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258907258927%_))))
                    (if (equal? _%hd258922258981%_ '"-cc-options")
                        (if (pair? _%tl258923258983%_)
                            (let* ((_%tl258925258986%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl258923258983%_)))
                                   (_%rest258989%_ _%tl258925258986%_))
                              (_%K258921258978%_ _%rest258989%_))
                            (let ((_%opt258950%_ _%hd258922258981%_)
                                  (_%rest258952%_ _%tl258923258983%_))
                              (_%K258913258942%_
                               _%rest258952%_
                               _%opt258950%_)))
                        (if (equal? _%hd258922258981%_ '"-ld-options")
                            (if (pair? _%tl258923258983%_)
                                (let* ((_%tl258920258968%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl258923258983%_)))
                                       (_%rest258971%_ _%tl258920258968%_))
                                  (_%K258916258960%_ _%rest258971%_))
                                (let ((_%opt258950%_ _%hd258922258981%_)
                                      (_%rest258952%_ _%tl258923258983%_))
                                  (_%K258913258942%_
                                   _%rest258952%_
                                   _%opt258950%_)))
                            (let ((_%opt258950%_ _%hd258922258981%_)
                                  (_%rest258952%_ _%tl258923258983%_))
                              (_%K258913258942%_
                               _%rest258952%_
                               _%opt258950%_)))))
                  (_%else258911258935%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?258995%_ '#f)) (gxc#gsc-link-options__% _%phi?258995%_))))
    (define gxc#gsc-link-options
      (lambda _g260349_
        (let ((_g260350_ (let () (declare (not safe)) (##length _g260349_))))
          (cond ((let () (declare (not safe)) (##fx= _g260350_ 0))
                 (apply gxc#gsc-link-options__0 _g260349_))
                ((let () (declare (not safe)) (##fx= _g260350_ 1))
                 (apply gxc#gsc-link-options__% _g260349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g260349_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords258751%_ _%static?258747258752%_ _%phi?258753%_)
        (let ((_%static?258755%_
               (if (eq? _%static?258747258752%_ absent-value)
                   '#f
                   _%static?258747258752%_)))
          (if _%phi?258753%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp258757%_ ((_%rest258759%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts258760%_ '()))
                (let* ((_%rest258761258787%_ _%rest258759%_)
                       (_%else258766258795%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts258760%_)))
                              (reverse! _%opts258760%_)))))
                  (let ((_%K258781258858%_
                         (lambda (_%rest258855%_ _%opt258856%_)
                           (if _%static?258755%_
                               (_%lp258757%_
                                _%rest258855%_
                                (cons _%opt258856%_
                                      (cons '"-cc-options" _%opts258760%_)))
                               (_%lp258757%_ _%rest258855%_ _%opts258760%_))))
                        (_%K258776258835%_
                         (lambda (_%rest258832%_ _%opt258833%_)
                           (_%lp258757%_
                            _%rest258832%_
                            (cons _%opt258833%_
                                  (cons '"-cc-options" _%opts258760%_)))))
                        (_%K258771258815%_
                         (lambda (_%rest258813%_)
                           (_%lp258757%_ _%rest258813%_ _%opts258760%_)))
                        (_%K258768258801%_
                         (lambda (_%rest258799%_)
                           (_%lp258757%_ _%rest258799%_ _%opts258760%_))))
                    (if (pair? _%rest258761258787%_)
                        (let ((_%tl258783258863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest258761258787%_)))
                              (_%hd258782258861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest258761258787%_))))
                          (if (equal? _%hd258782258861%_ '"-cc-options")
                              (if (pair? _%tl258783258863%_)
                                  (let ((_%tl258785258868%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258783258863%_)))
                                        (_%hd258784258866%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258783258863%_))))
                                    (if (equal? _%hd258784258866%_ '"-Bstatic")
                                        (let ((_%opt258871%_
                                               _%hd258784258866%_)
                                              (_%rest258873%_
                                               _%tl258785258868%_))
                                          (_%K258781258858%_
                                           _%rest258873%_
                                           _%opt258871%_))
                                        (let ((_%opt258848%_
                                               _%hd258784258866%_)
                                              (_%rest258850%_
                                               _%tl258785258868%_))
                                          (_%K258776258835%_
                                           _%rest258850%_
                                           _%opt258848%_))))
                                  (let ((_%rest258807%_ _%tl258783258863%_))
                                    (_%K258768258801%_ _%rest258807%_)))
                              (if (equal? _%hd258782258861%_ '"-ld-options")
                                  (if (pair? _%tl258783258863%_)
                                      (let* ((_%tl258775258823%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl258783258863%_)))
                                             (_%rest258826%_
                                              _%tl258775258823%_))
                                        (_%K258771258815%_ _%rest258826%_))
                                      (let ((_%rest258807%_
                                             _%tl258783258863%_))
                                        (_%K258768258801%_ _%rest258807%_)))
                                  (let ((_%rest258807%_ _%tl258783258863%_))
                                    (_%K258768258801%_ _%rest258807%_)))))
                        (_%else258766258795%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords258878%_ _%static?258747258879%_)
        (let ((_%phi?258881%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords258878%_
           _%static?258747258879%_
           _%phi?258881%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g260351_
        (let ((_g260352_ (let () (declare (not safe)) (##length _g260351_))))
          (cond ((let () (declare (not safe)) (##fx= _g260352_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g260351_))
                ((let () (declare (not safe)) (##fx= _g260352_ 3))
                 (apply gxc#gsc-cc-options__%__% _g260351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g260351_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords258890%_ . _%args258891%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords258890%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258890%_
                  'static:
                  absent-value))
               _%args258891%_)))
    (define gxc#gsc-cc-options
      (lambda _%args258748258897%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args258748258897%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords258597%_ _%static?258593258598%_ _%phi?258599%_)
        (let ((_%static?258601%_
               (if (eq? _%static?258593258598%_ absent-value)
                   '#f
                   _%static?258593258598%_)))
          (if _%phi?258599%_
              '()
              (let _%lp258603%_ ((_%rest258605%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts258606%_ '()))
                (let* ((_%rest258607258633%_ _%rest258605%_)
                       (_%else258612258641%_
                        (lambda () (reverse! _%opts258606%_))))
                  (let ((_%K258627258704%_
                         (lambda (_%rest258701%_ _%opt258702%_)
                           (if _%static?258601%_
                               (_%lp258603%_
                                _%rest258701%_
                                (cons _%opt258702%_
                                      (cons '"-ld-options" _%opts258606%_)))
                               (_%lp258603%_ _%rest258701%_ _%opts258606%_))))
                        (_%K258622258681%_
                         (lambda (_%rest258678%_ _%opt258679%_)
                           (_%lp258603%_
                            _%rest258678%_
                            (cons _%opt258679%_
                                  (cons '"-ld-options" _%opts258606%_)))))
                        (_%K258617258661%_
                         (lambda (_%rest258659%_)
                           (_%lp258603%_ _%rest258659%_ _%opts258606%_)))
                        (_%K258614258647%_
                         (lambda (_%rest258645%_)
                           (_%lp258603%_ _%rest258645%_ _%opts258606%_))))
                    (if (pair? _%rest258607258633%_)
                        (let ((_%tl258629258709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest258607258633%_)))
                              (_%hd258628258707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest258607258633%_))))
                          (if (equal? _%hd258628258707%_ '"-ld-options")
                              (if (pair? _%tl258629258709%_)
                                  (let ((_%tl258631258714%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258629258709%_)))
                                        (_%hd258630258712%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258629258709%_))))
                                    (if (equal? _%hd258630258712%_ '"-static")
                                        (let ((_%opt258717%_
                                               _%hd258630258712%_)
                                              (_%rest258719%_
                                               _%tl258631258714%_))
                                          (_%K258627258704%_
                                           _%rest258719%_
                                           _%opt258717%_))
                                        (let ((_%opt258694%_
                                               _%hd258630258712%_)
                                              (_%rest258696%_
                                               _%tl258631258714%_))
                                          (_%K258622258681%_
                                           _%rest258696%_
                                           _%opt258694%_))))
                                  (let ((_%rest258653%_ _%tl258629258709%_))
                                    (_%K258614258647%_ _%rest258653%_)))
                              (if (equal? _%hd258628258707%_ '"-cc-options")
                                  (if (pair? _%tl258629258709%_)
                                      (let* ((_%tl258621258669%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl258629258709%_)))
                                             (_%rest258672%_
                                              _%tl258621258669%_))
                                        (_%K258617258661%_ _%rest258672%_))
                                      (let ((_%rest258653%_
                                             _%tl258629258709%_))
                                        (_%K258614258647%_ _%rest258653%_)))
                                  (let ((_%rest258653%_ _%tl258629258709%_))
                                    (_%K258614258647%_ _%rest258653%_)))))
                        (_%else258612258641%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords258724%_ _%static?258593258725%_)
        (let ((_%phi?258727%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords258724%_
           _%static?258593258725%_
           _%phi?258727%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g260353_
        (let ((_g260354_ (let () (declare (not safe)) (##length _g260353_))))
          (cond ((let () (declare (not safe)) (##fx= _g260354_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g260353_))
                ((let () (declare (not safe)) (##fx= _g260354_ 3))
                 (apply gxc#gsc-ld-options__%__% _g260353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g260353_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords258736%_ . _%args258737%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords258736%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258736%_
                  'static:
                  absent-value))
               _%args258737%_)))
    (define gxc#gsc-ld-options
      (lambda _%args258594258743%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args258594258743%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir258588%_)
        (let ((_%user-staticdir258590%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir258588%_
                       '" -I "
                       _%user-staticdir258590%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp258500%_ ((_%rest258502%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts258503%_ '()))
          (let* ((_%rest258504258524%_ _%rest258502%_)
                 (_%else258508258532%_ (lambda () _%opts258503%_)))
            (let ((_%K258518258575%_
                   (lambda (_%rest258573%_)
                     (_%lp258500%_ _%rest258573%_ _%opts258503%_)))
                  (_%K258513258553%_
                   (lambda (_%rest258550%_ _%opt258551%_)
                     (_%lp258500%_
                      _%rest258550%_
                      (let ((__tmp260355
                             (let ((__tmp260356
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt258551%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp260356))))
                        (declare (not safe))
                        (##append _%opts258503%_ __tmp260355)))))
                  (_%K258510258538%_
                   (lambda (_%rest258536%_)
                     (_%lp258500%_ _%rest258536%_ _%opts258503%_))))
              (if (pair? _%rest258504258524%_)
                  (let ((_%tl258520258580%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258504258524%_)))
                        (_%hd258519258578%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258504258524%_))))
                    (if (equal? _%hd258519258578%_ '"-cc-options")
                        (if (pair? _%tl258520258580%_)
                            (let* ((_%tl258522258583%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl258520258580%_)))
                                   (_%rest258586%_ _%tl258522258583%_))
                              (_%K258518258575%_ _%rest258586%_))
                            (let ((_%rest258544%_ _%tl258520258580%_))
                              (_%K258510258538%_ _%rest258544%_)))
                        (if (equal? _%hd258519258578%_ '"-ld-options")
                            (if (pair? _%tl258520258580%_)
                                (let ((_%tl258517258563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl258520258580%_)))
                                      (_%hd258516258561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl258520258580%_))))
                                  (let ((_%opt258566%_ _%hd258516258561%_)
                                        (_%rest258568%_ _%tl258517258563%_))
                                    (_%K258513258553%_
                                     _%rest258568%_
                                     _%opt258566%_)))
                                (let ((_%rest258544%_ _%tl258520258580%_))
                                  (_%K258510258538%_ _%rest258544%_)))
                            (let ((_%rest258544%_ _%tl258520258580%_))
                              (_%K258510258538%_ _%rest258544%_)))))
                  (_%else258508258532%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str258497%_)
        (not (let () (declare (not safe)) (string-empty? _%str258497%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path258490%_ _%phi?258491%_)
        (let ((_%gsc-link-opts258493%_
               (gxc#gsc-link-options__% _%phi?258491%_))
              (_%gsc-cc-opts258494%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?258491%_))
              (_%gsc-ld-opts258495%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?258491%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp260357
                  (let ((__tmp260358
                         (let ((__tmp260359 (cons _%path258490%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp260359
                            _%gsc-link-opts258493%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260358 _%gsc-ld-opts258495%_))))
             (declare (not safe))
             (foldr__0 cons __tmp260357 _%gsc-cc-opts258494%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx258456%_ _%n258457%_ _%ext258458%_)
        (letrec ((_%module-relative-path258460%_
                  (lambda (_%ctx258488%_)
                    (path-strip-directory
                     (let ((__tmp260360
                            (##structure-ref
                             _%ctx258488%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp260360)))))
                 (_%module-source-directory258461%_
                  (lambda (_%ctx258484%_)
                    (path-directory
                     (let ((_%mpath258486%_
                            (##structure-ref
                             _%ctx258484%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath258486%_)
                           _%mpath258486%_
                           (last _%mpath258486%_))))))
                 (_%section-string258462%_
                  (lambda (_%n258478%_)
                    (if (number? _%n258478%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n258478%_))
                        (if (symbol? _%n258478%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n258478%_))
                            (if (string? _%n258478%_)
                                _%n258478%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n258478%_)))))))
                 (_%file-name258463%_
                  (lambda (_%path258476%_)
                    (if _%n258457%_
                        (string-append
                         _%path258476%_
                         '"~"
                         (_%section-string258462%_ _%n258457%_)
                         _%ext258458%_)
                        (string-append _%path258476%_ _%ext258458%_))))
                 (_%file-path258464%_
                  (lambda ()
                    (let ((_%$e258470%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e258470%_
                          ((lambda (_%outdir258473%_)
                             (path-expand
                              (_%file-name258463%_
                               (let ((__tmp260361
                                      (##structure-ref
                                       _%ctx258456%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp260361)))
                              _%outdir258473%_))
                           _%$e258470%_)
                          (path-expand
                           (_%file-name258463%_
                            (_%module-relative-path258460%_ _%ctx258456%_))
                           (_%module-source-directory258461%_
                            _%ctx258456%_)))))))
          (let ((_%path258466%_ (_%file-path258464%_)))
            (let ((__tmp260362
                   (lambda ()
                     (let ((__tmp260363 (path-directory _%path258466%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp260363)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp260362))
            _%path258466%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx258437%_)
        (letrec ((_%file-name258439%_
                  (lambda (_%id258454%_)
                    (let ((__tmp260364 (gxc#static-module-name _%id258454%_)))
                      (declare (not safe))
                      (##string-append __tmp260364 '".scm"))))
                 (_%file-path258440%_
                  (lambda ()
                    (let* ((_%file258446%_
                            (_%file-name258439%_
                             (##structure-ref
                              _%ctx258437%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e258448%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e258448%_
                          ((lambda (_%outdir258451%_)
                             (path-expand
                              _%file258446%_
                              (path-expand '"static" _%outdir258451%_)))
                           _%$e258448%_)
                          (path-expand _%file258446%_ '"static"))))))
          (let ((_%path258442%_ (_%file-path258440%_)))
            (let ((__tmp260365
                   (lambda ()
                     (let ((__tmp260366 (path-directory _%path258442%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp260366)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp260365))
            _%path258442%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx258430%_ _%opts258431%_)
        (let ((_%$e258433%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts258431%_))))
          (if _%$e258433%_
              _%$e258433%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx258430%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr258420%_)
        (if (string? _%idstr258420%_)
            (let* ((_%str258423%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr258420%_)))
                   (_%strs258425%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str258423%_ '#\/))))
              (declare (not safe))
              (string-join _%strs258425%_ '"__"))
            (if (symbol? _%idstr258420%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr258420%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr258420%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp260367
               (let ((__tmp260368 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp260368 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp260367))))
    (define gxc#invoke__%
      (lambda (_%@@keywords258386%_
               _%stdout-redirection258382258387%_
               _%stderr-redirection258383258388%_
               _%program258389%_
               _%args258390%_)
        (let* ((_%stdout-redirection258392%_
                (if (eq? _%stdout-redirection258382258387%_ absent-value)
                    '#f
                    _%stdout-redirection258382258387%_))
               (_%stderr-redirection258394%_
                (if (eq? _%stderr-redirection258383258388%_ absent-value)
                    '#f
                    _%stderr-redirection258383258388%_)))
          (let ((__tmp260369 (cons _%program258389%_ _%args258390%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp260369))
          (let* ((_%proc258396%_
                  (open-process
                   (cons 'path:
                         (cons _%program258389%_
                               (cons 'arguments:
                                     (cons _%args258390%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection258392%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection258394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output258401%_
                  (if (or _%stdout-redirection258392%_
                          _%stderr-redirection258394%_)
                      (read-line _%proc258396%_ '#f)
                      '#f))
                 (_%status258404%_ (process-status _%proc258396%_)))
            (let () (declare (not safe)) (##close-port _%proc258396%_))
            (if (zero? _%status258404%_)
                '#!void
                (begin
                  (display _%output258401%_)
                  (let ((__tmp260370 (cons _%program258389%_ _%args258390%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp260370
                     _%status258404%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords258409%_ . _%args258410%_)
        (apply gxc#invoke__%
               _%@@keywords258409%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258409%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258409%_
                  'stderr-redirection:
                  absent-value))
               _%args258410%_)))
    (define gxc#invoke
      (lambda _%args258384258416%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args258384258416%_)))))
