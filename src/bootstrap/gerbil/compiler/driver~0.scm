(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1713454418)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp201216 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp201216))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp201217 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp201217))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path201073%_ _%fun201074%_)
        (with-output-to-file
         (cons 'path: (cons _%path201073%_ gxc#scheme-file-settings))
         _%fun201074%_)))
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
      (lambda (_%gerbil-libdir201068%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir201068%_)))
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
      (lambda (_%dir201066%_) (delete-file-or-directory _%dir201066%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath201039%_ _%opts201040%_)
        (if (string? _%srcpath201039%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath201039%_)))
        (let ((_%outdir201042%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts201040%_)))
              (_%invoke-gsc?201043%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts201040%_)))
              (_%gsc-options201044%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts201040%_)))
              (_%keep-scm?201045%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts201040%_)))
              (_%verbosity201046%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts201040%_)))
              (_%optimize201047%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts201040%_)))
              (_%debug201048%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts201040%_)))
              (_%gen-ssxi201049%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts201040%_)))
              (_%parallel?201050%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts201040%_))))
          (if _%outdir201042%_
              (let ((__tmp201218
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir201042%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp201218))
              '#!void)
          (if _%optimize201047%_
              (let ((__tmp201219
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp201219))
              '#!void)
          (let ((__tmp201222
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath201039%_))
                   (gxc#compile-top-module
                    (let ((__tmp201223
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath201039%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp201223)))))
                (__tmp201221 (gxc#compile-timestamp))
                (__tmp201220
                 (cons 'compile-module (cons _%srcpath201039%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp201222
             gxc#current-compile-output-dir
             _%outdir201042%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?201043%_
             gxc#current-compile-gsc-options
             _%gsc-options201044%_
             gxc#current-compile-keep-scm
             _%keep-scm?201045%_
             gxc#current-compile-verbose
             _%verbosity201046%_
             gxc#current-compile-optimize
             _%optimize201047%_
             gxc#current-compile-debug
             _%debug201048%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi201049%_
             gxc#current-compile-timestamp
             __tmp201221
             gxc#current-compile-context
             __tmp201220
             gxc#current-compile-parallel
             _%parallel?201050%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath201059%_)
        (let ((_%opts201061%_ '()))
          (gxc#compile-module__% _%srcpath201059%_ _%opts201061%_))))
    (define gxc#compile-module
      (lambda _g201225_
        (let ((_g201224_ (let () (declare (not safe)) (##length _g201225_))))
          (cond ((let () (declare (not safe)) (##fx= _g201224_ 1))
                 (apply gxc#compile-module__0 _g201225_))
                ((let () (declare (not safe)) (##fx= _g201224_ 2))
                 (apply gxc#compile-module__% _g201225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g201225_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath201014%_ _%opts201015%_)
        (if (string? _%srcpath201014%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath201014%_)))
        (let ((_%outdir201017%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts201015%_)))
              (_%invoke-gsc?201018%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts201015%_)))
              (_%gsc-options201019%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts201015%_)))
              (_%keep-scm?201020%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts201015%_)))
              (_%verbosity201021%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts201015%_)))
              (_%debug201022%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts201015%_)))
              (_%parallel?201023%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts201015%_))))
          (if _%outdir201017%_
              (let ((__tmp201226
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir201017%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp201226))
              '#!void)
          (let ((__tmp201229
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath201014%_))
                   (gxc#compile-executable-module
                    (let ((__tmp201230
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath201014%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp201230))
                    _%opts201015%_)))
                (__tmp201228 (gxc#compile-timestamp))
                (__tmp201227 (cons 'compile-exe (cons _%srcpath201014%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp201229
             gxc#current-compile-output-dir
             _%outdir201017%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?201018%_
             gxc#current-compile-gsc-options
             _%gsc-options201019%_
             gxc#current-compile-keep-scm
             _%keep-scm?201020%_
             gxc#current-compile-verbose
             _%verbosity201021%_
             gxc#current-compile-debug
             _%debug201022%_
             gxc#current-compile-timestamp
             __tmp201228
             gxc#current-compile-context
             __tmp201227
             gxc#current-compile-parallel
             _%parallel?201023%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath201031%_)
        (let ((_%opts201033%_ '()))
          (gxc#compile-exe__% _%srcpath201031%_ _%opts201033%_))))
    (define gxc#compile-exe
      (lambda _g201232_
        (let ((_g201231_ (let () (declare (not safe)) (##length _g201232_))))
          (cond ((let () (declare (not safe)) (##fx= _g201231_ 1))
                 (apply gxc#compile-exe__0 _g201232_))
                ((let () (declare (not safe)) (##fx= _g201231_ 2))
                 (apply gxc#compile-exe__% _g201232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g201232_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx201010%_ _%opts201011%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts201011%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx201010%_
             _%opts201011%_)
            (gxc#compile-executable-module/separate
             _%ctx201010%_
             _%opts201011%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx200800%_ _%opts200801%_)
        (letrec ((_%generate-stub200803%_
                  (lambda (_%builtin-modules201006%_)
                    (let ((_%mod-main201008%_
                           (gxc#find-runtime-symbol _%ctx200800%_ 'main)))
                      (let ((__tmp201233
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules201006%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp201233))
                      (let ((__tmp201234
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main201008%_
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
                        (##write __tmp201234))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts200804%_
                  (lambda (_%gerbil-libdir201004%_)
                    (let ((__tmp201235
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir201004%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp201235 read))))
                 (_%replace-extension200805%_
                  (lambda (_%path201001%_ _%ext201002%_)
                    (string-append
                     (path-strip-extension _%path201001%_)
                     _%ext201002%_)))
                 (_%userlib-module?200806%_
                  (lambda (_%ctx200999%_)
                    (if (_%exclude-module?200808%_ _%ctx200999%_)
                        '#f
                        (not (_%libgerbil-module?200807%_ _%ctx200999%_)))))
                 (_%libgerbil-module?200807%_
                  (lambda (_%ctx200992%_)
                    (let ((_%id-str200994%_
                           (symbol->string
                            (##structure-ref
                             _%ctx200992%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?200808%_ _%id-str200994%_)
                          '#f
                          (let ((_%$e200996%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str200994%_))))
                            (if _%$e200996%_
                                _%$e200996%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str200994%_))))))))
                 (_%exclude-module?200808%_
                  (lambda (_%ctx-or-str200988%_)
                    (let ((_%str200990%_
                           (if (string? _%ctx-or-str200988%_)
                               _%ctx-or-str200988%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str200988%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str200990%_))))
                 (_%not-file-empty?200809%_
                  (lambda (_%path200986%_)
                    (not (gxc#file-empty? _%path200986%_))))
                 (_%fold-libgerbil-runtime-scm200810%_
                  (lambda (_%gerbil-staticdir200979%_ _%libgerbil-scm200980%_)
                    (let ((_%gerbil-runtime-scm200984%_
                           (let ((__tmp201236
                                  (lambda (_%rtm200982%_)
                                    (path-expand
                                     (let ((__tmp201237
                                            (let ((__tmp201238
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm200982%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp201238
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp201237 '".scm"))
                                     _%gerbil-staticdir200979%_))))
                             (declare (not safe))
                             (##map __tmp201236 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates200811%_
                       (append _%gerbil-runtime-scm200984%_
                               _%libgerbil-scm200980%_)))))
                 (_%remove-duplicates200811%_
                  (lambda (_%strlst200939%_)
                    (let _%loop200941%_ ((_%rest200943%_ _%strlst200939%_)
                                         (_%result200944%_ '()))
                      (let* ((_%rest200945200953%_ _%rest200943%_)
                             (_%else200947200961%_
                              (lambda () (reverse! _%result200944%_)))
                             (_%K200949200967%_
                              (lambda (_%rest200964%_ _%path200965%_)
                                (if (member _%path200965%_ _%result200944%_)
                                    (_%loop200941%_
                                     _%rest200964%_
                                     _%result200944%_)
                                    (_%loop200941%_
                                     _%rest200964%_
                                     (cons _%path200965%_
                                           _%result200944%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest200945200953%_))
                            (let ((_%hd200950200970%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200945200953%_)))
                                  (_%tl200951200972%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200945200953%_))))
                              (let* ((_%path200975%_ _%hd200950200970%_)
                                     (_%rest200977%_ _%tl200951200972%_))
                                (_%K200949200967%_
                                 _%rest200977%_
                                 _%path200975%_)))
                            (_%else200947200961%_))))))
                 (_%compile-stub200812%_
                  (lambda (_%output-scm200819%_ _%output-bin200820%_)
                    (let* ((_%gerbil-home200822%_
                            (let ((__tmp201239
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp201239)))
                           (_%gerbil-libdir200824%_
                            (path-expand '"lib" _%gerbil-home200822%_))
                           (_%gerbil-staticdir200826%_
                            (path-expand '"static" _%gerbil-libdir200824%_))
                           (_%deps200828%_
                            (gxc#find-runtime-module-deps _%ctx200800%_))
                           (_%libgerbil-deps200830%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?200807%_
                               _%deps200828%_)))
                           (_%libgerbil-scm200832%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps200830%_)))
                           (_%libgerbil-scm200834%_
                            (_%fold-libgerbil-runtime-scm200810%_
                             _%gerbil-staticdir200826%_
                             _%libgerbil-scm200832%_))
                           (_%libgerbil-c200840%_
                            (map (lambda (_%g200835200837%_)
                                   (_%replace-extension200805%_
                                    _%g200835200837%_
                                    '".c"))
                                 _%libgerbil-scm200834%_))
                           (_%libgerbil-o200846%_
                            (map (lambda (_%g200841200843%_)
                                   (_%replace-extension200805%_
                                    _%g200841200843%_
                                    '".o"))
                                 _%libgerbil-scm200834%_))
                           (_%src-deps200848%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?200806%_
                               _%deps200828%_)))
                           (_%src-deps-scm200850%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps200848%_)))
                           (_%src-deps-scm200852%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?200809%_
                               _%src-deps-scm200850%_)))
                           (_%src-deps-scm200854%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm200852%_)))
                           (_%src-deps-c200860%_
                            (let ((__tmp201240
                                   (lambda (_%g200855200857%_)
                                     (_%replace-extension200805%_
                                      _%g200855200857%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp201240 _%src-deps-scm200854%_)))
                           (_%src-deps-o200866%_
                            (let ((__tmp201241
                                   (lambda (_%g200861200863%_)
                                     (_%replace-extension200805%_
                                      _%g200861200863%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp201241 _%src-deps-scm200854%_)))
                           (_%src-bin-scm200868%_
                            (gxc#find-static-module-file _%ctx200800%_))
                           (_%src-bin-scm200870%_
                            (path-expand _%src-bin-scm200868%_))
                           (_%src-bin-c200872%_
                            (_%replace-extension200805%_
                             _%src-bin-scm200870%_
                             '".c"))
                           (_%src-bin-o200874%_
                            (_%replace-extension200805%_
                             _%src-bin-scm200870%_
                             '".o"))
                           (_%output-bin200876%_
                            (path-expand _%output-bin200820%_))
                           (_%output-scm200878%_
                            (path-expand _%output-scm200819%_))
                           (_%output-c200880%_
                            (_%replace-extension200805%_
                             _%output-scm200878%_
                             '".c"))
                           (_%output-o200882%_
                            (_%replace-extension200805%_
                             _%output-scm200878%_
                             '".o"))
                           (_%output_-c200884%_
                            (_%replace-extension200805%_
                             _%output-scm200878%_
                             '"_.c"))
                           (_%output_-o200886%_
                            (_%replace-extension200805%_
                             _%output-scm200878%_
                             '"_.o"))
                           (_%gsc-link-opts200888%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts200890%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts200892%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir200826%_))
                           (_%output-ld-opts200894%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts200896%_
                            (_%get-libgerbil-ld-opts200804%_
                             _%gerbil-libdir200824%_))
                           (_%rpath200898%_
                            (gxc#gerbil-rpath _%gerbil-libdir200824%_))
                           (_%builtin-modules200902%_
                            (_%remove-duplicates200811%_
                             (let ((__tmp201242
                                    (let ((__tmp201244
                                           (lambda (_%mod200900%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod200900%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp201243
                                           (cons _%ctx200800%_
                                                 _%deps200828%_)))
                                      (declare (not safe))
                                      (##map __tmp201244 __tmp201243))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp201242)))))
                      (letrec ((_%compile-obj200905%_
                                (lambda (_%scm-path200912%_ _%c-path200913%_)
                                  (let* ((_%o-path200915%_
                                          (_%replace-extension200805%_
                                           _%c-path200913%_
                                           '".o"))
                                         (_%lock200917%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path200915%_
                                             '".lock")))
                                         (_%locked200919%_ '#f)
                                         (_%unlock200922%_
                                          (lambda ()
                                            (close-port _%locked200919%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock200917%_)))))
                                    (let _%retry200925%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock200917%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry200925%_))
                                          (begin
                                            (set! _%locked200919%_
                                                  (let ((__tmp201245
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock200917%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp201245)))
                                            (if _%locked200919%_
                                                '#!void
                                                (_%retry200925%_)))))
                                    (let ((__tmp201247
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path200915%_)))
                                                     (not _%scm-path200912%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path200912%_
                                                        _%o-path200915%_)))
                                                 (let ((_%gsc-cc-opts200936%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp201248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp201249 (cons _%c-path200913%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp201249
                            _%gsc-static-opts200892%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp201248 _%gsc-cc-opts200936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp201246
                                           (lambda () (_%unlock200922%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp201247
                                       __tmp201246))))))
                        (let ((__tmp201250
                               (lambda ()
                                 (let ((__tmp201251
                                        (path-directory _%output-bin200876%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp201251)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp201250))
                        (gxc#with-output-to-scheme-file
                         _%output-scm200878%_
                         (lambda ()
                           (_%generate-stub200803%_
                            _%builtin-modules200902%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it200910%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp201252
                                                   (let ((__tmp201253
                                                          (let ((__tmp201254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm200870%_
                               (cons _%output-scm200878%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp201254 _%src-deps-scm200854%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp201253
                                                      _%libgerbil-c200840%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp201252
                                               _%gsc-link-opts200888%_))))
                                     (for-each
                                      _%compile-obj200905%_
                                      (let ((__tmp201255
                                             (cons _%src-bin-scm200870%_
                                                   (cons _%output-scm200878%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp201255
                                         _%src-deps-scm200854%_))
                                      (let ((__tmp201256
                                             (cons _%src-bin-c200872%_
                                                   (cons _%output-c200880%_
                                                         (cons _%output_-c200884%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp201256
                                         _%src-deps-c200860%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin200876%_
                                                        (let ((__tmp201257
                                                               (cons _%src-bin-o200874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o200882%_
                                   (cons _%output_-o200886%_
                                         (let ((__tmp201258
                                                (let ((__tmp201259
                                                       (let ((__tmp201261
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir200824%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts200896%_))))
                     (__tmp201260
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath200898%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp201261 __tmp201260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp201259
                                                   _%output-ld-opts200894%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp201258
                                            _%libgerbil-o200846%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp201257 _%src-deps-o200866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp201262
                                            (cons _%output-c200880%_
                                                  (cons _%output_-c200884%_
                                                        (cons _%output-o200882%_
                                                              (cons _%output_-o200886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp201262)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it200910%_))
                                  (_%compile-it200910%_)))
                            '#!void))))))
          (let* ((_%output-bin200814%_
                  (gxc#compile-exe-output-file _%ctx200800%_ _%opts200801%_))
                 (_%output-scm200816%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin200814%_ '"__exe.scm"))))
            (_%compile-stub200812%_
             _%output-scm200816%_
             _%output-bin200814%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx200622%_ _%opts200623%_)
        (letrec ((_%reset-declare200625%_
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
                 (_%generate-stub200626%_
                  (lambda (_%deps200791%_)
                    (let ((_%mod-main200793%_
                           (gxc#find-runtime-symbol _%ctx200622%_ 'main))
                          (_%reset-decl200794%_ (_%reset-declare200625%_))
                          (_%user-decl200795%_ (_%user-declare200627%_)))
                      (for-each
                       (lambda (_%dep200797%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl200794%_))
                         (newline)
                         (if _%user-decl200795%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl200795%_))
                               (newline))
                             '#!void)
                         (let ((__tmp201263
                                (cons 'include (cons _%dep200797%_ '()))))
                           (declare (not safe))
                           (##write __tmp201263))
                         (newline))
                       _%deps200791%_)
                      (let ((__tmp201264
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main200793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp201264))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare200627%_
                  (lambda ()
                    (let* ((_%gsc-opts200696%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts200623%_)))
                           (_%gsc-prelude200698%_
                            (if _%gsc-opts200696%_
                                (member '"-prelude" _%gsc-opts200696%_)
                                '#f))
                           (_%gsc-prelude200700%_
                            (if _%gsc-prelude200698%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude200698%_)))
                                '#f)))
                      (let _%lp200703%_ ((_%rest200705%_
                                          (cons _%gsc-prelude200700%_ '()))
                                         (_%user-decls200706%_ '()))
                        (let* ((_%rest200707200715%_ _%rest200705%_)
                               (_%else200709200723%_
                                (lambda ()
                                  (if (null? _%user-decls200706%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls200706%_)))))
                               (_%K200711200779%_
                                (lambda (_%rest200726%_ _%expr200727%_)
                                  (let* ((_%expr200728200740%_ _%expr200727%_)
                                         (_%else200731200748%_
                                          (lambda ()
                                            (_%lp200703%_
                                             _%rest200726%_
                                             _%user-decls200706%_))))
                                    (let ((_%K200736200769%_
                                           (lambda (_%decls200767%_)
                                             (_%lp200703%_
                                              _%rest200726%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls200706%_
                                                 _%decls200767%_)))))
                                          (_%K200733200754%_
                                           (lambda (_%exprs200752%_)
                                             (_%lp200703%_
                                              (append _%exprs200752%_
                                                      _%rest200726%_)
                                              _%user-decls200706%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr200728200740%_))
                                          (let ((_%tl200738200774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr200728200740%_)))
                                                (_%hd200737200772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr200728200740%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd200737200772%_
                                                         'declare))
                                                (let ((_%decls200777%_
                                                       _%tl200738200774%_))
                                                  (_%K200736200769%_
                                                   _%decls200777%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd200737200772%_
                                                             'begin))
                                                    (let ((_%exprs200762%_
                                                           _%tl200738200774%_))
                                                      (_%K200733200754%_
                                                       _%exprs200762%_))
                                                    (_%else200731200748%_))))
                                          (_%else200731200748%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest200707200715%_))
                              (let ((_%hd200712200782%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest200707200715%_)))
                                    (_%tl200713200784%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest200707200715%_))))
                                (let* ((_%expr200787%_ _%hd200712200782%_)
                                       (_%rest200789%_ _%tl200713200784%_))
                                  (_%K200711200779%_
                                   _%rest200789%_
                                   _%expr200787%_)))
                              (_%else200709200723%_)))))))
                 (_%compile-stub200628%_
                  (lambda (_%output-scm200635%_ _%output-bin200636%_)
                    (let* ((_%gerbil-home200638%_
                            (let ((__tmp201265
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp201265)))
                           (_%gerbil-libdir200640%_
                            (path-expand '"lib" _%gerbil-home200638%_))
                           (_%runtime200642%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp200644%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home200638%_))
                           (_%include-gambit-sharp200646%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp200644%_
                               '"\")")))
                           (_%bin-scm200648%_
                            (gxc#find-static-module-file _%ctx200622%_))
                           (_%deps200650%_
                            (gxc#find-runtime-module-deps _%ctx200622%_))
                           (_%deps200652%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps200650%_)))
                           (_%deps200657%_
                            (let ((__tmp201266
                                   (lambda (_%$obj200654%_)
                                     (not (gxc#file-empty? _%$obj200654%_)))))
                              (declare (not safe))
                              (##filter __tmp201266 _%deps200652%_)))
                           (_%deps200661%_
                            (let ((__tmp201267
                                   (lambda (_%f200659%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f200659%_
                                             _%runtime200642%_))))))
                              (declare (not safe))
                              (##filter __tmp201267 _%deps200657%_)))
                           (_%output-base200663%_
                            (let ((__tmp201268
                                   (path-strip-extension
                                    _%output-scm200635%_)))
                              (declare (not safe))
                              (##string-append __tmp201268)))
                           (_%output-c200665%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200663%_ '".c")))
                           (_%output-o200667%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200663%_ '".o")))
                           (_%output-c_200669%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200663%_ '"_.c")))
                           (_%output-o_200671%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200663%_ '"_.o")))
                           (_%gsc-link-opts200673%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts200675%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts200677%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir200640%_)))
                           (_%output-ld-opts200679%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros200681%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp200646%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp200646%_
                                            '()))))
                           (_%gsc-link-opts200683%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts200673%_
                               _%gsc-gx-macros200681%_)))
                           (_%rpath200685%_
                            (gxc#gerbil-rpath _%gerbil-libdir200640%_))
                           (_%default-ld-options200687%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp201269
                             (lambda ()
                               (let ((__tmp201270
                                      (path-directory _%output-bin200636%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp201270)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp201269))
                      (gxc#with-output-to-scheme-file
                       _%output-scm200635%_
                       (lambda ()
                         (_%generate-stub200626%_
                          (let ((__tmp201271
                                 (let ((__tmp201272
                                        (cons _%bin-scm200648%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp201272
                                    _%deps200661%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp201271 _%runtime200642%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it200693%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_200669%_
                                                      (let ((__tmp201273
                                                             (cons _%output-scm200635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp201273 _%gsc-link-opts200683%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp201274
                                                 (let ((__tmp201275
                                                        (cons _%output-c200665%_
                                                              (cons _%output-c_200669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp201275
                                                    _%gsc-static-opts200677%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp201274
                                             _%gsc-cc-opts200675%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin200636%_
                                                      (cons _%output-o200667%_
                                                            (cons _%output-o_200671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201276
                                 (let ((__tmp201278
                                        (cons '"-L"
                                              (cons _%gerbil-libdir200640%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options200687%_))))
                                       (__tmp201277
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath200685%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp201278 __tmp201277))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp201276
                             _%output-ld-opts200679%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it200693%_))
                                (_%compile-it200693%_)))
                          '#!void)))))
          (let* ((_%output-bin200630%_
                  (gxc#compile-exe-output-file _%ctx200622%_ _%opts200623%_))
                 (_%output-scm200632%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin200630%_ '"__exe.scm"))))
            (_%compile-stub200628%_
             _%output-scm200632%_
             _%output-bin200630%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx200571%_ _%id200572%_)
        (let ((_%$e200618%_
               (let ((__tmp201280
                      (lambda (_%e200573200575%_)
                        (let* ((_%g200577200587%_ _%e200573200575%_)
                               (_%else200579200595%_ (lambda () '#f))
                               (_%K200581200599%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g200577200587%_
                                 'gx#module-export::t))
                              (let* ((_%e200582200602%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200577200587%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e200583200605%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200577200587%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e200584200608%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200577200587%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e200584200608%_ '0))
                                    (let ((_%e200585200611%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g200577200587%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g200613200615%_)
                                             (eq? _%g200613200615%_
                                                  _%id200572%_))
                                           _%e200585200611%_)
                                          (_%K200581200599%_)
                                          (_%else200579200595%_)))
                                    (_%else200579200595%_)))
                              (_%else200579200595%_)))))
                     (__tmp201279
                      (##structure-ref
                       _%ctx200571%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp201280 __tmp201279))))
          (if _%$e200618%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e200618%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx200562%_ _%id200563%_)
        (let ((_%$e200565%_
               (gxc#find-export-binding _%ctx200562%_ _%id200563%_)))
          (if _%$e200565%_
              ((lambda (_%bind200568%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind200568%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id200563%_)))
                 (##structure-ref _%bind200568%_ '1 gx#binding::t '#f))
               _%$e200565%_)
              (let ((__tmp201281
                     (##structure-ref
                      _%ctx200562%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp201281
                 _%id200563%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx200428%_)
        (letrec* ((_%ht200430%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template200431%_
                   (lambda (_%in200507%_ _%phi200508%_)
                     (let ((_%iphi200510%_
                            (fx+ _%phi200508%_
                                 (##direct-structure-ref
                                  _%in200507%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports200511%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in200507%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp200513%_ ((_%rest200515%_ _%imports200511%_)
                                          (_%r200516%_ '()))
                         (let* ((_%rest200517200525%_ _%rest200515%_)
                                (_%else200519200533%_ (lambda () _%r200516%_))
                                (_%K200521200550%_
                                 (lambda (_%rest200536%_ _%in200537%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in200537%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi200510%_))
                                           (_%lp200513%_
                                            _%rest200536%_
                                            (cons _%in200537%_ _%r200516%_))
                                           (_%lp200513%_
                                            _%rest200536%_
                                            _%r200516%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in200537%_
                                              'gx#module-import::t))
                                           (let ((_%iphi200541%_
                                                  (fx+ _%phi200508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in200537%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi200541%_))
                                                 (_%lp200513%_
                                                  _%rest200536%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in200537%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r200516%_))
                                                 (_%lp200513%_
                                                  _%rest200536%_
                                                  _%r200516%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in200537%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi200544%_
                                                      (fx+ _%iphi200510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in200537%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi200544%_))
                                                     (_%lp200513%_
                                                      _%rest200536%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in200537%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r200516%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi200544%_))
                                                         (_%lp200513%_
                                                          _%rest200536%_
                                                          (let ((__tmp201282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template200431%_
                          _%in200537%_
                          _%iphi200510%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r200516%_ __tmp201282)))
                 (_%lp200513%_ _%rest200536%_ _%r200516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp200513%_
                                                _%rest200536%_
                                                _%r200516%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest200517200525%_))
                               (let ((_%hd200522200553%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest200517200525%_)))
                                     (_%tl200523200555%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest200517200525%_))))
                                 (let* ((_%in200558%_ _%hd200522200553%_)
                                        (_%rest200560%_ _%tl200523200555%_))
                                   (_%K200521200550%_
                                    _%rest200560%_
                                    _%in200558%_)))
                               (_%else200519200533%_)))))))
                  (_%find-deps200432%_
                   (lambda (_%rest200440%_ _%deps200441%_)
                     (let* ((_%rest200442200450%_ _%rest200440%_)
                            (_%else200444200458%_ (lambda () _%deps200441%_))
                            (_%K200446200495%_
                             (lambda (_%rest200461%_ _%hd200462%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd200462%_
                                      'gx#module-context::t))
                                   (let ((_%id200465%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd200462%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports200466%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd200462%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht200430%_
                                            _%id200465%_))
                                         (_%find-deps200432%_
                                          _%rest200461%_
                                          _%deps200441%_)
                                         (let ((_%$e200469%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd200462%_))))
                                           (if _%$e200469%_
                                               ((lambda (_%pre200472%_)
                                                  (let ((_%xdeps200474%_
                                                         (_%find-deps200432%_
                                                          (cons _%pre200472%_
                                                                _%imports200466%_)
                                                          _%deps200441%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht200430%_
                                                       _%id200465%_
                                                       _%hd200462%_))
                                                    (_%find-deps200432%_
                                                     _%rest200461%_
                                                     (cons _%hd200462%_
                                                           _%xdeps200474%_))))
                                                _%$e200469%_)
                                               (let ((_%xdeps200477%_
                                                      (_%find-deps200432%_
                                                       _%imports200466%_
                                                       _%deps200441%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht200430%_
                                                    _%id200465%_
                                                    _%hd200462%_))
                                                 (_%find-deps200432%_
                                                  _%rest200461%_
                                                  (cons _%hd200462%_
                                                        _%xdeps200477%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd200462%_
                                          'gx#prelude-context::t))
                                       (let ((_%id200480%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd200462%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht200430%_
                                                _%id200480%_))
                                             (_%find-deps200432%_
                                              _%rest200461%_
                                              _%deps200441%_)
                                             (let ((_%xdeps200484%_
                                                    (_%find-deps200432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd200462%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps200441%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht200430%_
                                                      _%id200480%_))
                                                   (_%find-deps200432%_
                                                    _%rest200461%_
                                                    _%xdeps200484%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht200430%_
                                                        _%id200480%_
                                                        _%hd200462%_))
                                                     (_%find-deps200432%_
                                                      _%rest200461%_
                                                      (cons _%hd200462%_
                                                            _%xdeps200484%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd200462%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd200462%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps200432%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd200462%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest200461%_)
                                                _%deps200441%_)
                                               (_%find-deps200432%_
                                                _%rest200461%_
                                                _%deps200441%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd200462%_
                                                  'gx#module-export::t))
                                               (_%find-deps200432%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd200462%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest200461%_)
                                                _%deps200441%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd200462%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd200462%_ '2 '#f '#f)))
               (_%find-deps200432%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd200462%_ '1 '#f '#f))
                      _%rest200461%_)
                _%deps200441%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd200462%_ '2 '#f '#f)))
                   (let ((_%xdeps200491%_
                          (_%import-set-template200431%_ _%hd200462%_ '0)))
                     (_%find-deps200432%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest200461%_ _%xdeps200491%_))
                      _%deps200441%_))
                   (_%find-deps200432%_ _%rest200461%_ _%deps200441%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd200462%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest200442200450%_))
                           (let ((_%hd200447200498%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest200442200450%_)))
                                 (_%tl200448200500%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest200442200450%_))))
                             (let* ((_%hd200503%_ _%hd200447200498%_)
                                    (_%rest200505%_ _%tl200448200500%_))
                               (_%K200446200495%_
                                _%rest200505%_
                                _%hd200503%_)))
                           (_%else200444200458%_))))))
          (let ((__tmp201283
                 (filter gx#expander-context-id
                         (_%find-deps200432%_
                          (let ((_%$e200434%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx200428%_))))
                            (if _%$e200434%_
                                ((lambda (_%pre200437%_)
                                   (cons _%pre200437%_
                                         (##structure-ref
                                          _%ctx200428%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e200434%_)
                                (##structure-ref
                                 _%ctx200428%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp201283)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx200358%_)
        (let* ((_%context-id200360%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx200358%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx200358%_ '1 '#f '#f))
                    (string->symbol _%ctx200358%_)))
               (_%scm200362%_
                (let ((__tmp201284
                       (gxc#static-module-name _%context-id200360%_)))
                  (declare (not safe))
                  (##string-append __tmp201284 '".scm")))
               (_%dirs200364%_ (let () (declare (not safe)) (load-path)))
               (_%dirs200370%_
                (let ((_%user-libpath200366%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath200366%_
                      (let ((_%user-libpath200368%_
                             (path-expand '"lib" _%user-libpath200366%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath200368%_ _%dirs200364%_))
                            _%dirs200364%_
                            (cons _%user-libpath200368%_ _%dirs200364%_)))
                      _%dirs200364%_)))
               (_%dirs200380%_
                (let ((_%$e200372%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e200372%_
                      ((lambda (_%g200374200376%_)
                         (cons _%g200374200376%_ _%dirs200370%_))
                       _%$e200372%_)
                      _%dirs200370%_)))
               (_%dirs200386%_
                (let ((__tmp201285
                       (lambda (_%g200381200383%_)
                         (path-expand '"static" _%g200381200383%_))))
                  (declare (not safe))
                  (##map __tmp201285 _%dirs200380%_))))
          (let _%lp200389%_ ((_%rest200391%_ _%dirs200386%_))
            (let* ((_%rest200392200400%_ _%rest200391%_)
                   (_%else200394200408%_
                    (lambda ()
                      (let ((__tmp201286
                             (##structure-ref
                              _%ctx200358%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp201286
                         _%scm200362%_))))
                   (_%K200396200416%_
                    (lambda (_%rest200411%_ _%dir200412%_)
                      (let ((_%path200414%_
                             (path-expand _%scm200362%_ _%dir200412%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path200414%_))
                            _%path200414%_
                            (_%lp200389%_ _%rest200411%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest200392200400%_))
                  (let ((_%hd200397200419%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200392200400%_)))
                        (_%tl200398200421%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200392200400%_))))
                    (let* ((_%dir200424%_ _%hd200397200419%_)
                           (_%rest200426%_ _%tl200398200421%_))
                      (_%K200396200416%_ _%rest200426%_ _%dir200424%_)))
                  (_%else200394200408%_)))))))
    (define gxc#file-empty?
      (lambda (_%path200356%_)
        (zero? (let ((__tmp201287 (file-info _%path200356%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp201287)))))
    (define gxc#compile-top-module
      (lambda (_%ctx200352%_)
        (let ((__tmp201291
               (lambda ()
                 (let ((__tmp201292
                        (##structure-ref
                         _%ctx200352%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp201292))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp201293
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx200352%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp201293))
                     '#!void)
                 (gxc#collect-bindings _%ctx200352%_)
                 (gxc#compile-runtime-code _%ctx200352%_)
                 (gxc#compile-meta-code _%ctx200352%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx200352%_)
                     '#!void)))
              (__tmp201290
               (let ((__obj201214
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj201214))
                 __obj201214))
              (__tmp201289 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp201288
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
           __tmp201291
           gx#current-expander-context
           _%ctx200352%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp201290
           gxc#current-compile-runtime-sections
           __tmp201289
           gxc#current-compile-runtime-names
           __tmp201288))))
    (define gxc#collect-bindings
      (lambda (_%ctx200350%_)
        (let ((__tmp201294
               (##structure-ref _%ctx200350%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp201294))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx200298%_)
        (letrec ((_%compile1200300%_
                  (lambda (_%ctx200339%_)
                    (let* ((_%code200341%_
                            (##structure-ref
                             _%ctx200339%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm200345%_
                            (let ((_%idstr200343%_
                                   (let ((__tmp201295
                                          (##structure-ref
                                           _%ctx200339%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp201295))))
                              (declare (not safe))
                              (##string-append _%idstr200343%_ '"~0")))
                           (_%rtc?200347%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code200341%_))))
                      (if _%rtc?200347%_
                          (let ((__tmp201296
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp201296
                             _%ctx200339%_
                             _%rtm200345%_))
                          '#!void)
                      (_%generate-runtime-code200302%_
                       _%ctx200339%_
                       _%code200341%_
                       (if _%rtc?200347%_ _%rtm200345%_ '#f)))))
                 (_%context-timestamp200301%_
                  (lambda (_%ctx200337%_)
                    (let ((__tmp201297
                           (let ((__tmp201298
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx200337%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp201298 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp201297))))
                 (_%generate-runtime-code200302%_
                  (lambda (_%ctx200309%_ _%code200310%_ _%rtm200311%_)
                    (let* ((_%runtime-code?200313%_ (if _%rtm200311%_ '#t '#f))
                           (_%lifts200315%_ (box '()))
                           (_%runtime-code200318%_
                            (if _%runtime-code?200313%_
                                (let ((__tmp201301
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code200310%_))))
                                      (__tmp201300
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp201299
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp201301
                                   gx#current-expander-context
                                   _%ctx200309%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts200315%_
                                   gxc#current-compile-marks
                                   __tmp201300
                                   gxc#current-compile-identifiers
                                   __tmp201299))
                                '#f))
                           (_%runtime-code200320%_
                            (if _%runtime-code?200313%_
                                (if (null? (unbox _%lifts200315%_))
                                    _%runtime-code200318%_
                                    (cons 'begin
                                          (let ((__tmp201303
                                                 (cons _%runtime-code200318%_
                                                       '()))
                                                (__tmp201302
                                                 (reverse (unbox _%lifts200315%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp201303
                                             __tmp201302))))
                                '#f))
                           (_%runtime-code200322%_
                            (if _%runtime-code?200313%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp200301%_
                                                         _%ctx200309%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code200320%_ '())))
                                '#f))
                           (_%loader-code200325%_
                            (let ((__tmp201304
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code200310%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp201304
                               gx#current-expander-context
                               _%ctx200309%_)))
                           (_%loader-code200327%_
                            (cons 'begin
                                  (cons _%loader-code200325%_
                                        (cons (if _%runtime-code?200313%_
                                                  (cons 'load-module
                                                        (cons _%rtm200311%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0200329%_
                            (gxc#compile-output-file _%ctx200309%_ '0 '".scm"))
                           (_%scmrt200331%_
                            (gxc#compile-output-file
                             _%ctx200309%_
                             '#f
                             '".scm"))
                           (_%scms200333%_
                            (gxc#compile-static-output-file _%ctx200309%_)))
                      (if _%runtime-code?200313%_
                          (gxc#compile-scm-file__0
                           _%scm0200329%_
                           _%runtime-code200322%_)
                          '#!void)
                      (let ((__tmp201305
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt200331%_
                                _%loader-code200327%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp201305
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms200333%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms200333%_))
                          '#!void)
                      (if _%runtime-code?200313%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0200329%_ _%scms200333%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms200333%_ void)))))))
          (let* ((_%all-modules200304%_
                  (cons _%ctx200298%_ (gxc#lift-nested-modules _%ctx200298%_)))
                 (__tmp201306
                  (lambda (_%ctx200306%_)
                    (let ((__tmp201307
                           (lambda () (_%compile1200300%_ _%ctx200306%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp201307
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp201306 _%all-modules200304%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx200198%_)
        (letrec ((_%compile-ssi200200%_
                  (lambda (_%code200266%_)
                    (let* ((_%path200268%_
                            (gxc#compile-output-file
                             _%ctx200198%_
                             '#f
                             '".ssi"))
                           (_%prelude200280%_
                            (let* ((_%super200270%_
                                    (##structure-ref
                                     _%ctx200198%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e200272%_
                                    (##structure-ref
                                     _%super200270%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e200272%_
                                  ((lambda (_%g200274200276%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g200274200276%_)))
                                   _%$e200272%_)
                                  ':<root>)))
                           (_%ns200282%_
                            (##structure-ref
                             _%ctx200198%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr200284%_
                            (symbol->string
                             (##structure-ref
                              _%ctx200198%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg200292%_
                            (let ((_%$e200286%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr200284%_ '#\/))))
                              (if _%$e200286%_
                                  ((lambda (_%x200289%_)
                                     (let ((__tmp201308
                                            (substring
                                             _%idstr200284%_
                                             '0
                                             _%x200289%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp201308)))
                                   _%$e200286%_)
                                  '#f)))
                           (_%rt200294%_
                            (let ((__tmp201309
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp201309 _%ctx200198%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path200268%_))
                      (gxc#with-output-to-scheme-file
                       _%path200268%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude200280%_))
                         (if _%pkg200292%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg200292%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns200282%_))
                         (newline)
                         (pretty-print _%code200266%_)
                         (if _%rt200294%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt200294%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi200201%_
                  (lambda (_%part200206%_)
                    (let* ((_%part200207200220%_ _%part200206%_)
                           (_%E200209200224%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part200207200220%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K200210200235%_
                            (lambda (_%code200227%_
                                     _%n200228%_
                                     _%phi200229%_
                                     _%phi-ctx200230%_)
                              (let ((_%code200233%_
                                     (let ((__tmp201310
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code200227%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp201310
                                        gx#current-expander-context
                                        _%phi-ctx200230%_
                                        gx#current-expander-phi
                                        _%phi200229%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx200198%_
                                  _%n200228%_
                                  '".scm")
                                 _%code200233%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part200207200220%_))
                          (let ((_%hd200211200238%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part200207200220%_)))
                                (_%tl200212200240%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part200207200220%_))))
                            (let ((_%phi-ctx200243%_ _%hd200211200238%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl200212200240%_))
                                  (let ((_%hd200213200245%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl200212200240%_)))
                                        (_%tl200214200247%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl200212200240%_))))
                                    (let ((_%phi200250%_ _%hd200213200245%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl200214200247%_))
                                          (let ((_%hd200215200252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl200214200247%_)))
                                                (_%tl200216200254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl200214200247%_))))
                                            (let ((_%n200257%_
                                                   _%hd200215200252%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl200216200254%_))
                                                  (let ((_%hd200217200259%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl200216200254%_)))
                                                        (_%tl200218200261%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl200216200254%_))))
                                                    (let ((_%code200264%_
                                                           _%hd200217200259%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl200218200261%_))
                                                          (_%K200210200235%_
                                                           _%code200264%_
                                                           _%n200257%_
                                                           _%phi200250%_
                                                           _%phi-ctx200243%_)
                                                          (_%E200209200224%_))))
                                                  (_%E200209200224%_))))
                                          (_%E200209200224%_))))
                                  (_%E200209200224%_))))
                          (_%E200209200224%_))))))
          (let ((_g201311_ (gxc#generate-meta-code _%ctx200198%_)))
            (begin
              (let ((_g201312_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g201311_)
                           (##vector-length _g201311_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g201312_ 2)))
                    (error "Context expects 2 values" _g201312_)))
              (let ((_%ssi-code200203%_
                     (let () (declare (not safe)) (##vector-ref _g201311_ 0)))
                    (_%phi-code200204%_
                     (let () (declare (not safe)) (##vector-ref _g201311_ 1))))
                (begin
                  (_%compile-ssi200200%_ _%ssi-code200203%_)
                  (for-each _%compile-phi200201%_ _%phi-code200204%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx200180%_)
        (let* ((_%path200182%_
                (gxc#compile-output-file _%ctx200180%_ '#f '".ssxi.ss"))
               (_%code200184%_
                (let ((__tmp201313
                       (##structure-ref
                        _%ctx200180%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp201313)))
               (_%idstr200186%_
                (symbol->string
                 (##structure-ref
                  _%ctx200180%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg200194%_
                (let ((_%$e200188%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr200186%_ '#\/))))
                  (if _%$e200188%_
                      ((lambda (_%x200191%_)
                         (let ((__tmp201314
                                (substring _%idstr200186%_ '0 _%x200191%_)))
                           (declare (not safe))
                           (##string->symbol __tmp201314)))
                       _%$e200188%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path200182%_))
          (gxc#with-output-to-scheme-file
           _%path200182%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg200194%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg200194%_))
                 '#!void)
             (newline)
             (pretty-print _%code200184%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx200173%_)
        (let* ((_%state200175%_
                (let ((__obj201215
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj201215 _%ctx200173%_))
                  __obj201215))
               (_%ssi-code200177%_
                (let ((__tmp201315
                       (##structure-ref
                        _%ctx200173%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state200175%_
                   __tmp201315))))
          (values _%ssi-code200177%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state200175%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx200166%_)
        (let ((_%lifts200168%_ (box '())))
          (let ((__tmp201318
                 (lambda ()
                   (let ((_%code200171%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx200166%_))))
                     (if (null? (unbox _%lifts200168%_))
                         _%code200171%_
                         (cons 'begin
                               (let ((__tmp201320 (cons _%code200171%_ '()))
                                     (__tmp201319
                                      (reverse (unbox _%lifts200168%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp201320 __tmp201319)))))))
                (__tmp201317
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp201316
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp201318
             gxc#current-compile-lift
             _%lifts200168%_
             gxc#current-compile-marks
             __tmp201317
             gxc#current-compile-identifiers
             __tmp201316)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx200162%_)
        (let ((_%modules200164%_ (box '())))
          (let ((__tmp201321
                 (##structure-ref _%ctx200162%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules200164%_ __tmp201321))
          (reverse (unbox _%modules200164%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path200142%_ _%code200143%_ _%phi?200144%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path200142%_))
        (gxc#with-output-to-scheme-file
         _%path200142%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp201322
                                           (if _%phi?200144%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp201322)))))))
           (pretty-print _%code200143%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it200148%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path200142%_ _%phi?200144%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp201323
                         (cons 'compile-file (cons _%path200142%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it200148%_ __tmp201323))
                  (_%compile-it200148%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path200153%_ _%code200154%_)
        (let ((_%phi?200156%_ '#f))
          (gxc#compile-scm-file__%
           _%path200153%_
           _%code200154%_
           _%phi?200156%_))))
    (define gxc#compile-scm-file
      (lambda _g201325_
        (let ((_g201324_ (let () (declare (not safe)) (##length _g201325_))))
          (cond ((let () (declare (not safe)) (##fx= _g201324_ 2))
                 (apply gxc#compile-scm-file__0 _g201325_))
                ((let () (declare (not safe)) (##fx= _g201324_ 3))
                 (apply gxc#compile-scm-file__% _g201325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g201325_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?200043%_)
        (let _%lp200045%_ ((_%rest200047%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts200048%_ '()))
          (let* ((_%rest200049200069%_ _%rest200047%_)
                 (_%else200053200077%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts200048%_)))
                        (reverse _%opts200048%_)))))
            (let ((_%K200063200120%_
                   (lambda (_%rest200118%_)
                     (_%lp200045%_ _%rest200118%_ _%opts200048%_)))
                  (_%K200058200102%_
                   (lambda (_%rest200100%_)
                     (_%lp200045%_ _%rest200100%_ _%opts200048%_)))
                  (_%K200055200084%_
                   (lambda (_%rest200081%_ _%opt200082%_)
                     (_%lp200045%_
                      _%rest200081%_
                      (cons _%opt200082%_ _%opts200048%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest200049200069%_))
                  (let ((_%tl200065200125%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200049200069%_)))
                        (_%hd200064200123%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200049200069%_))))
                    (if (equal? _%hd200064200123%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl200065200125%_))
                            (let* ((_%tl200067200128%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl200065200125%_)))
                                   (_%rest200131%_ _%tl200067200128%_))
                              (_%K200063200120%_ _%rest200131%_))
                            (let ((_%opt200092%_ _%hd200064200123%_)
                                  (_%rest200094%_ _%tl200065200125%_))
                              (_%K200055200084%_
                               _%rest200094%_
                               _%opt200092%_)))
                        (if (equal? _%hd200064200123%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl200065200125%_))
                                (let* ((_%tl200062200110%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl200065200125%_)))
                                       (_%rest200113%_ _%tl200062200110%_))
                                  (_%K200058200102%_ _%rest200113%_))
                                (let ((_%opt200092%_ _%hd200064200123%_)
                                      (_%rest200094%_ _%tl200065200125%_))
                                  (_%K200055200084%_
                                   _%rest200094%_
                                   _%opt200092%_)))
                            (let ((_%opt200092%_ _%hd200064200123%_)
                                  (_%rest200094%_ _%tl200065200125%_))
                              (_%K200055200084%_
                               _%rest200094%_
                               _%opt200092%_)))))
                  (_%else200053200077%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?200137%_ '#f)) (gxc#gsc-link-options__% _%phi?200137%_))))
    (define gxc#gsc-link-options
      (lambda _g201327_
        (let ((_g201326_ (let () (declare (not safe)) (##length _g201327_))))
          (cond ((let () (declare (not safe)) (##fx= _g201326_ 0))
                 (apply gxc#gsc-link-options__0 _g201327_))
                ((let () (declare (not safe)) (##fx= _g201326_ 1))
                 (apply gxc#gsc-link-options__% _g201327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g201327_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords199892%_ _%static?199888199893%_ _%phi?199895%_)
        (let ((_%static?199897%_
               (if (eq? _%static?199888199893%_ absent-value)
                   '#f
                   _%static?199888199893%_)))
          (if _%phi?199895%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp199899%_ ((_%rest199901%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts199902%_ '()))
                (let* ((_%rest199903199929%_ _%rest199901%_)
                       (_%else199908199937%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts199902%_)))
                              (reverse! _%opts199902%_)))))
                  (let ((_%K199923200000%_
                         (lambda (_%rest199997%_ _%opt199998%_)
                           (if _%static?199897%_
                               (_%lp199899%_
                                _%rest199997%_
                                (cons _%opt199998%_
                                      (cons '"-cc-options" _%opts199902%_)))
                               (_%lp199899%_ _%rest199997%_ _%opts199902%_))))
                        (_%K199918199977%_
                         (lambda (_%rest199974%_ _%opt199975%_)
                           (_%lp199899%_
                            _%rest199974%_
                            (cons _%opt199975%_
                                  (cons '"-cc-options" _%opts199902%_)))))
                        (_%K199913199957%_
                         (lambda (_%rest199955%_)
                           (_%lp199899%_ _%rest199955%_ _%opts199902%_)))
                        (_%K199910199943%_
                         (lambda (_%rest199941%_)
                           (_%lp199899%_ _%rest199941%_ _%opts199902%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest199903199929%_))
                        (let ((_%tl199925200005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest199903199929%_)))
                              (_%hd199924200003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest199903199929%_))))
                          (if (equal? _%hd199924200003%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199925200005%_))
                                  (let ((_%tl199927200010%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199925200005%_)))
                                        (_%hd199926200008%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199925200005%_))))
                                    (if (equal? _%hd199926200008%_ '"-Bstatic")
                                        (let ((_%opt200013%_
                                               _%hd199926200008%_)
                                              (_%rest200015%_
                                               _%tl199927200010%_))
                                          (_%K199923200000%_
                                           _%rest200015%_
                                           _%opt200013%_))
                                        (let ((_%opt199990%_
                                               _%hd199926200008%_)
                                              (_%rest199992%_
                                               _%tl199927200010%_))
                                          (_%K199918199977%_
                                           _%rest199992%_
                                           _%opt199990%_))))
                                  (let ((_%rest199949%_ _%tl199925200005%_))
                                    (_%K199910199943%_ _%rest199949%_)))
                              (if (equal? _%hd199924200003%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199925200005%_))
                                      (let* ((_%tl199917199965%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199925200005%_)))
                                             (_%rest199968%_
                                              _%tl199917199965%_))
                                        (_%K199913199957%_ _%rest199968%_))
                                      (let ((_%rest199949%_
                                             _%tl199925200005%_))
                                        (_%K199910199943%_ _%rest199949%_)))
                                  (let ((_%rest199949%_ _%tl199925200005%_))
                                    (_%K199910199943%_ _%rest199949%_)))))
                        (_%else199908199937%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords200020%_ _%static?199888200021%_)
        (let ((_%phi?200023%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords200020%_
           _%static?199888200021%_
           _%phi?200023%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g201329_
        (let ((_g201328_ (let () (declare (not safe)) (##length _g201329_))))
          (cond ((let () (declare (not safe)) (##fx= _g201328_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g201329_))
                ((let () (declare (not safe)) (##fx= _g201328_ 3))
                 (apply gxc#gsc-cc-options__%__% _g201329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g201329_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords200032%_ . _%args200033%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords200032%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200032%_
                  'static:
                  absent-value))
               _%args200033%_)))
    (define gxc#gsc-cc-options
      (lambda _%args199889200039%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args199889200039%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords199737%_ _%static?199733199738%_ _%phi?199740%_)
        (let ((_%static?199742%_
               (if (eq? _%static?199733199738%_ absent-value)
                   '#f
                   _%static?199733199738%_)))
          (if _%phi?199740%_
              '()
              (let _%lp199744%_ ((_%rest199746%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts199747%_ '()))
                (let* ((_%rest199748199774%_ _%rest199746%_)
                       (_%else199753199782%_
                        (lambda () (reverse! _%opts199747%_))))
                  (let ((_%K199768199845%_
                         (lambda (_%rest199842%_ _%opt199843%_)
                           (if _%static?199742%_
                               (_%lp199744%_
                                _%rest199842%_
                                (cons _%opt199843%_
                                      (cons '"-ld-options" _%opts199747%_)))
                               (_%lp199744%_ _%rest199842%_ _%opts199747%_))))
                        (_%K199763199822%_
                         (lambda (_%rest199819%_ _%opt199820%_)
                           (_%lp199744%_
                            _%rest199819%_
                            (cons _%opt199820%_
                                  (cons '"-ld-options" _%opts199747%_)))))
                        (_%K199758199802%_
                         (lambda (_%rest199800%_)
                           (_%lp199744%_ _%rest199800%_ _%opts199747%_)))
                        (_%K199755199788%_
                         (lambda (_%rest199786%_)
                           (_%lp199744%_ _%rest199786%_ _%opts199747%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest199748199774%_))
                        (let ((_%tl199770199850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest199748199774%_)))
                              (_%hd199769199848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest199748199774%_))))
                          (if (equal? _%hd199769199848%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199770199850%_))
                                  (let ((_%tl199772199855%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199770199850%_)))
                                        (_%hd199771199853%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199770199850%_))))
                                    (if (equal? _%hd199771199853%_ '"-static")
                                        (let ((_%opt199858%_
                                               _%hd199771199853%_)
                                              (_%rest199860%_
                                               _%tl199772199855%_))
                                          (_%K199768199845%_
                                           _%rest199860%_
                                           _%opt199858%_))
                                        (let ((_%opt199835%_
                                               _%hd199771199853%_)
                                              (_%rest199837%_
                                               _%tl199772199855%_))
                                          (_%K199763199822%_
                                           _%rest199837%_
                                           _%opt199835%_))))
                                  (let ((_%rest199794%_ _%tl199770199850%_))
                                    (_%K199755199788%_ _%rest199794%_)))
                              (if (equal? _%hd199769199848%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199770199850%_))
                                      (let* ((_%tl199762199810%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199770199850%_)))
                                             (_%rest199813%_
                                              _%tl199762199810%_))
                                        (_%K199758199802%_ _%rest199813%_))
                                      (let ((_%rest199794%_
                                             _%tl199770199850%_))
                                        (_%K199755199788%_ _%rest199794%_)))
                                  (let ((_%rest199794%_ _%tl199770199850%_))
                                    (_%K199755199788%_ _%rest199794%_)))))
                        (_%else199753199782%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords199865%_ _%static?199733199866%_)
        (let ((_%phi?199868%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords199865%_
           _%static?199733199866%_
           _%phi?199868%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g201331_
        (let ((_g201330_ (let () (declare (not safe)) (##length _g201331_))))
          (cond ((let () (declare (not safe)) (##fx= _g201330_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g201331_))
                ((let () (declare (not safe)) (##fx= _g201330_ 3))
                 (apply gxc#gsc-ld-options__%__% _g201331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g201331_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords199877%_ . _%args199878%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords199877%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199877%_
                  'static:
                  absent-value))
               _%args199878%_)))
    (define gxc#gsc-ld-options
      (lambda _%args199734199884%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args199734199884%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir199728%_)
        (let ((_%user-staticdir199730%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir199728%_
                       '" -I "
                       _%user-staticdir199730%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp199640%_ ((_%rest199642%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts199643%_ '()))
          (let* ((_%rest199644199664%_ _%rest199642%_)
                 (_%else199648199672%_ (lambda () _%opts199643%_)))
            (let ((_%K199658199715%_
                   (lambda (_%rest199713%_)
                     (_%lp199640%_ _%rest199713%_ _%opts199643%_)))
                  (_%K199653199693%_
                   (lambda (_%rest199690%_ _%opt199691%_)
                     (_%lp199640%_
                      _%rest199690%_
                      (let ((__tmp201332
                             (let ((__tmp201333
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt199691%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp201333))))
                        (declare (not safe))
                        (##append _%opts199643%_ __tmp201332)))))
                  (_%K199650199678%_
                   (lambda (_%rest199676%_)
                     (_%lp199640%_ _%rest199676%_ _%opts199643%_))))
              (if (let () (declare (not safe)) (##pair? _%rest199644199664%_))
                  (let ((_%tl199660199720%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199644199664%_)))
                        (_%hd199659199718%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199644199664%_))))
                    (if (equal? _%hd199659199718%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl199660199720%_))
                            (let* ((_%tl199662199723%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl199660199720%_)))
                                   (_%rest199726%_ _%tl199662199723%_))
                              (_%K199658199715%_ _%rest199726%_))
                            (let ((_%rest199684%_ _%tl199660199720%_))
                              (_%K199650199678%_ _%rest199684%_)))
                        (if (equal? _%hd199659199718%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl199660199720%_))
                                (let ((_%tl199657199703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl199660199720%_)))
                                      (_%hd199656199701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl199660199720%_))))
                                  (let ((_%opt199706%_ _%hd199656199701%_)
                                        (_%rest199708%_ _%tl199657199703%_))
                                    (_%K199653199693%_
                                     _%rest199708%_
                                     _%opt199706%_)))
                                (let ((_%rest199684%_ _%tl199660199720%_))
                                  (_%K199650199678%_ _%rest199684%_)))
                            (let ((_%rest199684%_ _%tl199660199720%_))
                              (_%K199650199678%_ _%rest199684%_)))))
                  (_%else199648199672%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str199637%_)
        (not (let () (declare (not safe)) (string-empty? _%str199637%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path199630%_ _%phi?199631%_)
        (let ((_%gsc-link-opts199633%_
               (gxc#gsc-link-options__% _%phi?199631%_))
              (_%gsc-cc-opts199634%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?199631%_))
              (_%gsc-ld-opts199635%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?199631%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp201334
                  (let ((__tmp201335
                         (let ((__tmp201336 (cons _%path199630%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp201336
                            _%gsc-link-opts199633%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp201335 _%gsc-ld-opts199635%_))))
             (declare (not safe))
             (__foldr1 cons __tmp201334 _%gsc-cc-opts199634%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx199596%_ _%n199597%_ _%ext199598%_)
        (letrec ((_%module-relative-path199600%_
                  (lambda (_%ctx199628%_)
                    (path-strip-directory
                     (let ((__tmp201337
                            (##structure-ref
                             _%ctx199628%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp201337)))))
                 (_%module-source-directory199601%_
                  (lambda (_%ctx199624%_)
                    (path-directory
                     (let ((_%mpath199626%_
                            (##structure-ref
                             _%ctx199624%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath199626%_)
                           _%mpath199626%_
                           (last _%mpath199626%_))))))
                 (_%section-string199602%_
                  (lambda (_%n199618%_)
                    (if (number? _%n199618%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n199618%_))
                        (if (symbol? _%n199618%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n199618%_))
                            (if (string? _%n199618%_)
                                _%n199618%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n199618%_)))))))
                 (_%file-name199603%_
                  (lambda (_%path199616%_)
                    (if _%n199597%_
                        (string-append
                         _%path199616%_
                         '"~"
                         (_%section-string199602%_ _%n199597%_)
                         _%ext199598%_)
                        (string-append _%path199616%_ _%ext199598%_))))
                 (_%file-path199604%_
                  (lambda ()
                    (let ((_%$e199610%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e199610%_
                          ((lambda (_%outdir199613%_)
                             (path-expand
                              (_%file-name199603%_
                               (let ((__tmp201338
                                      (##structure-ref
                                       _%ctx199596%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp201338)))
                              _%outdir199613%_))
                           _%$e199610%_)
                          (path-expand
                           (_%file-name199603%_
                            (_%module-relative-path199600%_ _%ctx199596%_))
                           (_%module-source-directory199601%_
                            _%ctx199596%_)))))))
          (let ((_%path199606%_ (_%file-path199604%_)))
            (let ((__tmp201339
                   (lambda ()
                     (let ((__tmp201340 (path-directory _%path199606%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp201340)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp201339))
            _%path199606%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx199577%_)
        (letrec ((_%file-name199579%_
                  (lambda (_%id199594%_)
                    (let ((__tmp201341 (gxc#static-module-name _%id199594%_)))
                      (declare (not safe))
                      (##string-append __tmp201341 '".scm"))))
                 (_%file-path199580%_
                  (lambda ()
                    (let* ((_%file199586%_
                            (_%file-name199579%_
                             (##structure-ref
                              _%ctx199577%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e199588%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e199588%_
                          ((lambda (_%outdir199591%_)
                             (path-expand
                              _%file199586%_
                              (path-expand '"static" _%outdir199591%_)))
                           _%$e199588%_)
                          (path-expand _%file199586%_ '"static"))))))
          (let ((_%path199582%_ (_%file-path199580%_)))
            (let ((__tmp201342
                   (lambda ()
                     (let ((__tmp201343 (path-directory _%path199582%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp201343)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp201342))
            _%path199582%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx199570%_ _%opts199571%_)
        (let ((_%$e199573%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts199571%_))))
          (if _%$e199573%_
              _%$e199573%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx199570%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr199560%_)
        (if (string? _%idstr199560%_)
            (let* ((_%str199563%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr199560%_)))
                   (_%strs199565%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str199563%_ '#\/))))
              (declare (not safe))
              (string-join _%strs199565%_ '"__"))
            (if (symbol? _%idstr199560%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr199560%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr199560%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp201344
               (let ((__tmp201345 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp201345 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp201344))))
    (define gxc#invoke__%
      (lambda (_%@@keywords199524%_
               _%stdout-redirection199520199525%_
               _%stderr-redirection199521199527%_
               _%program199529%_
               _%args199530%_)
        (let* ((_%stdout-redirection199532%_
                (if (eq? _%stdout-redirection199520199525%_ absent-value)
                    '#f
                    _%stdout-redirection199520199525%_))
               (_%stderr-redirection199534%_
                (if (eq? _%stderr-redirection199521199527%_ absent-value)
                    '#f
                    _%stderr-redirection199521199527%_)))
          (let ((__tmp201346 (cons _%program199529%_ _%args199530%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp201346))
          (let* ((_%proc199536%_
                  (open-process
                   (cons 'path:
                         (cons _%program199529%_
                               (cons 'arguments:
                                     (cons _%args199530%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection199532%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection199534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output199541%_
                  (if (or _%stdout-redirection199532%_
                          _%stderr-redirection199534%_)
                      (read-line _%proc199536%_ '#f)
                      '#f))
                 (_%status199544%_ (process-status _%proc199536%_)))
            (let () (declare (not safe)) (##close-port _%proc199536%_))
            (if (zero? _%status199544%_)
                '#!void
                (begin
                  (display _%output199541%_)
                  (let ((__tmp201347 (cons _%program199529%_ _%args199530%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp201347
                     _%status199544%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords199549%_ . _%args199550%_)
        (apply gxc#invoke__%
               _%@@keywords199549%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199549%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199549%_
                  'stderr-redirection:
                  absent-value))
               _%args199550%_)))
    (define gxc#invoke
      (lambda _%args199522199556%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args199522199556%_)))))
