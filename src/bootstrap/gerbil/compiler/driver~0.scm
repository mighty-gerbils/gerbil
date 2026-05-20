(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1779274782)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp261260 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp261260))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp261261 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp261261))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path261117%_ _%fun261118%_)
        (with-output-to-file
         (cons 'path: (cons _%path261117%_ gxc#scheme-file-settings))
         _%fun261118%_)))
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
      (lambda (_%gerbil-libdir261112%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir261112%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path261110%_)
        (let ((__tmp261262 (object->string _%path261110%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp261262 '")"))))
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
      (lambda (_%dir261108%_) (delete-file-or-directory _%dir261108%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath261051%_ _%opts261052%_)
        (if (string? _%srcpath261051%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath261051%_)))
        (let* ((_%outdir261054%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts261052%_)))
               (_%invoke-gsc?261056%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts261052%_)))
               (_%target261061%_
                (let ((_%$e261058%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts261052%_))))
                  (if _%$e261058%_ _%$e261058%_ 'C)))
               (_%gsc-options261066%_
                (append (cons '"-target"
                              (cons (symbol->string _%target261061%_) '()))
                        (let ((_%$e261063%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts261052%_))))
                          (if _%$e261063%_ _%$e261063%_ '()))))
               (_%keep-scm?261068%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts261052%_)))
               (_%verbosity261070%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts261052%_)))
               (_%optimize261072%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts261052%_)))
               (_%debug261074%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts261052%_)))
               (_%gen-ssxi261076%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts261052%_)))
               (_%parallel?261078%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts261052%_))))
          (if _%outdir261054%_
              (let ((__tmp261263
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir261054%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp261263))
              '#!void)
          (if _%optimize261072%_
              (let ((__tmp261264
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp261264))
              '#!void)
          (let ((__tmp261265
                 (lambda ()
                   (let ((__tmp261266
                          (lambda ()
                            (let ((__tmp261267
                                   (lambda ()
                                     (let ((__tmp261268
                                            (lambda ()
                                              (let ((__tmp261269
                                                     (lambda ()
                                                       (let ((__tmp261270
                                                              (lambda ()
                                                                (let ((__tmp261271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp261272
                                        (lambda ()
                                          (let ((__tmp261274
                                                 (lambda ()
                                                   (let ((__tmp261276
                                                          (lambda ()
                                                            (let ((__tmp261278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp261279
                                    (lambda ()
                                      (let ((__tmp261280
                                             (lambda ()
                                               (let ((__tmp261281
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath261051%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp261282
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath261051%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp261282))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp261281
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp261280
                                         gx#current-compilation-target
                                         _%target261061%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp261279
                                gxc#current-compile-parallel
                                _%parallel?261078%_))))
                          (__tmp261277
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp261278
                       gxc#current-compile-identifiers
                       __tmp261277))))
                 (__tmp261275
                  (cons (cons 'compile-module (cons _%srcpath261051%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp261276
                                                      gxc#current-compile-context
                                                      __tmp261275))))
                                                (__tmp261273
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp261274
                                             gxc#current-compile-timestamp
                                             __tmp261273)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp261272
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi261076%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp261271
                           gxc#current-compile-debug
                           _%debug261074%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp261270
                  gxc#current-compile-optimize
                  _%optimize261072%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp261269
                                                 gxc#current-compile-verbose
                                                 _%verbosity261070%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp261268
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?261068%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp261267
                               gxc#current-compile-gsc-options
                               _%gsc-options261066%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp261266
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?261056%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp261265
             gxc#current-compile-output-dir
             _%outdir261054%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath261101%_)
        (let ((_%opts261103%_ '()))
          (gxc#compile-module__% _%srcpath261101%_ _%opts261103%_))))
    (define gxc#compile-module
      (lambda _g261283_
        (let ((_g261284_ (let () (declare (not safe)) (##length _g261283_))))
          (cond ((let () (declare (not safe)) (##fx= _g261284_ 1))
                 (apply gxc#compile-module__0 _g261283_))
                ((let () (declare (not safe)) (##fx= _g261284_ 2))
                 (apply gxc#compile-module__% _g261283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g261283_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath261000%_ _%opts261001%_)
        (if (string? _%srcpath261000%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath261000%_)))
        (let* ((_%outdir261003%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts261001%_)))
               (_%invoke-gsc?261005%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts261001%_)))
               (_%target261010%_
                (let ((_%$e261007%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts261001%_))))
                  (if _%$e261007%_ _%$e261007%_ 'C)))
               (_%gsc-options261015%_
                (append (cons '"-target"
                              (cons (symbol->string _%target261010%_) '()))
                        (let ((_%$e261012%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts261001%_))))
                          (if _%$e261012%_ _%$e261012%_ '()))))
               (_%keep-scm?261017%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts261001%_)))
               (_%verbosity261019%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts261001%_)))
               (_%debug261021%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts261001%_)))
               (_%parallel?261023%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts261001%_))))
          (if _%outdir261003%_
              (let ((__tmp261285
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir261003%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp261285))
              '#!void)
          (let ((__tmp261286
                 (lambda ()
                   (let ((__tmp261287
                          (lambda ()
                            (let ((__tmp261288
                                   (lambda ()
                                     (let ((__tmp261289
                                            (lambda ()
                                              (let ((__tmp261290
                                                     (lambda ()
                                                       (let ((__tmp261291
                                                              (lambda ()
                                                                (let ((__tmp261292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp261294
                                        (lambda ()
                                          (let ((__tmp261296
                                                 (lambda ()
                                                   (let ((__tmp261298
                                                          (lambda ()
                                                            (let ((__tmp261299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp261300
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath261000%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp261301
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath261000%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp261301))
                                       _%opts261001%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp261300
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp261299
                       gxc#current-compile-parallel
                       _%parallel?261023%_))))
                 (__tmp261297
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp261298
                                                      gxc#current-compile-identifiers
                                                      __tmp261297))))
                                                (__tmp261295
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath261000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp261296
                                             gxc#current-compile-context
                                             __tmp261295))))
                                       (__tmp261293 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp261294
                                    gxc#current-compile-timestamp
                                    __tmp261293)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp261292
                           gxc#current-compile-debug
                           _%debug261021%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp261291
                  gxc#current-compile-verbose
                  _%verbosity261019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp261290
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?261017%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp261289
                                        gxc#current-compile-gsc-options
                                        _%gsc-options261015%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp261288
                               gx#current-compilation-target
                               _%target261010%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp261287
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?261005%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp261286
             gxc#current-compile-output-dir
             _%outdir261003%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath261043%_)
        (let ((_%opts261045%_ '()))
          (gxc#compile-exe__% _%srcpath261043%_ _%opts261045%_))))
    (define gxc#compile-exe
      (lambda _g261302_
        (let ((_g261303_ (let () (declare (not safe)) (##length _g261302_))))
          (cond ((let () (declare (not safe)) (##fx= _g261303_ 1))
                 (apply gxc#compile-exe__0 _g261302_))
                ((let () (declare (not safe)) (##fx= _g261303_ 2))
                 (apply gxc#compile-exe__% _g261302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g261302_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx260996%_ _%opts260997%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts260997%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx260996%_
             _%opts260997%_)
            (gxc#compile-executable-module/separate
             _%ctx260996%_
             _%opts260997%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx260722%_ _%opts260723%_)
        (letrec ((_%generate-stub260725%_
                  (lambda (_%builtin-modules260992%_)
                    (let ((_%mod-main260994%_
                           (gxc#find-runtime-symbol _%ctx260722%_ 'main)))
                      (let ((__tmp261304
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules260992%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp261304))
                      (let ((__tmp261305
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main260994%_
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
                        (##write __tmp261305))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts260726%_
                  (lambda (_%gerbil-libdir260990%_)
                    (let ((__tmp261306
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir260990%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp261306 read))))
                 (_%replace-extension260727%_
                  (lambda (_%path260987%_ _%ext260988%_)
                    (string-append
                     (path-strip-extension _%path260987%_)
                     _%ext260988%_)))
                 (_%replace-extension-with-c260728%_
                  (lambda (_%path260985%_)
                    (_%replace-extension260727%_ _%path260985%_ '".c")))
                 (_%replace-extension-with-object260729%_
                  (lambda (_%path260983%_)
                    (_%replace-extension260727%_
                     _%path260983%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?260730%_
                  (lambda (_%ctx260981%_)
                    (if (_%exclude-module?260732%_ _%ctx260981%_)
                        '#f
                        (not (_%libgerbil-module?260731%_ _%ctx260981%_)))))
                 (_%libgerbil-module?260731%_
                  (lambda (_%ctx260974%_)
                    (let ((_%id-str260976%_
                           (symbol->string
                            (##structure-ref
                             _%ctx260974%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?260732%_ _%id-str260976%_)
                          '#f
                          (let ((_%$e260978%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str260976%_))))
                            (if _%$e260978%_
                                _%$e260978%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str260976%_))))))))
                 (_%exclude-module?260732%_
                  (lambda (_%ctx-or-str260970%_)
                    (let ((_%str260972%_
                           (if (string? _%ctx-or-str260970%_)
                               _%ctx-or-str260970%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str260970%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str260972%_))))
                 (_%not-file-empty?260733%_
                  (lambda (_%path260968%_)
                    (not (gxc#file-empty? _%path260968%_))))
                 (_%fold-libgerbil-runtime-scm260734%_
                  (lambda (_%gerbil-staticdir260961%_ _%libgerbil-scm260962%_)
                    (let ((_%gerbil-runtime-scm260966%_
                           (let ((__tmp261307
                                  (lambda (_%rtm260964%_)
                                    (path-expand
                                     (let ((__tmp261308
                                            (let ((__tmp261309
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm260964%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp261309
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp261308 '".scm"))
                                     _%gerbil-staticdir260961%_))))
                             (declare (not safe))
                             (##map __tmp261307 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates260735%_
                       (append _%gerbil-runtime-scm260966%_
                               _%libgerbil-scm260962%_)))))
                 (_%remove-duplicates260735%_
                  (lambda (_%strlst260921%_)
                    (let _%loop260923%_ ((_%rest260925%_ _%strlst260921%_)
                                         (_%result260926%_ '()))
                      (let* ((_%rest260927260935%_ _%rest260925%_)
                             (_%else260929260943%_
                              (lambda () (reverse! _%result260926%_)))
                             (_%K260931260949%_
                              (lambda (_%rest260946%_ _%path260947%_)
                                (if (member _%path260947%_ _%result260926%_)
                                    (_%loop260923%_
                                     _%rest260946%_
                                     _%result260926%_)
                                    (_%loop260923%_
                                     _%rest260946%_
                                     (cons _%path260947%_
                                           _%result260926%_))))))
                        (if (pair? _%rest260927260935%_)
                            (let ((_%hd260932260952%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest260927260935%_)))
                                  (_%tl260933260954%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest260927260935%_))))
                              (let* ((_%path260957%_ _%hd260932260952%_)
                                     (_%rest260959%_ _%tl260933260954%_))
                                (_%K260931260949%_
                                 _%rest260959%_
                                 _%path260957%_)))
                            (_%else260929260943%_))))))
                 (_%compile-stub260736%_
                  (lambda (_%output-scm260743%_ _%output-bin260744%_)
                    (let* ((_%gerbil-home260746%_
                            (let ((__tmp261310
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp261310)))
                           (_%gerbil-libdir260748%_
                            (path-expand '"lib" _%gerbil-home260746%_))
                           (_%gerbil-staticdir260750%_
                            (path-expand '"static" _%gerbil-libdir260748%_))
                           (_%deps260752%_
                            (gxc#find-runtime-module-deps _%ctx260722%_))
                           (_%libgerbil-deps260754%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?260731%_
                               _%deps260752%_)))
                           (_%libgerbil-scm260756%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps260754%_)))
                           (_%libgerbil-scm260758%_
                            (_%fold-libgerbil-runtime-scm260734%_
                             _%gerbil-staticdir260750%_
                             _%libgerbil-scm260756%_))
                           (_%libgerbil-c260760%_
                            (map _%replace-extension-with-c260728%_
                                 _%libgerbil-scm260758%_))
                           (_%libgerbil-o260762%_
                            (map _%replace-extension-with-object260729%_
                                 _%libgerbil-scm260758%_))
                           (_%src-deps260764%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?260730%_
                               _%deps260752%_)))
                           (_%src-deps-scm260766%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps260764%_)))
                           (_%src-deps-scm260768%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?260733%_
                               _%src-deps-scm260766%_)))
                           (_%src-deps-scm260770%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm260768%_)))
                           (_%src-deps-c260772%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c260728%_
                                     _%src-deps-scm260770%_)))
                           (_%src-deps-o260774%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object260729%_
                                     _%src-deps-scm260770%_)))
                           (_%src-bin-scm260776%_
                            (gxc#find-static-module-file _%ctx260722%_))
                           (_%src-bin-scm260778%_
                            (path-expand _%src-bin-scm260776%_))
                           (_%src-bin-c260780%_
                            (_%replace-extension-with-c260728%_
                             _%src-bin-scm260778%_))
                           (_%src-bin-o260782%_
                            (_%replace-extension-with-object260729%_
                             _%src-bin-scm260778%_))
                           (_%output-bin260784%_
                            (path-expand _%output-bin260744%_))
                           (_%output-scm260786%_
                            (path-expand _%output-scm260743%_))
                           (_%output-c260788%_
                            (_%replace-extension-with-c260728%_
                             _%output-scm260786%_))
                           (_%output-o260790%_
                            (_%replace-extension-with-object260729%_
                             _%output-scm260786%_))
                           (_%output_-c260792%_
                            (_%replace-extension260727%_
                             _%output-scm260786%_
                             '"_.c"))
                           (_%output_-o260794%_
                            (_%replace-extension260727%_
                             _%output-scm260786%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts260796%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts260798%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts260800%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir260750%_))
                           (_%output-ld-opts260802%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts260804%_
                            (_%get-libgerbil-ld-opts260726%_
                             _%gerbil-libdir260748%_))
                           (_%rpath260806%_
                            (gxc#gerbil-rpath _%gerbil-libdir260748%_))
                           (_%builtin-modules260810%_
                            (_%remove-duplicates260735%_
                             (let ((__tmp261311
                                    (let ((__tmp261313
                                           (lambda (_%mod260808%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod260808%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp261312
                                           (cons _%ctx260722%_
                                                 _%deps260752%_)))
                                      (declare (not safe))
                                      (##map __tmp261313 __tmp261312))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp261311)))))
                      (letrec ((_%compile-obj260813%_
                                (lambda (_%scm-path260820%_ _%c-path260821%_)
                                  (let* ((_%o-path260823%_
                                          (_%replace-extension260727%_
                                           _%c-path260821%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock260825%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path260823%_
                                             '".lock")))
                                         (_%locked260827%_ '#f)
                                         (_%unlock260830%_
                                          (lambda ()
                                            (close-port _%locked260827%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock260825%_)))))
                                    (let _%retry260833%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock260825%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry260833%_))
                                          (begin
                                            (set! _%locked260827%_
                                                  (let* ((_%handler260836%_
                                                          false)
                                                         (_%thunk260840%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock260825%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler260845%_ _%handler260836%_)
                 (_%thunk260901%_ _%thunk260840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler260845%_
                                                     _%thunk260901%_)))
                                            (if _%locked260827%_
                                                '#!void
                                                (_%retry260833%_)))))
                                    (let ((__tmp261315
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path260823%_)))
                                                     (not _%scm-path260820%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path260820%_
                                                        _%o-path260823%_)))
                                                 (let ((_%gsc-cc-opts260918%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp261316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp261317 (cons _%c-path260821%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp261317
                            _%gsc-static-opts260800%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp261316 _%gsc-cc-opts260918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp261314
                                           (lambda () (_%unlock260830%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp261315
                                       __tmp261314))))))
                        (let ((__tmp261318
                               (lambda ()
                                 (let ((__tmp261319
                                        (path-directory _%output-bin260784%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp261319)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp261318))
                        (gxc#with-output-to-scheme-file
                         _%output-scm260786%_
                         (lambda ()
                           (_%generate-stub260725%_
                            _%builtin-modules260810%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it260818%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp261320
                                                   (let ((__tmp261321
                                                          (let ((__tmp261322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm260778%_
                               (cons _%output-scm260786%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp261322 _%src-deps-scm260770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp261321
                                                      _%libgerbil-c260760%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp261320
                                               _%gsc-link-opts260796%_))))
                                     (for-each
                                      _%compile-obj260813%_
                                      (let ((__tmp261323
                                             (cons _%src-bin-scm260778%_
                                                   (cons _%output-scm260786%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp261323
                                         _%src-deps-scm260770%_))
                                      (let ((__tmp261324
                                             (cons _%src-bin-c260780%_
                                                   (cons _%output-c260788%_
                                                         (cons _%output_-c260792%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp261324
                                         _%src-deps-c260772%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin260784%_
                                                        (let ((__tmp261325
                                                               (cons _%src-bin-o260782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o260790%_
                                   (cons _%output_-o260794%_
                                         (let ((__tmp261326
                                                (let ((__tmp261327
                                                       (let ((__tmp261329
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir260748%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts260804%_))))
                     (__tmp261328
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath260806%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp261329 __tmp261328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp261327
                                                   _%output-ld-opts260802%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp261326
                                            _%libgerbil-o260762%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp261325 _%src-deps-o260774%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp261330
                                            (cons _%output-c260788%_
                                                  (cons _%output_-c260792%_
                                                        (cons _%output-o260790%_
                                                              (cons _%output_-o260794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp261330)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it260818%_))
                                  (_%compile-it260818%_)))
                            '#!void))))))
          (let* ((_%output-bin260738%_
                  (gxc#compile-exe-output-file _%ctx260722%_ _%opts260723%_))
                 (_%output-scm260740%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin260738%_ '"__exe.scm"))))
            (_%compile-stub260736%_
             _%output-scm260740%_
             _%output-bin260738%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx260544%_ _%opts260545%_)
        (letrec ((_%reset-declare260547%_
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
                 (_%generate-stub260548%_
                  (lambda (_%deps260713%_)
                    (let ((_%mod-main260715%_
                           (gxc#find-runtime-symbol _%ctx260544%_ 'main))
                          (_%reset-decl260716%_ (_%reset-declare260547%_))
                          (_%user-decl260717%_ (_%user-declare260549%_)))
                      (for-each
                       (lambda (_%dep260719%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl260716%_))
                         (newline)
                         (if _%user-decl260717%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl260717%_))
                               (newline))
                             '#!void)
                         (let ((__tmp261331
                                (cons 'include (cons _%dep260719%_ '()))))
                           (declare (not safe))
                           (##write __tmp261331))
                         (newline))
                       _%deps260713%_)
                      (let ((__tmp261332
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main260715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp261332))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare260549%_
                  (lambda ()
                    (let* ((_%gsc-opts260618%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts260545%_)))
                           (_%gsc-prelude260620%_
                            (if _%gsc-opts260618%_
                                (member '"-prelude" _%gsc-opts260618%_)
                                '#f))
                           (_%gsc-prelude260622%_
                            (if _%gsc-prelude260620%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude260620%_)))
                                '#f)))
                      (let _%lp260625%_ ((_%rest260627%_
                                          (cons _%gsc-prelude260622%_ '()))
                                         (_%user-decls260628%_ '()))
                        (let* ((_%rest260629260637%_ _%rest260627%_)
                               (_%else260631260645%_
                                (lambda ()
                                  (if (null? _%user-decls260628%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls260628%_)))))
                               (_%K260633260701%_
                                (lambda (_%rest260648%_ _%expr260649%_)
                                  (let* ((_%expr260650260662%_ _%expr260649%_)
                                         (_%else260653260670%_
                                          (lambda ()
                                            (_%lp260625%_
                                             _%rest260648%_
                                             _%user-decls260628%_))))
                                    (let ((_%K260658260691%_
                                           (lambda (_%decls260689%_)
                                             (_%lp260625%_
                                              _%rest260648%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls260628%_
                                                 _%decls260689%_)))))
                                          (_%K260655260676%_
                                           (lambda (_%exprs260674%_)
                                             (_%lp260625%_
                                              (append _%exprs260674%_
                                                      _%rest260648%_)
                                              _%user-decls260628%_))))
                                      (if (pair? _%expr260650260662%_)
                                          (let ((_%tl260660260696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr260650260662%_)))
                                                (_%hd260659260694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr260650260662%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd260659260694%_
                                                         'declare))
                                                (let ((_%decls260699%_
                                                       _%tl260660260696%_))
                                                  (_%K260658260691%_
                                                   _%decls260699%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd260659260694%_
                                                             'begin))
                                                    (let ((_%exprs260684%_
                                                           _%tl260660260696%_))
                                                      (_%K260655260676%_
                                                       _%exprs260684%_))
                                                    (_%else260653260670%_))))
                                          (_%else260653260670%_)))))))
                          (if (pair? _%rest260629260637%_)
                              (let ((_%hd260634260704%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest260629260637%_)))
                                    (_%tl260635260706%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest260629260637%_))))
                                (let* ((_%expr260709%_ _%hd260634260704%_)
                                       (_%rest260711%_ _%tl260635260706%_))
                                  (_%K260633260701%_
                                   _%rest260711%_
                                   _%expr260709%_)))
                              (_%else260631260645%_)))))))
                 (_%compile-stub260550%_
                  (lambda (_%output-scm260557%_ _%output-bin260558%_)
                    (let* ((_%gerbil-home260560%_
                            (let ((__tmp261333
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp261333)))
                           (_%gerbil-libdir260562%_
                            (path-expand '"lib" _%gerbil-home260560%_))
                           (_%runtime260564%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp260566%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home260560%_))
                           (_%include-gambit-sharp260568%_
                            (gxc#include-source _%gambit-sharp260566%_))
                           (_%bin-scm260570%_
                            (gxc#find-static-module-file _%ctx260544%_))
                           (_%deps260572%_
                            (gxc#find-runtime-module-deps _%ctx260544%_))
                           (_%deps260574%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps260572%_)))
                           (_%deps260579%_
                            (let ((__tmp261334
                                   (lambda (_%$obj260576%_)
                                     (not (gxc#file-empty? _%$obj260576%_)))))
                              (declare (not safe))
                              (##filter __tmp261334 _%deps260574%_)))
                           (_%deps260583%_
                            (let ((__tmp261335
                                   (lambda (_%f260581%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f260581%_
                                             _%runtime260564%_))))))
                              (declare (not safe))
                              (##filter __tmp261335 _%deps260579%_)))
                           (_%output-base260585%_
                            (let ((__tmp261336
                                   (path-strip-extension
                                    _%output-scm260557%_)))
                              (declare (not safe))
                              (##string-append __tmp261336)))
                           (_%output-c260587%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base260585%_ '".c")))
                           (_%output-o260589%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base260585%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_260591%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base260585%_ '"_.c")))
                           (_%output-o_260593%_
                            (let ((__tmp261337
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base260585%_
                               __tmp261337)))
                           (_%gsc-link-opts260595%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts260597%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts260599%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir260562%_)))
                           (_%output-ld-opts260601%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros260603%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp260568%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp260568%_
                                            '()))))
                           (_%gsc-link-opts260605%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts260595%_
                               _%gsc-gx-macros260603%_)))
                           (_%rpath260607%_
                            (gxc#gerbil-rpath _%gerbil-libdir260562%_))
                           (_%default-ld-options260609%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp261338
                             (lambda ()
                               (let ((__tmp261339
                                      (path-directory _%output-bin260558%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp261339)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp261338))
                      (gxc#with-output-to-scheme-file
                       _%output-scm260557%_
                       (lambda ()
                         (_%generate-stub260548%_
                          (let ((__tmp261340
                                 (let ((__tmp261341
                                        (cons _%bin-scm260570%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp261341
                                    _%deps260583%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp261340 _%runtime260564%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it260615%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_260591%_
                                                      (let ((__tmp261342
                                                             (cons _%output-scm260557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp261342 _%gsc-link-opts260605%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp261343
                                                 (let ((__tmp261344
                                                        (cons _%output-c260587%_
                                                              (cons _%output-c_260591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp261344
                                                    _%gsc-static-opts260599%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp261343
                                             _%gsc-cc-opts260597%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin260558%_
                                                      (cons _%output-o260589%_
                                                            (cons _%output-o_260593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp261345
                                 (let ((__tmp261347
                                        (cons '"-L"
                                              (cons _%gerbil-libdir260562%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options260609%_))))
                                       (__tmp261346
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath260607%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp261347 __tmp261346))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp261345
                             _%output-ld-opts260601%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it260615%_))
                                (_%compile-it260615%_)))
                          '#!void)))))
          (let* ((_%output-bin260552%_
                  (gxc#compile-exe-output-file _%ctx260544%_ _%opts260545%_))
                 (_%output-scm260554%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin260552%_ '"__exe.scm"))))
            (_%compile-stub260550%_
             _%output-scm260554%_
             _%output-bin260552%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx260493%_ _%id260494%_)
        (let ((_%$e260540%_
               (let ((__tmp261349
                      (lambda (_%e260495260497%_)
                        (let* ((_%e260495260499260509%_ _%e260495260497%_)
                               (_%else260501260517%_ (lambda () '#f))
                               (_%K260503260521%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e260495260499260509%_
                                 'gx#module-export::t))
                              (let* ((_%e260504260524%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e260495260499260509%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e260505260527%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e260495260499260509%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e260506260530%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e260495260499260509%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e260506260530%_ '0))
                                    (let ((_%e260507260533%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e260495260499260509%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g260535260537%_)
                                             (eq? _%g260535260537%_
                                                  _%id260494%_))
                                           _%e260507260533%_)
                                          (_%K260503260521%_)
                                          (_%else260501260517%_)))
                                    (_%else260501260517%_)))
                              (_%else260501260517%_)))))
                     (__tmp261348
                      (##structure-ref
                       _%ctx260493%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp261349 __tmp261348))))
          (if _%$e260540%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e260540%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx260484%_ _%id260485%_)
        (let ((_%$e260487%_
               (gxc#find-export-binding _%ctx260484%_ _%id260485%_)))
          (if _%$e260487%_
              ((lambda (_%bind260490%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind260490%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id260485%_)))
                 (##structure-ref _%bind260490%_ '1 gx#binding::t '#f))
               _%$e260487%_)
              (let ((__tmp261350
                     (##structure-ref
                      _%ctx260484%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp261350
                 _%id260485%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx260350%_)
        (letrec* ((_%ht260352%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template260353%_
                   (lambda (_%in260429%_ _%phi260430%_)
                     (let ((_%iphi260432%_
                            (fx+ _%phi260430%_
                                 (##direct-structure-ref
                                  _%in260429%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports260433%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in260429%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp260435%_ ((_%rest260437%_ _%imports260433%_)
                                          (_%r260438%_ '()))
                         (let* ((_%rest260439260447%_ _%rest260437%_)
                                (_%else260441260455%_ (lambda () _%r260438%_))
                                (_%K260443260472%_
                                 (lambda (_%rest260458%_ _%in260459%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in260459%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi260432%_))
                                           (_%lp260435%_
                                            _%rest260458%_
                                            (cons _%in260459%_ _%r260438%_))
                                           (_%lp260435%_
                                            _%rest260458%_
                                            _%r260438%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in260459%_
                                              'gx#module-import::t))
                                           (let ((_%iphi260463%_
                                                  (fx+ _%phi260430%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in260459%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi260463%_))
                                                 (_%lp260435%_
                                                  _%rest260458%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in260459%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r260438%_))
                                                 (_%lp260435%_
                                                  _%rest260458%_
                                                  _%r260438%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in260459%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi260466%_
                                                      (fx+ _%iphi260432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in260459%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi260466%_))
                                                     (_%lp260435%_
                                                      _%rest260458%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in260459%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r260438%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi260466%_))
                                                         (_%lp260435%_
                                                          _%rest260458%_
                                                          (let ((__tmp261351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template260353%_
                          _%in260459%_
                          _%iphi260432%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r260438%_ __tmp261351)))
                 (_%lp260435%_ _%rest260458%_ _%r260438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp260435%_
                                                _%rest260458%_
                                                _%r260438%_)))))))
                           (if (pair? _%rest260439260447%_)
                               (let ((_%hd260444260475%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest260439260447%_)))
                                     (_%tl260445260477%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest260439260447%_))))
                                 (let* ((_%in260480%_ _%hd260444260475%_)
                                        (_%rest260482%_ _%tl260445260477%_))
                                   (_%K260443260472%_
                                    _%rest260482%_
                                    _%in260480%_)))
                               (_%else260441260455%_)))))))
                  (_%find-deps260354%_
                   (lambda (_%rest260362%_ _%deps260363%_)
                     (let* ((_%rest260364260372%_ _%rest260362%_)
                            (_%else260366260380%_ (lambda () _%deps260363%_))
                            (_%K260368260417%_
                             (lambda (_%rest260383%_ _%hd260384%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd260384%_
                                      'gx#module-context::t))
                                   (let ((_%id260387%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd260384%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports260388%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd260384%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht260352%_
                                            _%id260387%_))
                                         (_%find-deps260354%_
                                          _%rest260383%_
                                          _%deps260363%_)
                                         (let ((_%$e260391%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd260384%_))))
                                           (if _%$e260391%_
                                               ((lambda (_%pre260394%_)
                                                  (let ((_%xdeps260396%_
                                                         (_%find-deps260354%_
                                                          (cons _%pre260394%_
                                                                _%imports260388%_)
                                                          _%deps260363%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht260352%_
                                                       _%id260387%_
                                                       _%hd260384%_))
                                                    (_%find-deps260354%_
                                                     _%rest260383%_
                                                     (cons _%hd260384%_
                                                           _%xdeps260396%_))))
                                                _%$e260391%_)
                                               (let ((_%xdeps260399%_
                                                      (_%find-deps260354%_
                                                       _%imports260388%_
                                                       _%deps260363%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht260352%_
                                                    _%id260387%_
                                                    _%hd260384%_))
                                                 (_%find-deps260354%_
                                                  _%rest260383%_
                                                  (cons _%hd260384%_
                                                        _%xdeps260399%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd260384%_
                                          'gx#prelude-context::t))
                                       (let ((_%id260402%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd260384%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht260352%_
                                                _%id260402%_))
                                             (_%find-deps260354%_
                                              _%rest260383%_
                                              _%deps260363%_)
                                             (let ((_%xdeps260406%_
                                                    (_%find-deps260354%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd260384%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps260363%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht260352%_
                                                      _%id260402%_))
                                                   (_%find-deps260354%_
                                                    _%rest260383%_
                                                    _%xdeps260406%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht260352%_
                                                        _%id260402%_
                                                        _%hd260384%_))
                                                     (_%find-deps260354%_
                                                      _%rest260383%_
                                                      (cons _%hd260384%_
                                                            _%xdeps260406%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd260384%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd260384%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps260354%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd260384%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest260383%_)
                                                _%deps260363%_)
                                               (_%find-deps260354%_
                                                _%rest260383%_
                                                _%deps260363%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd260384%_
                                                  'gx#module-export::t))
                                               (_%find-deps260354%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd260384%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest260383%_)
                                                _%deps260363%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd260384%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd260384%_ '2 '#f '#f)))
               (_%find-deps260354%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd260384%_ '1 '#f '#f))
                      _%rest260383%_)
                _%deps260363%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd260384%_ '2 '#f '#f)))
                   (let ((_%xdeps260413%_
                          (_%import-set-template260353%_ _%hd260384%_ '0)))
                     (_%find-deps260354%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest260383%_ _%xdeps260413%_))
                      _%deps260363%_))
                   (_%find-deps260354%_ _%rest260383%_ _%deps260363%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd260384%_))))))))))
                       (if (pair? _%rest260364260372%_)
                           (let ((_%hd260369260420%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest260364260372%_)))
                                 (_%tl260370260422%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest260364260372%_))))
                             (let* ((_%hd260425%_ _%hd260369260420%_)
                                    (_%rest260427%_ _%tl260370260422%_))
                               (_%K260368260417%_
                                _%rest260427%_
                                _%hd260425%_)))
                           (_%else260366260380%_))))))
          (let ((__tmp261352
                 (filter gx#expander-context-id
                         (_%find-deps260354%_
                          (let ((_%$e260356%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx260350%_))))
                            (if _%$e260356%_
                                ((lambda (_%pre260359%_)
                                   (cons _%pre260359%_
                                         (##structure-ref
                                          _%ctx260350%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e260356%_)
                                (##structure-ref
                                 _%ctx260350%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp261352)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx260280%_)
        (let* ((_%context-id260282%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx260280%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx260280%_ '1 '#f '#f))
                    (string->symbol _%ctx260280%_)))
               (_%scm260284%_
                (let ((__tmp261353
                       (gxc#static-module-name _%context-id260282%_)))
                  (declare (not safe))
                  (##string-append __tmp261353 '".scm")))
               (_%dirs260286%_ (let () (declare (not safe)) (load-path)))
               (_%dirs260292%_
                (let ((_%user-libpath260288%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath260288%_
                      (let ((_%user-libpath260290%_
                             (path-expand '"lib" _%user-libpath260288%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath260290%_ _%dirs260286%_))
                            _%dirs260286%_
                            (cons _%user-libpath260290%_ _%dirs260286%_)))
                      _%dirs260286%_)))
               (_%dirs260302%_
                (let ((_%$e260294%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e260294%_
                      ((lambda (_%g260296260298%_)
                         (cons _%g260296260298%_ _%dirs260292%_))
                       _%$e260294%_)
                      _%dirs260292%_)))
               (_%dirs260308%_
                (let ((__tmp261354
                       (lambda (_%g260303260305%_)
                         (path-expand '"static" _%g260303260305%_))))
                  (declare (not safe))
                  (##map __tmp261354 _%dirs260302%_))))
          (let _%lp260311%_ ((_%rest260313%_ _%dirs260308%_))
            (let* ((_%rest260314260322%_ _%rest260313%_)
                   (_%else260316260330%_
                    (lambda ()
                      (let ((__tmp261355
                             (##structure-ref
                              _%ctx260280%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp261355
                         _%scm260284%_))))
                   (_%K260318260338%_
                    (lambda (_%rest260333%_ _%dir260334%_)
                      (let ((_%path260336%_
                             (path-expand _%scm260284%_ _%dir260334%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path260336%_))
                            _%path260336%_
                            (_%lp260311%_ _%rest260333%_))))))
              (if (pair? _%rest260314260322%_)
                  (let ((_%hd260319260341%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest260314260322%_)))
                        (_%tl260320260343%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest260314260322%_))))
                    (let* ((_%dir260346%_ _%hd260319260341%_)
                           (_%rest260348%_ _%tl260320260343%_))
                      (_%K260318260338%_ _%rest260348%_ _%dir260346%_)))
                  (_%else260316260330%_)))))))
    (define gxc#file-empty?
      (lambda (_%path260278%_)
        (zero? (let ((__tmp261356 (file-info _%path260278%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp261356)))))
    (define gxc#compile-top-module
      (lambda (_%ctx260269%_)
        (let ((__tmp261357
               (lambda ()
                 (let ((__tmp261358
                        (lambda ()
                          (let ((__tmp261359
                                 (lambda ()
                                   (let ((__tmp261361
                                          (lambda ()
                                            (let ((__tmp261363
                                                   (lambda ()
                                                     (let ((__tmp261365
                                                            (lambda ()
                                                              (let ((__tmp261366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx260269%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp261366))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp261367
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx260269%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp261367))
                          '#!void)
                      (gxc#collect-bindings _%ctx260269%_)
                      (gxc#compile-runtime-code _%ctx260269%_)
                      (gxc#compile-meta-code _%ctx260269%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx260269%_)
                          '#!void)))
                   (__tmp261364
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
                __tmp261365
                gxc#current-compile-runtime-names
                __tmp261364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp261362
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp261363
                                               gxc#current-compile-runtime-sections
                                               __tmp261362))))
                                         (__tmp261360
                                          (let ((__obj261258
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj261258))
                                            __obj261258)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp261361
                                      gxc#current-compile-symbol-table
                                      __tmp261360)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp261359
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp261358
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp261357
           gx#current-expander-context
           _%ctx260269%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx260267%_)
        (let ((__tmp261368
               (##structure-ref _%ctx260267%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp261368))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx260212%_)
        (letrec ((_%compile1260214%_
                  (lambda (_%ctx260256%_)
                    (let* ((_%code260258%_
                            (##structure-ref
                             _%ctx260256%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm260262%_
                            (let ((_%idstr260260%_
                                   (let ((__tmp261369
                                          (##structure-ref
                                           _%ctx260256%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp261369))))
                              (declare (not safe))
                              (##string-append _%idstr260260%_ '"~0")))
                           (_%rtc?260264%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code260258%_))))
                      (if _%rtc?260264%_
                          (let ((__tmp261370
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp261370
                             _%ctx260256%_
                             _%rtm260262%_))
                          '#!void)
                      (_%generate-runtime-code260216%_
                       _%ctx260256%_
                       _%code260258%_
                       (if _%rtc?260264%_ _%rtm260262%_ '#f)))))
                 (_%context-timestamp260215%_
                  (lambda (_%ctx260254%_)
                    (let ((__tmp261371
                           (let ((__tmp261372
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx260254%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp261372 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp261371))))
                 (_%generate-runtime-code260216%_
                  (lambda (_%ctx260223%_ _%code260224%_ _%rtm260225%_)
                    (let* ((_%runtime-code?260227%_ (if _%rtm260225%_ '#t '#f))
                           (_%lifts260229%_ (box '()))
                           (_%runtime-code260235%_
                            (if _%runtime-code?260227%_
                                (let ((__tmp261373
                                       (lambda ()
                                         (let ((__tmp261374
                                                (lambda ()
                                                  (let ((__tmp261375
                                                         (lambda ()
                                                           (let ((__tmp261377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code260224%_))))
                         (__tmp261376
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp261377
                      gxc#current-compile-marks
                      __tmp261376)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp261375
                                                     gxc#current-compile-lift
                                                     _%lifts260229%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp261374
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp261373
                                   gx#current-expander-context
                                   _%ctx260223%_))
                                '#f))
                           (_%runtime-code260237%_
                            (if _%runtime-code?260227%_
                                (if (null? (unbox _%lifts260229%_))
                                    _%runtime-code260235%_
                                    (cons 'begin
                                          (let ((__tmp261379
                                                 (cons _%runtime-code260235%_
                                                       '()))
                                                (__tmp261378
                                                 (reverse (unbox _%lifts260229%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp261379
                                             __tmp261378))))
                                '#f))
                           (_%runtime-code260239%_
                            (if _%runtime-code?260227%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp260215%_
                                                         _%ctx260223%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code260237%_ '())))
                                '#f))
                           (_%loader-code260242%_
                            (let ((__tmp261380
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code260224%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp261380
                               gx#current-expander-context
                               _%ctx260223%_)))
                           (_%loader-code260244%_
                            (cons 'begin
                                  (cons _%loader-code260242%_
                                        (cons (if _%runtime-code?260227%_
                                                  (cons 'load-module
                                                        (cons _%rtm260225%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0260246%_
                            (gxc#compile-output-file _%ctx260223%_ '0 '".scm"))
                           (_%scmrt260248%_
                            (gxc#compile-output-file
                             _%ctx260223%_
                             '#f
                             '".scm"))
                           (_%scms260250%_
                            (gxc#compile-static-output-file _%ctx260223%_)))
                      (if _%runtime-code?260227%_
                          (gxc#compile-scm-file__0
                           _%scm0260246%_
                           _%runtime-code260239%_)
                          '#!void)
                      (let ((__tmp261381
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt260248%_
                                _%loader-code260244%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp261381
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms260250%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms260250%_))
                          '#!void)
                      (if _%runtime-code?260227%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0260246%_ _%scms260250%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms260250%_ void)))))))
          (let* ((_%all-modules260218%_
                  (cons _%ctx260212%_ (gxc#lift-nested-modules _%ctx260212%_)))
                 (__tmp261382
                  (lambda (_%ctx260220%_)
                    (let ((__tmp261383
                           (lambda () (_%compile1260214%_ _%ctx260220%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp261383
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp261382 _%all-modules260218%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx260111%_)
        (letrec ((_%compile-ssi260113%_
                  (lambda (_%code260180%_)
                    (let* ((_%path260182%_
                            (gxc#compile-output-file
                             _%ctx260111%_
                             '#f
                             '".ssi"))
                           (_%prelude260194%_
                            (let* ((_%super260184%_
                                    (##structure-ref
                                     _%ctx260111%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e260186%_
                                    (##structure-ref
                                     _%super260184%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e260186%_
                                  ((lambda (_%g260188260190%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g260188260190%_)))
                                   _%$e260186%_)
                                  ':<root>)))
                           (_%ns260196%_
                            (##structure-ref
                             _%ctx260111%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr260198%_
                            (symbol->string
                             (##structure-ref
                              _%ctx260111%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg260206%_
                            (let ((_%$e260200%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr260198%_ '#\/))))
                              (if _%$e260200%_
                                  ((lambda (_%x260203%_)
                                     (let ((__tmp261384
                                            (substring
                                             _%idstr260198%_
                                             '0
                                             _%x260203%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp261384)))
                                   _%$e260200%_)
                                  '#f)))
                           (_%rt260208%_
                            (let ((__tmp261385
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp261385 _%ctx260111%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path260182%_))
                      (gxc#with-output-to-scheme-file
                       _%path260182%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude260194%_))
                         (if _%pkg260206%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg260206%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns260196%_))
                         (newline)
                         (pretty-print _%code260180%_)
                         (if _%rt260208%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt260208%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi260114%_
                  (lambda (_%part260119%_)
                    (let* ((_%part260120260133%_ _%part260119%_)
                           (_%E260122260137%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part260120260133%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K260123260149%_
                            (lambda (_%code260140%_
                                     _%n260141%_
                                     _%phi260142%_
                                     _%phi-ctx260143%_)
                              (let ((_%code260147%_
                                     (let ((__tmp261386
                                            (lambda ()
                                              (let ((__tmp261387
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code260140%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp261387
                                                 gx#current-expander-phi
                                                 _%phi260142%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp261386
                                        gx#current-expander-context
                                        _%phi-ctx260143%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx260111%_
                                  _%n260141%_
                                  '".scm")
                                 _%code260147%_
                                 '#t)))))
                      (if (pair? _%part260120260133%_)
                          (let ((_%hd260124260152%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part260120260133%_)))
                                (_%tl260125260154%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part260120260133%_))))
                            (let ((_%phi-ctx260157%_ _%hd260124260152%_))
                              (if (pair? _%tl260125260154%_)
                                  (let ((_%hd260126260159%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl260125260154%_)))
                                        (_%tl260127260161%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl260125260154%_))))
                                    (let ((_%phi260164%_ _%hd260126260159%_))
                                      (if (pair? _%tl260127260161%_)
                                          (let ((_%hd260128260166%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl260127260161%_)))
                                                (_%tl260129260168%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl260127260161%_))))
                                            (let ((_%n260171%_
                                                   _%hd260128260166%_))
                                              (if (pair? _%tl260129260168%_)
                                                  (let ((_%hd260130260173%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl260129260168%_)))
                                                        (_%tl260131260175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl260129260168%_))))
                                                    (let ((_%code260178%_
                                                           _%hd260130260173%_))
                                                      (if (null? _%tl260131260175%_)
                                                          (_%K260123260149%_
                                                           _%code260178%_
                                                           _%n260171%_
                                                           _%phi260164%_
                                                           _%phi-ctx260157%_)
                                                          (_%E260122260137%_))))
                                                  (_%E260122260137%_))))
                                          (_%E260122260137%_))))
                                  (_%E260122260137%_))))
                          (_%E260122260137%_))))))
          (let ((_g261388_ (gxc#generate-meta-code _%ctx260111%_)))
            (begin
              (let ((_g261389_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g261388_)
                           (##values-length _g261388_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g261389_ 2)))
                    (error "Context expects 2 values" _g261389_)))
              (let ((_%ssi-code260116%_
                     (let () (declare (not safe)) (##values-ref _g261388_ 0)))
                    (_%phi-code260117%_
                     (let () (declare (not safe)) (##values-ref _g261388_ 1))))
                (begin
                  (_%compile-ssi260113%_ _%ssi-code260116%_)
                  (for-each _%compile-phi260114%_ _%phi-code260117%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx260093%_)
        (let* ((_%path260095%_
                (gxc#compile-output-file _%ctx260093%_ '#f '".ssxi.ss"))
               (_%code260097%_
                (let ((__tmp261390
                       (##structure-ref
                        _%ctx260093%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp261390)))
               (_%idstr260099%_
                (symbol->string
                 (##structure-ref
                  _%ctx260093%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg260107%_
                (let ((_%$e260101%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr260099%_ '#\/))))
                  (if _%$e260101%_
                      ((lambda (_%x260104%_)
                         (let ((__tmp261391
                                (substring _%idstr260099%_ '0 _%x260104%_)))
                           (declare (not safe))
                           (##string->symbol __tmp261391)))
                       _%$e260101%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path260095%_))
          (gxc#with-output-to-scheme-file
           _%path260095%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg260107%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg260107%_))
                 '#!void)
             (newline)
             (pretty-print _%code260097%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx260086%_)
        (let* ((_%state260088%_
                (let ((__obj261259
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj261259 _%ctx260086%_))
                  __obj261259))
               (_%ssi-code260090%_
                (let ((__tmp261392
                       (##structure-ref
                        _%ctx260086%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state260088%_
                   __tmp261392))))
          (values _%ssi-code260090%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state260088%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx260078%_)
        (let* ((_%lifts260080%_ (box '()))
               (__tmp261393
                (lambda ()
                  (let ((__tmp261395
                         (lambda ()
                           (let ((_%code260084%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx260078%_))))
                             (if (null? (unbox _%lifts260080%_))
                                 _%code260084%_
                                 (cons 'begin
                                       (let ((__tmp261397
                                              (cons _%code260084%_ '()))
                                             (__tmp261396
                                              (reverse (unbox _%lifts260080%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp261397
                                          __tmp261396)))))))
                        (__tmp261394
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp261395
                     gxc#current-compile-marks
                     __tmp261394)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp261393
           gxc#current-compile-lift
           _%lifts260080%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx260074%_)
        (let ((_%modules260076%_ (box '())))
          (let ((__tmp261398
                 (##structure-ref _%ctx260074%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules260076%_ __tmp261398))
          (reverse (unbox _%modules260076%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path260054%_ _%code260055%_ _%phi?260056%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path260054%_))
        (gxc#with-output-to-scheme-file
         _%path260054%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp261399
                                           (if _%phi?260056%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp261399)))))))
           (pretty-print _%code260055%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it260060%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path260054%_ _%phi?260056%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp261400
                         (cons 'compile-file (cons _%path260054%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it260060%_ __tmp261400))
                  (_%compile-it260060%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path260065%_ _%code260066%_)
        (let ((_%phi?260068%_ '#f))
          (gxc#compile-scm-file__%
           _%path260065%_
           _%code260066%_
           _%phi?260068%_))))
    (define gxc#compile-scm-file
      (lambda _g261401_
        (let ((_g261402_ (let () (declare (not safe)) (##length _g261401_))))
          (cond ((let () (declare (not safe)) (##fx= _g261402_ 2))
                 (apply gxc#compile-scm-file__0 _g261401_))
                ((let () (declare (not safe)) (##fx= _g261402_ 3))
                 (apply gxc#compile-scm-file__% _g261401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g261401_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?259955%_)
        (let _%lp259957%_ ((_%rest259959%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts259960%_ '()))
          (let* ((_%rest259961259981%_ _%rest259959%_)
                 (_%else259965259989%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts259960%_)))
                        (reverse _%opts259960%_)))))
            (let ((_%K259975260032%_
                   (lambda (_%rest260030%_)
                     (_%lp259957%_ _%rest260030%_ _%opts259960%_)))
                  (_%K259970260014%_
                   (lambda (_%rest260012%_)
                     (_%lp259957%_ _%rest260012%_ _%opts259960%_)))
                  (_%K259967259996%_
                   (lambda (_%rest259993%_ _%opt259994%_)
                     (_%lp259957%_
                      _%rest259993%_
                      (cons _%opt259994%_ _%opts259960%_)))))
              (if (pair? _%rest259961259981%_)
                  (let ((_%tl259977260037%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259961259981%_)))
                        (_%hd259976260035%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259961259981%_))))
                    (if (equal? _%hd259976260035%_ '"-cc-options")
                        (if (pair? _%tl259977260037%_)
                            (let* ((_%tl259979260040%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl259977260037%_)))
                                   (_%rest260043%_ _%tl259979260040%_))
                              (_%K259975260032%_ _%rest260043%_))
                            (let ((_%opt260004%_ _%hd259976260035%_)
                                  (_%rest260006%_ _%tl259977260037%_))
                              (_%K259967259996%_
                               _%rest260006%_
                               _%opt260004%_)))
                        (if (equal? _%hd259976260035%_ '"-ld-options")
                            (if (pair? _%tl259977260037%_)
                                (let* ((_%tl259974260022%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl259977260037%_)))
                                       (_%rest260025%_ _%tl259974260022%_))
                                  (_%K259970260014%_ _%rest260025%_))
                                (let ((_%opt260004%_ _%hd259976260035%_)
                                      (_%rest260006%_ _%tl259977260037%_))
                                  (_%K259967259996%_
                                   _%rest260006%_
                                   _%opt260004%_)))
                            (let ((_%opt260004%_ _%hd259976260035%_)
                                  (_%rest260006%_ _%tl259977260037%_))
                              (_%K259967259996%_
                               _%rest260006%_
                               _%opt260004%_)))))
                  (_%else259965259989%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?260049%_ '#f)) (gxc#gsc-link-options__% _%phi?260049%_))))
    (define gxc#gsc-link-options
      (lambda _g261403_
        (let ((_g261404_ (let () (declare (not safe)) (##length _g261403_))))
          (cond ((let () (declare (not safe)) (##fx= _g261404_ 0))
                 (apply gxc#gsc-link-options__0 _g261403_))
                ((let () (declare (not safe)) (##fx= _g261404_ 1))
                 (apply gxc#gsc-link-options__% _g261403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g261403_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords259805%_ _%static?259801259806%_ _%phi?259807%_)
        (let ((_%static?259809%_
               (if (eq? _%static?259801259806%_ absent-value)
                   '#f
                   _%static?259801259806%_)))
          (if _%phi?259807%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp259811%_ ((_%rest259813%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts259814%_ '()))
                (let* ((_%rest259815259841%_ _%rest259813%_)
                       (_%else259820259849%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts259814%_)))
                              (reverse! _%opts259814%_)))))
                  (let ((_%K259835259912%_
                         (lambda (_%rest259909%_ _%opt259910%_)
                           (if _%static?259809%_
                               (_%lp259811%_
                                _%rest259909%_
                                (cons _%opt259910%_
                                      (cons '"-cc-options" _%opts259814%_)))
                               (_%lp259811%_ _%rest259909%_ _%opts259814%_))))
                        (_%K259830259889%_
                         (lambda (_%rest259886%_ _%opt259887%_)
                           (_%lp259811%_
                            _%rest259886%_
                            (cons _%opt259887%_
                                  (cons '"-cc-options" _%opts259814%_)))))
                        (_%K259825259869%_
                         (lambda (_%rest259867%_)
                           (_%lp259811%_ _%rest259867%_ _%opts259814%_)))
                        (_%K259822259855%_
                         (lambda (_%rest259853%_)
                           (_%lp259811%_ _%rest259853%_ _%opts259814%_))))
                    (if (pair? _%rest259815259841%_)
                        (let ((_%tl259837259917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest259815259841%_)))
                              (_%hd259836259915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest259815259841%_))))
                          (if (equal? _%hd259836259915%_ '"-cc-options")
                              (if (pair? _%tl259837259917%_)
                                  (let ((_%tl259839259922%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl259837259917%_)))
                                        (_%hd259838259920%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl259837259917%_))))
                                    (if (equal? _%hd259838259920%_ '"-Bstatic")
                                        (let ((_%opt259925%_
                                               _%hd259838259920%_)
                                              (_%rest259927%_
                                               _%tl259839259922%_))
                                          (_%K259835259912%_
                                           _%rest259927%_
                                           _%opt259925%_))
                                        (let ((_%opt259902%_
                                               _%hd259838259920%_)
                                              (_%rest259904%_
                                               _%tl259839259922%_))
                                          (_%K259830259889%_
                                           _%rest259904%_
                                           _%opt259902%_))))
                                  (let ((_%rest259861%_ _%tl259837259917%_))
                                    (_%K259822259855%_ _%rest259861%_)))
                              (if (equal? _%hd259836259915%_ '"-ld-options")
                                  (if (pair? _%tl259837259917%_)
                                      (let* ((_%tl259829259877%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl259837259917%_)))
                                             (_%rest259880%_
                                              _%tl259829259877%_))
                                        (_%K259825259869%_ _%rest259880%_))
                                      (let ((_%rest259861%_
                                             _%tl259837259917%_))
                                        (_%K259822259855%_ _%rest259861%_)))
                                  (let ((_%rest259861%_ _%tl259837259917%_))
                                    (_%K259822259855%_ _%rest259861%_)))))
                        (_%else259820259849%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords259932%_ _%static?259801259933%_)
        (let ((_%phi?259935%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords259932%_
           _%static?259801259933%_
           _%phi?259935%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g261405_
        (let ((_g261406_ (let () (declare (not safe)) (##length _g261405_))))
          (cond ((let () (declare (not safe)) (##fx= _g261406_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g261405_))
                ((let () (declare (not safe)) (##fx= _g261406_ 3))
                 (apply gxc#gsc-cc-options__%__% _g261405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g261405_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords259944%_ . _%args259945%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords259944%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259944%_
                  'static:
                  absent-value))
               _%args259945%_)))
    (define gxc#gsc-cc-options
      (lambda _%args259802259951%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args259802259951%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords259651%_ _%static?259647259652%_ _%phi?259653%_)
        (let ((_%static?259655%_
               (if (eq? _%static?259647259652%_ absent-value)
                   '#f
                   _%static?259647259652%_)))
          (if _%phi?259653%_
              '()
              (let _%lp259657%_ ((_%rest259659%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts259660%_ '()))
                (let* ((_%rest259661259687%_ _%rest259659%_)
                       (_%else259666259695%_
                        (lambda () (reverse! _%opts259660%_))))
                  (let ((_%K259681259758%_
                         (lambda (_%rest259755%_ _%opt259756%_)
                           (if _%static?259655%_
                               (_%lp259657%_
                                _%rest259755%_
                                (cons _%opt259756%_
                                      (cons '"-ld-options" _%opts259660%_)))
                               (_%lp259657%_ _%rest259755%_ _%opts259660%_))))
                        (_%K259676259735%_
                         (lambda (_%rest259732%_ _%opt259733%_)
                           (_%lp259657%_
                            _%rest259732%_
                            (cons _%opt259733%_
                                  (cons '"-ld-options" _%opts259660%_)))))
                        (_%K259671259715%_
                         (lambda (_%rest259713%_)
                           (_%lp259657%_ _%rest259713%_ _%opts259660%_)))
                        (_%K259668259701%_
                         (lambda (_%rest259699%_)
                           (_%lp259657%_ _%rest259699%_ _%opts259660%_))))
                    (if (pair? _%rest259661259687%_)
                        (let ((_%tl259683259763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest259661259687%_)))
                              (_%hd259682259761%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest259661259687%_))))
                          (if (equal? _%hd259682259761%_ '"-ld-options")
                              (if (pair? _%tl259683259763%_)
                                  (let ((_%tl259685259768%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl259683259763%_)))
                                        (_%hd259684259766%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl259683259763%_))))
                                    (if (equal? _%hd259684259766%_ '"-static")
                                        (let ((_%opt259771%_
                                               _%hd259684259766%_)
                                              (_%rest259773%_
                                               _%tl259685259768%_))
                                          (_%K259681259758%_
                                           _%rest259773%_
                                           _%opt259771%_))
                                        (let ((_%opt259748%_
                                               _%hd259684259766%_)
                                              (_%rest259750%_
                                               _%tl259685259768%_))
                                          (_%K259676259735%_
                                           _%rest259750%_
                                           _%opt259748%_))))
                                  (let ((_%rest259707%_ _%tl259683259763%_))
                                    (_%K259668259701%_ _%rest259707%_)))
                              (if (equal? _%hd259682259761%_ '"-cc-options")
                                  (if (pair? _%tl259683259763%_)
                                      (let* ((_%tl259675259723%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl259683259763%_)))
                                             (_%rest259726%_
                                              _%tl259675259723%_))
                                        (_%K259671259715%_ _%rest259726%_))
                                      (let ((_%rest259707%_
                                             _%tl259683259763%_))
                                        (_%K259668259701%_ _%rest259707%_)))
                                  (let ((_%rest259707%_ _%tl259683259763%_))
                                    (_%K259668259701%_ _%rest259707%_)))))
                        (_%else259666259695%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords259778%_ _%static?259647259779%_)
        (let ((_%phi?259781%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords259778%_
           _%static?259647259779%_
           _%phi?259781%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g261407_
        (let ((_g261408_ (let () (declare (not safe)) (##length _g261407_))))
          (cond ((let () (declare (not safe)) (##fx= _g261408_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g261407_))
                ((let () (declare (not safe)) (##fx= _g261408_ 3))
                 (apply gxc#gsc-ld-options__%__% _g261407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g261407_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords259790%_ . _%args259791%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords259790%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259790%_
                  'static:
                  absent-value))
               _%args259791%_)))
    (define gxc#gsc-ld-options
      (lambda _%args259648259797%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args259648259797%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir259642%_)
        (let ((_%user-staticdir259644%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir259642%_
                       '" -I "
                       _%user-staticdir259644%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp259554%_ ((_%rest259556%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts259557%_ '()))
          (let* ((_%rest259558259578%_ _%rest259556%_)
                 (_%else259562259586%_ (lambda () _%opts259557%_)))
            (let ((_%K259572259629%_
                   (lambda (_%rest259627%_)
                     (_%lp259554%_ _%rest259627%_ _%opts259557%_)))
                  (_%K259567259607%_
                   (lambda (_%rest259604%_ _%opt259605%_)
                     (_%lp259554%_
                      _%rest259604%_
                      (let ((__tmp261409
                             (let ((__tmp261410
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt259605%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp261410))))
                        (declare (not safe))
                        (##append _%opts259557%_ __tmp261409)))))
                  (_%K259564259592%_
                   (lambda (_%rest259590%_)
                     (_%lp259554%_ _%rest259590%_ _%opts259557%_))))
              (if (pair? _%rest259558259578%_)
                  (let ((_%tl259574259634%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259558259578%_)))
                        (_%hd259573259632%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259558259578%_))))
                    (if (equal? _%hd259573259632%_ '"-cc-options")
                        (if (pair? _%tl259574259634%_)
                            (let* ((_%tl259576259637%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl259574259634%_)))
                                   (_%rest259640%_ _%tl259576259637%_))
                              (_%K259572259629%_ _%rest259640%_))
                            (let ((_%rest259598%_ _%tl259574259634%_))
                              (_%K259564259592%_ _%rest259598%_)))
                        (if (equal? _%hd259573259632%_ '"-ld-options")
                            (if (pair? _%tl259574259634%_)
                                (let ((_%tl259571259617%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl259574259634%_)))
                                      (_%hd259570259615%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl259574259634%_))))
                                  (let ((_%opt259620%_ _%hd259570259615%_)
                                        (_%rest259622%_ _%tl259571259617%_))
                                    (_%K259567259607%_
                                     _%rest259622%_
                                     _%opt259620%_)))
                                (let ((_%rest259598%_ _%tl259574259634%_))
                                  (_%K259564259592%_ _%rest259598%_)))
                            (let ((_%rest259598%_ _%tl259574259634%_))
                              (_%K259564259592%_ _%rest259598%_)))))
                  (_%else259562259586%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str259551%_)
        (not (let () (declare (not safe)) (string-empty? _%str259551%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path259544%_ _%phi?259545%_)
        (let ((_%gsc-link-opts259547%_
               (gxc#gsc-link-options__% _%phi?259545%_))
              (_%gsc-cc-opts259548%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?259545%_))
              (_%gsc-ld-opts259549%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?259545%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp261411
                  (let ((__tmp261412
                         (let ((__tmp261413 (cons _%path259544%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp261413
                            _%gsc-link-opts259547%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp261412 _%gsc-ld-opts259549%_))))
             (declare (not safe))
             (foldr__0 cons __tmp261411 _%gsc-cc-opts259548%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx259510%_ _%n259511%_ _%ext259512%_)
        (letrec ((_%module-relative-path259514%_
                  (lambda (_%ctx259542%_)
                    (path-strip-directory
                     (let ((__tmp261414
                            (##structure-ref
                             _%ctx259542%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp261414)))))
                 (_%module-source-directory259515%_
                  (lambda (_%ctx259538%_)
                    (path-directory
                     (let ((_%mpath259540%_
                            (##structure-ref
                             _%ctx259538%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath259540%_)
                           _%mpath259540%_
                           (last _%mpath259540%_))))))
                 (_%section-string259516%_
                  (lambda (_%n259532%_)
                    (if (number? _%n259532%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n259532%_))
                        (if (symbol? _%n259532%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n259532%_))
                            (if (string? _%n259532%_)
                                _%n259532%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n259532%_)))))))
                 (_%file-name259517%_
                  (lambda (_%path259530%_)
                    (if _%n259511%_
                        (string-append
                         _%path259530%_
                         '"~"
                         (_%section-string259516%_ _%n259511%_)
                         _%ext259512%_)
                        (string-append _%path259530%_ _%ext259512%_))))
                 (_%file-path259518%_
                  (lambda ()
                    (let ((_%$e259524%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e259524%_
                          ((lambda (_%outdir259527%_)
                             (path-expand
                              (_%file-name259517%_
                               (let ((__tmp261415
                                      (##structure-ref
                                       _%ctx259510%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp261415)))
                              _%outdir259527%_))
                           _%$e259524%_)
                          (path-expand
                           (_%file-name259517%_
                            (_%module-relative-path259514%_ _%ctx259510%_))
                           (_%module-source-directory259515%_
                            _%ctx259510%_)))))))
          (let ((_%path259520%_ (_%file-path259518%_)))
            (let ((__tmp261416
                   (lambda ()
                     (let ((__tmp261417 (path-directory _%path259520%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp261417)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp261416))
            _%path259520%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx259491%_)
        (letrec ((_%file-name259493%_
                  (lambda (_%id259508%_)
                    (let ((__tmp261418 (gxc#static-module-name _%id259508%_)))
                      (declare (not safe))
                      (##string-append __tmp261418 '".scm"))))
                 (_%file-path259494%_
                  (lambda ()
                    (let* ((_%file259500%_
                            (_%file-name259493%_
                             (##structure-ref
                              _%ctx259491%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e259502%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e259502%_
                          ((lambda (_%outdir259505%_)
                             (path-expand
                              _%file259500%_
                              (path-expand '"static" _%outdir259505%_)))
                           _%$e259502%_)
                          (path-expand _%file259500%_ '"static"))))))
          (let ((_%path259496%_ (_%file-path259494%_)))
            (let ((__tmp261419
                   (lambda ()
                     (let ((__tmp261420 (path-directory _%path259496%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp261420)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp261419))
            _%path259496%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx259484%_ _%opts259485%_)
        (let ((_%$e259487%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts259485%_))))
          (if _%$e259487%_
              _%$e259487%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx259484%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr259474%_)
        (if (string? _%idstr259474%_)
            (let* ((_%str259477%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr259474%_)))
                   (_%strs259479%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str259477%_ '#\/))))
              (declare (not safe))
              (string-join _%strs259479%_ '"__"))
            (if (symbol? _%idstr259474%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr259474%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr259474%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp261421
               (let ((__tmp261422 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp261422 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp261421))))
    (define gxc#invoke__%
      (lambda (_%@@keywords259440%_
               _%stdout-redirection259436259441%_
               _%stderr-redirection259437259442%_
               _%program259443%_
               _%args259444%_)
        (let* ((_%stdout-redirection259446%_
                (if (eq? _%stdout-redirection259436259441%_ absent-value)
                    '#f
                    _%stdout-redirection259436259441%_))
               (_%stderr-redirection259448%_
                (if (eq? _%stderr-redirection259437259442%_ absent-value)
                    '#f
                    _%stderr-redirection259437259442%_)))
          (let ((__tmp261423 (cons _%program259443%_ _%args259444%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp261423))
          (let* ((_%proc259450%_
                  (open-process
                   (cons 'path:
                         (cons _%program259443%_
                               (cons 'arguments:
                                     (cons _%args259444%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection259446%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection259448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output259455%_
                  (if (or _%stdout-redirection259446%_
                          _%stderr-redirection259448%_)
                      (read-line _%proc259450%_ '#f)
                      '#f))
                 (_%status259458%_ (process-status _%proc259450%_)))
            (let () (declare (not safe)) (##close-port _%proc259450%_))
            (if (zero? _%status259458%_)
                '#!void
                (begin
                  (display _%output259455%_)
                  (let ((__tmp261424 (cons _%program259443%_ _%args259444%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp261424
                     _%status259458%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords259463%_ . _%args259464%_)
        (apply gxc#invoke__%
               _%@@keywords259463%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259463%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259463%_
                  'stderr-redirection:
                  absent-value))
               _%args259464%_)))
    (define gxc#invoke
      (lambda _%args259438259470%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args259438259470%_)))))
