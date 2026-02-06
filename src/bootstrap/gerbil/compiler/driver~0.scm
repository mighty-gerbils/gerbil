(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770405381)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp256709 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp256709))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp256710 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp256710))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path256566%_ _%fun256567%_)
        (with-output-to-file
         (cons 'path: (cons _%path256566%_ gxc#scheme-file-settings))
         _%fun256567%_)))
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
      (lambda (_%gerbil-libdir256561%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir256561%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path256559%_)
        (let ((__tmp256711 (object->string _%path256559%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp256711 '")"))))
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
      (lambda (_%dir256557%_) (delete-file-or-directory _%dir256557%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath256500%_ _%opts256501%_)
        (if (string? _%srcpath256500%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath256500%_)))
        (let* ((_%outdir256503%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts256501%_)))
               (_%invoke-gsc?256505%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts256501%_)))
               (_%target256510%_
                (let ((_%$e256507%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts256501%_))))
                  (if _%$e256507%_ _%$e256507%_ 'C)))
               (_%gsc-options256515%_
                (append (cons '"-target"
                              (cons (symbol->string _%target256510%_) '()))
                        (let ((_%$e256512%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts256501%_))))
                          (if _%$e256512%_ _%$e256512%_ '()))))
               (_%keep-scm?256517%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts256501%_)))
               (_%verbosity256519%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts256501%_)))
               (_%optimize256521%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts256501%_)))
               (_%debug256523%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts256501%_)))
               (_%gen-ssxi256525%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts256501%_)))
               (_%parallel?256527%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts256501%_))))
          (if _%outdir256503%_
              (let ((__tmp256712
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir256503%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp256712))
              '#!void)
          (if _%optimize256521%_
              (let ((__tmp256713
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp256713))
              '#!void)
          (let ((__tmp256714
                 (lambda ()
                   (let ((__tmp256715
                          (lambda ()
                            (let ((__tmp256716
                                   (lambda ()
                                     (let ((__tmp256717
                                            (lambda ()
                                              (let ((__tmp256718
                                                     (lambda ()
                                                       (let ((__tmp256719
                                                              (lambda ()
                                                                (let ((__tmp256720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp256721
                                        (lambda ()
                                          (let ((__tmp256722
                                                 (lambda ()
                                                   (let ((__tmp256724
                                                          (lambda ()
                                                            (let ((__tmp256726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp256728
                                    (lambda ()
                                      (let ((__tmp256729
                                             (lambda ()
                                               (let ((__tmp256730
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath256500%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp256731
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath256500%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp256731))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp256730
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp256729
                                         gxc#current-compile-parallel
                                         _%parallel?256527%_))))
                                   (__tmp256727
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp256728
                                gxc#current-compile-identifiers
                                __tmp256727))))
                          (__tmp256725
                           (cons (cons 'compile-module
                                       (cons _%srcpath256500%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp256726
                       gxc#current-compile-context
                       __tmp256725))))
                 (__tmp256723 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp256724
                                                      gxc#current-compile-timestamp
                                                      __tmp256723)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp256722
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi256525%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp256721
                                    gxc#current-compile-debug
                                    _%debug256523%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp256720
                           gxc#current-compile-optimize
                           _%optimize256521%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp256719
                  gxc#current-compile-verbose
                  _%verbosity256519%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp256718
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?256517%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp256717
                                        gxc#current-compile-gsc-options
                                        _%gsc-options256515%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp256716
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?256505%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp256715
                      gx#current-compilation-target
                      _%target256510%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp256714
             gxc#current-compile-output-dir
             _%outdir256503%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath256550%_)
        (let ((_%opts256552%_ '()))
          (gxc#compile-module__% _%srcpath256550%_ _%opts256552%_))))
    (define gxc#compile-module
      (lambda _g256732_
        (let ((_g256733_ (let () (declare (not safe)) (##length _g256732_))))
          (cond ((let () (declare (not safe)) (##fx= _g256733_ 1))
                 (apply gxc#compile-module__0 _g256732_))
                ((let () (declare (not safe)) (##fx= _g256733_ 2))
                 (apply gxc#compile-module__% _g256732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g256732_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath256449%_ _%opts256450%_)
        (if (string? _%srcpath256449%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath256449%_)))
        (let* ((_%outdir256452%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts256450%_)))
               (_%invoke-gsc?256454%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts256450%_)))
               (_%target256459%_
                (let ((_%$e256456%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts256450%_))))
                  (if _%$e256456%_ _%$e256456%_ 'C)))
               (_%gsc-options256464%_
                (append (cons '"-target"
                              (cons (symbol->string _%target256459%_) '()))
                        (let ((_%$e256461%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts256450%_))))
                          (if _%$e256461%_ _%$e256461%_ '()))))
               (_%keep-scm?256466%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts256450%_)))
               (_%verbosity256468%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts256450%_)))
               (_%debug256470%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts256450%_)))
               (_%parallel?256472%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts256450%_))))
          (if _%outdir256452%_
              (let ((__tmp256734
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir256452%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp256734))
              '#!void)
          (let ((__tmp256735
                 (lambda ()
                   (let ((__tmp256736
                          (lambda ()
                            (let ((__tmp256737
                                   (lambda ()
                                     (let ((__tmp256738
                                            (lambda ()
                                              (let ((__tmp256739
                                                     (lambda ()
                                                       (let ((__tmp256740
                                                              (lambda ()
                                                                (let ((__tmp256741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp256743
                                        (lambda ()
                                          (let ((__tmp256745
                                                 (lambda ()
                                                   (let ((__tmp256747
                                                          (lambda ()
                                                            (let ((__tmp256748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp256749
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath256449%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp256750
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath256449%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp256750))
                                       _%opts256450%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp256749
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp256748
                       gxc#current-compile-parallel
                       _%parallel?256472%_))))
                 (__tmp256746
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp256747
                                                      gxc#current-compile-identifiers
                                                      __tmp256746))))
                                                (__tmp256744
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath256449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp256745
                                             gxc#current-compile-context
                                             __tmp256744))))
                                       (__tmp256742 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp256743
                                    gxc#current-compile-timestamp
                                    __tmp256742)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp256741
                           gxc#current-compile-debug
                           _%debug256470%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp256740
                  gxc#current-compile-verbose
                  _%verbosity256468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp256739
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?256466%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp256738
                                        gxc#current-compile-gsc-options
                                        _%gsc-options256464%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp256737
                               gx#current-compilation-target
                               _%target256459%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp256736
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?256454%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp256735
             gxc#current-compile-output-dir
             _%outdir256452%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath256492%_)
        (let ((_%opts256494%_ '()))
          (gxc#compile-exe__% _%srcpath256492%_ _%opts256494%_))))
    (define gxc#compile-exe
      (lambda _g256751_
        (let ((_g256752_ (let () (declare (not safe)) (##length _g256751_))))
          (cond ((let () (declare (not safe)) (##fx= _g256752_ 1))
                 (apply gxc#compile-exe__0 _g256751_))
                ((let () (declare (not safe)) (##fx= _g256752_ 2))
                 (apply gxc#compile-exe__% _g256751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g256751_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx256445%_ _%opts256446%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts256446%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx256445%_
             _%opts256446%_)
            (gxc#compile-executable-module/separate
             _%ctx256445%_
             _%opts256446%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx256171%_ _%opts256172%_)
        (letrec ((_%generate-stub256174%_
                  (lambda (_%builtin-modules256441%_)
                    (let ((_%mod-main256443%_
                           (gxc#find-runtime-symbol _%ctx256171%_ 'main)))
                      (let ((__tmp256753
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules256441%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp256753))
                      (let ((__tmp256754
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main256443%_
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
                        (##write __tmp256754))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts256175%_
                  (lambda (_%gerbil-libdir256439%_)
                    (let ((__tmp256755
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir256439%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp256755 read))))
                 (_%replace-extension256176%_
                  (lambda (_%path256436%_ _%ext256437%_)
                    (string-append
                     (path-strip-extension _%path256436%_)
                     _%ext256437%_)))
                 (_%replace-extension-with-c256177%_
                  (lambda (_%path256434%_)
                    (_%replace-extension256176%_ _%path256434%_ '".c")))
                 (_%replace-extension-with-object256178%_
                  (lambda (_%path256432%_)
                    (_%replace-extension256176%_
                     _%path256432%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?256179%_
                  (lambda (_%ctx256430%_)
                    (if (_%exclude-module?256181%_ _%ctx256430%_)
                        '#f
                        (not (_%libgerbil-module?256180%_ _%ctx256430%_)))))
                 (_%libgerbil-module?256180%_
                  (lambda (_%ctx256423%_)
                    (let ((_%id-str256425%_
                           (symbol->string
                            (##structure-ref
                             _%ctx256423%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?256181%_ _%id-str256425%_)
                          '#f
                          (let ((_%$e256427%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str256425%_))))
                            (if _%$e256427%_
                                _%$e256427%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str256425%_))))))))
                 (_%exclude-module?256181%_
                  (lambda (_%ctx-or-str256419%_)
                    (let ((_%str256421%_
                           (if (string? _%ctx-or-str256419%_)
                               _%ctx-or-str256419%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str256419%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str256421%_))))
                 (_%not-file-empty?256182%_
                  (lambda (_%path256417%_)
                    (not (gxc#file-empty? _%path256417%_))))
                 (_%fold-libgerbil-runtime-scm256183%_
                  (lambda (_%gerbil-staticdir256410%_ _%libgerbil-scm256411%_)
                    (let ((_%gerbil-runtime-scm256415%_
                           (let ((__tmp256756
                                  (lambda (_%rtm256413%_)
                                    (path-expand
                                     (let ((__tmp256757
                                            (let ((__tmp256758
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm256413%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp256758
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp256757 '".scm"))
                                     _%gerbil-staticdir256410%_))))
                             (declare (not safe))
                             (##map __tmp256756 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates256184%_
                       (append _%gerbil-runtime-scm256415%_
                               _%libgerbil-scm256411%_)))))
                 (_%remove-duplicates256184%_
                  (lambda (_%strlst256370%_)
                    (let _%loop256372%_ ((_%rest256374%_ _%strlst256370%_)
                                         (_%result256375%_ '()))
                      (let* ((_%rest256376256384%_ _%rest256374%_)
                             (_%else256378256392%_
                              (lambda () (reverse! _%result256375%_)))
                             (_%K256380256398%_
                              (lambda (_%rest256395%_ _%path256396%_)
                                (if (member _%path256396%_ _%result256375%_)
                                    (_%loop256372%_
                                     _%rest256395%_
                                     _%result256375%_)
                                    (_%loop256372%_
                                     _%rest256395%_
                                     (cons _%path256396%_
                                           _%result256375%_))))))
                        (if (pair? _%rest256376256384%_)
                            (let ((_%hd256381256401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest256376256384%_)))
                                  (_%tl256382256403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest256376256384%_))))
                              (let* ((_%path256406%_ _%hd256381256401%_)
                                     (_%rest256408%_ _%tl256382256403%_))
                                (_%K256380256398%_
                                 _%rest256408%_
                                 _%path256406%_)))
                            (_%else256378256392%_))))))
                 (_%compile-stub256185%_
                  (lambda (_%output-scm256192%_ _%output-bin256193%_)
                    (let* ((_%gerbil-home256195%_
                            (let ((__tmp256759
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp256759)))
                           (_%gerbil-libdir256197%_
                            (path-expand '"lib" _%gerbil-home256195%_))
                           (_%gerbil-staticdir256199%_
                            (path-expand '"static" _%gerbil-libdir256197%_))
                           (_%deps256201%_
                            (gxc#find-runtime-module-deps _%ctx256171%_))
                           (_%libgerbil-deps256203%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?256180%_
                               _%deps256201%_)))
                           (_%libgerbil-scm256205%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps256203%_)))
                           (_%libgerbil-scm256207%_
                            (_%fold-libgerbil-runtime-scm256183%_
                             _%gerbil-staticdir256199%_
                             _%libgerbil-scm256205%_))
                           (_%libgerbil-c256209%_
                            (map _%replace-extension-with-c256177%_
                                 _%libgerbil-scm256207%_))
                           (_%libgerbil-o256211%_
                            (map _%replace-extension-with-object256178%_
                                 _%libgerbil-scm256207%_))
                           (_%src-deps256213%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?256179%_
                               _%deps256201%_)))
                           (_%src-deps-scm256215%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps256213%_)))
                           (_%src-deps-scm256217%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?256182%_
                               _%src-deps-scm256215%_)))
                           (_%src-deps-scm256219%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm256217%_)))
                           (_%src-deps-c256221%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c256177%_
                                     _%src-deps-scm256219%_)))
                           (_%src-deps-o256223%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object256178%_
                                     _%src-deps-scm256219%_)))
                           (_%src-bin-scm256225%_
                            (gxc#find-static-module-file _%ctx256171%_))
                           (_%src-bin-scm256227%_
                            (path-expand _%src-bin-scm256225%_))
                           (_%src-bin-c256229%_
                            (_%replace-extension-with-c256177%_
                             _%src-bin-scm256227%_))
                           (_%src-bin-o256231%_
                            (_%replace-extension-with-object256178%_
                             _%src-bin-scm256227%_))
                           (_%output-bin256233%_
                            (path-expand _%output-bin256193%_))
                           (_%output-scm256235%_
                            (path-expand _%output-scm256192%_))
                           (_%output-c256237%_
                            (_%replace-extension-with-c256177%_
                             _%output-scm256235%_))
                           (_%output-o256239%_
                            (_%replace-extension-with-object256178%_
                             _%output-scm256235%_))
                           (_%output_-c256241%_
                            (_%replace-extension256176%_
                             _%output-scm256235%_
                             '"_.c"))
                           (_%output_-o256243%_
                            (_%replace-extension256176%_
                             _%output-scm256235%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts256245%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts256247%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts256249%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir256199%_))
                           (_%output-ld-opts256251%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts256253%_
                            (_%get-libgerbil-ld-opts256175%_
                             _%gerbil-libdir256197%_))
                           (_%rpath256255%_
                            (gxc#gerbil-rpath _%gerbil-libdir256197%_))
                           (_%builtin-modules256259%_
                            (_%remove-duplicates256184%_
                             (let ((__tmp256760
                                    (let ((__tmp256762
                                           (lambda (_%mod256257%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod256257%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp256761
                                           (cons _%ctx256171%_
                                                 _%deps256201%_)))
                                      (declare (not safe))
                                      (##map __tmp256762 __tmp256761))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp256760)))))
                      (letrec ((_%compile-obj256262%_
                                (lambda (_%scm-path256269%_ _%c-path256270%_)
                                  (let* ((_%o-path256272%_
                                          (_%replace-extension256176%_
                                           _%c-path256270%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock256274%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path256272%_
                                             '".lock")))
                                         (_%locked256276%_ '#f)
                                         (_%unlock256279%_
                                          (lambda ()
                                            (close-port _%locked256276%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock256274%_)))))
                                    (let _%retry256282%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock256274%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry256282%_))
                                          (begin
                                            (set! _%locked256276%_
                                                  (let* ((_%handler256285%_
                                                          false)
                                                         (_%thunk256289%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock256274%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler256294%_ _%handler256285%_)
                 (_%thunk256350%_ _%thunk256289%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler256294%_
                                                     _%thunk256350%_)))
                                            (if _%locked256276%_
                                                '#!void
                                                (_%retry256282%_)))))
                                    (let ((__tmp256764
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path256272%_)))
                                                     (not _%scm-path256269%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path256269%_
                                                        _%o-path256272%_)))
                                                 (let ((_%gsc-cc-opts256367%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp256765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp256766 (cons _%c-path256270%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp256766
                            _%gsc-static-opts256249%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp256765 _%gsc-cc-opts256367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp256763
                                           (lambda () (_%unlock256279%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp256764
                                       __tmp256763))))))
                        (let ((__tmp256767
                               (lambda ()
                                 (let ((__tmp256768
                                        (path-directory _%output-bin256233%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp256768)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp256767))
                        (gxc#with-output-to-scheme-file
                         _%output-scm256235%_
                         (lambda ()
                           (_%generate-stub256174%_
                            _%builtin-modules256259%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it256267%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp256769
                                                   (let ((__tmp256770
                                                          (let ((__tmp256771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm256227%_
                               (cons _%output-scm256235%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp256771 _%src-deps-scm256219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp256770
                                                      _%libgerbil-c256209%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp256769
                                               _%gsc-link-opts256245%_))))
                                     (for-each
                                      _%compile-obj256262%_
                                      (let ((__tmp256772
                                             (cons _%src-bin-scm256227%_
                                                   (cons _%output-scm256235%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp256772
                                         _%src-deps-scm256219%_))
                                      (let ((__tmp256773
                                             (cons _%src-bin-c256229%_
                                                   (cons _%output-c256237%_
                                                         (cons _%output_-c256241%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp256773
                                         _%src-deps-c256221%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin256233%_
                                                        (let ((__tmp256774
                                                               (cons _%src-bin-o256231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o256239%_
                                   (cons _%output_-o256243%_
                                         (let ((__tmp256775
                                                (let ((__tmp256776
                                                       (let ((__tmp256778
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir256197%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts256253%_))))
                     (__tmp256777
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath256255%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp256778 __tmp256777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp256776
                                                   _%output-ld-opts256251%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp256775
                                            _%libgerbil-o256211%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp256774 _%src-deps-o256223%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp256779
                                            (cons _%output-c256237%_
                                                  (cons _%output_-c256241%_
                                                        (cons _%output-o256239%_
                                                              (cons _%output_-o256243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp256779)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it256267%_))
                                  (_%compile-it256267%_)))
                            '#!void))))))
          (let* ((_%output-bin256187%_
                  (gxc#compile-exe-output-file _%ctx256171%_ _%opts256172%_))
                 (_%output-scm256189%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin256187%_ '"__exe.scm"))))
            (_%compile-stub256185%_
             _%output-scm256189%_
             _%output-bin256187%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx255993%_ _%opts255994%_)
        (letrec ((_%reset-declare255996%_
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
                 (_%generate-stub255997%_
                  (lambda (_%deps256162%_)
                    (let ((_%mod-main256164%_
                           (gxc#find-runtime-symbol _%ctx255993%_ 'main))
                          (_%reset-decl256165%_ (_%reset-declare255996%_))
                          (_%user-decl256166%_ (_%user-declare255998%_)))
                      (for-each
                       (lambda (_%dep256168%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl256165%_))
                         (newline)
                         (if _%user-decl256166%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl256166%_))
                               (newline))
                             '#!void)
                         (let ((__tmp256780
                                (cons 'include (cons _%dep256168%_ '()))))
                           (declare (not safe))
                           (##write __tmp256780))
                         (newline))
                       _%deps256162%_)
                      (let ((__tmp256781
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main256164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp256781))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare255998%_
                  (lambda ()
                    (let* ((_%gsc-opts256067%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts255994%_)))
                           (_%gsc-prelude256069%_
                            (if _%gsc-opts256067%_
                                (member '"-prelude" _%gsc-opts256067%_)
                                '#f))
                           (_%gsc-prelude256071%_
                            (if _%gsc-prelude256069%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude256069%_)))
                                '#f)))
                      (let _%lp256074%_ ((_%rest256076%_
                                          (cons _%gsc-prelude256071%_ '()))
                                         (_%user-decls256077%_ '()))
                        (let* ((_%rest256078256086%_ _%rest256076%_)
                               (_%else256080256094%_
                                (lambda ()
                                  (if (null? _%user-decls256077%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls256077%_)))))
                               (_%K256082256150%_
                                (lambda (_%rest256097%_ _%expr256098%_)
                                  (let* ((_%expr256099256111%_ _%expr256098%_)
                                         (_%else256102256119%_
                                          (lambda ()
                                            (_%lp256074%_
                                             _%rest256097%_
                                             _%user-decls256077%_))))
                                    (let ((_%K256107256140%_
                                           (lambda (_%decls256138%_)
                                             (_%lp256074%_
                                              _%rest256097%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls256077%_
                                                 _%decls256138%_)))))
                                          (_%K256104256125%_
                                           (lambda (_%exprs256123%_)
                                             (_%lp256074%_
                                              (append _%exprs256123%_
                                                      _%rest256097%_)
                                              _%user-decls256077%_))))
                                      (if (pair? _%expr256099256111%_)
                                          (let ((_%tl256109256145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr256099256111%_)))
                                                (_%hd256108256143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr256099256111%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd256108256143%_
                                                         'declare))
                                                (let ((_%decls256148%_
                                                       _%tl256109256145%_))
                                                  (_%K256107256140%_
                                                   _%decls256148%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd256108256143%_
                                                             'begin))
                                                    (let ((_%exprs256133%_
                                                           _%tl256109256145%_))
                                                      (_%K256104256125%_
                                                       _%exprs256133%_))
                                                    (_%else256102256119%_))))
                                          (_%else256102256119%_)))))))
                          (if (pair? _%rest256078256086%_)
                              (let ((_%hd256083256153%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest256078256086%_)))
                                    (_%tl256084256155%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest256078256086%_))))
                                (let* ((_%expr256158%_ _%hd256083256153%_)
                                       (_%rest256160%_ _%tl256084256155%_))
                                  (_%K256082256150%_
                                   _%rest256160%_
                                   _%expr256158%_)))
                              (_%else256080256094%_)))))))
                 (_%compile-stub255999%_
                  (lambda (_%output-scm256006%_ _%output-bin256007%_)
                    (let* ((_%gerbil-home256009%_
                            (let ((__tmp256782
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp256782)))
                           (_%gerbil-libdir256011%_
                            (path-expand '"lib" _%gerbil-home256009%_))
                           (_%runtime256013%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp256015%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home256009%_))
                           (_%include-gambit-sharp256017%_
                            (gxc#include-source _%gambit-sharp256015%_))
                           (_%bin-scm256019%_
                            (gxc#find-static-module-file _%ctx255993%_))
                           (_%deps256021%_
                            (gxc#find-runtime-module-deps _%ctx255993%_))
                           (_%deps256023%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps256021%_)))
                           (_%deps256028%_
                            (let ((__tmp256783
                                   (lambda (_%$obj256025%_)
                                     (not (gxc#file-empty? _%$obj256025%_)))))
                              (declare (not safe))
                              (##filter __tmp256783 _%deps256023%_)))
                           (_%deps256032%_
                            (let ((__tmp256784
                                   (lambda (_%f256030%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f256030%_
                                             _%runtime256013%_))))))
                              (declare (not safe))
                              (##filter __tmp256784 _%deps256028%_)))
                           (_%output-base256034%_
                            (let ((__tmp256785
                                   (path-strip-extension
                                    _%output-scm256006%_)))
                              (declare (not safe))
                              (##string-append __tmp256785)))
                           (_%output-c256036%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base256034%_ '".c")))
                           (_%output-o256038%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base256034%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_256040%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base256034%_ '"_.c")))
                           (_%output-o_256042%_
                            (let ((__tmp256786
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base256034%_
                               __tmp256786)))
                           (_%gsc-link-opts256044%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts256046%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts256048%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir256011%_)))
                           (_%output-ld-opts256050%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros256052%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp256017%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp256017%_
                                            '()))))
                           (_%gsc-link-opts256054%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts256044%_
                               _%gsc-gx-macros256052%_)))
                           (_%rpath256056%_
                            (gxc#gerbil-rpath _%gerbil-libdir256011%_))
                           (_%default-ld-options256058%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp256787
                             (lambda ()
                               (let ((__tmp256788
                                      (path-directory _%output-bin256007%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp256788)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp256787))
                      (gxc#with-output-to-scheme-file
                       _%output-scm256006%_
                       (lambda ()
                         (_%generate-stub255997%_
                          (let ((__tmp256789
                                 (let ((__tmp256790
                                        (cons _%bin-scm256019%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp256790
                                    _%deps256032%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp256789 _%runtime256013%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it256064%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_256040%_
                                                      (let ((__tmp256791
                                                             (cons _%output-scm256006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp256791 _%gsc-link-opts256054%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp256792
                                                 (let ((__tmp256793
                                                        (cons _%output-c256036%_
                                                              (cons _%output-c_256040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp256793
                                                    _%gsc-static-opts256048%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp256792
                                             _%gsc-cc-opts256046%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin256007%_
                                                      (cons _%output-o256038%_
                                                            (cons _%output-o_256042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256794
                                 (let ((__tmp256796
                                        (cons '"-L"
                                              (cons _%gerbil-libdir256011%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options256058%_))))
                                       (__tmp256795
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath256056%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp256796 __tmp256795))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp256794
                             _%output-ld-opts256050%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it256064%_))
                                (_%compile-it256064%_)))
                          '#!void)))))
          (let* ((_%output-bin256001%_
                  (gxc#compile-exe-output-file _%ctx255993%_ _%opts255994%_))
                 (_%output-scm256003%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin256001%_ '"__exe.scm"))))
            (_%compile-stub255999%_
             _%output-scm256003%_
             _%output-bin256001%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx255942%_ _%id255943%_)
        (let ((_%$e255989%_
               (let ((__tmp256798
                      (lambda (_%e255944255946%_)
                        (let* ((_%e255944255948255958%_ _%e255944255946%_)
                               (_%else255950255966%_ (lambda () '#f))
                               (_%K255952255970%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e255944255948255958%_
                                 'gx#module-export::t))
                              (let* ((_%e255953255973%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e255944255948255958%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e255954255976%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e255944255948255958%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e255955255979%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e255944255948255958%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e255955255979%_ '0))
                                    (let ((_%e255956255982%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e255944255948255958%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g255984255986%_)
                                             (eq? _%g255984255986%_
                                                  _%id255943%_))
                                           _%e255956255982%_)
                                          (_%K255952255970%_)
                                          (_%else255950255966%_)))
                                    (_%else255950255966%_)))
                              (_%else255950255966%_)))))
                     (__tmp256797
                      (##structure-ref
                       _%ctx255942%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp256798 __tmp256797))))
          (if _%$e255989%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e255989%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx255933%_ _%id255934%_)
        (let ((_%$e255936%_
               (gxc#find-export-binding _%ctx255933%_ _%id255934%_)))
          (if _%$e255936%_
              ((lambda (_%bind255939%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind255939%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id255934%_)))
                 (##structure-ref _%bind255939%_ '1 gx#binding::t '#f))
               _%$e255936%_)
              (let ((__tmp256799
                     (##structure-ref
                      _%ctx255933%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp256799
                 _%id255934%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx255799%_)
        (letrec* ((_%ht255801%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template255802%_
                   (lambda (_%in255878%_ _%phi255879%_)
                     (let ((_%iphi255881%_
                            (fx+ _%phi255879%_
                                 (##direct-structure-ref
                                  _%in255878%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports255882%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in255878%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp255884%_ ((_%rest255886%_ _%imports255882%_)
                                          (_%r255887%_ '()))
                         (let* ((_%rest255888255896%_ _%rest255886%_)
                                (_%else255890255904%_ (lambda () _%r255887%_))
                                (_%K255892255921%_
                                 (lambda (_%rest255907%_ _%in255908%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in255908%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi255881%_))
                                           (_%lp255884%_
                                            _%rest255907%_
                                            (cons _%in255908%_ _%r255887%_))
                                           (_%lp255884%_
                                            _%rest255907%_
                                            _%r255887%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in255908%_
                                              'gx#module-import::t))
                                           (let ((_%iphi255912%_
                                                  (fx+ _%phi255879%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in255908%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi255912%_))
                                                 (_%lp255884%_
                                                  _%rest255907%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in255908%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r255887%_))
                                                 (_%lp255884%_
                                                  _%rest255907%_
                                                  _%r255887%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in255908%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi255915%_
                                                      (fx+ _%iphi255881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in255908%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi255915%_))
                                                     (_%lp255884%_
                                                      _%rest255907%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in255908%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r255887%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi255915%_))
                                                         (_%lp255884%_
                                                          _%rest255907%_
                                                          (let ((__tmp256800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template255802%_
                          _%in255908%_
                          _%iphi255881%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r255887%_ __tmp256800)))
                 (_%lp255884%_ _%rest255907%_ _%r255887%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp255884%_
                                                _%rest255907%_
                                                _%r255887%_)))))))
                           (if (pair? _%rest255888255896%_)
                               (let ((_%hd255893255924%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest255888255896%_)))
                                     (_%tl255894255926%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest255888255896%_))))
                                 (let* ((_%in255929%_ _%hd255893255924%_)
                                        (_%rest255931%_ _%tl255894255926%_))
                                   (_%K255892255921%_
                                    _%rest255931%_
                                    _%in255929%_)))
                               (_%else255890255904%_)))))))
                  (_%find-deps255803%_
                   (lambda (_%rest255811%_ _%deps255812%_)
                     (let* ((_%rest255813255821%_ _%rest255811%_)
                            (_%else255815255829%_ (lambda () _%deps255812%_))
                            (_%K255817255866%_
                             (lambda (_%rest255832%_ _%hd255833%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd255833%_
                                      'gx#module-context::t))
                                   (let ((_%id255836%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd255833%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports255837%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd255833%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht255801%_
                                            _%id255836%_))
                                         (_%find-deps255803%_
                                          _%rest255832%_
                                          _%deps255812%_)
                                         (let ((_%$e255840%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd255833%_))))
                                           (if _%$e255840%_
                                               ((lambda (_%pre255843%_)
                                                  (let ((_%xdeps255845%_
                                                         (_%find-deps255803%_
                                                          (cons _%pre255843%_
                                                                _%imports255837%_)
                                                          _%deps255812%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht255801%_
                                                       _%id255836%_
                                                       _%hd255833%_))
                                                    (_%find-deps255803%_
                                                     _%rest255832%_
                                                     (cons _%hd255833%_
                                                           _%xdeps255845%_))))
                                                _%$e255840%_)
                                               (let ((_%xdeps255848%_
                                                      (_%find-deps255803%_
                                                       _%imports255837%_
                                                       _%deps255812%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht255801%_
                                                    _%id255836%_
                                                    _%hd255833%_))
                                                 (_%find-deps255803%_
                                                  _%rest255832%_
                                                  (cons _%hd255833%_
                                                        _%xdeps255848%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd255833%_
                                          'gx#prelude-context::t))
                                       (let ((_%id255851%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd255833%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht255801%_
                                                _%id255851%_))
                                             (_%find-deps255803%_
                                              _%rest255832%_
                                              _%deps255812%_)
                                             (let ((_%xdeps255855%_
                                                    (_%find-deps255803%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd255833%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps255812%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht255801%_
                                                      _%id255851%_))
                                                   (_%find-deps255803%_
                                                    _%rest255832%_
                                                    _%xdeps255855%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht255801%_
                                                        _%id255851%_
                                                        _%hd255833%_))
                                                     (_%find-deps255803%_
                                                      _%rest255832%_
                                                      (cons _%hd255833%_
                                                            _%xdeps255855%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd255833%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd255833%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps255803%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd255833%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest255832%_)
                                                _%deps255812%_)
                                               (_%find-deps255803%_
                                                _%rest255832%_
                                                _%deps255812%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd255833%_
                                                  'gx#module-export::t))
                                               (_%find-deps255803%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd255833%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest255832%_)
                                                _%deps255812%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd255833%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd255833%_ '2 '#f '#f)))
               (_%find-deps255803%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd255833%_ '1 '#f '#f))
                      _%rest255832%_)
                _%deps255812%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd255833%_ '2 '#f '#f)))
                   (let ((_%xdeps255862%_
                          (_%import-set-template255802%_ _%hd255833%_ '0)))
                     (_%find-deps255803%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest255832%_ _%xdeps255862%_))
                      _%deps255812%_))
                   (_%find-deps255803%_ _%rest255832%_ _%deps255812%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd255833%_))))))))))
                       (if (pair? _%rest255813255821%_)
                           (let ((_%hd255818255869%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest255813255821%_)))
                                 (_%tl255819255871%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest255813255821%_))))
                             (let* ((_%hd255874%_ _%hd255818255869%_)
                                    (_%rest255876%_ _%tl255819255871%_))
                               (_%K255817255866%_
                                _%rest255876%_
                                _%hd255874%_)))
                           (_%else255815255829%_))))))
          (let ((__tmp256801
                 (filter gx#expander-context-id
                         (_%find-deps255803%_
                          (let ((_%$e255805%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx255799%_))))
                            (if _%$e255805%_
                                ((lambda (_%pre255808%_)
                                   (cons _%pre255808%_
                                         (##structure-ref
                                          _%ctx255799%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e255805%_)
                                (##structure-ref
                                 _%ctx255799%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp256801)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx255729%_)
        (let* ((_%context-id255731%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx255729%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx255729%_ '1 '#f '#f))
                    (string->symbol _%ctx255729%_)))
               (_%scm255733%_
                (let ((__tmp256802
                       (gxc#static-module-name _%context-id255731%_)))
                  (declare (not safe))
                  (##string-append __tmp256802 '".scm")))
               (_%dirs255735%_ (let () (declare (not safe)) (load-path)))
               (_%dirs255741%_
                (let ((_%user-libpath255737%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath255737%_
                      (let ((_%user-libpath255739%_
                             (path-expand '"lib" _%user-libpath255737%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath255739%_ _%dirs255735%_))
                            _%dirs255735%_
                            (cons _%user-libpath255739%_ _%dirs255735%_)))
                      _%dirs255735%_)))
               (_%dirs255751%_
                (let ((_%$e255743%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e255743%_
                      ((lambda (_%g255745255747%_)
                         (cons _%g255745255747%_ _%dirs255741%_))
                       _%$e255743%_)
                      _%dirs255741%_)))
               (_%dirs255757%_
                (let ((__tmp256803
                       (lambda (_%g255752255754%_)
                         (path-expand '"static" _%g255752255754%_))))
                  (declare (not safe))
                  (##map __tmp256803 _%dirs255751%_))))
          (let _%lp255760%_ ((_%rest255762%_ _%dirs255757%_))
            (let* ((_%rest255763255771%_ _%rest255762%_)
                   (_%else255765255779%_
                    (lambda ()
                      (let ((__tmp256804
                             (##structure-ref
                              _%ctx255729%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp256804
                         _%scm255733%_))))
                   (_%K255767255787%_
                    (lambda (_%rest255782%_ _%dir255783%_)
                      (let ((_%path255785%_
                             (path-expand _%scm255733%_ _%dir255783%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path255785%_))
                            _%path255785%_
                            (_%lp255760%_ _%rest255782%_))))))
              (if (pair? _%rest255763255771%_)
                  (let ((_%hd255768255790%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest255763255771%_)))
                        (_%tl255769255792%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest255763255771%_))))
                    (let* ((_%dir255795%_ _%hd255768255790%_)
                           (_%rest255797%_ _%tl255769255792%_))
                      (_%K255767255787%_ _%rest255797%_ _%dir255795%_)))
                  (_%else255765255779%_)))))))
    (define gxc#file-empty?
      (lambda (_%path255727%_)
        (zero? (let ((__tmp256805 (file-info _%path255727%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp256805)))))
    (define gxc#compile-top-module
      (lambda (_%ctx255718%_)
        (let ((__tmp256806
               (lambda ()
                 (let ((__tmp256807
                        (lambda ()
                          (let ((__tmp256808
                                 (lambda ()
                                   (let ((__tmp256810
                                          (lambda ()
                                            (let ((__tmp256812
                                                   (lambda ()
                                                     (let ((__tmp256814
                                                            (lambda ()
                                                              (let ((__tmp256815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx255718%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp256815))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp256816
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx255718%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp256816))
                          '#!void)
                      (gxc#collect-bindings _%ctx255718%_)
                      (gxc#compile-runtime-code _%ctx255718%_)
                      (gxc#compile-meta-code _%ctx255718%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx255718%_)
                          '#!void)))
                   (__tmp256813
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
                __tmp256814
                gxc#current-compile-runtime-names
                __tmp256813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp256811
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp256812
                                               gxc#current-compile-runtime-sections
                                               __tmp256811))))
                                         (__tmp256809
                                          (let ((__obj256707
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj256707))
                                            __obj256707)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp256810
                                      gxc#current-compile-symbol-table
                                      __tmp256809)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp256808
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp256807
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp256806
           gx#current-expander-context
           _%ctx255718%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx255716%_)
        (let ((__tmp256817
               (##structure-ref _%ctx255716%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp256817))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx255661%_)
        (letrec ((_%compile1255663%_
                  (lambda (_%ctx255705%_)
                    (let* ((_%code255707%_
                            (##structure-ref
                             _%ctx255705%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm255711%_
                            (let ((_%idstr255709%_
                                   (let ((__tmp256818
                                          (##structure-ref
                                           _%ctx255705%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp256818))))
                              (declare (not safe))
                              (##string-append _%idstr255709%_ '"~0")))
                           (_%rtc?255713%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code255707%_))))
                      (if _%rtc?255713%_
                          (let ((__tmp256819
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp256819
                             _%ctx255705%_
                             _%rtm255711%_))
                          '#!void)
                      (_%generate-runtime-code255665%_
                       _%ctx255705%_
                       _%code255707%_
                       (if _%rtc?255713%_ _%rtm255711%_ '#f)))))
                 (_%context-timestamp255664%_
                  (lambda (_%ctx255703%_)
                    (let ((__tmp256820
                           (let ((__tmp256821
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx255703%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp256821 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp256820))))
                 (_%generate-runtime-code255665%_
                  (lambda (_%ctx255672%_ _%code255673%_ _%rtm255674%_)
                    (let* ((_%runtime-code?255676%_ (if _%rtm255674%_ '#t '#f))
                           (_%lifts255678%_ (box '()))
                           (_%runtime-code255684%_
                            (if _%runtime-code?255676%_
                                (let ((__tmp256822
                                       (lambda ()
                                         (let ((__tmp256823
                                                (lambda ()
                                                  (let ((__tmp256824
                                                         (lambda ()
                                                           (let ((__tmp256826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code255673%_))))
                         (__tmp256825
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp256826
                      gxc#current-compile-marks
                      __tmp256825)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp256824
                                                     gxc#current-compile-lift
                                                     _%lifts255678%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp256823
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp256822
                                   gx#current-expander-context
                                   _%ctx255672%_))
                                '#f))
                           (_%runtime-code255686%_
                            (if _%runtime-code?255676%_
                                (if (null? (unbox _%lifts255678%_))
                                    _%runtime-code255684%_
                                    (cons 'begin
                                          (let ((__tmp256828
                                                 (cons _%runtime-code255684%_
                                                       '()))
                                                (__tmp256827
                                                 (reverse (unbox _%lifts255678%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp256828
                                             __tmp256827))))
                                '#f))
                           (_%runtime-code255688%_
                            (if _%runtime-code?255676%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp255664%_
                                                         _%ctx255672%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code255686%_ '())))
                                '#f))
                           (_%loader-code255691%_
                            (let ((__tmp256829
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code255673%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp256829
                               gx#current-expander-context
                               _%ctx255672%_)))
                           (_%loader-code255693%_
                            (cons 'begin
                                  (cons _%loader-code255691%_
                                        (cons (if _%runtime-code?255676%_
                                                  (cons 'load-module
                                                        (cons _%rtm255674%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0255695%_
                            (gxc#compile-output-file _%ctx255672%_ '0 '".scm"))
                           (_%scmrt255697%_
                            (gxc#compile-output-file
                             _%ctx255672%_
                             '#f
                             '".scm"))
                           (_%scms255699%_
                            (gxc#compile-static-output-file _%ctx255672%_)))
                      (if _%runtime-code?255676%_
                          (gxc#compile-scm-file__0
                           _%scm0255695%_
                           _%runtime-code255688%_)
                          '#!void)
                      (let ((__tmp256830
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt255697%_
                                _%loader-code255693%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp256830
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms255699%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms255699%_))
                          '#!void)
                      (if _%runtime-code?255676%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0255695%_ _%scms255699%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms255699%_ void)))))))
          (let* ((_%all-modules255667%_
                  (cons _%ctx255661%_ (gxc#lift-nested-modules _%ctx255661%_)))
                 (__tmp256831
                  (lambda (_%ctx255669%_)
                    (let ((__tmp256832
                           (lambda () (_%compile1255663%_ _%ctx255669%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp256832
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp256831 _%all-modules255667%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx255560%_)
        (letrec ((_%compile-ssi255562%_
                  (lambda (_%code255629%_)
                    (let* ((_%path255631%_
                            (gxc#compile-output-file
                             _%ctx255560%_
                             '#f
                             '".ssi"))
                           (_%prelude255643%_
                            (let* ((_%super255633%_
                                    (##structure-ref
                                     _%ctx255560%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e255635%_
                                    (##structure-ref
                                     _%super255633%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e255635%_
                                  ((lambda (_%g255637255639%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g255637255639%_)))
                                   _%$e255635%_)
                                  ':<root>)))
                           (_%ns255645%_
                            (##structure-ref
                             _%ctx255560%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr255647%_
                            (symbol->string
                             (##structure-ref
                              _%ctx255560%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg255655%_
                            (let ((_%$e255649%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr255647%_ '#\/))))
                              (if _%$e255649%_
                                  ((lambda (_%x255652%_)
                                     (let ((__tmp256833
                                            (substring
                                             _%idstr255647%_
                                             '0
                                             _%x255652%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp256833)))
                                   _%$e255649%_)
                                  '#f)))
                           (_%rt255657%_
                            (let ((__tmp256834
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp256834 _%ctx255560%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path255631%_))
                      (gxc#with-output-to-scheme-file
                       _%path255631%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude255643%_))
                         (if _%pkg255655%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg255655%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns255645%_))
                         (newline)
                         (pretty-print _%code255629%_)
                         (if _%rt255657%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt255657%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi255563%_
                  (lambda (_%part255568%_)
                    (let* ((_%part255569255582%_ _%part255568%_)
                           (_%E255571255586%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part255569255582%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K255572255598%_
                            (lambda (_%code255589%_
                                     _%n255590%_
                                     _%phi255591%_
                                     _%phi-ctx255592%_)
                              (let ((_%code255596%_
                                     (let ((__tmp256835
                                            (lambda ()
                                              (let ((__tmp256836
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code255589%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp256836
                                                 gx#current-expander-phi
                                                 _%phi255591%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp256835
                                        gx#current-expander-context
                                        _%phi-ctx255592%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx255560%_
                                  _%n255590%_
                                  '".scm")
                                 _%code255596%_
                                 '#t)))))
                      (if (pair? _%part255569255582%_)
                          (let ((_%hd255573255601%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part255569255582%_)))
                                (_%tl255574255603%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part255569255582%_))))
                            (let ((_%phi-ctx255606%_ _%hd255573255601%_))
                              (if (pair? _%tl255574255603%_)
                                  (let ((_%hd255575255608%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl255574255603%_)))
                                        (_%tl255576255610%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl255574255603%_))))
                                    (let ((_%phi255613%_ _%hd255575255608%_))
                                      (if (pair? _%tl255576255610%_)
                                          (let ((_%hd255577255615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl255576255610%_)))
                                                (_%tl255578255617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl255576255610%_))))
                                            (let ((_%n255620%_
                                                   _%hd255577255615%_))
                                              (if (pair? _%tl255578255617%_)
                                                  (let ((_%hd255579255622%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl255578255617%_)))
                                                        (_%tl255580255624%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl255578255617%_))))
                                                    (let ((_%code255627%_
                                                           _%hd255579255622%_))
                                                      (if (null? _%tl255580255624%_)
                                                          (_%K255572255598%_
                                                           _%code255627%_
                                                           _%n255620%_
                                                           _%phi255613%_
                                                           _%phi-ctx255606%_)
                                                          (_%E255571255586%_))))
                                                  (_%E255571255586%_))))
                                          (_%E255571255586%_))))
                                  (_%E255571255586%_))))
                          (_%E255571255586%_))))))
          (let ((_g256837_ (gxc#generate-meta-code _%ctx255560%_)))
            (begin
              (let ((_g256838_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g256837_)
                           (##values-length _g256837_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g256838_ 2)))
                    (error "Context expects 2 values" _g256838_)))
              (let ((_%ssi-code255565%_
                     (let () (declare (not safe)) (##values-ref _g256837_ 0)))
                    (_%phi-code255566%_
                     (let () (declare (not safe)) (##values-ref _g256837_ 1))))
                (begin
                  (_%compile-ssi255562%_ _%ssi-code255565%_)
                  (for-each _%compile-phi255563%_ _%phi-code255566%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx255542%_)
        (let* ((_%path255544%_
                (gxc#compile-output-file _%ctx255542%_ '#f '".ssxi.ss"))
               (_%code255546%_
                (let ((__tmp256839
                       (##structure-ref
                        _%ctx255542%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp256839)))
               (_%idstr255548%_
                (symbol->string
                 (##structure-ref
                  _%ctx255542%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg255556%_
                (let ((_%$e255550%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr255548%_ '#\/))))
                  (if _%$e255550%_
                      ((lambda (_%x255553%_)
                         (let ((__tmp256840
                                (substring _%idstr255548%_ '0 _%x255553%_)))
                           (declare (not safe))
                           (##string->symbol __tmp256840)))
                       _%$e255550%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path255544%_))
          (gxc#with-output-to-scheme-file
           _%path255544%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg255556%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg255556%_))
                 '#!void)
             (newline)
             (pretty-print _%code255546%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx255535%_)
        (let* ((_%state255537%_
                (let ((__obj256708
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj256708 _%ctx255535%_))
                  __obj256708))
               (_%ssi-code255539%_
                (let ((__tmp256841
                       (##structure-ref
                        _%ctx255535%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state255537%_
                   __tmp256841))))
          (values _%ssi-code255539%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state255537%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx255527%_)
        (let* ((_%lifts255529%_ (box '()))
               (__tmp256842
                (lambda ()
                  (let ((__tmp256844
                         (lambda ()
                           (let ((_%code255533%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx255527%_))))
                             (if (null? (unbox _%lifts255529%_))
                                 _%code255533%_
                                 (cons 'begin
                                       (let ((__tmp256846
                                              (cons _%code255533%_ '()))
                                             (__tmp256845
                                              (reverse (unbox _%lifts255529%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp256846
                                          __tmp256845)))))))
                        (__tmp256843
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp256844
                     gxc#current-compile-marks
                     __tmp256843)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp256842
           gxc#current-compile-lift
           _%lifts255529%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx255523%_)
        (let ((_%modules255525%_ (box '())))
          (let ((__tmp256847
                 (##structure-ref _%ctx255523%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules255525%_ __tmp256847))
          (reverse (unbox _%modules255525%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path255503%_ _%code255504%_ _%phi?255505%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path255503%_))
        (gxc#with-output-to-scheme-file
         _%path255503%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp256848
                                           (if _%phi?255505%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp256848)))))))
           (pretty-print _%code255504%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it255509%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path255503%_ _%phi?255505%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp256849
                         (cons 'compile-file (cons _%path255503%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it255509%_ __tmp256849))
                  (_%compile-it255509%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path255514%_ _%code255515%_)
        (let ((_%phi?255517%_ '#f))
          (gxc#compile-scm-file__%
           _%path255514%_
           _%code255515%_
           _%phi?255517%_))))
    (define gxc#compile-scm-file
      (lambda _g256850_
        (let ((_g256851_ (let () (declare (not safe)) (##length _g256850_))))
          (cond ((let () (declare (not safe)) (##fx= _g256851_ 2))
                 (apply gxc#compile-scm-file__0 _g256850_))
                ((let () (declare (not safe)) (##fx= _g256851_ 3))
                 (apply gxc#compile-scm-file__% _g256850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g256850_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?255404%_)
        (let _%lp255406%_ ((_%rest255408%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts255409%_ '()))
          (let* ((_%rest255410255430%_ _%rest255408%_)
                 (_%else255414255438%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts255409%_)))
                        (reverse _%opts255409%_)))))
            (let ((_%K255424255481%_
                   (lambda (_%rest255479%_)
                     (_%lp255406%_ _%rest255479%_ _%opts255409%_)))
                  (_%K255419255463%_
                   (lambda (_%rest255461%_)
                     (_%lp255406%_ _%rest255461%_ _%opts255409%_)))
                  (_%K255416255445%_
                   (lambda (_%rest255442%_ _%opt255443%_)
                     (_%lp255406%_
                      _%rest255442%_
                      (cons _%opt255443%_ _%opts255409%_)))))
              (if (pair? _%rest255410255430%_)
                  (let ((_%tl255426255486%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest255410255430%_)))
                        (_%hd255425255484%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest255410255430%_))))
                    (if (equal? _%hd255425255484%_ '"-cc-options")
                        (if (pair? _%tl255426255486%_)
                            (let* ((_%tl255428255489%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl255426255486%_)))
                                   (_%rest255492%_ _%tl255428255489%_))
                              (_%K255424255481%_ _%rest255492%_))
                            (let ((_%opt255453%_ _%hd255425255484%_)
                                  (_%rest255455%_ _%tl255426255486%_))
                              (_%K255416255445%_
                               _%rest255455%_
                               _%opt255453%_)))
                        (if (equal? _%hd255425255484%_ '"-ld-options")
                            (if (pair? _%tl255426255486%_)
                                (let* ((_%tl255423255471%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl255426255486%_)))
                                       (_%rest255474%_ _%tl255423255471%_))
                                  (_%K255419255463%_ _%rest255474%_))
                                (let ((_%opt255453%_ _%hd255425255484%_)
                                      (_%rest255455%_ _%tl255426255486%_))
                                  (_%K255416255445%_
                                   _%rest255455%_
                                   _%opt255453%_)))
                            (let ((_%opt255453%_ _%hd255425255484%_)
                                  (_%rest255455%_ _%tl255426255486%_))
                              (_%K255416255445%_
                               _%rest255455%_
                               _%opt255453%_)))))
                  (_%else255414255438%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?255498%_ '#f)) (gxc#gsc-link-options__% _%phi?255498%_))))
    (define gxc#gsc-link-options
      (lambda _g256852_
        (let ((_g256853_ (let () (declare (not safe)) (##length _g256852_))))
          (cond ((let () (declare (not safe)) (##fx= _g256853_ 0))
                 (apply gxc#gsc-link-options__0 _g256852_))
                ((let () (declare (not safe)) (##fx= _g256853_ 1))
                 (apply gxc#gsc-link-options__% _g256852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g256852_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords255254%_ _%static?255250255255%_ _%phi?255256%_)
        (let ((_%static?255258%_
               (if (eq? _%static?255250255255%_ absent-value)
                   '#f
                   _%static?255250255255%_)))
          (if _%phi?255256%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp255260%_ ((_%rest255262%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts255263%_ '()))
                (let* ((_%rest255264255290%_ _%rest255262%_)
                       (_%else255269255298%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts255263%_)))
                              (reverse! _%opts255263%_)))))
                  (let ((_%K255284255361%_
                         (lambda (_%rest255358%_ _%opt255359%_)
                           (if _%static?255258%_
                               (_%lp255260%_
                                _%rest255358%_
                                (cons _%opt255359%_
                                      (cons '"-cc-options" _%opts255263%_)))
                               (_%lp255260%_ _%rest255358%_ _%opts255263%_))))
                        (_%K255279255338%_
                         (lambda (_%rest255335%_ _%opt255336%_)
                           (_%lp255260%_
                            _%rest255335%_
                            (cons _%opt255336%_
                                  (cons '"-cc-options" _%opts255263%_)))))
                        (_%K255274255318%_
                         (lambda (_%rest255316%_)
                           (_%lp255260%_ _%rest255316%_ _%opts255263%_)))
                        (_%K255271255304%_
                         (lambda (_%rest255302%_)
                           (_%lp255260%_ _%rest255302%_ _%opts255263%_))))
                    (if (pair? _%rest255264255290%_)
                        (let ((_%tl255286255366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest255264255290%_)))
                              (_%hd255285255364%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest255264255290%_))))
                          (if (equal? _%hd255285255364%_ '"-cc-options")
                              (if (pair? _%tl255286255366%_)
                                  (let ((_%tl255288255371%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl255286255366%_)))
                                        (_%hd255287255369%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl255286255366%_))))
                                    (if (equal? _%hd255287255369%_ '"-Bstatic")
                                        (let ((_%opt255374%_
                                               _%hd255287255369%_)
                                              (_%rest255376%_
                                               _%tl255288255371%_))
                                          (_%K255284255361%_
                                           _%rest255376%_
                                           _%opt255374%_))
                                        (let ((_%opt255351%_
                                               _%hd255287255369%_)
                                              (_%rest255353%_
                                               _%tl255288255371%_))
                                          (_%K255279255338%_
                                           _%rest255353%_
                                           _%opt255351%_))))
                                  (let ((_%rest255310%_ _%tl255286255366%_))
                                    (_%K255271255304%_ _%rest255310%_)))
                              (if (equal? _%hd255285255364%_ '"-ld-options")
                                  (if (pair? _%tl255286255366%_)
                                      (let* ((_%tl255278255326%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl255286255366%_)))
                                             (_%rest255329%_
                                              _%tl255278255326%_))
                                        (_%K255274255318%_ _%rest255329%_))
                                      (let ((_%rest255310%_
                                             _%tl255286255366%_))
                                        (_%K255271255304%_ _%rest255310%_)))
                                  (let ((_%rest255310%_ _%tl255286255366%_))
                                    (_%K255271255304%_ _%rest255310%_)))))
                        (_%else255269255298%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords255381%_ _%static?255250255382%_)
        (let ((_%phi?255384%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords255381%_
           _%static?255250255382%_
           _%phi?255384%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g256854_
        (let ((_g256855_ (let () (declare (not safe)) (##length _g256854_))))
          (cond ((let () (declare (not safe)) (##fx= _g256855_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g256854_))
                ((let () (declare (not safe)) (##fx= _g256855_ 3))
                 (apply gxc#gsc-cc-options__%__% _g256854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g256854_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords255393%_ . _%args255394%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords255393%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords255393%_
                  'static:
                  absent-value))
               _%args255394%_)))
    (define gxc#gsc-cc-options
      (lambda _%args255251255400%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args255251255400%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords255100%_ _%static?255096255101%_ _%phi?255102%_)
        (let ((_%static?255104%_
               (if (eq? _%static?255096255101%_ absent-value)
                   '#f
                   _%static?255096255101%_)))
          (if _%phi?255102%_
              '()
              (let _%lp255106%_ ((_%rest255108%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts255109%_ '()))
                (let* ((_%rest255110255136%_ _%rest255108%_)
                       (_%else255115255144%_
                        (lambda () (reverse! _%opts255109%_))))
                  (let ((_%K255130255207%_
                         (lambda (_%rest255204%_ _%opt255205%_)
                           (if _%static?255104%_
                               (_%lp255106%_
                                _%rest255204%_
                                (cons _%opt255205%_
                                      (cons '"-ld-options" _%opts255109%_)))
                               (_%lp255106%_ _%rest255204%_ _%opts255109%_))))
                        (_%K255125255184%_
                         (lambda (_%rest255181%_ _%opt255182%_)
                           (_%lp255106%_
                            _%rest255181%_
                            (cons _%opt255182%_
                                  (cons '"-ld-options" _%opts255109%_)))))
                        (_%K255120255164%_
                         (lambda (_%rest255162%_)
                           (_%lp255106%_ _%rest255162%_ _%opts255109%_)))
                        (_%K255117255150%_
                         (lambda (_%rest255148%_)
                           (_%lp255106%_ _%rest255148%_ _%opts255109%_))))
                    (if (pair? _%rest255110255136%_)
                        (let ((_%tl255132255212%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest255110255136%_)))
                              (_%hd255131255210%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest255110255136%_))))
                          (if (equal? _%hd255131255210%_ '"-ld-options")
                              (if (pair? _%tl255132255212%_)
                                  (let ((_%tl255134255217%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl255132255212%_)))
                                        (_%hd255133255215%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl255132255212%_))))
                                    (if (equal? _%hd255133255215%_ '"-static")
                                        (let ((_%opt255220%_
                                               _%hd255133255215%_)
                                              (_%rest255222%_
                                               _%tl255134255217%_))
                                          (_%K255130255207%_
                                           _%rest255222%_
                                           _%opt255220%_))
                                        (let ((_%opt255197%_
                                               _%hd255133255215%_)
                                              (_%rest255199%_
                                               _%tl255134255217%_))
                                          (_%K255125255184%_
                                           _%rest255199%_
                                           _%opt255197%_))))
                                  (let ((_%rest255156%_ _%tl255132255212%_))
                                    (_%K255117255150%_ _%rest255156%_)))
                              (if (equal? _%hd255131255210%_ '"-cc-options")
                                  (if (pair? _%tl255132255212%_)
                                      (let* ((_%tl255124255172%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl255132255212%_)))
                                             (_%rest255175%_
                                              _%tl255124255172%_))
                                        (_%K255120255164%_ _%rest255175%_))
                                      (let ((_%rest255156%_
                                             _%tl255132255212%_))
                                        (_%K255117255150%_ _%rest255156%_)))
                                  (let ((_%rest255156%_ _%tl255132255212%_))
                                    (_%K255117255150%_ _%rest255156%_)))))
                        (_%else255115255144%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords255227%_ _%static?255096255228%_)
        (let ((_%phi?255230%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords255227%_
           _%static?255096255228%_
           _%phi?255230%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g256856_
        (let ((_g256857_ (let () (declare (not safe)) (##length _g256856_))))
          (cond ((let () (declare (not safe)) (##fx= _g256857_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g256856_))
                ((let () (declare (not safe)) (##fx= _g256857_ 3))
                 (apply gxc#gsc-ld-options__%__% _g256856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g256856_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords255239%_ . _%args255240%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords255239%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords255239%_
                  'static:
                  absent-value))
               _%args255240%_)))
    (define gxc#gsc-ld-options
      (lambda _%args255097255246%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args255097255246%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir255091%_)
        (let ((_%user-staticdir255093%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir255091%_
                       '" -I "
                       _%user-staticdir255093%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp255003%_ ((_%rest255005%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts255006%_ '()))
          (let* ((_%rest255007255027%_ _%rest255005%_)
                 (_%else255011255035%_ (lambda () _%opts255006%_)))
            (let ((_%K255021255078%_
                   (lambda (_%rest255076%_)
                     (_%lp255003%_ _%rest255076%_ _%opts255006%_)))
                  (_%K255016255056%_
                   (lambda (_%rest255053%_ _%opt255054%_)
                     (_%lp255003%_
                      _%rest255053%_
                      (let ((__tmp256858
                             (let ((__tmp256859
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt255054%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp256859))))
                        (declare (not safe))
                        (##append _%opts255006%_ __tmp256858)))))
                  (_%K255013255041%_
                   (lambda (_%rest255039%_)
                     (_%lp255003%_ _%rest255039%_ _%opts255006%_))))
              (if (pair? _%rest255007255027%_)
                  (let ((_%tl255023255083%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest255007255027%_)))
                        (_%hd255022255081%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest255007255027%_))))
                    (if (equal? _%hd255022255081%_ '"-cc-options")
                        (if (pair? _%tl255023255083%_)
                            (let* ((_%tl255025255086%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl255023255083%_)))
                                   (_%rest255089%_ _%tl255025255086%_))
                              (_%K255021255078%_ _%rest255089%_))
                            (let ((_%rest255047%_ _%tl255023255083%_))
                              (_%K255013255041%_ _%rest255047%_)))
                        (if (equal? _%hd255022255081%_ '"-ld-options")
                            (if (pair? _%tl255023255083%_)
                                (let ((_%tl255020255066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl255023255083%_)))
                                      (_%hd255019255064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl255023255083%_))))
                                  (let ((_%opt255069%_ _%hd255019255064%_)
                                        (_%rest255071%_ _%tl255020255066%_))
                                    (_%K255016255056%_
                                     _%rest255071%_
                                     _%opt255069%_)))
                                (let ((_%rest255047%_ _%tl255023255083%_))
                                  (_%K255013255041%_ _%rest255047%_)))
                            (let ((_%rest255047%_ _%tl255023255083%_))
                              (_%K255013255041%_ _%rest255047%_)))))
                  (_%else255011255035%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str255000%_)
        (not (let () (declare (not safe)) (string-empty? _%str255000%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path254993%_ _%phi?254994%_)
        (let ((_%gsc-link-opts254996%_
               (gxc#gsc-link-options__% _%phi?254994%_))
              (_%gsc-cc-opts254997%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?254994%_))
              (_%gsc-ld-opts254998%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?254994%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp256860
                  (let ((__tmp256861
                         (let ((__tmp256862 (cons _%path254993%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp256862
                            _%gsc-link-opts254996%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp256861 _%gsc-ld-opts254998%_))))
             (declare (not safe))
             (foldr__0 cons __tmp256860 _%gsc-cc-opts254997%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx254959%_ _%n254960%_ _%ext254961%_)
        (letrec ((_%module-relative-path254963%_
                  (lambda (_%ctx254991%_)
                    (path-strip-directory
                     (let ((__tmp256863
                            (##structure-ref
                             _%ctx254991%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp256863)))))
                 (_%module-source-directory254964%_
                  (lambda (_%ctx254987%_)
                    (path-directory
                     (let ((_%mpath254989%_
                            (##structure-ref
                             _%ctx254987%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath254989%_)
                           _%mpath254989%_
                           (last _%mpath254989%_))))))
                 (_%section-string254965%_
                  (lambda (_%n254981%_)
                    (if (number? _%n254981%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n254981%_))
                        (if (symbol? _%n254981%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n254981%_))
                            (if (string? _%n254981%_)
                                _%n254981%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n254981%_)))))))
                 (_%file-name254966%_
                  (lambda (_%path254979%_)
                    (if _%n254960%_
                        (string-append
                         _%path254979%_
                         '"~"
                         (_%section-string254965%_ _%n254960%_)
                         _%ext254961%_)
                        (string-append _%path254979%_ _%ext254961%_))))
                 (_%file-path254967%_
                  (lambda ()
                    (let ((_%$e254973%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e254973%_
                          ((lambda (_%outdir254976%_)
                             (path-expand
                              (_%file-name254966%_
                               (let ((__tmp256864
                                      (##structure-ref
                                       _%ctx254959%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp256864)))
                              _%outdir254976%_))
                           _%$e254973%_)
                          (path-expand
                           (_%file-name254966%_
                            (_%module-relative-path254963%_ _%ctx254959%_))
                           (_%module-source-directory254964%_
                            _%ctx254959%_)))))))
          (let ((_%path254969%_ (_%file-path254967%_)))
            (let ((__tmp256865
                   (lambda ()
                     (let ((__tmp256866 (path-directory _%path254969%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp256866)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp256865))
            _%path254969%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx254940%_)
        (letrec ((_%file-name254942%_
                  (lambda (_%id254957%_)
                    (let ((__tmp256867 (gxc#static-module-name _%id254957%_)))
                      (declare (not safe))
                      (##string-append __tmp256867 '".scm"))))
                 (_%file-path254943%_
                  (lambda ()
                    (let* ((_%file254949%_
                            (_%file-name254942%_
                             (##structure-ref
                              _%ctx254940%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e254951%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e254951%_
                          ((lambda (_%outdir254954%_)
                             (path-expand
                              _%file254949%_
                              (path-expand '"static" _%outdir254954%_)))
                           _%$e254951%_)
                          (path-expand _%file254949%_ '"static"))))))
          (let ((_%path254945%_ (_%file-path254943%_)))
            (let ((__tmp256868
                   (lambda ()
                     (let ((__tmp256869 (path-directory _%path254945%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp256869)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp256868))
            _%path254945%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx254933%_ _%opts254934%_)
        (let ((_%$e254936%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts254934%_))))
          (if _%$e254936%_
              _%$e254936%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx254933%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr254923%_)
        (if (string? _%idstr254923%_)
            (let* ((_%str254926%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr254923%_)))
                   (_%strs254928%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str254926%_ '#\/))))
              (declare (not safe))
              (string-join _%strs254928%_ '"__"))
            (if (symbol? _%idstr254923%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr254923%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr254923%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp256870
               (let ((__tmp256871 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp256871 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp256870))))
    (define gxc#invoke__%
      (lambda (_%@@keywords254889%_
               _%stdout-redirection254885254890%_
               _%stderr-redirection254886254891%_
               _%program254892%_
               _%args254893%_)
        (let* ((_%stdout-redirection254895%_
                (if (eq? _%stdout-redirection254885254890%_ absent-value)
                    '#f
                    _%stdout-redirection254885254890%_))
               (_%stderr-redirection254897%_
                (if (eq? _%stderr-redirection254886254891%_ absent-value)
                    '#f
                    _%stderr-redirection254886254891%_)))
          (let ((__tmp256872 (cons _%program254892%_ _%args254893%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp256872))
          (let* ((_%proc254899%_
                  (open-process
                   (cons 'path:
                         (cons _%program254892%_
                               (cons 'arguments:
                                     (cons _%args254893%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection254895%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection254897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output254904%_
                  (if (or _%stdout-redirection254895%_
                          _%stderr-redirection254897%_)
                      (read-line _%proc254899%_ '#f)
                      '#f))
                 (_%status254907%_ (process-status _%proc254899%_)))
            (let () (declare (not safe)) (##close-port _%proc254899%_))
            (if (zero? _%status254907%_)
                '#!void
                (begin
                  (display _%output254904%_)
                  (let ((__tmp256873 (cons _%program254892%_ _%args254893%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp256873
                     _%status254907%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords254912%_ . _%args254913%_)
        (apply gxc#invoke__%
               _%@@keywords254912%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords254912%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords254912%_
                  'stderr-redirection:
                  absent-value))
               _%args254913%_)))
    (define gxc#invoke
      (lambda _%args254887254919%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args254887254919%_)))))
