(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1784279023)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp270285 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp270285))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp270286 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp270286))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path270142%_ _%fun270143%_)
        (with-output-to-file
         (cons 'path: (cons _%path270142%_ gxc#scheme-file-settings))
         _%fun270143%_)))
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
      (lambda (_%gerbil-libdir270137%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir270137%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path270135%_)
        (let ((__tmp270287 (object->string _%path270135%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp270287 '")"))))
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
      (lambda (_%dir270133%_) (delete-file-or-directory _%dir270133%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath270076%_ _%opts270077%_)
        (if (string? _%srcpath270076%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath270076%_)))
        (let* ((_%outdir270079%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts270077%_)))
               (_%invoke-gsc?270081%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts270077%_)))
               (_%target270086%_
                (let ((_%$e270083%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts270077%_))))
                  (if _%$e270083%_ _%$e270083%_ 'C)))
               (_%gsc-options270091%_
                (append (cons '"-target"
                              (cons (symbol->string _%target270086%_) '()))
                        (let ((_%$e270088%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts270077%_))))
                          (if _%$e270088%_ _%$e270088%_ '()))))
               (_%keep-scm?270093%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts270077%_)))
               (_%verbosity270095%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts270077%_)))
               (_%optimize270097%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts270077%_)))
               (_%debug270099%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts270077%_)))
               (_%gen-ssxi270101%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts270077%_)))
               (_%parallel?270103%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts270077%_))))
          (if _%outdir270079%_
              (let ((__tmp270288
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir270079%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp270288))
              '#!void)
          (if _%optimize270097%_
              (let ((__tmp270289
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp270289))
              '#!void)
          (let ((__tmp270290
                 (lambda ()
                   (let ((__tmp270291
                          (lambda ()
                            (let ((__tmp270292
                                   (lambda ()
                                     (let ((__tmp270293
                                            (lambda ()
                                              (let ((__tmp270294
                                                     (lambda ()
                                                       (let ((__tmp270295
                                                              (lambda ()
                                                                (let ((__tmp270296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp270297
                                        (lambda ()
                                          (let ((__tmp270299
                                                 (lambda ()
                                                   (let ((__tmp270301
                                                          (lambda ()
                                                            (let ((__tmp270303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp270304
                                    (lambda ()
                                      (let ((__tmp270305
                                             (lambda ()
                                               (let ((__tmp270306
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath270076%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp270307
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath270076%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp270307))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp270306
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp270305
                                         gx#current-compilation-target
                                         _%target270086%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp270304
                                gxc#current-compile-parallel
                                _%parallel?270103%_))))
                          (__tmp270302
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp270303
                       gxc#current-compile-identifiers
                       __tmp270302))))
                 (__tmp270300 (list (list 'compile-module _%srcpath270076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp270301
                                                      gxc#current-compile-context
                                                      __tmp270300))))
                                                (__tmp270298
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp270299
                                             gxc#current-compile-timestamp
                                             __tmp270298)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp270297
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi270101%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp270296
                           gxc#current-compile-debug
                           _%debug270099%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp270295
                  gxc#current-compile-optimize
                  _%optimize270097%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp270294
                                                 gxc#current-compile-verbose
                                                 _%verbosity270095%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp270293
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?270093%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp270292
                               gxc#current-compile-gsc-options
                               _%gsc-options270091%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp270291
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?270081%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp270290
             gxc#current-compile-output-dir
             _%outdir270079%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath270126%_)
        (let ((_%opts270128%_ '()))
          (gxc#compile-module__% _%srcpath270126%_ _%opts270128%_))))
    (define gxc#compile-module
      (lambda _g270308_
        (let ((_g270309_ (let () (declare (not safe)) (##length _g270308_))))
          (cond ((let () (declare (not safe)) (##fx= _g270309_ 1))
                 (apply gxc#compile-module__0 _g270308_))
                ((let () (declare (not safe)) (##fx= _g270309_ 2))
                 (apply gxc#compile-module__% _g270308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g270308_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath270025%_ _%opts270026%_)
        (if (string? _%srcpath270025%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath270025%_)))
        (let* ((_%outdir270028%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts270026%_)))
               (_%invoke-gsc?270030%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts270026%_)))
               (_%target270035%_
                (let ((_%$e270032%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts270026%_))))
                  (if _%$e270032%_ _%$e270032%_ 'C)))
               (_%gsc-options270040%_
                (append (cons '"-target"
                              (cons (symbol->string _%target270035%_) '()))
                        (let ((_%$e270037%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts270026%_))))
                          (if _%$e270037%_ _%$e270037%_ '()))))
               (_%keep-scm?270042%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts270026%_)))
               (_%verbosity270044%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts270026%_)))
               (_%debug270046%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts270026%_)))
               (_%parallel?270048%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts270026%_))))
          (if _%outdir270028%_
              (let ((__tmp270310
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir270028%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp270310))
              '#!void)
          (let ((__tmp270311
                 (lambda ()
                   (let ((__tmp270312
                          (lambda ()
                            (let ((__tmp270313
                                   (lambda ()
                                     (let ((__tmp270314
                                            (lambda ()
                                              (let ((__tmp270315
                                                     (lambda ()
                                                       (let ((__tmp270316
                                                              (lambda ()
                                                                (let ((__tmp270317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp270319
                                        (lambda ()
                                          (let ((__tmp270321
                                                 (lambda ()
                                                   (let ((__tmp270323
                                                          (lambda ()
                                                            (let ((__tmp270324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp270325
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath270025%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp270326
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath270025%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp270326))
                                       _%opts270026%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp270325
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp270324
                       gxc#current-compile-parallel
                       _%parallel?270048%_))))
                 (__tmp270322
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp270323
                                                      gxc#current-compile-identifiers
                                                      __tmp270322))))
                                                (__tmp270320
                                                 (list (list 'compile-exe
                                                             _%srcpath270025%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp270321
                                             gxc#current-compile-context
                                             __tmp270320))))
                                       (__tmp270318 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp270319
                                    gxc#current-compile-timestamp
                                    __tmp270318)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp270317
                           gxc#current-compile-debug
                           _%debug270046%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp270316
                  gxc#current-compile-verbose
                  _%verbosity270044%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp270315
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?270042%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp270314
                                        gxc#current-compile-gsc-options
                                        _%gsc-options270040%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp270313
                               gx#current-compilation-target
                               _%target270035%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp270312
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?270030%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp270311
             gxc#current-compile-output-dir
             _%outdir270028%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath270068%_)
        (let ((_%opts270070%_ '()))
          (gxc#compile-exe__% _%srcpath270068%_ _%opts270070%_))))
    (define gxc#compile-exe
      (lambda _g270327_
        (let ((_g270328_ (let () (declare (not safe)) (##length _g270327_))))
          (cond ((let () (declare (not safe)) (##fx= _g270328_ 1))
                 (apply gxc#compile-exe__0 _g270327_))
                ((let () (declare (not safe)) (##fx= _g270328_ 2))
                 (apply gxc#compile-exe__% _g270327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g270327_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx270021%_ _%opts270022%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts270022%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx270021%_
             _%opts270022%_)
            (gxc#compile-executable-module/separate
             _%ctx270021%_
             _%opts270022%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx269747%_ _%opts269748%_)
        (letrec ((_%generate-stub269750%_
                  (lambda (_%builtin-modules270017%_)
                    (let ((_%mod-main270019%_
                           (gxc#find-runtime-symbol _%ctx269747%_ 'main)))
                      (let ((__tmp270329
                             (list 'define
                                   'builtin-modules
                                   (list 'quote _%builtin-modules270017%_))))
                        (declare (not safe))
                        (##write __tmp270329))
                      (let ((__tmp270330
                             (list 'define
                                   '(gerbil-main)
                                   (cons 'with-unwind-protect
                                         (cons (list 'lambda
                                                     '()
                                                     '(gerbil-runtime-init!
                                                       builtin-modules)
                                                     (cons 'apply
                                                           (cons _%mod-main270019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '((cdr (command-line))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '((lambda ()
                                                   (with-catch
                                                    void
                                                    (lambda ()
                                                      (force-output
                                                       (current-output-port))))
                                                   (with-catch
                                                    void
                                                    (lambda ()
                                                      (force-output
                                                       (current-error-port)))))))))))
                        (declare (not safe))
                        (##write __tmp270330))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts269751%_
                  (lambda (_%gerbil-libdir270015%_)
                    (let ((__tmp270331
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir270015%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp270331 read))))
                 (_%replace-extension269752%_
                  (lambda (_%path270012%_ _%ext270013%_)
                    (string-append
                     (path-strip-extension _%path270012%_)
                     _%ext270013%_)))
                 (_%replace-extension-with-c269753%_
                  (lambda (_%path270010%_)
                    (_%replace-extension269752%_ _%path270010%_ '".c")))
                 (_%replace-extension-with-object269754%_
                  (lambda (_%path270008%_)
                    (_%replace-extension269752%_
                     _%path270008%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?269755%_
                  (lambda (_%ctx270006%_)
                    (if (_%exclude-module?269757%_ _%ctx270006%_)
                        '#f
                        (not (_%libgerbil-module?269756%_ _%ctx270006%_)))))
                 (_%libgerbil-module?269756%_
                  (lambda (_%ctx269999%_)
                    (let ((_%id-str270001%_
                           (symbol->string
                            (##structure-ref
                             _%ctx269999%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?269757%_ _%id-str270001%_)
                          '#f
                          (let ((_%$e270003%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str270001%_))))
                            (if _%$e270003%_
                                _%$e270003%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str270001%_))))))))
                 (_%exclude-module?269757%_
                  (lambda (_%ctx-or-str269995%_)
                    (let ((_%str269997%_
                           (if (string? _%ctx-or-str269995%_)
                               _%ctx-or-str269995%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str269995%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str269997%_))))
                 (_%not-file-empty?269758%_
                  (lambda (_%path269993%_)
                    (not (gxc#file-empty? _%path269993%_))))
                 (_%fold-libgerbil-runtime-scm269759%_
                  (lambda (_%gerbil-staticdir269986%_ _%libgerbil-scm269987%_)
                    (let ((_%gerbil-runtime-scm269991%_
                           (let ((__tmp270332
                                  (lambda (_%rtm269989%_)
                                    (path-expand
                                     (let ((__tmp270333
                                            (let ((__tmp270334
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm269989%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp270334
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp270333 '".scm"))
                                     _%gerbil-staticdir269986%_))))
                             (declare (not safe))
                             (##map __tmp270332 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates269760%_
                       (append _%gerbil-runtime-scm269991%_
                               _%libgerbil-scm269987%_)))))
                 (_%remove-duplicates269760%_
                  (lambda (_%strlst269946%_)
                    (let _%loop269948%_ ((_%rest269950%_ _%strlst269946%_)
                                         (_%result269951%_ '()))
                      (let* ((_%$%rest269952269960%_ _%rest269950%_)
                             (_%$%else269954269968%_
                              (lambda () (reverse! _%result269951%_)))
                             (_%$%K269956269974%_
                              (lambda (_%rest269971%_ _%path269972%_)
                                (if (member _%path269972%_ _%result269951%_)
                                    (_%loop269948%_
                                     _%rest269971%_
                                     _%result269951%_)
                                    (_%loop269948%_
                                     _%rest269971%_
                                     (cons _%path269972%_
                                           _%result269951%_))))))
                        (if (pair? _%$%rest269952269960%_)
                            (let ((_%$%hd269957269977%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest269952269960%_)))
                                  (_%$%tl269958269979%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest269952269960%_))))
                              (let* ((_%path269982%_ _%$%hd269957269977%_)
                                     (_%rest269984%_ _%$%tl269958269979%_))
                                (_%$%K269956269974%_
                                 _%rest269984%_
                                 _%path269982%_)))
                            (_%$%else269954269968%_))))))
                 (_%compile-stub269761%_
                  (lambda (_%output-scm269768%_ _%output-bin269769%_)
                    (let* ((_%gerbil-home269771%_
                            (let ((__tmp270335
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp270335)))
                           (_%gerbil-libdir269773%_
                            (path-expand '"lib" _%gerbil-home269771%_))
                           (_%gerbil-staticdir269775%_
                            (path-expand '"static" _%gerbil-libdir269773%_))
                           (_%deps269777%_
                            (gxc#find-runtime-module-deps _%ctx269747%_))
                           (_%libgerbil-deps269779%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?269756%_
                               _%deps269777%_)))
                           (_%libgerbil-scm269781%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps269779%_)))
                           (_%libgerbil-scm269783%_
                            (_%fold-libgerbil-runtime-scm269759%_
                             _%gerbil-staticdir269775%_
                             _%libgerbil-scm269781%_))
                           (_%libgerbil-c269785%_
                            (map _%replace-extension-with-c269753%_
                                 _%libgerbil-scm269783%_))
                           (_%libgerbil-o269787%_
                            (map _%replace-extension-with-object269754%_
                                 _%libgerbil-scm269783%_))
                           (_%src-deps269789%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?269755%_
                               _%deps269777%_)))
                           (_%src-deps-scm269791%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps269789%_)))
                           (_%src-deps-scm269793%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?269758%_
                               _%src-deps-scm269791%_)))
                           (_%src-deps-scm269795%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm269793%_)))
                           (_%src-deps-c269797%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c269753%_
                                     _%src-deps-scm269795%_)))
                           (_%src-deps-o269799%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object269754%_
                                     _%src-deps-scm269795%_)))
                           (_%src-bin-scm269801%_
                            (gxc#find-static-module-file _%ctx269747%_))
                           (_%src-bin-scm269803%_
                            (path-expand _%src-bin-scm269801%_))
                           (_%src-bin-c269805%_
                            (_%replace-extension-with-c269753%_
                             _%src-bin-scm269803%_))
                           (_%src-bin-o269807%_
                            (_%replace-extension-with-object269754%_
                             _%src-bin-scm269803%_))
                           (_%output-bin269809%_
                            (path-expand _%output-bin269769%_))
                           (_%output-scm269811%_
                            (path-expand _%output-scm269768%_))
                           (_%output-c269813%_
                            (_%replace-extension-with-c269753%_
                             _%output-scm269811%_))
                           (_%output-o269815%_
                            (_%replace-extension-with-object269754%_
                             _%output-scm269811%_))
                           (_%output_-c269817%_
                            (_%replace-extension269752%_
                             _%output-scm269811%_
                             '"_.c"))
                           (_%output_-o269819%_
                            (_%replace-extension269752%_
                             _%output-scm269811%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts269821%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts269823%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts269825%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir269775%_))
                           (_%output-ld-opts269827%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts269829%_
                            (_%get-libgerbil-ld-opts269751%_
                             _%gerbil-libdir269773%_))
                           (_%rpath269831%_
                            (gxc#gerbil-rpath _%gerbil-libdir269773%_))
                           (_%builtin-modules269835%_
                            (_%remove-duplicates269760%_
                             (let ((__tmp270336
                                    (let ((__tmp270338
                                           (lambda (_%mod269833%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod269833%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp270337
                                           (cons _%ctx269747%_
                                                 _%deps269777%_)))
                                      (declare (not safe))
                                      (##map __tmp270338 __tmp270337))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp270336)))))
                      (letrec ((_%compile-obj269838%_
                                (lambda (_%scm-path269845%_ _%c-path269846%_)
                                  (let* ((_%o-path269848%_
                                          (_%replace-extension269752%_
                                           _%c-path269846%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock269850%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path269848%_
                                             '".lock")))
                                         (_%locked269852%_ '#f)
                                         (_%unlock269855%_
                                          (lambda ()
                                            (close-port _%locked269852%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock269850%_)))))
                                    (let _%retry269858%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock269850%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry269858%_))
                                          (begin
                                            (set! _%locked269852%_
                                                  (let* ((_%handler269861%_
                                                          false)
                                                         (_%thunk269865%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock269850%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler269870%_ _%handler269861%_)
                 (_%thunk269926%_ _%thunk269865%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler269870%_
                                                     _%thunk269926%_)))
                                            (if _%locked269852%_
                                                '#!void
                                                (_%retry269858%_)))))
                                    (let ((__tmp270340
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path269848%_)))
                                                     (not _%scm-path269845%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path269845%_
                                                        _%o-path269848%_)))
                                                 (let ((_%gsc-cc-opts269943%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp270341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp270342 (cons _%c-path269846%_ '())))
                           (declare (not safe))
                           (##append _%gsc-static-opts269825%_ __tmp270342))))
                    (declare (not safe))
                    (##append _%gsc-cc-opts269943%_ __tmp270341)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp270339
                                           (lambda () (_%unlock269855%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp270340
                                       __tmp270339))))))
                        (let ((__tmp270343
                               (lambda ()
                                 (let ((__tmp270344
                                        (path-directory _%output-bin269809%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp270344)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp270343))
                        (gxc#with-output-to-scheme-file
                         _%output-scm269811%_
                         (lambda ()
                           (_%generate-stub269750%_
                            _%builtin-modules269835%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it269843%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp270345
                                                   (let ((__tmp270346
                                                          (let ((__tmp270347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm269803%_
                               (cons _%output-scm269811%_ '()))))
                    (declare (not safe))
                    (##append _%src-deps-scm269795%_ __tmp270347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##append
                                                      _%libgerbil-c269785%_
                                                      __tmp270346))))
                                              (declare (not safe))
                                              (##append
                                               _%gsc-link-opts269821%_
                                               __tmp270345))))
                                     (let ((__tmp270350
                                            (let ((__tmp270351
                                                   (cons _%src-bin-scm269803%_
                                                         (cons _%output-scm269811%_
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-scm269795%_
                                               __tmp270351)))
                                           (__tmp270348
                                            (let ((__tmp270349
                                                   (cons _%src-bin-c269805%_
                                                         (cons _%output-c269813%_
                                                               (cons _%output_-c269817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-c269797%_
                                               __tmp270349))))
                                       (declare (not safe))
                                       (##for-each
                                        _%compile-obj269838%_
                                        __tmp270350
                                        __tmp270348))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin269809%_
                                                        (let ((__tmp270352
                                                               (cons _%src-bin-o269807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o269815%_
                                   (cons _%output_-o269819%_
                                         (let ((__tmp270353
                                                (let ((__tmp270354
                                                       (let ((__tmp270356
                                                              (if (gxc#gerbil-enable-shared?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath269831%_ '())
                          '()))
                     (__tmp270355
                      (cons '"-L"
                            (cons _%gerbil-libdir269773%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts269829%_)))))
                 (declare (not safe))
                 (##append __tmp270356 __tmp270355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (##append
                                                   _%output-ld-opts269827%_
                                                   __tmp270354))))
                                           (declare (not safe))
                                           (##append
                                            _%libgerbil-o269787%_
                                            __tmp270353)))))))
                  (declare (not safe))
                  (##append _%src-deps-o269799%_ __tmp270352))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp270357
                                            (cons _%output-c269813%_
                                                  (cons _%output_-c269817%_
                                                        (cons _%output-o269815%_
                                                              (cons _%output_-o269819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp270357)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it269843%_))
                                  (_%compile-it269843%_)))
                            '#!void))))))
          (let* ((_%output-bin269763%_
                  (gxc#compile-exe-output-file _%ctx269747%_ _%opts269748%_))
                 (_%output-scm269765%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin269763%_ '"__exe.scm"))))
            (_%compile-stub269761%_
             _%output-scm269765%_
             _%output-bin269763%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx269569%_ _%opts269570%_)
        (letrec ((_%reset-declare269572%_
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
                 (_%generate-stub269573%_
                  (lambda (_%deps269738%_)
                    (let ((_%mod-main269740%_
                           (gxc#find-runtime-symbol _%ctx269569%_ 'main))
                          (_%reset-decl269741%_ (_%reset-declare269572%_))
                          (_%user-decl269742%_ (_%user-declare269574%_)))
                      (for-each
                       (lambda (_%dep269744%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl269741%_))
                         (newline)
                         (if _%user-decl269742%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl269742%_))
                               (newline))
                             '#!void)
                         (let ((__tmp270358 (list 'include _%dep269744%_)))
                           (declare (not safe))
                           (##write __tmp270358))
                         (newline))
                       _%deps269738%_)
                      (let ((__tmp270359
                             (list 'define
                                   '(gerbil-main)
                                   '(gerbil-runtime-init! '())
                                   (cons 'apply
                                         (cons _%mod-main269740%_
                                               '((cdr (command-line))))))))
                        (declare (not safe))
                        (##write __tmp270359))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare269574%_
                  (lambda ()
                    (let* ((_%gsc-opts269643%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts269570%_)))
                           (_%gsc-prelude269645%_
                            (if _%gsc-opts269643%_
                                (member '"-prelude" _%gsc-opts269643%_)
                                '#f))
                           (_%gsc-prelude269647%_
                            (if _%gsc-prelude269645%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude269645%_)))
                                '#f)))
                      (let _%lp269650%_ ((_%rest269652%_
                                          (cons _%gsc-prelude269647%_ '()))
                                         (_%user-decls269653%_ '()))
                        (let* ((_%$%rest269654269662%_ _%rest269652%_)
                               (_%$%else269656269670%_
                                (lambda ()
                                  (if (null? _%user-decls269653%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls269653%_)))))
                               (_%$%K269658269726%_
                                (lambda (_%rest269673%_ _%expr269674%_)
                                  (let* ((_%$%expr269675269687%_
                                          _%expr269674%_)
                                         (_%$%else269678269695%_
                                          (lambda ()
                                            (_%lp269650%_
                                             _%rest269673%_
                                             _%user-decls269653%_))))
                                    (let ((_%$%K269683269716%_
                                           (lambda (_%decls269714%_)
                                             (_%lp269650%_
                                              _%rest269673%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls269653%_
                                                 _%decls269714%_)))))
                                          (_%$%K269680269701%_
                                           (lambda (_%exprs269699%_)
                                             (_%lp269650%_
                                              (append _%exprs269699%_
                                                      _%rest269673%_)
                                              _%user-decls269653%_))))
                                      (if (pair? _%$%expr269675269687%_)
                                          (let ((_%$%tl269685269721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr269675269687%_)))
                                                (_%$%hd269684269719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr269675269687%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd269684269719%_
                                                         'declare))
                                                (let ((_%decls269724%_
                                                       _%$%tl269685269721%_))
                                                  (_%$%K269683269716%_
                                                   _%decls269724%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd269684269719%_
                                                             'begin))
                                                    (let ((_%exprs269709%_
                                                           _%$%tl269685269721%_))
                                                      (_%$%K269680269701%_
                                                       _%exprs269709%_))
                                                    (_%$%else269678269695%_))))
                                          (_%$%else269678269695%_)))))))
                          (if (pair? _%$%rest269654269662%_)
                              (let ((_%$%hd269659269729%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest269654269662%_)))
                                    (_%$%tl269660269731%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest269654269662%_))))
                                (let* ((_%expr269734%_ _%$%hd269659269729%_)
                                       (_%rest269736%_ _%$%tl269660269731%_))
                                  (_%$%K269658269726%_
                                   _%rest269736%_
                                   _%expr269734%_)))
                              (_%$%else269656269670%_)))))))
                 (_%compile-stub269575%_
                  (lambda (_%output-scm269582%_ _%output-bin269583%_)
                    (let* ((_%gerbil-home269585%_
                            (let ((__tmp270360
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp270360)))
                           (_%gerbil-libdir269587%_
                            (path-expand '"lib" _%gerbil-home269585%_))
                           (_%runtime269589%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp269591%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home269585%_))
                           (_%include-gambit-sharp269593%_
                            (gxc#include-source _%gambit-sharp269591%_))
                           (_%bin-scm269595%_
                            (gxc#find-static-module-file _%ctx269569%_))
                           (_%deps269597%_
                            (gxc#find-runtime-module-deps _%ctx269569%_))
                           (_%deps269599%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps269597%_)))
                           (_%deps269604%_
                            (let ((__tmp270361
                                   (lambda (_%$obj269601%_)
                                     (not (gxc#file-empty? _%$obj269601%_)))))
                              (declare (not safe))
                              (##filter __tmp270361 _%deps269599%_)))
                           (_%deps269608%_
                            (let ((__tmp270362
                                   (lambda (_%f269606%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f269606%_
                                             _%runtime269589%_))))))
                              (declare (not safe))
                              (##filter __tmp270362 _%deps269604%_)))
                           (_%output-base269610%_
                            (let ((__tmp270363
                                   (path-strip-extension
                                    _%output-scm269582%_)))
                              (declare (not safe))
                              (##string-append __tmp270363)))
                           (_%output-c269612%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base269610%_ '".c")))
                           (_%output-o269614%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base269610%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_269616%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base269610%_ '"_.c")))
                           (_%output-o_269618%_
                            (let ((__tmp270364
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base269610%_
                               __tmp270364)))
                           (_%gsc-link-opts269620%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts269622%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts269624%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir269587%_)))
                           (_%output-ld-opts269626%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros269628%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp269593%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp269593%_
                                            '()))))
                           (_%gsc-link-opts269630%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts269620%_
                               _%gsc-gx-macros269628%_)))
                           (_%rpath269632%_
                            (gxc#gerbil-rpath _%gerbil-libdir269587%_))
                           (_%default-ld-options269634%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp270365
                             (lambda ()
                               (let ((__tmp270366
                                      (path-directory _%output-bin269583%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp270366)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp270365))
                      (gxc#with-output-to-scheme-file
                       _%output-scm269582%_
                       (lambda ()
                         (_%generate-stub269573%_
                          (let ((__tmp270367
                                 (let ((__tmp270368
                                        (cons _%bin-scm269595%_ '())))
                                   (declare (not safe))
                                   (##append _%deps269608%_ __tmp270368))))
                            (declare (not safe))
                            (##append _%runtime269589%_ __tmp270367)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it269640%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_269616%_
                                                      (let ((__tmp270369
                                                             (cons _%output-scm269582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (##append _%gsc-link-opts269630%_ __tmp270369))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp270370
                                                 (let ((__tmp270371
                                                        (cons _%output-c269612%_
                                                              (cons _%output-c_269616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (##append
                                                    _%gsc-static-opts269624%_
                                                    __tmp270371))))
                                            (declare (not safe))
                                            (##append
                                             _%gsc-cc-opts269622%_
                                             __tmp270370))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin269583%_
                                                      (cons _%output-o269614%_
                                                            (cons _%output-o_269618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp270372
                                 (let ((__tmp270374
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath269632%_ '())
                                            '()))
                                       (__tmp270373
                                        (cons '"-L"
                                              (cons _%gerbil-libdir269587%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options269634%_)))))
                                   (declare (not safe))
                                   (##append __tmp270374 __tmp270373))))
                            (declare (not safe))
                            (##append
                             _%output-ld-opts269626%_
                             __tmp270372)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it269640%_))
                                (_%compile-it269640%_)))
                          '#!void)))))
          (let* ((_%output-bin269577%_
                  (gxc#compile-exe-output-file _%ctx269569%_ _%opts269570%_))
                 (_%output-scm269579%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin269577%_ '"__exe.scm"))))
            (_%compile-stub269575%_
             _%output-scm269579%_
             _%output-bin269577%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx269518%_ _%id269519%_)
        (let ((_%$e269565%_
               (let ((__tmp270376
                      (lambda (_%$%e269520269522%_)
                        (let* ((_%$%$%e269520269524269534%_
                                _%$%e269520269522%_)
                               (_%$%else269526269542%_ (lambda () '#f))
                               (_%$%K269528269546%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e269520269524269534%_
                                 'gx#module-export::t))
                              (let* ((_%$%e269529269549%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e269520269524269534%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e269530269552%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e269520269524269534%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e269531269555%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e269520269524269534%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e269531269555%_ '0))
                                    (let ((_%$%e269532269558%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e269520269524269534%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e269532269558%_
                                               _%id269519%_)
                                          (_%$%K269528269546%_)
                                          (_%$%else269526269542%_)))
                                    (_%$%else269526269542%_)))
                              (_%$%else269526269542%_)))))
                     (__tmp270375
                      (##structure-ref
                       _%ctx269518%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp270376 __tmp270375))))
          (if _%$e269565%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e269565%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx269509%_ _%id269510%_)
        (let ((_%$e269512%_
               (gxc#find-export-binding _%ctx269509%_ _%id269510%_)))
          (if _%$e269512%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e269512%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id269510%_)))
                (##structure-ref _%$e269512%_ '1 gx#binding::t '#f))
              (let ((__tmp270377
                     (##structure-ref
                      _%ctx269509%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp270377
                 _%id269510%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx269375%_)
        (letrec* ((_%ht269377%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template269378%_
                   (lambda (_%in269454%_ _%phi269455%_)
                     (let ((_%iphi269457%_
                            (fx+ _%phi269455%_
                                 (##direct-structure-ref
                                  _%in269454%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports269458%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in269454%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp269460%_ ((_%rest269462%_ _%imports269458%_)
                                          (_%r269463%_ '()))
                         (let* ((_%$%rest269464269472%_ _%rest269462%_)
                                (_%$%else269466269480%_
                                 (lambda () _%r269463%_))
                                (_%$%K269468269497%_
                                 (lambda (_%rest269483%_ _%in269484%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in269484%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi269457%_))
                                           (_%lp269460%_
                                            _%rest269483%_
                                            (cons _%in269484%_ _%r269463%_))
                                           (_%lp269460%_
                                            _%rest269483%_
                                            _%r269463%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in269484%_
                                              'gx#module-import::t))
                                           (let ((_%iphi269488%_
                                                  (fx+ _%phi269455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in269484%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi269488%_))
                                                 (_%lp269460%_
                                                  _%rest269483%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in269484%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r269463%_))
                                                 (_%lp269460%_
                                                  _%rest269483%_
                                                  _%r269463%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in269484%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi269491%_
                                                      (fx+ _%iphi269457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in269484%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi269491%_))
                                                     (_%lp269460%_
                                                      _%rest269483%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in269484%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r269463%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi269491%_))
                                                         (_%lp269460%_
                                                          _%rest269483%_
                                                          (let ((__tmp270378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template269378%_
                          _%in269484%_
                          _%iphi269457%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r269463%_ __tmp270378)))
                 (_%lp269460%_ _%rest269483%_ _%r269463%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp269460%_
                                                _%rest269483%_
                                                _%r269463%_)))))))
                           (if (pair? _%$%rest269464269472%_)
                               (let ((_%$%hd269469269500%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest269464269472%_)))
                                     (_%$%tl269470269502%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest269464269472%_))))
                                 (let* ((_%in269505%_ _%$%hd269469269500%_)
                                        (_%rest269507%_ _%$%tl269470269502%_))
                                   (_%$%K269468269497%_
                                    _%rest269507%_
                                    _%in269505%_)))
                               (_%$%else269466269480%_)))))))
                  (_%find-deps269379%_
                   (lambda (_%rest269387%_ _%deps269388%_)
                     (let* ((_%$%rest269389269397%_ _%rest269387%_)
                            (_%$%else269391269405%_ (lambda () _%deps269388%_))
                            (_%$%K269393269442%_
                             (lambda (_%rest269408%_ _%hd269409%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd269409%_
                                      'gx#module-context::t))
                                   (let ((_%id269412%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd269409%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports269413%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd269409%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht269377%_
                                            _%id269412%_))
                                         (_%find-deps269379%_
                                          _%rest269408%_
                                          _%deps269388%_)
                                         (let ((_%$e269416%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd269409%_))))
                                           (if _%$e269416%_
                                               (let ((_%xdeps269421%_
                                                      (_%find-deps269379%_
                                                       (cons _%$e269416%_
                                                             _%imports269413%_)
                                                       _%deps269388%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht269377%_
                                                    _%id269412%_
                                                    _%hd269409%_))
                                                 (_%find-deps269379%_
                                                  _%rest269408%_
                                                  (cons _%hd269409%_
                                                        _%xdeps269421%_)))
                                               (let ((_%xdeps269424%_
                                                      (_%find-deps269379%_
                                                       _%imports269413%_
                                                       _%deps269388%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht269377%_
                                                    _%id269412%_
                                                    _%hd269409%_))
                                                 (_%find-deps269379%_
                                                  _%rest269408%_
                                                  (cons _%hd269409%_
                                                        _%xdeps269424%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd269409%_
                                          'gx#prelude-context::t))
                                       (let ((_%id269427%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd269409%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht269377%_
                                                _%id269427%_))
                                             (_%find-deps269379%_
                                              _%rest269408%_
                                              _%deps269388%_)
                                             (let ((_%xdeps269431%_
                                                    (_%find-deps269379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd269409%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps269388%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht269377%_
                                                      _%id269427%_))
                                                   (_%find-deps269379%_
                                                    _%rest269408%_
                                                    _%xdeps269431%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht269377%_
                                                        _%id269427%_
                                                        _%hd269409%_))
                                                     (_%find-deps269379%_
                                                      _%rest269408%_
                                                      (cons _%hd269409%_
                                                            _%xdeps269431%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd269409%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd269409%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps269379%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd269409%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest269408%_)
                                                _%deps269388%_)
                                               (_%find-deps269379%_
                                                _%rest269408%_
                                                _%deps269388%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd269409%_
                                                  'gx#module-export::t))
                                               (_%find-deps269379%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd269409%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest269408%_)
                                                _%deps269388%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd269409%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd269409%_ '2 '#f '#f)))
               (_%find-deps269379%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd269409%_ '1 '#f '#f))
                      _%rest269408%_)
                _%deps269388%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd269409%_ '2 '#f '#f)))
                   (let ((_%xdeps269438%_
                          (_%import-set-template269378%_ _%hd269409%_ '0)))
                     (_%find-deps269379%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest269408%_ _%xdeps269438%_))
                      _%deps269388%_))
                   (_%find-deps269379%_ _%rest269408%_ _%deps269388%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd269409%_))))))))))
                       (if (pair? _%$%rest269389269397%_)
                           (let ((_%$%hd269394269445%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest269389269397%_)))
                                 (_%$%tl269395269447%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest269389269397%_))))
                             (let* ((_%hd269450%_ _%$%hd269394269445%_)
                                    (_%rest269452%_ _%$%tl269395269447%_))
                               (_%$%K269393269442%_
                                _%rest269452%_
                                _%hd269450%_)))
                           (_%$%else269391269405%_))))))
          (let ((__tmp270379
                 (filter gx#expander-context-id
                         (_%find-deps269379%_
                          (let ((_%$e269381%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx269375%_))))
                            (if _%$e269381%_
                                (cons _%$e269381%_
                                      (##structure-ref
                                       _%ctx269375%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx269375%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp270379)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx269305%_)
        (let* ((_%context-id269307%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx269305%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx269305%_ '1 '#f '#f))
                    (string->symbol _%ctx269305%_)))
               (_%scm269309%_
                (let ((__tmp270380
                       (gxc#static-module-name _%context-id269307%_)))
                  (declare (not safe))
                  (##string-append __tmp270380 '".scm")))
               (_%dirs269311%_ (let () (declare (not safe)) (load-path)))
               (_%dirs269317%_
                (let ((_%user-libpath269313%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath269313%_
                      (let ((_%user-libpath269315%_
                             (path-expand '"lib" _%user-libpath269313%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath269315%_ _%dirs269311%_))
                            _%dirs269311%_
                            (cons _%user-libpath269315%_ _%dirs269311%_)))
                      _%dirs269311%_)))
               (_%dirs269327%_
                (let ((_%$e269319%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e269319%_
                      (cons _%$e269319%_ _%dirs269317%_)
                      _%dirs269317%_)))
               (_%dirs269333%_
                (let ((__tmp270381
                       (lambda (_%$%g269328269330%_)
                         (path-expand '"static" _%$%g269328269330%_))))
                  (declare (not safe))
                  (##map __tmp270381 _%dirs269327%_))))
          (let _%lp269336%_ ((_%rest269338%_ _%dirs269333%_))
            (let* ((_%$%rest269339269347%_ _%rest269338%_)
                   (_%$%else269341269355%_
                    (lambda ()
                      (let ((__tmp270382
                             (##structure-ref
                              _%ctx269305%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp270382
                         _%scm269309%_))))
                   (_%$%K269343269363%_
                    (lambda (_%rest269358%_ _%dir269359%_)
                      (let ((_%path269361%_
                             (path-expand _%scm269309%_ _%dir269359%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path269361%_))
                            _%path269361%_
                            (_%lp269336%_ _%rest269358%_))))))
              (if (pair? _%$%rest269339269347%_)
                  (let ((_%$%hd269344269366%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest269339269347%_)))
                        (_%$%tl269345269368%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest269339269347%_))))
                    (let* ((_%dir269371%_ _%$%hd269344269366%_)
                           (_%rest269373%_ _%$%tl269345269368%_))
                      (_%$%K269343269363%_ _%rest269373%_ _%dir269371%_)))
                  (_%$%else269341269355%_)))))))
    (define gxc#file-empty?
      (lambda (_%path269303%_)
        (zero? (let ((__tmp270383 (file-info _%path269303%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp270383)))))
    (define gxc#compile-top-module
      (lambda (_%ctx269294%_)
        (let ((__tmp270384
               (lambda ()
                 (let ((__tmp270385
                        (lambda ()
                          (let ((__tmp270386
                                 (lambda ()
                                   (let ((__tmp270388
                                          (lambda ()
                                            (let ((__tmp270390
                                                   (lambda ()
                                                     (let ((__tmp270392
                                                            (lambda ()
                                                              (let ((__tmp270393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx269294%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp270393))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp270394
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx269294%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp270394))
                          '#!void)
                      (gxc#collect-bindings _%ctx269294%_)
                      (gxc#compile-runtime-code _%ctx269294%_)
                      (gxc#compile-meta-code _%ctx269294%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx269294%_)
                          '#!void)))
                   (__tmp270391
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
                __tmp270392
                gxc#current-compile-runtime-names
                __tmp270391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp270389
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp270390
                                               gxc#current-compile-runtime-sections
                                               __tmp270389))))
                                         (__tmp270387
                                          (let ((__obj270283
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj270283))
                                            __obj270283)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp270388
                                      gxc#current-compile-symbol-table
                                      __tmp270387)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp270386
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp270385
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp270384
           gx#current-expander-context
           _%ctx269294%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx269292%_)
        (let ((__tmp270395
               (##structure-ref _%ctx269292%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp270395))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx269237%_)
        (letrec ((_%compile1269239%_
                  (lambda (_%ctx269281%_)
                    (let* ((_%code269283%_
                            (##structure-ref
                             _%ctx269281%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm269287%_
                            (let ((_%idstr269285%_
                                   (let ((__tmp270396
                                          (##structure-ref
                                           _%ctx269281%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp270396))))
                              (declare (not safe))
                              (##string-append _%idstr269285%_ '"~0")))
                           (_%rtc?269289%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code269283%_))))
                      (if _%rtc?269289%_
                          (let ((__tmp270397
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp270397
                             _%ctx269281%_
                             _%rtm269287%_))
                          '#!void)
                      (_%generate-runtime-code269241%_
                       _%ctx269281%_
                       _%code269283%_
                       (if _%rtc?269289%_ _%rtm269287%_ '#f)))))
                 (_%context-timestamp269240%_
                  (lambda (_%ctx269279%_)
                    (let ((__tmp270398
                           (let ((__tmp270399
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx269279%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp270399 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp270398))))
                 (_%generate-runtime-code269241%_
                  (lambda (_%ctx269248%_ _%code269249%_ _%rtm269250%_)
                    (let* ((_%runtime-code?269252%_ (if _%rtm269250%_ '#t '#f))
                           (_%lifts269254%_ (box '()))
                           (_%runtime-code269260%_
                            (if _%runtime-code?269252%_
                                (let ((__tmp270400
                                       (lambda ()
                                         (let ((__tmp270401
                                                (lambda ()
                                                  (let ((__tmp270402
                                                         (lambda ()
                                                           (let ((__tmp270404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code269249%_))))
                         (__tmp270403
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp270404
                      gxc#current-compile-marks
                      __tmp270403)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp270402
                                                     gxc#current-compile-lift
                                                     _%lifts269254%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp270401
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp270400
                                   gx#current-expander-context
                                   _%ctx269248%_))
                                '#f))
                           (_%runtime-code269262%_
                            (if _%runtime-code?269252%_
                                (if (null? (unbox _%lifts269254%_))
                                    _%runtime-code269260%_
                                    (cons 'begin
                                          (let ((__tmp270406
                                                 (reverse (unbox _%lifts269254%_)))
                                                (__tmp270405
                                                 (cons _%runtime-code269260%_
                                                       '())))
                                            (declare (not safe))
                                            (##append
                                             __tmp270406
                                             __tmp270405))))
                                '#f))
                           (_%runtime-code269264%_
                            (if _%runtime-code?269252%_
                                (cons 'begin
                                      (cons (list 'define
                                                  (_%context-timestamp269240%_
                                                   _%ctx269248%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#current-compile-timestamp)))
                                            (cons _%runtime-code269262%_ '())))
                                '#f))
                           (_%loader-code269267%_
                            (let ((__tmp270407
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code269249%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp270407
                               gx#current-expander-context
                               _%ctx269248%_)))
                           (_%loader-code269269%_
                            (cons 'begin
                                  (cons _%loader-code269267%_
                                        (cons (if _%runtime-code?269252%_
                                                  (cons 'load-module
                                                        (cons _%rtm269250%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0269271%_
                            (gxc#compile-output-file _%ctx269248%_ '0 '".scm"))
                           (_%scmrt269273%_
                            (gxc#compile-output-file
                             _%ctx269248%_
                             '#f
                             '".scm"))
                           (_%scms269275%_
                            (gxc#compile-static-output-file _%ctx269248%_)))
                      (if _%runtime-code?269252%_
                          (gxc#compile-scm-file__0
                           _%scm0269271%_
                           _%runtime-code269264%_)
                          '#!void)
                      (let ((__tmp270408
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt269273%_
                                _%loader-code269269%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp270408
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms269275%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms269275%_))
                          '#!void)
                      (if _%runtime-code?269252%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0269271%_ _%scms269275%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms269275%_ void)))))))
          (let* ((_%all-modules269243%_
                  (cons _%ctx269237%_ (gxc#lift-nested-modules _%ctx269237%_)))
                 (__tmp270409
                  (lambda (_%ctx269245%_)
                    (let ((__tmp270410
                           (lambda () (_%compile1269239%_ _%ctx269245%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp270410
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp270409 _%all-modules269243%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx269136%_)
        (letrec ((_%compile-ssi269138%_
                  (lambda (_%code269205%_)
                    (let* ((_%path269207%_
                            (gxc#compile-output-file
                             _%ctx269136%_
                             '#f
                             '".ssi"))
                           (_%prelude269219%_
                            (let* ((_%super269209%_
                                    (##structure-ref
                                     _%ctx269136%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e269211%_
                                    (##structure-ref
                                     _%super269209%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e269211%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e269211%_))
                                  ':<root>)))
                           (_%ns269221%_
                            (##structure-ref
                             _%ctx269136%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr269223%_
                            (symbol->string
                             (##structure-ref
                              _%ctx269136%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg269231%_
                            (let ((_%$e269225%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr269223%_ '#\/))))
                              (if _%$e269225%_
                                  (let ((__tmp270411
                                         (substring
                                          _%idstr269223%_
                                          '0
                                          _%$e269225%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp270411))
                                  '#f)))
                           (_%rt269233%_
                            (let ((__tmp270412
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp270412 _%ctx269136%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path269207%_))
                      (gxc#with-output-to-scheme-file
                       _%path269207%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude269219%_))
                         (if _%pkg269231%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg269231%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns269221%_))
                         (newline)
                         (pretty-print _%code269205%_)
                         (if _%rt269233%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt269233%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi269139%_
                  (lambda (_%part269144%_)
                    (let* ((_%$%part269145269158%_ _%part269144%_)
                           (_%$%E269147269162%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part269145269158%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K269148269174%_
                            (lambda (_%code269165%_
                                     _%n269166%_
                                     _%phi269167%_
                                     _%phi-ctx269168%_)
                              (let ((_%code269172%_
                                     (let ((__tmp270413
                                            (lambda ()
                                              (let ((__tmp270414
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code269165%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp270414
                                                 gx#current-expander-phi
                                                 _%phi269167%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp270413
                                        gx#current-expander-context
                                        _%phi-ctx269168%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx269136%_
                                  _%n269166%_
                                  '".scm")
                                 _%code269172%_
                                 '#t)))))
                      (if (pair? _%$%part269145269158%_)
                          (let ((_%$%hd269149269177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part269145269158%_)))
                                (_%$%tl269150269179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part269145269158%_))))
                            (let ((_%phi-ctx269182%_ _%$%hd269149269177%_))
                              (if (pair? _%$%tl269150269179%_)
                                  (let ((_%$%hd269151269184%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl269150269179%_)))
                                        (_%$%tl269152269186%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl269150269179%_))))
                                    (let ((_%phi269189%_ _%$%hd269151269184%_))
                                      (if (pair? _%$%tl269152269186%_)
                                          (let ((_%$%hd269153269191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl269152269186%_)))
                                                (_%$%tl269154269193%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl269152269186%_))))
                                            (let ((_%n269196%_
                                                   _%$%hd269153269191%_))
                                              (if (pair? _%$%tl269154269193%_)
                                                  (let ((_%$%hd269155269198%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl269154269193%_)))
                                                        (_%$%tl269156269200%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl269154269193%_))))
                                                    (let ((_%code269203%_
                                                           _%$%hd269155269198%_))
                                                      (if (null? _%$%tl269156269200%_)
                                                          (_%$%K269148269174%_
                                                           _%code269203%_
                                                           _%n269196%_
                                                           _%phi269189%_
                                                           _%phi-ctx269182%_)
                                                          (_%$%E269147269162%_))))
                                                  (_%$%E269147269162%_))))
                                          (_%$%E269147269162%_))))
                                  (_%$%E269147269162%_))))
                          (_%$%E269147269162%_))))))
          (let ((_g270415_ (gxc#generate-meta-code _%ctx269136%_)))
            (begin
              (let ((_g270416_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g270415_)
                           (##values-length _g270415_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g270416_ 2)))
                    (error "Context expects 2 values" _g270416_)))
              (let ((_%ssi-code269141%_
                     (let () (declare (not safe)) (##values-ref _g270415_ 0)))
                    (_%phi-code269142%_
                     (let () (declare (not safe)) (##values-ref _g270415_ 1))))
                (begin
                  (_%compile-ssi269138%_ _%ssi-code269141%_)
                  (for-each _%compile-phi269139%_ _%phi-code269142%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx269118%_)
        (let* ((_%path269120%_
                (gxc#compile-output-file _%ctx269118%_ '#f '".ssxi.ss"))
               (_%code269122%_
                (let ((__tmp270417
                       (##structure-ref
                        _%ctx269118%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp270417)))
               (_%idstr269124%_
                (symbol->string
                 (##structure-ref
                  _%ctx269118%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg269132%_
                (let ((_%$e269126%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr269124%_ '#\/))))
                  (if _%$e269126%_
                      (let ((__tmp270418
                             (substring _%idstr269124%_ '0 _%$e269126%_)))
                        (declare (not safe))
                        (##string->symbol __tmp270418))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path269120%_))
          (gxc#with-output-to-scheme-file
           _%path269120%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg269132%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg269132%_))
                 '#!void)
             (newline)
             (pretty-print _%code269122%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx269111%_)
        (let* ((_%state269113%_
                (let ((__obj270284
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj270284 _%ctx269111%_))
                  __obj270284))
               (_%ssi-code269115%_
                (let ((__tmp270419
                       (##structure-ref
                        _%ctx269111%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state269113%_
                   __tmp270419))))
          (values _%ssi-code269115%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state269113%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx269103%_)
        (let* ((_%lifts269105%_ (box '()))
               (__tmp270420
                (lambda ()
                  (let ((__tmp270422
                         (lambda ()
                           (let ((_%code269109%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx269103%_))))
                             (if (null? (unbox _%lifts269105%_))
                                 _%code269109%_
                                 (cons 'begin
                                       (let ((__tmp270424
                                              (reverse (unbox _%lifts269105%_)))
                                             (__tmp270423
                                              (cons _%code269109%_ '())))
                                         (declare (not safe))
                                         (##append
                                          __tmp270424
                                          __tmp270423)))))))
                        (__tmp270421
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp270422
                     gxc#current-compile-marks
                     __tmp270421)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp270420
           gxc#current-compile-lift
           _%lifts269105%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx269099%_)
        (let ((_%modules269101%_ (box '())))
          (let ((__tmp270425
                 (##structure-ref _%ctx269099%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules269101%_ __tmp270425))
          (reverse (unbox _%modules269101%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path269079%_ _%code269080%_ _%phi?269081%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path269079%_))
        (gxc#with-output-to-scheme-file
         _%path269079%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons '(block)
                        (cons '(standard-bindings)
                              (cons '(extended-bindings)
                                    (if _%phi?269081%_
                                        '((inlining-limit 200))
                                        '()))))))
           (pretty-print _%code269080%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it269085%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path269079%_ _%phi?269081%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp270426 (list 'compile-file _%path269079%_)))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it269085%_ __tmp270426))
                  (_%compile-it269085%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path269090%_ _%code269091%_)
        (let ((_%phi?269093%_ '#f))
          (gxc#compile-scm-file__%
           _%path269090%_
           _%code269091%_
           _%phi?269093%_))))
    (define gxc#compile-scm-file
      (lambda _g270427_
        (let ((_g270428_ (let () (declare (not safe)) (##length _g270427_))))
          (cond ((let () (declare (not safe)) (##fx= _g270428_ 2))
                 (apply gxc#compile-scm-file__0 _g270427_))
                ((let () (declare (not safe)) (##fx= _g270428_ 3))
                 (apply gxc#compile-scm-file__% _g270427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g270427_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?268980%_)
        (let _%lp268982%_ ((_%rest268984%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts268985%_ '()))
          (let* ((_%$%rest268986269006%_ _%rest268984%_)
                 (_%$%else268990269014%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts268985%_)))
                        (reverse _%opts268985%_)))))
            (let ((_%$%K269000269057%_
                   (lambda (_%rest269055%_)
                     (_%lp268982%_ _%rest269055%_ _%opts268985%_)))
                  (_%$%K268995269039%_
                   (lambda (_%rest269037%_)
                     (_%lp268982%_ _%rest269037%_ _%opts268985%_)))
                  (_%$%K268992269021%_
                   (lambda (_%rest269018%_ _%opt269019%_)
                     (_%lp268982%_
                      _%rest269018%_
                      (cons _%opt269019%_ _%opts268985%_)))))
              (if (pair? _%$%rest268986269006%_)
                  (let ((_%$%tl269002269062%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest268986269006%_)))
                        (_%$%hd269001269060%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest268986269006%_))))
                    (if (equal? _%$%hd269001269060%_ '"-cc-options")
                        (if (pair? _%$%tl269002269062%_)
                            (let* ((_%$%tl269004269065%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl269002269062%_)))
                                   (_%rest269068%_ _%$%tl269004269065%_))
                              (_%$%K269000269057%_ _%rest269068%_))
                            (let ((_%opt269029%_ _%$%hd269001269060%_)
                                  (_%rest269031%_ _%$%tl269002269062%_))
                              (_%$%K268992269021%_
                               _%rest269031%_
                               _%opt269029%_)))
                        (if (equal? _%$%hd269001269060%_ '"-ld-options")
                            (if (pair? _%$%tl269002269062%_)
                                (let* ((_%$%tl268999269047%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl269002269062%_)))
                                       (_%rest269050%_ _%$%tl268999269047%_))
                                  (_%$%K268995269039%_ _%rest269050%_))
                                (let ((_%opt269029%_ _%$%hd269001269060%_)
                                      (_%rest269031%_ _%$%tl269002269062%_))
                                  (_%$%K268992269021%_
                                   _%rest269031%_
                                   _%opt269029%_)))
                            (let ((_%opt269029%_ _%$%hd269001269060%_)
                                  (_%rest269031%_ _%$%tl269002269062%_))
                              (_%$%K268992269021%_
                               _%rest269031%_
                               _%opt269029%_)))))
                  (_%$%else268990269014%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?269074%_ '#f)) (gxc#gsc-link-options__% _%phi?269074%_))))
    (define gxc#gsc-link-options
      (lambda _g270429_
        (let ((_g270430_ (let () (declare (not safe)) (##length _g270429_))))
          (cond ((let () (declare (not safe)) (##fx= _g270430_ 0))
                 (apply gxc#gsc-link-options__0 _g270429_))
                ((let () (declare (not safe)) (##fx= _g270430_ 1))
                 (apply gxc#gsc-link-options__% _g270429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g270429_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords268830%_ _%$%static?268826268831%_ _%phi?268832%_)
        (let ((_%static?268834%_
               (if (eq? _%$%static?268826268831%_ absent-value)
                   '#f
                   _%$%static?268826268831%_)))
          (if _%phi?268832%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp268836%_ ((_%rest268838%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts268839%_ '()))
                (let* ((_%$%rest268840268866%_ _%rest268838%_)
                       (_%$%else268845268874%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts268839%_)))
                              (reverse! _%opts268839%_)))))
                  (let ((_%$%K268860268937%_
                         (lambda (_%rest268934%_ _%opt268935%_)
                           (if _%static?268834%_
                               (_%lp268836%_
                                _%rest268934%_
                                (cons _%opt268935%_
                                      (cons '"-cc-options" _%opts268839%_)))
                               (_%lp268836%_ _%rest268934%_ _%opts268839%_))))
                        (_%$%K268855268914%_
                         (lambda (_%rest268911%_ _%opt268912%_)
                           (_%lp268836%_
                            _%rest268911%_
                            (cons _%opt268912%_
                                  (cons '"-cc-options" _%opts268839%_)))))
                        (_%$%K268850268894%_
                         (lambda (_%rest268892%_)
                           (_%lp268836%_ _%rest268892%_ _%opts268839%_)))
                        (_%$%K268847268880%_
                         (lambda (_%rest268878%_)
                           (_%lp268836%_ _%rest268878%_ _%opts268839%_))))
                    (if (pair? _%$%rest268840268866%_)
                        (let ((_%$%tl268862268942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest268840268866%_)))
                              (_%$%hd268861268940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest268840268866%_))))
                          (if (equal? _%$%hd268861268940%_ '"-cc-options")
                              (if (pair? _%$%tl268862268942%_)
                                  (let ((_%$%tl268864268947%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl268862268942%_)))
                                        (_%$%hd268863268945%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl268862268942%_))))
                                    (if (equal? _%$%hd268863268945%_
                                                '"-Bstatic")
                                        (let ((_%opt268950%_
                                               _%$%hd268863268945%_)
                                              (_%rest268952%_
                                               _%$%tl268864268947%_))
                                          (_%$%K268860268937%_
                                           _%rest268952%_
                                           _%opt268950%_))
                                        (let ((_%opt268927%_
                                               _%$%hd268863268945%_)
                                              (_%rest268929%_
                                               _%$%tl268864268947%_))
                                          (_%$%K268855268914%_
                                           _%rest268929%_
                                           _%opt268927%_))))
                                  (let ((_%rest268886%_ _%$%tl268862268942%_))
                                    (_%$%K268847268880%_ _%rest268886%_)))
                              (if (equal? _%$%hd268861268940%_ '"-ld-options")
                                  (if (pair? _%$%tl268862268942%_)
                                      (let* ((_%$%tl268854268902%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl268862268942%_)))
                                             (_%rest268905%_
                                              _%$%tl268854268902%_))
                                        (_%$%K268850268894%_ _%rest268905%_))
                                      (let ((_%rest268886%_
                                             _%$%tl268862268942%_))
                                        (_%$%K268847268880%_ _%rest268886%_)))
                                  (let ((_%rest268886%_ _%$%tl268862268942%_))
                                    (_%$%K268847268880%_ _%rest268886%_)))))
                        (_%$%else268845268874%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords268957%_ _%$%static?268826268958%_)
        (let ((_%phi?268960%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords268957%_
           _%$%static?268826268958%_
           _%phi?268960%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g270431_
        (let ((_g270432_ (let () (declare (not safe)) (##length _g270431_))))
          (cond ((let () (declare (not safe)) (##fx= _g270432_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g270431_))
                ((let () (declare (not safe)) (##fx= _g270432_ 3))
                 (apply gxc#gsc-cc-options__%__% _g270431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g270431_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords268969%_ . _%args268970%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords268969%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords268969%_
                  'static:
                  absent-value))
               _%args268970%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args268827268976%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args268827268976%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords268676%_ _%$%static?268672268677%_ _%phi?268678%_)
        (let ((_%static?268680%_
               (if (eq? _%$%static?268672268677%_ absent-value)
                   '#f
                   _%$%static?268672268677%_)))
          (if _%phi?268678%_
              '()
              (let _%lp268682%_ ((_%rest268684%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts268685%_ '()))
                (let* ((_%$%rest268686268712%_ _%rest268684%_)
                       (_%$%else268691268720%_
                        (lambda () (reverse! _%opts268685%_))))
                  (let ((_%$%K268706268783%_
                         (lambda (_%rest268780%_ _%opt268781%_)
                           (if _%static?268680%_
                               (_%lp268682%_
                                _%rest268780%_
                                (cons _%opt268781%_
                                      (cons '"-ld-options" _%opts268685%_)))
                               (_%lp268682%_ _%rest268780%_ _%opts268685%_))))
                        (_%$%K268701268760%_
                         (lambda (_%rest268757%_ _%opt268758%_)
                           (_%lp268682%_
                            _%rest268757%_
                            (cons _%opt268758%_
                                  (cons '"-ld-options" _%opts268685%_)))))
                        (_%$%K268696268740%_
                         (lambda (_%rest268738%_)
                           (_%lp268682%_ _%rest268738%_ _%opts268685%_)))
                        (_%$%K268693268726%_
                         (lambda (_%rest268724%_)
                           (_%lp268682%_ _%rest268724%_ _%opts268685%_))))
                    (if (pair? _%$%rest268686268712%_)
                        (let ((_%$%tl268708268788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest268686268712%_)))
                              (_%$%hd268707268786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest268686268712%_))))
                          (if (equal? _%$%hd268707268786%_ '"-ld-options")
                              (if (pair? _%$%tl268708268788%_)
                                  (let ((_%$%tl268710268793%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl268708268788%_)))
                                        (_%$%hd268709268791%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl268708268788%_))))
                                    (if (equal? _%$%hd268709268791%_
                                                '"-static")
                                        (let ((_%opt268796%_
                                               _%$%hd268709268791%_)
                                              (_%rest268798%_
                                               _%$%tl268710268793%_))
                                          (_%$%K268706268783%_
                                           _%rest268798%_
                                           _%opt268796%_))
                                        (let ((_%opt268773%_
                                               _%$%hd268709268791%_)
                                              (_%rest268775%_
                                               _%$%tl268710268793%_))
                                          (_%$%K268701268760%_
                                           _%rest268775%_
                                           _%opt268773%_))))
                                  (let ((_%rest268732%_ _%$%tl268708268788%_))
                                    (_%$%K268693268726%_ _%rest268732%_)))
                              (if (equal? _%$%hd268707268786%_ '"-cc-options")
                                  (if (pair? _%$%tl268708268788%_)
                                      (let* ((_%$%tl268700268748%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl268708268788%_)))
                                             (_%rest268751%_
                                              _%$%tl268700268748%_))
                                        (_%$%K268696268740%_ _%rest268751%_))
                                      (let ((_%rest268732%_
                                             _%$%tl268708268788%_))
                                        (_%$%K268693268726%_ _%rest268732%_)))
                                  (let ((_%rest268732%_ _%$%tl268708268788%_))
                                    (_%$%K268693268726%_ _%rest268732%_)))))
                        (_%$%else268691268720%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords268803%_ _%$%static?268672268804%_)
        (let ((_%phi?268806%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords268803%_
           _%$%static?268672268804%_
           _%phi?268806%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g270433_
        (let ((_g270434_ (let () (declare (not safe)) (##length _g270433_))))
          (cond ((let () (declare (not safe)) (##fx= _g270434_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g270433_))
                ((let () (declare (not safe)) (##fx= _g270434_ 3))
                 (apply gxc#gsc-ld-options__%__% _g270433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g270433_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords268815%_ . _%args268816%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords268815%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords268815%_
                  'static:
                  absent-value))
               _%args268816%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args268673268822%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args268673268822%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir268667%_)
        (let ((_%user-staticdir268669%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir268667%_
                       '" -I "
                       _%user-staticdir268669%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp268579%_ ((_%rest268581%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts268582%_ '()))
          (let* ((_%$%rest268583268603%_ _%rest268581%_)
                 (_%$%else268587268611%_ (lambda () _%opts268582%_)))
            (let ((_%$%K268597268654%_
                   (lambda (_%rest268652%_)
                     (_%lp268579%_ _%rest268652%_ _%opts268582%_)))
                  (_%$%K268592268632%_
                   (lambda (_%rest268629%_ _%opt268630%_)
                     (_%lp268579%_
                      _%rest268629%_
                      (let ((__tmp270435
                             (let ((__tmp270436
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt268630%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp270436))))
                        (declare (not safe))
                        (##append _%opts268582%_ __tmp270435)))))
                  (_%$%K268589268617%_
                   (lambda (_%rest268615%_)
                     (_%lp268579%_ _%rest268615%_ _%opts268582%_))))
              (if (pair? _%$%rest268583268603%_)
                  (let ((_%$%tl268599268659%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest268583268603%_)))
                        (_%$%hd268598268657%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest268583268603%_))))
                    (if (equal? _%$%hd268598268657%_ '"-cc-options")
                        (if (pair? _%$%tl268599268659%_)
                            (let* ((_%$%tl268601268662%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl268599268659%_)))
                                   (_%rest268665%_ _%$%tl268601268662%_))
                              (_%$%K268597268654%_ _%rest268665%_))
                            (let ((_%rest268623%_ _%$%tl268599268659%_))
                              (_%$%K268589268617%_ _%rest268623%_)))
                        (if (equal? _%$%hd268598268657%_ '"-ld-options")
                            (if (pair? _%$%tl268599268659%_)
                                (let ((_%$%tl268596268642%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl268599268659%_)))
                                      (_%$%hd268595268640%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl268599268659%_))))
                                  (let ((_%opt268645%_ _%$%hd268595268640%_)
                                        (_%rest268647%_ _%$%tl268596268642%_))
                                    (_%$%K268592268632%_
                                     _%rest268647%_
                                     _%opt268645%_)))
                                (let ((_%rest268623%_ _%$%tl268599268659%_))
                                  (_%$%K268589268617%_ _%rest268623%_)))
                            (let ((_%rest268623%_ _%$%tl268599268659%_))
                              (_%$%K268589268617%_ _%rest268623%_)))))
                  (_%$%else268587268611%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str268576%_)
        (not (let () (declare (not safe)) (string-empty? _%str268576%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path268569%_ _%phi?268570%_)
        (let ((_%gsc-link-opts268572%_
               (gxc#gsc-link-options__% _%phi?268570%_))
              (_%gsc-cc-opts268573%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?268570%_))
              (_%gsc-ld-opts268574%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?268570%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp270437
                  (let ((__tmp270438
                         (let ((__tmp270439 (cons _%path268569%_ '())))
                           (declare (not safe))
                           (##append _%gsc-link-opts268572%_ __tmp270439))))
                    (declare (not safe))
                    (##append _%gsc-ld-opts268574%_ __tmp270438))))
             (declare (not safe))
             (##append _%gsc-cc-opts268573%_ __tmp270437))))))
    (define gxc#compile-output-file
      (lambda (_%ctx268535%_ _%n268536%_ _%ext268537%_)
        (letrec ((_%module-relative-path268539%_
                  (lambda (_%ctx268567%_)
                    (path-strip-directory
                     (let ((__tmp270440
                            (##structure-ref
                             _%ctx268567%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp270440)))))
                 (_%module-source-directory268540%_
                  (lambda (_%ctx268563%_)
                    (path-directory
                     (let ((_%mpath268565%_
                            (##structure-ref
                             _%ctx268563%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath268565%_)
                           _%mpath268565%_
                           (last _%mpath268565%_))))))
                 (_%section-string268541%_
                  (lambda (_%n268557%_)
                    (if (number? _%n268557%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n268557%_))
                        (if (symbol? _%n268557%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n268557%_))
                            (if (string? _%n268557%_)
                                _%n268557%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n268557%_)))))))
                 (_%file-name268542%_
                  (lambda (_%path268555%_)
                    (if _%n268536%_
                        (string-append
                         _%path268555%_
                         '"~"
                         (_%section-string268541%_ _%n268536%_)
                         _%ext268537%_)
                        (string-append _%path268555%_ _%ext268537%_))))
                 (_%file-path268543%_
                  (lambda ()
                    (let ((_%$e268549%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e268549%_
                          (path-expand
                           (_%file-name268542%_
                            (let ((__tmp270441
                                   (##structure-ref
                                    _%ctx268535%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp270441)))
                           _%$e268549%_)
                          (path-expand
                           (_%file-name268542%_
                            (_%module-relative-path268539%_ _%ctx268535%_))
                           (_%module-source-directory268540%_
                            _%ctx268535%_)))))))
          (let ((_%path268545%_ (_%file-path268543%_)))
            (let ((__tmp270442
                   (lambda ()
                     (let ((__tmp270443 (path-directory _%path268545%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp270443)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp270442))
            _%path268545%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx268516%_)
        (letrec ((_%file-name268518%_
                  (lambda (_%id268533%_)
                    (let ((__tmp270444 (gxc#static-module-name _%id268533%_)))
                      (declare (not safe))
                      (##string-append __tmp270444 '".scm"))))
                 (_%file-path268519%_
                  (lambda ()
                    (let* ((_%file268525%_
                            (_%file-name268518%_
                             (##structure-ref
                              _%ctx268516%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e268527%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e268527%_
                          (path-expand
                           _%file268525%_
                           (path-expand '"static" _%$e268527%_))
                          (path-expand _%file268525%_ '"static"))))))
          (let ((_%path268521%_ (_%file-path268519%_)))
            (let ((__tmp270445
                   (lambda ()
                     (let ((__tmp270446 (path-directory _%path268521%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp270446)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp270445))
            _%path268521%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx268509%_ _%opts268510%_)
        (let ((_%$e268512%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts268510%_))))
          (if _%$e268512%_
              _%$e268512%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx268509%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr268499%_)
        (if (string? _%idstr268499%_)
            (let* ((_%str268502%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr268499%_)))
                   (_%strs268504%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str268502%_ '#\/))))
              (declare (not safe))
              (string-join _%strs268504%_ '"__"))
            (if (symbol? _%idstr268499%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr268499%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr268499%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp270447
               (let ((__tmp270448 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp270448 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp270447))))
    (define gxc#invoke__%
      (lambda (_%@@keywords268465%_
               _%$%stdout-redirection268461268466%_
               _%$%stderr-redirection268462268467%_
               _%program268468%_
               _%args268469%_)
        (let* ((_%stdout-redirection268471%_
                (if (eq? _%$%stdout-redirection268461268466%_ absent-value)
                    '#f
                    _%$%stdout-redirection268461268466%_))
               (_%stderr-redirection268473%_
                (if (eq? _%$%stderr-redirection268462268467%_ absent-value)
                    '#f
                    _%$%stderr-redirection268462268467%_)))
          (let ((__tmp270449 (cons _%program268468%_ _%args268469%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp270449))
          (let* ((_%proc268475%_
                  (open-process
                   (cons 'path:
                         (cons _%program268468%_
                               (cons 'arguments:
                                     (cons _%args268469%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection268471%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection268473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output268480%_
                  (if (or _%stdout-redirection268471%_
                          _%stderr-redirection268473%_)
                      (read-line _%proc268475%_ '#f)
                      '#f))
                 (_%status268483%_ (process-status _%proc268475%_)))
            (let () (declare (not safe)) (##close-port _%proc268475%_))
            (if (zero? _%status268483%_)
                '#!void
                (begin
                  (display _%output268480%_)
                  (let ((__tmp270450 (cons _%program268468%_ _%args268469%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp270450
                     _%status268483%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords268488%_ . _%args268489%_)
        (apply gxc#invoke__%
               _%@@keywords268488%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords268488%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords268488%_
                  'stderr-redirection:
                  absent-value))
               _%args268489%_)))
    (define gxc#invoke
      (lambda _%$%args268463268495%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args268463268495%_)))))
