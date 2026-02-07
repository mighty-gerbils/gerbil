(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770505734)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp256717 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp256717))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp256718 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp256718))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path256574%_ _%fun256575%_)
        (with-output-to-file
         (cons 'path: (cons _%path256574%_ gxc#scheme-file-settings))
         _%fun256575%_)))
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
      (lambda (_%gerbil-libdir256569%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir256569%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path256567%_)
        (let ((__tmp256719 (object->string _%path256567%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp256719 '")"))))
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
      (lambda (_%dir256565%_) (delete-file-or-directory _%dir256565%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath256508%_ _%opts256509%_)
        (if (string? _%srcpath256508%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath256508%_)))
        (let* ((_%outdir256511%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts256509%_)))
               (_%invoke-gsc?256513%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts256509%_)))
               (_%target256518%_
                (let ((_%$e256515%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts256509%_))))
                  (if _%$e256515%_ _%$e256515%_ 'C)))
               (_%gsc-options256523%_
                (append (cons '"-target"
                              (cons (symbol->string _%target256518%_) '()))
                        (let ((_%$e256520%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts256509%_))))
                          (if _%$e256520%_ _%$e256520%_ '()))))
               (_%keep-scm?256525%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts256509%_)))
               (_%verbosity256527%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts256509%_)))
               (_%optimize256529%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts256509%_)))
               (_%debug256531%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts256509%_)))
               (_%gen-ssxi256533%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts256509%_)))
               (_%parallel?256535%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts256509%_))))
          (if _%outdir256511%_
              (let ((__tmp256720
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir256511%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp256720))
              '#!void)
          (if _%optimize256529%_
              (let ((__tmp256721
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp256721))
              '#!void)
          (let ((__tmp256722
                 (lambda ()
                   (let ((__tmp256723
                          (lambda ()
                            (let ((__tmp256724
                                   (lambda ()
                                     (let ((__tmp256725
                                            (lambda ()
                                              (let ((__tmp256726
                                                     (lambda ()
                                                       (let ((__tmp256727
                                                              (lambda ()
                                                                (let ((__tmp256728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp256729
                                        (lambda ()
                                          (let ((__tmp256730
                                                 (lambda ()
                                                   (let ((__tmp256732
                                                          (lambda ()
                                                            (let ((__tmp256734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp256736
                                    (lambda ()
                                      (let ((__tmp256737
                                             (lambda ()
                                               (let ((__tmp256738
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath256508%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp256739
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath256508%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp256739))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp256738
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp256737
                                         gxc#current-compile-parallel
                                         _%parallel?256535%_))))
                                   (__tmp256735
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp256736
                                gxc#current-compile-identifiers
                                __tmp256735))))
                          (__tmp256733
                           (cons (cons 'compile-module
                                       (cons _%srcpath256508%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp256734
                       gxc#current-compile-context
                       __tmp256733))))
                 (__tmp256731 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp256732
                                                      gxc#current-compile-timestamp
                                                      __tmp256731)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp256730
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi256533%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp256729
                                    gxc#current-compile-debug
                                    _%debug256531%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp256728
                           gxc#current-compile-optimize
                           _%optimize256529%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp256727
                  gxc#current-compile-verbose
                  _%verbosity256527%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp256726
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?256525%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp256725
                                        gxc#current-compile-gsc-options
                                        _%gsc-options256523%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp256724
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?256513%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp256723
                      gx#current-compilation-target
                      _%target256518%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp256722
             gxc#current-compile-output-dir
             _%outdir256511%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath256558%_)
        (let ((_%opts256560%_ '()))
          (gxc#compile-module__% _%srcpath256558%_ _%opts256560%_))))
    (define gxc#compile-module
      (lambda _g256740_
        (let ((_g256741_ (let () (declare (not safe)) (##length _g256740_))))
          (cond ((let () (declare (not safe)) (##fx= _g256741_ 1))
                 (apply gxc#compile-module__0 _g256740_))
                ((let () (declare (not safe)) (##fx= _g256741_ 2))
                 (apply gxc#compile-module__% _g256740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g256740_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath256457%_ _%opts256458%_)
        (if (string? _%srcpath256457%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath256457%_)))
        (let* ((_%outdir256460%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts256458%_)))
               (_%invoke-gsc?256462%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts256458%_)))
               (_%target256467%_
                (let ((_%$e256464%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts256458%_))))
                  (if _%$e256464%_ _%$e256464%_ 'C)))
               (_%gsc-options256472%_
                (append (cons '"-target"
                              (cons (symbol->string _%target256467%_) '()))
                        (let ((_%$e256469%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts256458%_))))
                          (if _%$e256469%_ _%$e256469%_ '()))))
               (_%keep-scm?256474%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts256458%_)))
               (_%verbosity256476%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts256458%_)))
               (_%debug256478%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts256458%_)))
               (_%parallel?256480%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts256458%_))))
          (if _%outdir256460%_
              (let ((__tmp256742
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir256460%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp256742))
              '#!void)
          (let ((__tmp256743
                 (lambda ()
                   (let ((__tmp256744
                          (lambda ()
                            (let ((__tmp256745
                                   (lambda ()
                                     (let ((__tmp256746
                                            (lambda ()
                                              (let ((__tmp256747
                                                     (lambda ()
                                                       (let ((__tmp256748
                                                              (lambda ()
                                                                (let ((__tmp256749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp256751
                                        (lambda ()
                                          (let ((__tmp256753
                                                 (lambda ()
                                                   (let ((__tmp256755
                                                          (lambda ()
                                                            (let ((__tmp256756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp256757
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath256457%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp256758
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath256457%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp256758))
                                       _%opts256458%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp256757
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp256756
                       gxc#current-compile-parallel
                       _%parallel?256480%_))))
                 (__tmp256754
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp256755
                                                      gxc#current-compile-identifiers
                                                      __tmp256754))))
                                                (__tmp256752
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath256457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp256753
                                             gxc#current-compile-context
                                             __tmp256752))))
                                       (__tmp256750 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp256751
                                    gxc#current-compile-timestamp
                                    __tmp256750)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp256749
                           gxc#current-compile-debug
                           _%debug256478%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp256748
                  gxc#current-compile-verbose
                  _%verbosity256476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp256747
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?256474%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp256746
                                        gxc#current-compile-gsc-options
                                        _%gsc-options256472%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp256745
                               gx#current-compilation-target
                               _%target256467%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp256744
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?256462%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp256743
             gxc#current-compile-output-dir
             _%outdir256460%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath256500%_)
        (let ((_%opts256502%_ '()))
          (gxc#compile-exe__% _%srcpath256500%_ _%opts256502%_))))
    (define gxc#compile-exe
      (lambda _g256759_
        (let ((_g256760_ (let () (declare (not safe)) (##length _g256759_))))
          (cond ((let () (declare (not safe)) (##fx= _g256760_ 1))
                 (apply gxc#compile-exe__0 _g256759_))
                ((let () (declare (not safe)) (##fx= _g256760_ 2))
                 (apply gxc#compile-exe__% _g256759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g256759_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx256453%_ _%opts256454%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts256454%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx256453%_
             _%opts256454%_)
            (gxc#compile-executable-module/separate
             _%ctx256453%_
             _%opts256454%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx256179%_ _%opts256180%_)
        (letrec ((_%generate-stub256182%_
                  (lambda (_%builtin-modules256449%_)
                    (let ((_%mod-main256451%_
                           (gxc#find-runtime-symbol _%ctx256179%_ 'main)))
                      (let ((__tmp256761
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules256449%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp256761))
                      (let ((__tmp256762
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main256451%_
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
                        (##write __tmp256762))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts256183%_
                  (lambda (_%gerbil-libdir256447%_)
                    (let ((__tmp256763
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir256447%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp256763 read))))
                 (_%replace-extension256184%_
                  (lambda (_%path256444%_ _%ext256445%_)
                    (string-append
                     (path-strip-extension _%path256444%_)
                     _%ext256445%_)))
                 (_%replace-extension-with-c256185%_
                  (lambda (_%path256442%_)
                    (_%replace-extension256184%_ _%path256442%_ '".c")))
                 (_%replace-extension-with-object256186%_
                  (lambda (_%path256440%_)
                    (_%replace-extension256184%_
                     _%path256440%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?256187%_
                  (lambda (_%ctx256438%_)
                    (if (_%exclude-module?256189%_ _%ctx256438%_)
                        '#f
                        (not (_%libgerbil-module?256188%_ _%ctx256438%_)))))
                 (_%libgerbil-module?256188%_
                  (lambda (_%ctx256431%_)
                    (let ((_%id-str256433%_
                           (symbol->string
                            (##structure-ref
                             _%ctx256431%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?256189%_ _%id-str256433%_)
                          '#f
                          (let ((_%$e256435%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str256433%_))))
                            (if _%$e256435%_
                                _%$e256435%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str256433%_))))))))
                 (_%exclude-module?256189%_
                  (lambda (_%ctx-or-str256427%_)
                    (let ((_%str256429%_
                           (if (string? _%ctx-or-str256427%_)
                               _%ctx-or-str256427%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str256427%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str256429%_))))
                 (_%not-file-empty?256190%_
                  (lambda (_%path256425%_)
                    (not (gxc#file-empty? _%path256425%_))))
                 (_%fold-libgerbil-runtime-scm256191%_
                  (lambda (_%gerbil-staticdir256418%_ _%libgerbil-scm256419%_)
                    (let ((_%gerbil-runtime-scm256423%_
                           (let ((__tmp256764
                                  (lambda (_%rtm256421%_)
                                    (path-expand
                                     (let ((__tmp256765
                                            (let ((__tmp256766
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm256421%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp256766
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp256765 '".scm"))
                                     _%gerbil-staticdir256418%_))))
                             (declare (not safe))
                             (##map __tmp256764 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates256192%_
                       (append _%gerbil-runtime-scm256423%_
                               _%libgerbil-scm256419%_)))))
                 (_%remove-duplicates256192%_
                  (lambda (_%strlst256378%_)
                    (let _%loop256380%_ ((_%rest256382%_ _%strlst256378%_)
                                         (_%result256383%_ '()))
                      (let* ((_%rest256384256392%_ _%rest256382%_)
                             (_%else256386256400%_
                              (lambda () (reverse! _%result256383%_)))
                             (_%K256388256406%_
                              (lambda (_%rest256403%_ _%path256404%_)
                                (if (member _%path256404%_ _%result256383%_)
                                    (_%loop256380%_
                                     _%rest256403%_
                                     _%result256383%_)
                                    (_%loop256380%_
                                     _%rest256403%_
                                     (cons _%path256404%_
                                           _%result256383%_))))))
                        (if (pair? _%rest256384256392%_)
                            (let ((_%hd256389256409%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest256384256392%_)))
                                  (_%tl256390256411%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest256384256392%_))))
                              (let* ((_%path256414%_ _%hd256389256409%_)
                                     (_%rest256416%_ _%tl256390256411%_))
                                (_%K256388256406%_
                                 _%rest256416%_
                                 _%path256414%_)))
                            (_%else256386256400%_))))))
                 (_%compile-stub256193%_
                  (lambda (_%output-scm256200%_ _%output-bin256201%_)
                    (let* ((_%gerbil-home256203%_
                            (let ((__tmp256767
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp256767)))
                           (_%gerbil-libdir256205%_
                            (path-expand '"lib" _%gerbil-home256203%_))
                           (_%gerbil-staticdir256207%_
                            (path-expand '"static" _%gerbil-libdir256205%_))
                           (_%deps256209%_
                            (gxc#find-runtime-module-deps _%ctx256179%_))
                           (_%libgerbil-deps256211%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?256188%_
                               _%deps256209%_)))
                           (_%libgerbil-scm256213%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps256211%_)))
                           (_%libgerbil-scm256215%_
                            (_%fold-libgerbil-runtime-scm256191%_
                             _%gerbil-staticdir256207%_
                             _%libgerbil-scm256213%_))
                           (_%libgerbil-c256217%_
                            (map _%replace-extension-with-c256185%_
                                 _%libgerbil-scm256215%_))
                           (_%libgerbil-o256219%_
                            (map _%replace-extension-with-object256186%_
                                 _%libgerbil-scm256215%_))
                           (_%src-deps256221%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?256187%_
                               _%deps256209%_)))
                           (_%src-deps-scm256223%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps256221%_)))
                           (_%src-deps-scm256225%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?256190%_
                               _%src-deps-scm256223%_)))
                           (_%src-deps-scm256227%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm256225%_)))
                           (_%src-deps-c256229%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c256185%_
                                     _%src-deps-scm256227%_)))
                           (_%src-deps-o256231%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object256186%_
                                     _%src-deps-scm256227%_)))
                           (_%src-bin-scm256233%_
                            (gxc#find-static-module-file _%ctx256179%_))
                           (_%src-bin-scm256235%_
                            (path-expand _%src-bin-scm256233%_))
                           (_%src-bin-c256237%_
                            (_%replace-extension-with-c256185%_
                             _%src-bin-scm256235%_))
                           (_%src-bin-o256239%_
                            (_%replace-extension-with-object256186%_
                             _%src-bin-scm256235%_))
                           (_%output-bin256241%_
                            (path-expand _%output-bin256201%_))
                           (_%output-scm256243%_
                            (path-expand _%output-scm256200%_))
                           (_%output-c256245%_
                            (_%replace-extension-with-c256185%_
                             _%output-scm256243%_))
                           (_%output-o256247%_
                            (_%replace-extension-with-object256186%_
                             _%output-scm256243%_))
                           (_%output_-c256249%_
                            (_%replace-extension256184%_
                             _%output-scm256243%_
                             '"_.c"))
                           (_%output_-o256251%_
                            (_%replace-extension256184%_
                             _%output-scm256243%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts256253%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts256255%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts256257%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir256207%_))
                           (_%output-ld-opts256259%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts256261%_
                            (_%get-libgerbil-ld-opts256183%_
                             _%gerbil-libdir256205%_))
                           (_%rpath256263%_
                            (gxc#gerbil-rpath _%gerbil-libdir256205%_))
                           (_%builtin-modules256267%_
                            (_%remove-duplicates256192%_
                             (let ((__tmp256768
                                    (let ((__tmp256770
                                           (lambda (_%mod256265%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod256265%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp256769
                                           (cons _%ctx256179%_
                                                 _%deps256209%_)))
                                      (declare (not safe))
                                      (##map __tmp256770 __tmp256769))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp256768)))))
                      (letrec ((_%compile-obj256270%_
                                (lambda (_%scm-path256277%_ _%c-path256278%_)
                                  (let* ((_%o-path256280%_
                                          (_%replace-extension256184%_
                                           _%c-path256278%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock256282%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path256280%_
                                             '".lock")))
                                         (_%locked256284%_ '#f)
                                         (_%unlock256287%_
                                          (lambda ()
                                            (close-port _%locked256284%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock256282%_)))))
                                    (let _%retry256290%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock256282%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry256290%_))
                                          (begin
                                            (set! _%locked256284%_
                                                  (let* ((_%handler256293%_
                                                          false)
                                                         (_%thunk256297%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock256282%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler256302%_ _%handler256293%_)
                 (_%thunk256358%_ _%thunk256297%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler256302%_
                                                     _%thunk256358%_)))
                                            (if _%locked256284%_
                                                '#!void
                                                (_%retry256290%_)))))
                                    (let ((__tmp256772
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path256280%_)))
                                                     (not _%scm-path256277%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path256277%_
                                                        _%o-path256280%_)))
                                                 (let ((_%gsc-cc-opts256375%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp256773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp256774 (cons _%c-path256278%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp256774
                            _%gsc-static-opts256257%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp256773 _%gsc-cc-opts256375%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp256771
                                           (lambda () (_%unlock256287%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp256772
                                       __tmp256771))))))
                        (let ((__tmp256775
                               (lambda ()
                                 (let ((__tmp256776
                                        (path-directory _%output-bin256241%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp256776)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp256775))
                        (gxc#with-output-to-scheme-file
                         _%output-scm256243%_
                         (lambda ()
                           (_%generate-stub256182%_
                            _%builtin-modules256267%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it256275%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp256777
                                                   (let ((__tmp256778
                                                          (let ((__tmp256779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm256235%_
                               (cons _%output-scm256243%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp256779 _%src-deps-scm256227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp256778
                                                      _%libgerbil-c256217%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp256777
                                               _%gsc-link-opts256253%_))))
                                     (for-each
                                      _%compile-obj256270%_
                                      (let ((__tmp256780
                                             (cons _%src-bin-scm256235%_
                                                   (cons _%output-scm256243%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp256780
                                         _%src-deps-scm256227%_))
                                      (let ((__tmp256781
                                             (cons _%src-bin-c256237%_
                                                   (cons _%output-c256245%_
                                                         (cons _%output_-c256249%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp256781
                                         _%src-deps-c256229%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin256241%_
                                                        (let ((__tmp256782
                                                               (cons _%src-bin-o256239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o256247%_
                                   (cons _%output_-o256251%_
                                         (let ((__tmp256783
                                                (let ((__tmp256784
                                                       (let ((__tmp256786
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir256205%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts256261%_))))
                     (__tmp256785
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath256263%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp256786 __tmp256785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp256784
                                                   _%output-ld-opts256259%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp256783
                                            _%libgerbil-o256219%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp256782 _%src-deps-o256231%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp256787
                                            (cons _%output-c256245%_
                                                  (cons _%output_-c256249%_
                                                        (cons _%output-o256247%_
                                                              (cons _%output_-o256251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp256787)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it256275%_))
                                  (_%compile-it256275%_)))
                            '#!void))))))
          (let* ((_%output-bin256195%_
                  (gxc#compile-exe-output-file _%ctx256179%_ _%opts256180%_))
                 (_%output-scm256197%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin256195%_ '"__exe.scm"))))
            (_%compile-stub256193%_
             _%output-scm256197%_
             _%output-bin256195%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx256001%_ _%opts256002%_)
        (letrec ((_%reset-declare256004%_
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
                 (_%generate-stub256005%_
                  (lambda (_%deps256170%_)
                    (let ((_%mod-main256172%_
                           (gxc#find-runtime-symbol _%ctx256001%_ 'main))
                          (_%reset-decl256173%_ (_%reset-declare256004%_))
                          (_%user-decl256174%_ (_%user-declare256006%_)))
                      (for-each
                       (lambda (_%dep256176%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl256173%_))
                         (newline)
                         (if _%user-decl256174%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl256174%_))
                               (newline))
                             '#!void)
                         (let ((__tmp256788
                                (cons 'include (cons _%dep256176%_ '()))))
                           (declare (not safe))
                           (##write __tmp256788))
                         (newline))
                       _%deps256170%_)
                      (let ((__tmp256789
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main256172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp256789))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare256006%_
                  (lambda ()
                    (let* ((_%gsc-opts256075%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts256002%_)))
                           (_%gsc-prelude256077%_
                            (if _%gsc-opts256075%_
                                (member '"-prelude" _%gsc-opts256075%_)
                                '#f))
                           (_%gsc-prelude256079%_
                            (if _%gsc-prelude256077%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude256077%_)))
                                '#f)))
                      (let _%lp256082%_ ((_%rest256084%_
                                          (cons _%gsc-prelude256079%_ '()))
                                         (_%user-decls256085%_ '()))
                        (let* ((_%rest256086256094%_ _%rest256084%_)
                               (_%else256088256102%_
                                (lambda ()
                                  (if (null? _%user-decls256085%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls256085%_)))))
                               (_%K256090256158%_
                                (lambda (_%rest256105%_ _%expr256106%_)
                                  (let* ((_%expr256107256119%_ _%expr256106%_)
                                         (_%else256110256127%_
                                          (lambda ()
                                            (_%lp256082%_
                                             _%rest256105%_
                                             _%user-decls256085%_))))
                                    (let ((_%K256115256148%_
                                           (lambda (_%decls256146%_)
                                             (_%lp256082%_
                                              _%rest256105%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls256085%_
                                                 _%decls256146%_)))))
                                          (_%K256112256133%_
                                           (lambda (_%exprs256131%_)
                                             (_%lp256082%_
                                              (append _%exprs256131%_
                                                      _%rest256105%_)
                                              _%user-decls256085%_))))
                                      (if (pair? _%expr256107256119%_)
                                          (let ((_%tl256117256153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr256107256119%_)))
                                                (_%hd256116256151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr256107256119%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd256116256151%_
                                                         'declare))
                                                (let ((_%decls256156%_
                                                       _%tl256117256153%_))
                                                  (_%K256115256148%_
                                                   _%decls256156%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd256116256151%_
                                                             'begin))
                                                    (let ((_%exprs256141%_
                                                           _%tl256117256153%_))
                                                      (_%K256112256133%_
                                                       _%exprs256141%_))
                                                    (_%else256110256127%_))))
                                          (_%else256110256127%_)))))))
                          (if (pair? _%rest256086256094%_)
                              (let ((_%hd256091256161%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest256086256094%_)))
                                    (_%tl256092256163%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest256086256094%_))))
                                (let* ((_%expr256166%_ _%hd256091256161%_)
                                       (_%rest256168%_ _%tl256092256163%_))
                                  (_%K256090256158%_
                                   _%rest256168%_
                                   _%expr256166%_)))
                              (_%else256088256102%_)))))))
                 (_%compile-stub256007%_
                  (lambda (_%output-scm256014%_ _%output-bin256015%_)
                    (let* ((_%gerbil-home256017%_
                            (let ((__tmp256790
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp256790)))
                           (_%gerbil-libdir256019%_
                            (path-expand '"lib" _%gerbil-home256017%_))
                           (_%runtime256021%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp256023%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home256017%_))
                           (_%include-gambit-sharp256025%_
                            (gxc#include-source _%gambit-sharp256023%_))
                           (_%bin-scm256027%_
                            (gxc#find-static-module-file _%ctx256001%_))
                           (_%deps256029%_
                            (gxc#find-runtime-module-deps _%ctx256001%_))
                           (_%deps256031%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps256029%_)))
                           (_%deps256036%_
                            (let ((__tmp256791
                                   (lambda (_%$obj256033%_)
                                     (not (gxc#file-empty? _%$obj256033%_)))))
                              (declare (not safe))
                              (##filter __tmp256791 _%deps256031%_)))
                           (_%deps256040%_
                            (let ((__tmp256792
                                   (lambda (_%f256038%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f256038%_
                                             _%runtime256021%_))))))
                              (declare (not safe))
                              (##filter __tmp256792 _%deps256036%_)))
                           (_%output-base256042%_
                            (let ((__tmp256793
                                   (path-strip-extension
                                    _%output-scm256014%_)))
                              (declare (not safe))
                              (##string-append __tmp256793)))
                           (_%output-c256044%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base256042%_ '".c")))
                           (_%output-o256046%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base256042%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_256048%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base256042%_ '"_.c")))
                           (_%output-o_256050%_
                            (let ((__tmp256794
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base256042%_
                               __tmp256794)))
                           (_%gsc-link-opts256052%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts256054%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts256056%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir256019%_)))
                           (_%output-ld-opts256058%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros256060%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp256025%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp256025%_
                                            '()))))
                           (_%gsc-link-opts256062%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts256052%_
                               _%gsc-gx-macros256060%_)))
                           (_%rpath256064%_
                            (gxc#gerbil-rpath _%gerbil-libdir256019%_))
                           (_%default-ld-options256066%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp256795
                             (lambda ()
                               (let ((__tmp256796
                                      (path-directory _%output-bin256015%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp256796)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp256795))
                      (gxc#with-output-to-scheme-file
                       _%output-scm256014%_
                       (lambda ()
                         (_%generate-stub256005%_
                          (let ((__tmp256797
                                 (let ((__tmp256798
                                        (cons _%bin-scm256027%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp256798
                                    _%deps256040%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp256797 _%runtime256021%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it256072%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_256048%_
                                                      (let ((__tmp256799
                                                             (cons _%output-scm256014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp256799 _%gsc-link-opts256062%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp256800
                                                 (let ((__tmp256801
                                                        (cons _%output-c256044%_
                                                              (cons _%output-c_256048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp256801
                                                    _%gsc-static-opts256056%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp256800
                                             _%gsc-cc-opts256054%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin256015%_
                                                      (cons _%output-o256046%_
                                                            (cons _%output-o_256050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256802
                                 (let ((__tmp256804
                                        (cons '"-L"
                                              (cons _%gerbil-libdir256019%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options256066%_))))
                                       (__tmp256803
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath256064%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp256804 __tmp256803))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp256802
                             _%output-ld-opts256058%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it256072%_))
                                (_%compile-it256072%_)))
                          '#!void)))))
          (let* ((_%output-bin256009%_
                  (gxc#compile-exe-output-file _%ctx256001%_ _%opts256002%_))
                 (_%output-scm256011%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin256009%_ '"__exe.scm"))))
            (_%compile-stub256007%_
             _%output-scm256011%_
             _%output-bin256009%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx255950%_ _%id255951%_)
        (let ((_%$e255997%_
               (let ((__tmp256806
                      (lambda (_%e255952255954%_)
                        (let* ((_%e255952255956255966%_ _%e255952255954%_)
                               (_%else255958255974%_ (lambda () '#f))
                               (_%K255960255978%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e255952255956255966%_
                                 'gx#module-export::t))
                              (let* ((_%e255961255981%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e255952255956255966%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e255962255984%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e255952255956255966%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e255963255987%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e255952255956255966%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e255963255987%_ '0))
                                    (let ((_%e255964255990%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e255952255956255966%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g255992255994%_)
                                             (eq? _%g255992255994%_
                                                  _%id255951%_))
                                           _%e255964255990%_)
                                          (_%K255960255978%_)
                                          (_%else255958255974%_)))
                                    (_%else255958255974%_)))
                              (_%else255958255974%_)))))
                     (__tmp256805
                      (##structure-ref
                       _%ctx255950%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp256806 __tmp256805))))
          (if _%$e255997%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e255997%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx255941%_ _%id255942%_)
        (let ((_%$e255944%_
               (gxc#find-export-binding _%ctx255941%_ _%id255942%_)))
          (if _%$e255944%_
              ((lambda (_%bind255947%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind255947%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id255942%_)))
                 (##structure-ref _%bind255947%_ '1 gx#binding::t '#f))
               _%$e255944%_)
              (let ((__tmp256807
                     (##structure-ref
                      _%ctx255941%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp256807
                 _%id255942%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx255807%_)
        (letrec* ((_%ht255809%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template255810%_
                   (lambda (_%in255886%_ _%phi255887%_)
                     (let ((_%iphi255889%_
                            (fx+ _%phi255887%_
                                 (##direct-structure-ref
                                  _%in255886%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports255890%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in255886%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp255892%_ ((_%rest255894%_ _%imports255890%_)
                                          (_%r255895%_ '()))
                         (let* ((_%rest255896255904%_ _%rest255894%_)
                                (_%else255898255912%_ (lambda () _%r255895%_))
                                (_%K255900255929%_
                                 (lambda (_%rest255915%_ _%in255916%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in255916%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi255889%_))
                                           (_%lp255892%_
                                            _%rest255915%_
                                            (cons _%in255916%_ _%r255895%_))
                                           (_%lp255892%_
                                            _%rest255915%_
                                            _%r255895%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in255916%_
                                              'gx#module-import::t))
                                           (let ((_%iphi255920%_
                                                  (fx+ _%phi255887%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in255916%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi255920%_))
                                                 (_%lp255892%_
                                                  _%rest255915%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in255916%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r255895%_))
                                                 (_%lp255892%_
                                                  _%rest255915%_
                                                  _%r255895%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in255916%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi255923%_
                                                      (fx+ _%iphi255889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in255916%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi255923%_))
                                                     (_%lp255892%_
                                                      _%rest255915%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in255916%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r255895%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi255923%_))
                                                         (_%lp255892%_
                                                          _%rest255915%_
                                                          (let ((__tmp256808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template255810%_
                          _%in255916%_
                          _%iphi255889%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r255895%_ __tmp256808)))
                 (_%lp255892%_ _%rest255915%_ _%r255895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp255892%_
                                                _%rest255915%_
                                                _%r255895%_)))))))
                           (if (pair? _%rest255896255904%_)
                               (let ((_%hd255901255932%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest255896255904%_)))
                                     (_%tl255902255934%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest255896255904%_))))
                                 (let* ((_%in255937%_ _%hd255901255932%_)
                                        (_%rest255939%_ _%tl255902255934%_))
                                   (_%K255900255929%_
                                    _%rest255939%_
                                    _%in255937%_)))
                               (_%else255898255912%_)))))))
                  (_%find-deps255811%_
                   (lambda (_%rest255819%_ _%deps255820%_)
                     (let* ((_%rest255821255829%_ _%rest255819%_)
                            (_%else255823255837%_ (lambda () _%deps255820%_))
                            (_%K255825255874%_
                             (lambda (_%rest255840%_ _%hd255841%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd255841%_
                                      'gx#module-context::t))
                                   (let ((_%id255844%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd255841%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports255845%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd255841%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht255809%_
                                            _%id255844%_))
                                         (_%find-deps255811%_
                                          _%rest255840%_
                                          _%deps255820%_)
                                         (let ((_%$e255848%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd255841%_))))
                                           (if _%$e255848%_
                                               ((lambda (_%pre255851%_)
                                                  (let ((_%xdeps255853%_
                                                         (_%find-deps255811%_
                                                          (cons _%pre255851%_
                                                                _%imports255845%_)
                                                          _%deps255820%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht255809%_
                                                       _%id255844%_
                                                       _%hd255841%_))
                                                    (_%find-deps255811%_
                                                     _%rest255840%_
                                                     (cons _%hd255841%_
                                                           _%xdeps255853%_))))
                                                _%$e255848%_)
                                               (let ((_%xdeps255856%_
                                                      (_%find-deps255811%_
                                                       _%imports255845%_
                                                       _%deps255820%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht255809%_
                                                    _%id255844%_
                                                    _%hd255841%_))
                                                 (_%find-deps255811%_
                                                  _%rest255840%_
                                                  (cons _%hd255841%_
                                                        _%xdeps255856%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd255841%_
                                          'gx#prelude-context::t))
                                       (let ((_%id255859%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd255841%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht255809%_
                                                _%id255859%_))
                                             (_%find-deps255811%_
                                              _%rest255840%_
                                              _%deps255820%_)
                                             (let ((_%xdeps255863%_
                                                    (_%find-deps255811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd255841%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps255820%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht255809%_
                                                      _%id255859%_))
                                                   (_%find-deps255811%_
                                                    _%rest255840%_
                                                    _%xdeps255863%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht255809%_
                                                        _%id255859%_
                                                        _%hd255841%_))
                                                     (_%find-deps255811%_
                                                      _%rest255840%_
                                                      (cons _%hd255841%_
                                                            _%xdeps255863%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd255841%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd255841%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps255811%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd255841%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest255840%_)
                                                _%deps255820%_)
                                               (_%find-deps255811%_
                                                _%rest255840%_
                                                _%deps255820%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd255841%_
                                                  'gx#module-export::t))
                                               (_%find-deps255811%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd255841%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest255840%_)
                                                _%deps255820%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd255841%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd255841%_ '2 '#f '#f)))
               (_%find-deps255811%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd255841%_ '1 '#f '#f))
                      _%rest255840%_)
                _%deps255820%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd255841%_ '2 '#f '#f)))
                   (let ((_%xdeps255870%_
                          (_%import-set-template255810%_ _%hd255841%_ '0)))
                     (_%find-deps255811%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest255840%_ _%xdeps255870%_))
                      _%deps255820%_))
                   (_%find-deps255811%_ _%rest255840%_ _%deps255820%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd255841%_))))))))))
                       (if (pair? _%rest255821255829%_)
                           (let ((_%hd255826255877%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest255821255829%_)))
                                 (_%tl255827255879%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest255821255829%_))))
                             (let* ((_%hd255882%_ _%hd255826255877%_)
                                    (_%rest255884%_ _%tl255827255879%_))
                               (_%K255825255874%_
                                _%rest255884%_
                                _%hd255882%_)))
                           (_%else255823255837%_))))))
          (let ((__tmp256809
                 (filter gx#expander-context-id
                         (_%find-deps255811%_
                          (let ((_%$e255813%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx255807%_))))
                            (if _%$e255813%_
                                ((lambda (_%pre255816%_)
                                   (cons _%pre255816%_
                                         (##structure-ref
                                          _%ctx255807%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e255813%_)
                                (##structure-ref
                                 _%ctx255807%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp256809)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx255737%_)
        (let* ((_%context-id255739%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx255737%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx255737%_ '1 '#f '#f))
                    (string->symbol _%ctx255737%_)))
               (_%scm255741%_
                (let ((__tmp256810
                       (gxc#static-module-name _%context-id255739%_)))
                  (declare (not safe))
                  (##string-append __tmp256810 '".scm")))
               (_%dirs255743%_ (let () (declare (not safe)) (load-path)))
               (_%dirs255749%_
                (let ((_%user-libpath255745%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath255745%_
                      (let ((_%user-libpath255747%_
                             (path-expand '"lib" _%user-libpath255745%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath255747%_ _%dirs255743%_))
                            _%dirs255743%_
                            (cons _%user-libpath255747%_ _%dirs255743%_)))
                      _%dirs255743%_)))
               (_%dirs255759%_
                (let ((_%$e255751%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e255751%_
                      ((lambda (_%g255753255755%_)
                         (cons _%g255753255755%_ _%dirs255749%_))
                       _%$e255751%_)
                      _%dirs255749%_)))
               (_%dirs255765%_
                (let ((__tmp256811
                       (lambda (_%g255760255762%_)
                         (path-expand '"static" _%g255760255762%_))))
                  (declare (not safe))
                  (##map __tmp256811 _%dirs255759%_))))
          (let _%lp255768%_ ((_%rest255770%_ _%dirs255765%_))
            (let* ((_%rest255771255779%_ _%rest255770%_)
                   (_%else255773255787%_
                    (lambda ()
                      (let ((__tmp256812
                             (##structure-ref
                              _%ctx255737%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp256812
                         _%scm255741%_))))
                   (_%K255775255795%_
                    (lambda (_%rest255790%_ _%dir255791%_)
                      (let ((_%path255793%_
                             (path-expand _%scm255741%_ _%dir255791%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path255793%_))
                            _%path255793%_
                            (_%lp255768%_ _%rest255790%_))))))
              (if (pair? _%rest255771255779%_)
                  (let ((_%hd255776255798%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest255771255779%_)))
                        (_%tl255777255800%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest255771255779%_))))
                    (let* ((_%dir255803%_ _%hd255776255798%_)
                           (_%rest255805%_ _%tl255777255800%_))
                      (_%K255775255795%_ _%rest255805%_ _%dir255803%_)))
                  (_%else255773255787%_)))))))
    (define gxc#file-empty?
      (lambda (_%path255735%_)
        (zero? (let ((__tmp256813 (file-info _%path255735%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp256813)))))
    (define gxc#compile-top-module
      (lambda (_%ctx255726%_)
        (let ((__tmp256814
               (lambda ()
                 (let ((__tmp256815
                        (lambda ()
                          (let ((__tmp256816
                                 (lambda ()
                                   (let ((__tmp256818
                                          (lambda ()
                                            (let ((__tmp256820
                                                   (lambda ()
                                                     (let ((__tmp256822
                                                            (lambda ()
                                                              (let ((__tmp256823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx255726%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp256823))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp256824
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx255726%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp256824))
                          '#!void)
                      (gxc#collect-bindings _%ctx255726%_)
                      (gxc#compile-runtime-code _%ctx255726%_)
                      (gxc#compile-meta-code _%ctx255726%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx255726%_)
                          '#!void)))
                   (__tmp256821
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
                __tmp256822
                gxc#current-compile-runtime-names
                __tmp256821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp256819
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp256820
                                               gxc#current-compile-runtime-sections
                                               __tmp256819))))
                                         (__tmp256817
                                          (let ((__obj256715
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj256715))
                                            __obj256715)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp256818
                                      gxc#current-compile-symbol-table
                                      __tmp256817)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp256816
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp256815
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp256814
           gx#current-expander-context
           _%ctx255726%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx255724%_)
        (let ((__tmp256825
               (##structure-ref _%ctx255724%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp256825))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx255669%_)
        (letrec ((_%compile1255671%_
                  (lambda (_%ctx255713%_)
                    (let* ((_%code255715%_
                            (##structure-ref
                             _%ctx255713%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm255719%_
                            (let ((_%idstr255717%_
                                   (let ((__tmp256826
                                          (##structure-ref
                                           _%ctx255713%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp256826))))
                              (declare (not safe))
                              (##string-append _%idstr255717%_ '"~0")))
                           (_%rtc?255721%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code255715%_))))
                      (if _%rtc?255721%_
                          (let ((__tmp256827
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp256827
                             _%ctx255713%_
                             _%rtm255719%_))
                          '#!void)
                      (_%generate-runtime-code255673%_
                       _%ctx255713%_
                       _%code255715%_
                       (if _%rtc?255721%_ _%rtm255719%_ '#f)))))
                 (_%context-timestamp255672%_
                  (lambda (_%ctx255711%_)
                    (let ((__tmp256828
                           (let ((__tmp256829
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx255711%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp256829 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp256828))))
                 (_%generate-runtime-code255673%_
                  (lambda (_%ctx255680%_ _%code255681%_ _%rtm255682%_)
                    (let* ((_%runtime-code?255684%_ (if _%rtm255682%_ '#t '#f))
                           (_%lifts255686%_ (box '()))
                           (_%runtime-code255692%_
                            (if _%runtime-code?255684%_
                                (let ((__tmp256830
                                       (lambda ()
                                         (let ((__tmp256831
                                                (lambda ()
                                                  (let ((__tmp256832
                                                         (lambda ()
                                                           (let ((__tmp256834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code255681%_))))
                         (__tmp256833
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp256834
                      gxc#current-compile-marks
                      __tmp256833)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp256832
                                                     gxc#current-compile-lift
                                                     _%lifts255686%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp256831
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp256830
                                   gx#current-expander-context
                                   _%ctx255680%_))
                                '#f))
                           (_%runtime-code255694%_
                            (if _%runtime-code?255684%_
                                (if (null? (unbox _%lifts255686%_))
                                    _%runtime-code255692%_
                                    (cons 'begin
                                          (let ((__tmp256836
                                                 (cons _%runtime-code255692%_
                                                       '()))
                                                (__tmp256835
                                                 (reverse (unbox _%lifts255686%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp256836
                                             __tmp256835))))
                                '#f))
                           (_%runtime-code255696%_
                            (if _%runtime-code?255684%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp255672%_
                                                         _%ctx255680%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code255694%_ '())))
                                '#f))
                           (_%loader-code255699%_
                            (let ((__tmp256837
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code255681%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp256837
                               gx#current-expander-context
                               _%ctx255680%_)))
                           (_%loader-code255701%_
                            (cons 'begin
                                  (cons _%loader-code255699%_
                                        (cons (if _%runtime-code?255684%_
                                                  (cons 'load-module
                                                        (cons _%rtm255682%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0255703%_
                            (gxc#compile-output-file _%ctx255680%_ '0 '".scm"))
                           (_%scmrt255705%_
                            (gxc#compile-output-file
                             _%ctx255680%_
                             '#f
                             '".scm"))
                           (_%scms255707%_
                            (gxc#compile-static-output-file _%ctx255680%_)))
                      (if _%runtime-code?255684%_
                          (gxc#compile-scm-file__0
                           _%scm0255703%_
                           _%runtime-code255696%_)
                          '#!void)
                      (let ((__tmp256838
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt255705%_
                                _%loader-code255701%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp256838
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms255707%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms255707%_))
                          '#!void)
                      (if _%runtime-code?255684%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0255703%_ _%scms255707%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms255707%_ void)))))))
          (let* ((_%all-modules255675%_
                  (cons _%ctx255669%_ (gxc#lift-nested-modules _%ctx255669%_)))
                 (__tmp256839
                  (lambda (_%ctx255677%_)
                    (let ((__tmp256840
                           (lambda () (_%compile1255671%_ _%ctx255677%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp256840
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp256839 _%all-modules255675%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx255568%_)
        (letrec ((_%compile-ssi255570%_
                  (lambda (_%code255637%_)
                    (let* ((_%path255639%_
                            (gxc#compile-output-file
                             _%ctx255568%_
                             '#f
                             '".ssi"))
                           (_%prelude255651%_
                            (let* ((_%super255641%_
                                    (##structure-ref
                                     _%ctx255568%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e255643%_
                                    (##structure-ref
                                     _%super255641%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e255643%_
                                  ((lambda (_%g255645255647%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g255645255647%_)))
                                   _%$e255643%_)
                                  ':<root>)))
                           (_%ns255653%_
                            (##structure-ref
                             _%ctx255568%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr255655%_
                            (symbol->string
                             (##structure-ref
                              _%ctx255568%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg255663%_
                            (let ((_%$e255657%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr255655%_ '#\/))))
                              (if _%$e255657%_
                                  ((lambda (_%x255660%_)
                                     (let ((__tmp256841
                                            (substring
                                             _%idstr255655%_
                                             '0
                                             _%x255660%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp256841)))
                                   _%$e255657%_)
                                  '#f)))
                           (_%rt255665%_
                            (let ((__tmp256842
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp256842 _%ctx255568%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path255639%_))
                      (gxc#with-output-to-scheme-file
                       _%path255639%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude255651%_))
                         (if _%pkg255663%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg255663%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns255653%_))
                         (newline)
                         (pretty-print _%code255637%_)
                         (if _%rt255665%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt255665%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi255571%_
                  (lambda (_%part255576%_)
                    (let* ((_%part255577255590%_ _%part255576%_)
                           (_%E255579255594%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part255577255590%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K255580255606%_
                            (lambda (_%code255597%_
                                     _%n255598%_
                                     _%phi255599%_
                                     _%phi-ctx255600%_)
                              (let ((_%code255604%_
                                     (let ((__tmp256843
                                            (lambda ()
                                              (let ((__tmp256844
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code255597%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp256844
                                                 gx#current-expander-phi
                                                 _%phi255599%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp256843
                                        gx#current-expander-context
                                        _%phi-ctx255600%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx255568%_
                                  _%n255598%_
                                  '".scm")
                                 _%code255604%_
                                 '#t)))))
                      (if (pair? _%part255577255590%_)
                          (let ((_%hd255581255609%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part255577255590%_)))
                                (_%tl255582255611%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part255577255590%_))))
                            (let ((_%phi-ctx255614%_ _%hd255581255609%_))
                              (if (pair? _%tl255582255611%_)
                                  (let ((_%hd255583255616%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl255582255611%_)))
                                        (_%tl255584255618%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl255582255611%_))))
                                    (let ((_%phi255621%_ _%hd255583255616%_))
                                      (if (pair? _%tl255584255618%_)
                                          (let ((_%hd255585255623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl255584255618%_)))
                                                (_%tl255586255625%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl255584255618%_))))
                                            (let ((_%n255628%_
                                                   _%hd255585255623%_))
                                              (if (pair? _%tl255586255625%_)
                                                  (let ((_%hd255587255630%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl255586255625%_)))
                                                        (_%tl255588255632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl255586255625%_))))
                                                    (let ((_%code255635%_
                                                           _%hd255587255630%_))
                                                      (if (null? _%tl255588255632%_)
                                                          (_%K255580255606%_
                                                           _%code255635%_
                                                           _%n255628%_
                                                           _%phi255621%_
                                                           _%phi-ctx255614%_)
                                                          (_%E255579255594%_))))
                                                  (_%E255579255594%_))))
                                          (_%E255579255594%_))))
                                  (_%E255579255594%_))))
                          (_%E255579255594%_))))))
          (let ((_g256845_ (gxc#generate-meta-code _%ctx255568%_)))
            (begin
              (let ((_g256846_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g256845_)
                           (##values-length _g256845_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g256846_ 2)))
                    (error "Context expects 2 values" _g256846_)))
              (let ((_%ssi-code255573%_
                     (let () (declare (not safe)) (##values-ref _g256845_ 0)))
                    (_%phi-code255574%_
                     (let () (declare (not safe)) (##values-ref _g256845_ 1))))
                (begin
                  (_%compile-ssi255570%_ _%ssi-code255573%_)
                  (for-each _%compile-phi255571%_ _%phi-code255574%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx255550%_)
        (let* ((_%path255552%_
                (gxc#compile-output-file _%ctx255550%_ '#f '".ssxi.ss"))
               (_%code255554%_
                (let ((__tmp256847
                       (##structure-ref
                        _%ctx255550%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp256847)))
               (_%idstr255556%_
                (symbol->string
                 (##structure-ref
                  _%ctx255550%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg255564%_
                (let ((_%$e255558%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr255556%_ '#\/))))
                  (if _%$e255558%_
                      ((lambda (_%x255561%_)
                         (let ((__tmp256848
                                (substring _%idstr255556%_ '0 _%x255561%_)))
                           (declare (not safe))
                           (##string->symbol __tmp256848)))
                       _%$e255558%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path255552%_))
          (gxc#with-output-to-scheme-file
           _%path255552%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg255564%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg255564%_))
                 '#!void)
             (newline)
             (pretty-print _%code255554%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx255543%_)
        (let* ((_%state255545%_
                (let ((__obj256716
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj256716 _%ctx255543%_))
                  __obj256716))
               (_%ssi-code255547%_
                (let ((__tmp256849
                       (##structure-ref
                        _%ctx255543%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state255545%_
                   __tmp256849))))
          (values _%ssi-code255547%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state255545%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx255535%_)
        (let* ((_%lifts255537%_ (box '()))
               (__tmp256850
                (lambda ()
                  (let ((__tmp256852
                         (lambda ()
                           (let ((_%code255541%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx255535%_))))
                             (if (null? (unbox _%lifts255537%_))
                                 _%code255541%_
                                 (cons 'begin
                                       (let ((__tmp256854
                                              (cons _%code255541%_ '()))
                                             (__tmp256853
                                              (reverse (unbox _%lifts255537%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp256854
                                          __tmp256853)))))))
                        (__tmp256851
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp256852
                     gxc#current-compile-marks
                     __tmp256851)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp256850
           gxc#current-compile-lift
           _%lifts255537%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx255531%_)
        (let ((_%modules255533%_ (box '())))
          (let ((__tmp256855
                 (##structure-ref _%ctx255531%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules255533%_ __tmp256855))
          (reverse (unbox _%modules255533%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path255511%_ _%code255512%_ _%phi?255513%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path255511%_))
        (gxc#with-output-to-scheme-file
         _%path255511%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp256856
                                           (if _%phi?255513%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp256856)))))))
           (pretty-print _%code255512%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it255517%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path255511%_ _%phi?255513%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp256857
                         (cons 'compile-file (cons _%path255511%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it255517%_ __tmp256857))
                  (_%compile-it255517%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path255522%_ _%code255523%_)
        (let ((_%phi?255525%_ '#f))
          (gxc#compile-scm-file__%
           _%path255522%_
           _%code255523%_
           _%phi?255525%_))))
    (define gxc#compile-scm-file
      (lambda _g256858_
        (let ((_g256859_ (let () (declare (not safe)) (##length _g256858_))))
          (cond ((let () (declare (not safe)) (##fx= _g256859_ 2))
                 (apply gxc#compile-scm-file__0 _g256858_))
                ((let () (declare (not safe)) (##fx= _g256859_ 3))
                 (apply gxc#compile-scm-file__% _g256858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g256858_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?255412%_)
        (let _%lp255414%_ ((_%rest255416%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts255417%_ '()))
          (let* ((_%rest255418255438%_ _%rest255416%_)
                 (_%else255422255446%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts255417%_)))
                        (reverse _%opts255417%_)))))
            (let ((_%K255432255489%_
                   (lambda (_%rest255487%_)
                     (_%lp255414%_ _%rest255487%_ _%opts255417%_)))
                  (_%K255427255471%_
                   (lambda (_%rest255469%_)
                     (_%lp255414%_ _%rest255469%_ _%opts255417%_)))
                  (_%K255424255453%_
                   (lambda (_%rest255450%_ _%opt255451%_)
                     (_%lp255414%_
                      _%rest255450%_
                      (cons _%opt255451%_ _%opts255417%_)))))
              (if (pair? _%rest255418255438%_)
                  (let ((_%tl255434255494%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest255418255438%_)))
                        (_%hd255433255492%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest255418255438%_))))
                    (if (equal? _%hd255433255492%_ '"-cc-options")
                        (if (pair? _%tl255434255494%_)
                            (let* ((_%tl255436255497%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl255434255494%_)))
                                   (_%rest255500%_ _%tl255436255497%_))
                              (_%K255432255489%_ _%rest255500%_))
                            (let ((_%opt255461%_ _%hd255433255492%_)
                                  (_%rest255463%_ _%tl255434255494%_))
                              (_%K255424255453%_
                               _%rest255463%_
                               _%opt255461%_)))
                        (if (equal? _%hd255433255492%_ '"-ld-options")
                            (if (pair? _%tl255434255494%_)
                                (let* ((_%tl255431255479%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl255434255494%_)))
                                       (_%rest255482%_ _%tl255431255479%_))
                                  (_%K255427255471%_ _%rest255482%_))
                                (let ((_%opt255461%_ _%hd255433255492%_)
                                      (_%rest255463%_ _%tl255434255494%_))
                                  (_%K255424255453%_
                                   _%rest255463%_
                                   _%opt255461%_)))
                            (let ((_%opt255461%_ _%hd255433255492%_)
                                  (_%rest255463%_ _%tl255434255494%_))
                              (_%K255424255453%_
                               _%rest255463%_
                               _%opt255461%_)))))
                  (_%else255422255446%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?255506%_ '#f)) (gxc#gsc-link-options__% _%phi?255506%_))))
    (define gxc#gsc-link-options
      (lambda _g256860_
        (let ((_g256861_ (let () (declare (not safe)) (##length _g256860_))))
          (cond ((let () (declare (not safe)) (##fx= _g256861_ 0))
                 (apply gxc#gsc-link-options__0 _g256860_))
                ((let () (declare (not safe)) (##fx= _g256861_ 1))
                 (apply gxc#gsc-link-options__% _g256860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g256860_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords255262%_ _%static?255258255263%_ _%phi?255264%_)
        (let ((_%static?255266%_
               (if (eq? _%static?255258255263%_ absent-value)
                   '#f
                   _%static?255258255263%_)))
          (if _%phi?255264%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp255268%_ ((_%rest255270%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts255271%_ '()))
                (let* ((_%rest255272255298%_ _%rest255270%_)
                       (_%else255277255306%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts255271%_)))
                              (reverse! _%opts255271%_)))))
                  (let ((_%K255292255369%_
                         (lambda (_%rest255366%_ _%opt255367%_)
                           (if _%static?255266%_
                               (_%lp255268%_
                                _%rest255366%_
                                (cons _%opt255367%_
                                      (cons '"-cc-options" _%opts255271%_)))
                               (_%lp255268%_ _%rest255366%_ _%opts255271%_))))
                        (_%K255287255346%_
                         (lambda (_%rest255343%_ _%opt255344%_)
                           (_%lp255268%_
                            _%rest255343%_
                            (cons _%opt255344%_
                                  (cons '"-cc-options" _%opts255271%_)))))
                        (_%K255282255326%_
                         (lambda (_%rest255324%_)
                           (_%lp255268%_ _%rest255324%_ _%opts255271%_)))
                        (_%K255279255312%_
                         (lambda (_%rest255310%_)
                           (_%lp255268%_ _%rest255310%_ _%opts255271%_))))
                    (if (pair? _%rest255272255298%_)
                        (let ((_%tl255294255374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest255272255298%_)))
                              (_%hd255293255372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest255272255298%_))))
                          (if (equal? _%hd255293255372%_ '"-cc-options")
                              (if (pair? _%tl255294255374%_)
                                  (let ((_%tl255296255379%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl255294255374%_)))
                                        (_%hd255295255377%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl255294255374%_))))
                                    (if (equal? _%hd255295255377%_ '"-Bstatic")
                                        (let ((_%opt255382%_
                                               _%hd255295255377%_)
                                              (_%rest255384%_
                                               _%tl255296255379%_))
                                          (_%K255292255369%_
                                           _%rest255384%_
                                           _%opt255382%_))
                                        (let ((_%opt255359%_
                                               _%hd255295255377%_)
                                              (_%rest255361%_
                                               _%tl255296255379%_))
                                          (_%K255287255346%_
                                           _%rest255361%_
                                           _%opt255359%_))))
                                  (let ((_%rest255318%_ _%tl255294255374%_))
                                    (_%K255279255312%_ _%rest255318%_)))
                              (if (equal? _%hd255293255372%_ '"-ld-options")
                                  (if (pair? _%tl255294255374%_)
                                      (let* ((_%tl255286255334%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl255294255374%_)))
                                             (_%rest255337%_
                                              _%tl255286255334%_))
                                        (_%K255282255326%_ _%rest255337%_))
                                      (let ((_%rest255318%_
                                             _%tl255294255374%_))
                                        (_%K255279255312%_ _%rest255318%_)))
                                  (let ((_%rest255318%_ _%tl255294255374%_))
                                    (_%K255279255312%_ _%rest255318%_)))))
                        (_%else255277255306%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords255389%_ _%static?255258255390%_)
        (let ((_%phi?255392%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords255389%_
           _%static?255258255390%_
           _%phi?255392%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g256862_
        (let ((_g256863_ (let () (declare (not safe)) (##length _g256862_))))
          (cond ((let () (declare (not safe)) (##fx= _g256863_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g256862_))
                ((let () (declare (not safe)) (##fx= _g256863_ 3))
                 (apply gxc#gsc-cc-options__%__% _g256862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g256862_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords255401%_ . _%args255402%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords255401%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords255401%_
                  'static:
                  absent-value))
               _%args255402%_)))
    (define gxc#gsc-cc-options
      (lambda _%args255259255408%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args255259255408%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords255108%_ _%static?255104255109%_ _%phi?255110%_)
        (let ((_%static?255112%_
               (if (eq? _%static?255104255109%_ absent-value)
                   '#f
                   _%static?255104255109%_)))
          (if _%phi?255110%_
              '()
              (let _%lp255114%_ ((_%rest255116%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts255117%_ '()))
                (let* ((_%rest255118255144%_ _%rest255116%_)
                       (_%else255123255152%_
                        (lambda () (reverse! _%opts255117%_))))
                  (let ((_%K255138255215%_
                         (lambda (_%rest255212%_ _%opt255213%_)
                           (if _%static?255112%_
                               (_%lp255114%_
                                _%rest255212%_
                                (cons _%opt255213%_
                                      (cons '"-ld-options" _%opts255117%_)))
                               (_%lp255114%_ _%rest255212%_ _%opts255117%_))))
                        (_%K255133255192%_
                         (lambda (_%rest255189%_ _%opt255190%_)
                           (_%lp255114%_
                            _%rest255189%_
                            (cons _%opt255190%_
                                  (cons '"-ld-options" _%opts255117%_)))))
                        (_%K255128255172%_
                         (lambda (_%rest255170%_)
                           (_%lp255114%_ _%rest255170%_ _%opts255117%_)))
                        (_%K255125255158%_
                         (lambda (_%rest255156%_)
                           (_%lp255114%_ _%rest255156%_ _%opts255117%_))))
                    (if (pair? _%rest255118255144%_)
                        (let ((_%tl255140255220%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest255118255144%_)))
                              (_%hd255139255218%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest255118255144%_))))
                          (if (equal? _%hd255139255218%_ '"-ld-options")
                              (if (pair? _%tl255140255220%_)
                                  (let ((_%tl255142255225%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl255140255220%_)))
                                        (_%hd255141255223%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl255140255220%_))))
                                    (if (equal? _%hd255141255223%_ '"-static")
                                        (let ((_%opt255228%_
                                               _%hd255141255223%_)
                                              (_%rest255230%_
                                               _%tl255142255225%_))
                                          (_%K255138255215%_
                                           _%rest255230%_
                                           _%opt255228%_))
                                        (let ((_%opt255205%_
                                               _%hd255141255223%_)
                                              (_%rest255207%_
                                               _%tl255142255225%_))
                                          (_%K255133255192%_
                                           _%rest255207%_
                                           _%opt255205%_))))
                                  (let ((_%rest255164%_ _%tl255140255220%_))
                                    (_%K255125255158%_ _%rest255164%_)))
                              (if (equal? _%hd255139255218%_ '"-cc-options")
                                  (if (pair? _%tl255140255220%_)
                                      (let* ((_%tl255132255180%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl255140255220%_)))
                                             (_%rest255183%_
                                              _%tl255132255180%_))
                                        (_%K255128255172%_ _%rest255183%_))
                                      (let ((_%rest255164%_
                                             _%tl255140255220%_))
                                        (_%K255125255158%_ _%rest255164%_)))
                                  (let ((_%rest255164%_ _%tl255140255220%_))
                                    (_%K255125255158%_ _%rest255164%_)))))
                        (_%else255123255152%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords255235%_ _%static?255104255236%_)
        (let ((_%phi?255238%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords255235%_
           _%static?255104255236%_
           _%phi?255238%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g256864_
        (let ((_g256865_ (let () (declare (not safe)) (##length _g256864_))))
          (cond ((let () (declare (not safe)) (##fx= _g256865_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g256864_))
                ((let () (declare (not safe)) (##fx= _g256865_ 3))
                 (apply gxc#gsc-ld-options__%__% _g256864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g256864_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords255247%_ . _%args255248%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords255247%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords255247%_
                  'static:
                  absent-value))
               _%args255248%_)))
    (define gxc#gsc-ld-options
      (lambda _%args255105255254%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args255105255254%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir255099%_)
        (let ((_%user-staticdir255101%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir255099%_
                       '" -I "
                       _%user-staticdir255101%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp255011%_ ((_%rest255013%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts255014%_ '()))
          (let* ((_%rest255015255035%_ _%rest255013%_)
                 (_%else255019255043%_ (lambda () _%opts255014%_)))
            (let ((_%K255029255086%_
                   (lambda (_%rest255084%_)
                     (_%lp255011%_ _%rest255084%_ _%opts255014%_)))
                  (_%K255024255064%_
                   (lambda (_%rest255061%_ _%opt255062%_)
                     (_%lp255011%_
                      _%rest255061%_
                      (let ((__tmp256866
                             (let ((__tmp256867
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt255062%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp256867))))
                        (declare (not safe))
                        (##append _%opts255014%_ __tmp256866)))))
                  (_%K255021255049%_
                   (lambda (_%rest255047%_)
                     (_%lp255011%_ _%rest255047%_ _%opts255014%_))))
              (if (pair? _%rest255015255035%_)
                  (let ((_%tl255031255091%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest255015255035%_)))
                        (_%hd255030255089%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest255015255035%_))))
                    (if (equal? _%hd255030255089%_ '"-cc-options")
                        (if (pair? _%tl255031255091%_)
                            (let* ((_%tl255033255094%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl255031255091%_)))
                                   (_%rest255097%_ _%tl255033255094%_))
                              (_%K255029255086%_ _%rest255097%_))
                            (let ((_%rest255055%_ _%tl255031255091%_))
                              (_%K255021255049%_ _%rest255055%_)))
                        (if (equal? _%hd255030255089%_ '"-ld-options")
                            (if (pair? _%tl255031255091%_)
                                (let ((_%tl255028255074%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl255031255091%_)))
                                      (_%hd255027255072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl255031255091%_))))
                                  (let ((_%opt255077%_ _%hd255027255072%_)
                                        (_%rest255079%_ _%tl255028255074%_))
                                    (_%K255024255064%_
                                     _%rest255079%_
                                     _%opt255077%_)))
                                (let ((_%rest255055%_ _%tl255031255091%_))
                                  (_%K255021255049%_ _%rest255055%_)))
                            (let ((_%rest255055%_ _%tl255031255091%_))
                              (_%K255021255049%_ _%rest255055%_)))))
                  (_%else255019255043%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str255008%_)
        (not (let () (declare (not safe)) (string-empty? _%str255008%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path255001%_ _%phi?255002%_)
        (let ((_%gsc-link-opts255004%_
               (gxc#gsc-link-options__% _%phi?255002%_))
              (_%gsc-cc-opts255005%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?255002%_))
              (_%gsc-ld-opts255006%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?255002%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp256868
                  (let ((__tmp256869
                         (let ((__tmp256870 (cons _%path255001%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp256870
                            _%gsc-link-opts255004%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp256869 _%gsc-ld-opts255006%_))))
             (declare (not safe))
             (foldr__0 cons __tmp256868 _%gsc-cc-opts255005%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx254967%_ _%n254968%_ _%ext254969%_)
        (letrec ((_%module-relative-path254971%_
                  (lambda (_%ctx254999%_)
                    (path-strip-directory
                     (let ((__tmp256871
                            (##structure-ref
                             _%ctx254999%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp256871)))))
                 (_%module-source-directory254972%_
                  (lambda (_%ctx254995%_)
                    (path-directory
                     (let ((_%mpath254997%_
                            (##structure-ref
                             _%ctx254995%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath254997%_)
                           _%mpath254997%_
                           (last _%mpath254997%_))))))
                 (_%section-string254973%_
                  (lambda (_%n254989%_)
                    (if (number? _%n254989%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n254989%_))
                        (if (symbol? _%n254989%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n254989%_))
                            (if (string? _%n254989%_)
                                _%n254989%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n254989%_)))))))
                 (_%file-name254974%_
                  (lambda (_%path254987%_)
                    (if _%n254968%_
                        (string-append
                         _%path254987%_
                         '"~"
                         (_%section-string254973%_ _%n254968%_)
                         _%ext254969%_)
                        (string-append _%path254987%_ _%ext254969%_))))
                 (_%file-path254975%_
                  (lambda ()
                    (let ((_%$e254981%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e254981%_
                          ((lambda (_%outdir254984%_)
                             (path-expand
                              (_%file-name254974%_
                               (let ((__tmp256872
                                      (##structure-ref
                                       _%ctx254967%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp256872)))
                              _%outdir254984%_))
                           _%$e254981%_)
                          (path-expand
                           (_%file-name254974%_
                            (_%module-relative-path254971%_ _%ctx254967%_))
                           (_%module-source-directory254972%_
                            _%ctx254967%_)))))))
          (let ((_%path254977%_ (_%file-path254975%_)))
            (let ((__tmp256873
                   (lambda ()
                     (let ((__tmp256874 (path-directory _%path254977%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp256874)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp256873))
            _%path254977%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx254948%_)
        (letrec ((_%file-name254950%_
                  (lambda (_%id254965%_)
                    (let ((__tmp256875 (gxc#static-module-name _%id254965%_)))
                      (declare (not safe))
                      (##string-append __tmp256875 '".scm"))))
                 (_%file-path254951%_
                  (lambda ()
                    (let* ((_%file254957%_
                            (_%file-name254950%_
                             (##structure-ref
                              _%ctx254948%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e254959%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e254959%_
                          ((lambda (_%outdir254962%_)
                             (path-expand
                              _%file254957%_
                              (path-expand '"static" _%outdir254962%_)))
                           _%$e254959%_)
                          (path-expand _%file254957%_ '"static"))))))
          (let ((_%path254953%_ (_%file-path254951%_)))
            (let ((__tmp256876
                   (lambda ()
                     (let ((__tmp256877 (path-directory _%path254953%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp256877)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp256876))
            _%path254953%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx254941%_ _%opts254942%_)
        (let ((_%$e254944%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts254942%_))))
          (if _%$e254944%_
              _%$e254944%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx254941%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr254931%_)
        (if (string? _%idstr254931%_)
            (let* ((_%str254934%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr254931%_)))
                   (_%strs254936%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str254934%_ '#\/))))
              (declare (not safe))
              (string-join _%strs254936%_ '"__"))
            (if (symbol? _%idstr254931%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr254931%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr254931%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp256878
               (let ((__tmp256879 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp256879 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp256878))))
    (define gxc#invoke__%
      (lambda (_%@@keywords254897%_
               _%stdout-redirection254893254898%_
               _%stderr-redirection254894254899%_
               _%program254900%_
               _%args254901%_)
        (let* ((_%stdout-redirection254903%_
                (if (eq? _%stdout-redirection254893254898%_ absent-value)
                    '#f
                    _%stdout-redirection254893254898%_))
               (_%stderr-redirection254905%_
                (if (eq? _%stderr-redirection254894254899%_ absent-value)
                    '#f
                    _%stderr-redirection254894254899%_)))
          (let ((__tmp256880 (cons _%program254900%_ _%args254901%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp256880))
          (let* ((_%proc254907%_
                  (open-process
                   (cons 'path:
                         (cons _%program254900%_
                               (cons 'arguments:
                                     (cons _%args254901%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection254903%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection254905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output254912%_
                  (if (or _%stdout-redirection254903%_
                          _%stderr-redirection254905%_)
                      (read-line _%proc254907%_ '#f)
                      '#f))
                 (_%status254915%_ (process-status _%proc254907%_)))
            (let () (declare (not safe)) (##close-port _%proc254907%_))
            (if (zero? _%status254915%_)
                '#!void
                (begin
                  (display _%output254912%_)
                  (let ((__tmp256881 (cons _%program254900%_ _%args254901%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp256881
                     _%status254915%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords254920%_ . _%args254921%_)
        (apply gxc#invoke__%
               _%@@keywords254920%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords254920%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords254920%_
                  'stderr-redirection:
                  absent-value))
               _%args254921%_)))
    (define gxc#invoke
      (lambda _%args254895254927%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args254895254927%_)))))
