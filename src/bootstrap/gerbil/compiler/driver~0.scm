(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1781119062)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda () (inexact->exact (floor (time->seconds (current-time))))))
    (define gxc#compile-timestamp-nanos
      (lambda () (time->seconds (current-time))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path228558%_ _%fun228559%_)
        (with-output-to-file
         (cons 'path: (cons _%path228558%_ gxc#scheme-file-settings))
         _%fun228559%_)))
    (define gxc#+gerbil-gsc+ '#f)
    (define gxc#gerbil-gsc
      (lambda ()
        (if gxc#+gerbil-gsc+
            '#!void
            (set! gxc#+gerbil-gsc+
                  (getenv '"GERBIL_GSC" gxc#default-gerbil-gsc)))
        gxc#+gerbil-gsc+))
    (define gxc#+gerbil-gcc+ '#f)
    (define gxc#gerbil-gcc
      (lambda ()
        (if gxc#+gerbil-gcc+
            '#!void
            (set! gxc#+gerbil-gcc+
                  (getenv '"GERBIL_GCC" gxc#default-gerbil-gcc)))
        gxc#+gerbil-gcc+))
    (define gxc#+gerbil-ar+ '#f)
    (define gxc#gerbil-ar
      (lambda ()
        (if gxc#+gerbil-ar+
            '#!void
            (set! gxc#+gerbil-ar+ (getenv '"GERBIL_AR" gxc#default-gerbil-ar)))
        gxc#+gerbil-ar+))
    (define gxc#gerbil-rpath
      (lambda (_%gerbil-libdir228553%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir228553%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path228551%_)
        (string-append '"(include " (object->string _%path228551%_) '")")))
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
      (lambda (_%dir228549%_) (delete-file-or-directory _%dir228549%_ '#t)))
    (define gxc#compile-module
      (let ((_%$%opt-lambda228490228539%_
             (lambda (_%srcpath228492%_ _%opts228493%_)
               (if (string? _%srcpath228492%_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _%srcpath228492%_))
               (let* ((_%outdir228495%_ (pgetq 'output-dir: _%opts228493%_))
                      (_%invoke-gsc?228497%_
                       (pgetq 'invoke-gsc: _%opts228493%_))
                      (_%target228502%_
                       (let ((_%$e228499%_ (pgetq 'target: _%opts228493%_)))
                         (if _%$e228499%_ _%$e228499%_ 'C)))
                      (_%gsc-options228507%_
                       (append (cons '"-target"
                                     (cons (symbol->string _%target228502%_)
                                           '()))
                               (let ((_%$e228504%_
                                      (pgetq 'gsc-options: _%opts228493%_)))
                                 (if _%$e228504%_ _%$e228504%_ '()))))
                      (_%keep-scm?228509%_ (pgetq 'keep-scm: _%opts228493%_))
                      (_%verbosity228511%_ (pgetq 'verbose: _%opts228493%_))
                      (_%optimize228513%_ (pgetq 'optimize: _%opts228493%_))
                      (_%debug228515%_ (pgetq 'debug: _%opts228493%_))
                      (_%gen-ssxi228517%_
                       (pgetq 'generate-ssxi: _%opts228493%_))
                      (_%parallel?228519%_ (pgetq 'parallel: _%opts228493%_)))
                 (if _%outdir228495%_
                     (with-lock
                      gxc#+driver-mutex+
                      (lambda () (create-directory* _%outdir228495%_)))
                     '#!void)
                 (if _%optimize228513%_
                     (with-lock
                      gxc#+driver-mutex+
                      (lambda () (gxc#optimizer-info-init!)))
                     '#!void)
                 (call-with-parameters
                  (lambda ()
                    (call-with-parameters
                     (lambda ()
                       (call-with-parameters
                        (lambda ()
                          (call-with-parameters
                           (lambda ()
                             (call-with-parameters
                              (lambda ()
                                (call-with-parameters
                                 (lambda ()
                                   (call-with-parameters
                                    (lambda ()
                                      (call-with-parameters
                                       (lambda ()
                                         (call-with-parameters
                                          (lambda ()
                                            (call-with-parameters
                                             (lambda ()
                                               (call-with-parameters
                                                (lambda ()
                                                  (call-with-parameters
                                                   (lambda ()
                                                     (call-with-parameters
                                                      (lambda ()
                                                        (call-with-parameters
                                                         (lambda ()
                                                           (gxc#verbose
                                                            '"compile "
                                                            _%srcpath228492%_)
                                                           (gxc#compile-top-module
                                                            (with-lock
                                                             gxc#+driver-mutex+
                                                             (lambda ()
                                                               (gx#import-module
                                                                _%srcpath228492%_)))))
                                                         gx#current-expander-compiling?
                                                         '#t))
                                                      gx#current-compilation-target
                                                      _%target228502%_))
                                                   gxc#current-compile-parallel
                                                   _%parallel?228519%_))
                                                gxc#current-compile-identifiers
                                                (gxc#make-bound-identifier-table)))
                                             gxc#current-compile-context
                                             (cons (cons 'compile-module
                                                         (cons _%srcpath228492%_
                                                               '()))
                                                   '())))
                                          gxc#current-compile-timestamp
                                          (gxc#compile-timestamp)))
                                       gxc#current-compile-generate-ssxi
                                       _%gen-ssxi228517%_))
                                    gxc#current-compile-debug
                                    _%debug228515%_))
                                 gxc#current-compile-optimize
                                 _%optimize228513%_))
                              gxc#current-compile-verbose
                              _%verbosity228511%_))
                           gxc#current-compile-keep-scm
                           _%keep-scm?228509%_))
                        gxc#current-compile-gsc-options
                        _%gsc-options228507%_))
                     gxc#current-compile-invoke-gsc
                     _%invoke-gsc?228497%_))
                  gxc#current-compile-output-dir
                  _%outdir228495%_)))))
        (lambda _g228562_
          (let ((_g228563_ (let () (declare (not safe)) (##length _g228562_))))
            (cond ((let () (declare (not safe)) (##fx= _g228563_ 1))
                   (apply (lambda (_%srcpath228542%_)
                            (let ((_%opts228544%_ '()))
                              (_%$%opt-lambda228490228539%_
                               _%srcpath228542%_
                               _%opts228544%_)))
                          _g228562_))
                  ((let () (declare (not safe)) (##fx= _g228563_ 2))
                   (apply _%$%opt-lambda228490228539%_ _g228562_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-module
                    _g228562_)))))))
    (define gxc#compile-exe
      (let ((_%$%opt-lambda228439228481%_
             (lambda (_%srcpath228441%_ _%opts228442%_)
               (if (string? _%srcpath228441%_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _%srcpath228441%_))
               (let* ((_%outdir228444%_ (pgetq 'output-dir: _%opts228442%_))
                      (_%invoke-gsc?228446%_
                       (pgetq 'invoke-gsc: _%opts228442%_))
                      (_%target228451%_
                       (let ((_%$e228448%_ (pgetq 'target: _%opts228442%_)))
                         (if _%$e228448%_ _%$e228448%_ 'C)))
                      (_%gsc-options228456%_
                       (append (cons '"-target"
                                     (cons (symbol->string _%target228451%_)
                                           '()))
                               (let ((_%$e228453%_
                                      (pgetq 'gsc-options: _%opts228442%_)))
                                 (if _%$e228453%_ _%$e228453%_ '()))))
                      (_%keep-scm?228458%_ (pgetq 'keep-scm: _%opts228442%_))
                      (_%verbosity228460%_ (pgetq 'verbose: _%opts228442%_))
                      (_%debug228462%_ (pgetq 'debug: _%opts228442%_))
                      (_%parallel?228464%_ (pgetq 'parallel: _%opts228442%_)))
                 (if _%outdir228444%_
                     (with-lock
                      gxc#+driver-mutex+
                      (lambda () (create-directory* _%outdir228444%_)))
                     '#!void)
                 (call-with-parameters
                  (lambda ()
                    (call-with-parameters
                     (lambda ()
                       (call-with-parameters
                        (lambda ()
                          (call-with-parameters
                           (lambda ()
                             (call-with-parameters
                              (lambda ()
                                (call-with-parameters
                                 (lambda ()
                                   (call-with-parameters
                                    (lambda ()
                                      (call-with-parameters
                                       (lambda ()
                                         (call-with-parameters
                                          (lambda ()
                                            (call-with-parameters
                                             (lambda ()
                                               (call-with-parameters
                                                (lambda ()
                                                  (call-with-parameters
                                                   (lambda ()
                                                     (gxc#verbose
                                                      '"compile exe "
                                                      _%srcpath228441%_)
                                                     (gxc#compile-executable-module
                                                      (with-lock
                                                       gxc#+driver-mutex+
                                                       (lambda ()
                                                         (gx#import-module
                                                          _%srcpath228441%_)))
                                                      _%opts228442%_))
                                                   gx#current-expander-compiling?
                                                   '#t))
                                                gxc#current-compile-parallel
                                                _%parallel?228464%_))
                                             gxc#current-compile-identifiers
                                             (gxc#make-bound-identifier-table)))
                                          gxc#current-compile-context
                                          (cons (cons 'compile-exe
                                                      (cons _%srcpath228441%_
                                                            '()))
                                                '())))
                                       gxc#current-compile-timestamp
                                       (gxc#compile-timestamp)))
                                    gxc#current-compile-debug
                                    _%debug228462%_))
                                 gxc#current-compile-verbose
                                 _%verbosity228460%_))
                              gxc#current-compile-keep-scm
                              _%keep-scm?228458%_))
                           gxc#current-compile-gsc-options
                           _%gsc-options228456%_))
                        gx#current-compilation-target
                        _%target228451%_))
                     gxc#current-compile-invoke-gsc
                     _%invoke-gsc?228446%_))
                  gxc#current-compile-output-dir
                  _%outdir228444%_)))))
        (lambda _g228564_
          (let ((_g228565_ (let () (declare (not safe)) (##length _g228564_))))
            (cond ((let () (declare (not safe)) (##fx= _g228565_ 1))
                   (apply (lambda (_%srcpath228484%_)
                            (let ((_%opts228486%_ '()))
                              (_%$%opt-lambda228439228481%_
                               _%srcpath228484%_
                               _%opts228486%_)))
                          _g228564_))
                  ((let () (declare (not safe)) (##fx= _g228565_ 2))
                   (apply _%$%opt-lambda228439228481%_ _g228564_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe
                    _g228564_)))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx228437%_ _%opts228438%_)
        (if (pgetq 'full-program-optimization: _%opts228438%_)
            (gxc#compile-executable-module/full-program-optimization
             _%ctx228437%_
             _%opts228438%_)
            (gxc#compile-executable-module/separate
             _%ctx228437%_
             _%opts228438%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx228163%_ _%opts228164%_)
        (letrec ((_%generate-stub228166%_
                  (lambda (_%builtin-modules228433%_)
                    (let ((_%mod-main228435%_
                           (gxc#find-runtime-symbol _%ctx228163%_ 'main)))
                      (write (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules228433%_
                                                           '()))
                                               '()))))
                      (write (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main228435%_
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
                                               '()))))
                      (write '(gerbil-main))
                      (newline))))
                 (_%get-libgerbil-ld-opts228167%_
                  (lambda (_%gerbil-libdir228431%_)
                    (call-with-input-file
                     (path-expand '"libgerbil.ldd" _%gerbil-libdir228431%_)
                     read)))
                 (_%replace-extension228168%_
                  (lambda (_%path228428%_ _%ext228429%_)
                    (string-append
                     (path-strip-extension _%path228428%_)
                     _%ext228429%_)))
                 (_%replace-extension-with-c228169%_
                  (lambda (_%path228426%_)
                    (_%replace-extension228168%_ _%path228426%_ '".c")))
                 (_%replace-extension-with-object228170%_
                  (lambda (_%path228424%_)
                    (_%replace-extension228168%_
                     _%path228424%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?228171%_
                  (lambda (_%ctx228422%_)
                    (if (not (_%exclude-module?228173%_ _%ctx228422%_))
                        (not (_%libgerbil-module?228172%_ _%ctx228422%_))
                        '#f)))
                 (_%libgerbil-module?228172%_
                  (lambda (_%ctx228415%_)
                    (let ((_%id-str228417%_
                           (symbol->string
                            (gx#expander-context-id _%ctx228415%_))))
                      (if (not (_%exclude-module?228173%_ _%id-str228417%_))
                          (let ((_%$e228419%_
                                 (string-prefix? '"gerbil/" _%id-str228417%_)))
                            (if _%$e228419%_
                                _%$e228419%_
                                (string-prefix? '"std/" _%id-str228417%_)))
                          '#f))))
                 (_%exclude-module?228173%_
                  (lambda (_%ctx-or-str228411%_)
                    (let ((_%str228413%_
                           (if (string? _%ctx-or-str228411%_)
                               _%ctx-or-str228411%_
                               (symbol->string
                                (gx#expander-context-id
                                 _%ctx-or-str228411%_)))))
                      (string-prefix? '"gerbil/core" _%str228413%_))))
                 (_%not-file-empty?228174%_
                  (lambda (_%path228409%_)
                    (not (gxc#file-empty? _%path228409%_))))
                 (_%fold-libgerbil-runtime-scm228175%_
                  (lambda (_%gerbil-staticdir228402%_ _%libgerbil-scm228403%_)
                    (let ((_%gerbil-runtime-scm228407%_
                           (map (lambda (_%rtm228405%_)
                                  (path-expand
                                   (string-append
                                    (string-join
                                     (string-split _%rtm228405%_ '#\/)
                                     '"__")
                                    '".scm")
                                   _%gerbil-staticdir228402%_))
                                gxc#gerbil-runtime-modules)))
                      (_%remove-duplicates228176%_
                       (append _%gerbil-runtime-scm228407%_
                               _%libgerbil-scm228403%_)))))
                 (_%remove-duplicates228176%_
                  (lambda (_%strlst228362%_)
                    (let _%loop228364%_ ((_%rest228366%_ _%strlst228362%_)
                                         (_%result228367%_ '()))
                      (let* ((_%$%rest228368228376%_ _%rest228366%_)
                             (_%$%E228371228380%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest228368228376%_
                                       '([path . rest])
                                       'else)
                                (void)))
                             (_%$%else228370228384%_
                              (lambda () (reverse! _%result228367%_)))
                             (_%$%K228372228390%_
                              (lambda (_%rest228387%_ _%path228388%_)
                                (if (member _%path228388%_ _%result228367%_)
                                    (_%loop228364%_
                                     _%rest228387%_
                                     _%result228367%_)
                                    (_%loop228364%_
                                     _%rest228387%_
                                     (cons _%path228388%_
                                           _%result228367%_))))))
                        (if (pair? _%$%rest228368228376%_)
                            (let ((_%$%hd228373228393%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest228368228376%_)))
                                  (_%$%tl228374228395%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest228368228376%_))))
                              (let* ((_%path228398%_ _%$%hd228373228393%_)
                                     (_%rest228400%_ _%$%tl228374228395%_))
                                (_%$%K228372228390%_
                                 _%rest228400%_
                                 _%path228398%_)))
                            (_%$%else228370228384%_))))))
                 (_%compile-stub228177%_
                  (lambda (_%output-scm228184%_ _%output-bin228185%_)
                    (let* ((_%gerbil-home228187%_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_%gerbil-libdir228189%_
                            (path-expand '"lib" _%gerbil-home228187%_))
                           (_%gerbil-staticdir228191%_
                            (path-expand '"static" _%gerbil-libdir228189%_))
                           (_%deps228193%_
                            (gxc#find-runtime-module-deps _%ctx228163%_))
                           (_%libgerbil-deps228195%_
                            (filter _%libgerbil-module?228172%_
                                    _%deps228193%_))
                           (_%libgerbil-scm228197%_
                            (map gxc#find-static-module-file
                                 _%libgerbil-deps228195%_))
                           (_%libgerbil-scm228199%_
                            (_%fold-libgerbil-runtime-scm228175%_
                             _%gerbil-staticdir228191%_
                             _%libgerbil-scm228197%_))
                           (_%libgerbil-c228201%_
                            (map _%replace-extension-with-c228169%_
                                 _%libgerbil-scm228199%_))
                           (_%libgerbil-o228203%_
                            (map _%replace-extension-with-object228170%_
                                 _%libgerbil-scm228199%_))
                           (_%src-deps228205%_
                            (filter _%userlib-module?228171%_ _%deps228193%_))
                           (_%src-deps-scm228207%_
                            (map gxc#find-static-module-file
                                 _%src-deps228205%_))
                           (_%src-deps-scm228209%_
                            (filter _%not-file-empty?228174%_
                                    _%src-deps-scm228207%_))
                           (_%src-deps-scm228211%_
                            (map path-expand _%src-deps-scm228209%_))
                           (_%src-deps-c228213%_
                            (map _%replace-extension-with-c228169%_
                                 _%src-deps-scm228211%_))
                           (_%src-deps-o228215%_
                            (map _%replace-extension-with-object228170%_
                                 _%src-deps-scm228211%_))
                           (_%src-bin-scm228217%_
                            (gxc#find-static-module-file _%ctx228163%_))
                           (_%src-bin-scm228219%_
                            (path-expand _%src-bin-scm228217%_))
                           (_%src-bin-c228221%_
                            (_%replace-extension-with-c228169%_
                             _%src-bin-scm228219%_))
                           (_%src-bin-o228223%_
                            (_%replace-extension-with-object228170%_
                             _%src-bin-scm228219%_))
                           (_%output-bin228225%_
                            (path-expand _%output-bin228185%_))
                           (_%output-scm228227%_
                            (path-expand _%output-scm228184%_))
                           (_%output-c228229%_
                            (_%replace-extension-with-c228169%_
                             _%output-scm228227%_))
                           (_%output-o228231%_
                            (_%replace-extension-with-object228170%_
                             _%output-scm228227%_))
                           (_%output_-c228233%_
                            (_%replace-extension228168%_
                             _%output-scm228227%_
                             '"_.c"))
                           (_%output_-o228235%_
                            (_%replace-extension228168%_
                             _%output-scm228227%_
                             (string-append '"_" gxc#compiler-obj-suffix)))
                           (_%gsc-link-opts228237%_ (gxc#gsc-link-options))
                           (_%gsc-cc-opts228239%_
                            (gxc#gsc-cc-options 'static: '#t))
                           (_%gsc-static-opts228241%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir228191%_))
                           (_%output-ld-opts228243%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts228245%_
                            (_%get-libgerbil-ld-opts228167%_
                             _%gerbil-libdir228189%_))
                           (_%rpath228247%_
                            (gxc#gerbil-rpath _%gerbil-libdir228189%_))
                           (_%builtin-modules228251%_
                            (_%remove-duplicates228176%_
                             (append gxc#gerbil-runtime-modules
                                     (map (lambda (_%mod228249%_)
                                            (symbol->string
                                             (gx#expander-context-id
                                              _%mod228249%_)))
                                          (cons _%ctx228163%_
                                                _%deps228193%_))))))
                      (letrec ((_%compile-obj228254%_
                                (lambda (_%scm-path228261%_ _%c-path228262%_)
                                  (let* ((_%o-path228264%_
                                          (_%replace-extension228168%_
                                           _%c-path228262%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock228266%_
                                          (string-append
                                           _%o-path228264%_
                                           '".lock"))
                                         (_%locked228268%_ '#f)
                                         (_%unlock228271%_
                                          (lambda ()
                                            (close-port _%locked228268%_)
                                            (delete-file _%lock228266%_))))
                                    (let _%retry228274%_ ()
                                      (if (file-exists? _%lock228266%_)
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry228274%_))
                                          (begin
                                            (set! _%locked228268%_
                                                  (let* ((_%handler228277%_
                                                          false)
                                                         (_%thunk228281%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock228266%_
                                 (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (procedure?
                                                         _%handler228277%_)
                                                        (let ((_%handler228286%_
                                                               _%handler228277%_))
                                                          (if (procedure?
                                                               _%thunk228281%_)
                                                              (let ((_%thunk228342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%thunk228281%_))
                        (__with-catch _%handler228286%_ _%thunk228342%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/compiler/driver
                         'contract:
                         'procedure?
                         'value:
                         _%thunk228281%_)
                        (void))))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/driver
                   'contract:
                   'procedure?
                   'value:
                   _%handler228277%_)
                  (void)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if _%locked228268%_
                                                '#!void
                                                (_%retry228274%_)))))
                                    (with-unwind-protect
                                     (lambda ()
                                       (if (or (not (file-exists?
                                                     _%o-path228264%_))
                                               (not _%scm-path228261%_)
                                               (file-newer?
                                                _%scm-path228261%_
                                                _%o-path228264%_))
                                           (let ((_%gsc-cc-opts228359%_
                                                  (gxc#gsc-cc-options
                                                   'static:
                                                   '#f)))
                                             (gxc#invoke
                                              (gxc#gerbil-gsc)
                                              (cons '"-obj"
                                                    (foldr cons
                                                           (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%c-path228262%_ '())
                          _%gsc-static-opts228241%_)
                   _%gsc-cc-opts228359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '#!void))
                                     (lambda () (_%unlock228271%_)))))))
                        (with-lock
                         gxc#+driver-mutex+
                         (lambda ()
                           (create-directory*
                            (path-directory _%output-bin228225%_))))
                        (gxc#with-output-to-scheme-file
                         _%output-scm228227%_
                         (lambda ()
                           (_%generate-stub228166%_
                            _%builtin-modules228251%_)))
                        (if (gxc#current-compile-invoke-gsc)
                            (let ((_%compile-it228259%_
                                   (lambda ()
                                     (gxc#invoke
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (foldr cons
                                                   (foldr cons
                                                          (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm228219%_
                               (cons _%output-scm228227%_ '()))
                         _%src-deps-scm228211%_)
                  _%libgerbil-c228201%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%gsc-link-opts228237%_)))
                                     (for-each
                                      _%compile-obj228254%_
                                      (foldr cons
                                             (cons _%src-bin-scm228219%_
                                                   (cons _%output-scm228227%_
                                                         (cons '#f '())))
                                             _%src-deps-scm228211%_)
                                      (foldr cons
                                             (cons _%src-bin-c228221%_
                                                   (cons _%output-c228229%_
                                                         (cons _%output_-c228233%_
                                                               '())))
                                             _%src-deps-c228213%_))
                                     (gxc#invoke
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin228225%_
                                                        (foldr cons
                                                               (cons _%src-bin-o228223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o228231%_
                                   (cons _%output_-o228235%_
                                         (foldr cons
                                                (foldr cons
                                                       (foldr cons
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir228189%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts228245%_)))
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath228247%_ '())
                          '()))
               _%output-ld-opts228243%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%libgerbil-o228203%_))))
                       _%src-deps-o228215%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (for-each
                                      delete-file
                                      (cons _%output-c228229%_
                                            (cons _%output_-c228233%_
                                                  (cons _%output-o228231%_
                                                        (cons _%output_-o228235%_
                                                              '()))))))))
                              (if (gxc#current-compile-parallel)
                                  (gxc#add-compile-job! _%compile-it228259%_)
                                  (_%compile-it228259%_)))
                            '#!void))))))
          (let* ((_%output-bin228179%_
                  (gxc#compile-exe-output-file _%ctx228163%_ _%opts228164%_))
                 (_%output-scm228181%_
                  (string-append _%output-bin228179%_ '"__exe.scm")))
            (_%compile-stub228177%_
             _%output-scm228181%_
             _%output-bin228179%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx227985%_ _%opts227986%_)
        (letrec ((_%reset-declare227988%_
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
                 (_%generate-stub227989%_
                  (lambda (_%deps228154%_)
                    (let ((_%mod-main228156%_
                           (gxc#find-runtime-symbol _%ctx227985%_ 'main))
                          (_%reset-decl228157%_ (_%reset-declare227988%_))
                          (_%user-decl228158%_ (_%user-declare227990%_)))
                      (for-each
                       (lambda (_%dep228160%_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _%reset-decl228157%_)
                         (newline)
                         (if _%user-decl228158%_
                             (begin (write _%user-decl228158%_) (newline))
                             '#!void)
                         (write (cons 'include (cons _%dep228160%_ '())))
                         (newline))
                       _%deps228154%_)
                      (write (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main228156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                      (write '(gerbil-main))
                      (newline))))
                 (_%user-declare227990%_
                  (lambda ()
                    (let* ((_%gsc-opts228059%_
                            (pgetq 'gsc-options: _%opts227986%_))
                           (_%gsc-prelude228061%_
                            (if _%gsc-opts228059%_
                                (member '"-prelude" _%gsc-opts228059%_)
                                '#f))
                           (_%gsc-prelude228063%_
                            (if _%gsc-prelude228061%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude228061%_)))
                                '#f)))
                      (let _%lp228066%_ ((_%rest228068%_
                                          (cons _%gsc-prelude228063%_ '()))
                                         (_%user-decls228069%_ '()))
                        (let* ((_%$%rest228070228078%_ _%rest228068%_)
                               (_%$%E228073228082%_
                                (lambda ()
                                  (error '"No clause matching"
                                         _%$%rest228070228078%_
                                         '([expr . rest])
                                         'else)
                                  (void)))
                               (_%$%else228072228086%_
                                (lambda ()
                                  (if (null? _%user-decls228069%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls228069%_)))))
                               (_%$%K228074228142%_
                                (lambda (_%rest228089%_ _%expr228090%_)
                                  (let* ((_%$%expr228091228103%_
                                          _%expr228090%_)
                                         (_%$%E228095228107%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%expr228091228103%_
                                                   '(['declare . decls])
                                                   '(['begin . exprs])
                                                   'else)
                                            (void)))
                                         (_%$%else228094228111%_
                                          (lambda ()
                                            (_%lp228066%_
                                             _%rest228089%_
                                             _%user-decls228069%_)))
                                         (_%$%try-match228093228127%_
                                          (lambda ()
                                            (let ((_%$%K228096228117%_
                                                   (lambda (_%exprs228115%_)
                                                     (_%lp228066%_
                                                      (append _%exprs228115%_
                                                              _%rest228089%_)
                                                      _%user-decls228069%_))))
                                              (if (pair? _%$%expr228091228103%_)
                                                  (let ((_%$%hd228097228120%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%expr228091228103%_)))
                                                        (_%$%tl228098228122%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%expr228091228103%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##eq? _%$%hd228097228120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'begin))
                (let ((_%exprs228125%_ _%$%tl228098228122%_))
                  (_%$%K228096228117%_ _%exprs228125%_))
                (_%$%else228094228111%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%else228094228111%_)))))
                                         (_%$%K228099228132%_
                                          (lambda (_%decls228130%_)
                                            (_%lp228066%_
                                             _%rest228089%_
                                             (foldl cons
                                                    _%user-decls228069%_
                                                    _%decls228130%_)))))
                                    (if (pair? _%$%expr228091228103%_)
                                        (let ((_%$%hd228100228135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%expr228091228103%_)))
                                              (_%$%tl228101228137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%expr228091228103%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%$%hd228100228135%_
                                                       'declare))
                                              (let ((_%decls228140%_
                                                     _%$%tl228101228137%_))
                                                (_%$%K228099228132%_
                                                 _%decls228140%_))
                                              (_%$%try-match228093228127%_)))
                                        (_%$%try-match228093228127%_))))))
                          (if (pair? _%$%rest228070228078%_)
                              (let ((_%$%hd228075228145%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest228070228078%_)))
                                    (_%$%tl228076228147%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest228070228078%_))))
                                (let* ((_%expr228150%_ _%$%hd228075228145%_)
                                       (_%rest228152%_ _%$%tl228076228147%_))
                                  (_%$%K228074228142%_
                                   _%rest228152%_
                                   _%expr228150%_)))
                              (_%$%else228072228086%_)))))))
                 (_%compile-stub227991%_
                  (lambda (_%output-scm227998%_ _%output-bin227999%_)
                    (let* ((_%gerbil-home228001%_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_%gerbil-libdir228003%_
                            (path-expand '"lib" _%gerbil-home228001%_))
                           (_%runtime228005%_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_%gambit-sharp228007%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home228001%_))
                           (_%include-gambit-sharp228009%_
                            (gxc#include-source _%gambit-sharp228007%_))
                           (_%bin-scm228011%_
                            (gxc#find-static-module-file _%ctx227985%_))
                           (_%deps228013%_
                            (gxc#find-runtime-module-deps _%ctx227985%_))
                           (_%deps228015%_
                            (map gxc#find-static-module-file _%deps228013%_))
                           (_%deps228020%_
                            (filter (lambda (_%$obj228017%_)
                                      (not (gxc#file-empty? _%$obj228017%_)))
                                    _%deps228015%_))
                           (_%deps228024%_
                            (filter (lambda (_%f228022%_)
                                      (not (member _%f228022%_
                                                   _%runtime228005%_)))
                                    _%deps228020%_))
                           (_%output-base228026%_
                            (string-append
                             (path-strip-extension _%output-scm227998%_)))
                           (_%output-c228028%_
                            (string-append _%output-base228026%_ '".c"))
                           (_%output-o228030%_
                            (string-append
                             _%output-base228026%_
                             gxc#compiler-obj-suffix))
                           (_%output-c_228032%_
                            (string-append _%output-base228026%_ '"_.c"))
                           (_%output-o_228034%_
                            (string-append
                             _%output-base228026%_
                             (string-append '"_" gxc#compiler-obj-suffix)))
                           (_%gsc-link-opts228036%_ (gxc#gsc-link-options))
                           (_%gsc-cc-opts228038%_
                            (gxc#gsc-cc-options 'static: '#t))
                           (_%gsc-static-opts228040%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir228003%_)))
                           (_%output-ld-opts228042%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros228044%_
                            (if (gerbil-runtime-smp?)
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp228009%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp228009%_
                                            '()))))
                           (_%gsc-link-opts228046%_
                            (append _%gsc-link-opts228036%_
                                    _%gsc-gx-macros228044%_))
                           (_%rpath228048%_
                            (gxc#gerbil-rpath _%gerbil-libdir228003%_))
                           (_%default-ld-options228050%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (with-lock
                       gxc#+driver-mutex+
                       (lambda ()
                         (create-directory*
                          (path-directory _%output-bin227999%_))))
                      (gxc#with-output-to-scheme-file
                       _%output-scm227998%_
                       (lambda ()
                         (_%generate-stub227989%_
                          (foldr cons
                                 (foldr cons
                                        (cons _%bin-scm228011%_ '())
                                        _%deps228024%_)
                                 _%runtime228005%_))))
                      (if (gxc#current-compile-invoke-gsc)
                          (let ((_%compile-it228056%_
                                 (lambda ()
                                   (gxc#invoke
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_228032%_
                                                      (foldr cons
                                                             (cons _%output-scm227998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     _%gsc-link-opts228046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (foldr cons
                                                 (foldr cons
                                                        (cons _%output-c228028%_
                                                              (cons _%output-c_228032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%gsc-static-opts228040%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%gsc-cc-opts228038%_)))
                                   (gxc#invoke
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin227999%_
                                                      (cons _%output-o228030%_
                                                            (cons _%output-o_228034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons
                                        (cons '"-L"
                                              (cons _%gerbil-libdir228003%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options228050%_)))
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath228048%_ '())
                                            '()))
                                 _%output-ld-opts228042%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (gxc#current-compile-parallel)
                                (gxc#add-compile-job! _%compile-it228056%_)
                                (_%compile-it228056%_)))
                          '#!void)))))
          (let* ((_%output-bin227993%_
                  (gxc#compile-exe-output-file _%ctx227985%_ _%opts227986%_))
                 (_%output-scm227995%_
                  (string-append _%output-bin227993%_ '"__exe.scm")))
            (_%compile-stub227991%_
             _%output-scm227995%_
             _%output-bin227993%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx227934%_ _%id227935%_)
        (let ((_%$e227981%_
               (find (lambda (_%$%e227936227938%_)
                       (let* ((_%$%$%e227936227940227950%_ _%$%e227936227938%_)
                              (_%$%E227943227954%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%$%e227936227940227950%_
                                        '((module-export _ _ 0 (eq? id)))
                                        'else)
                                 (void)))
                              (_%$%else227942227958%_ (lambda () '#f))
                              (_%$%K227944227962%_ (lambda () '#t)))
                         (if (gx#module-export? _%$%$%e227936227940227950%_)
                             (let* ((_%$%e227945227965%_
                                     (gx#&module-export-context
                                      _%$%$%e227936227940227950%_))
                                    (_%$%e227946227968%_
                                     (gx#&module-export-key
                                      _%$%$%e227936227940227950%_))
                                    (_%$%e227947227971%_
                                     (gx#&module-export-phi
                                      _%$%$%e227936227940227950%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _%$%e227947227971%_ '0))
                                   (let ((_%$%e227948227974%_
                                          (gx#&module-export-name
                                           _%$%$%e227936227940227950%_)))
                                     (if ((lambda (_%$%g227976227978%_)
                                            (eq? _%$%g227976227978%_
                                                 _%id227935%_))
                                          _%$%e227948227974%_)
                                         (_%$%K227944227962%_)
                                         (_%$%else227942227958%_)))
                                   (_%$%else227942227958%_)))
                             (_%$%else227942227958%_))))
                     (gx#module-context-export _%ctx227934%_))))
          (if _%$e227981%_ (gx#core-resolve-module-export _%$e227981%_) '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx227925%_ _%id227926%_)
        (let ((_%$e227928%_
               (gxc#find-export-binding _%ctx227925%_ _%id227926%_)))
          (if _%$e227928%_
              ((lambda (_%bind227931%_)
                 (if (gx#runtime-binding? _%bind227931%_)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _%id227926%_))
                 (gx#binding-id _%bind227931%_))
               _%$e227928%_)
              (gxc#raise-compile-error
               '"module does not export symbol"
               (gx#expander-context-id _%ctx227925%_)
               _%id227926%_)))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx227791%_)
        (letrec* ((_%ht227793%_ (make-hash-table-eq))
                  (_%import-set-template227794%_
                   (lambda (_%in227870%_ _%phi227871%_)
                     (let ((_%iphi227873%_
                            (fx+ _%phi227871%_
                                 (gx#import-set-phi _%in227870%_)))
                           (_%imports227874%_
                            (gx#module-context-import
                             (gx#import-set-source _%in227870%_))))
                       (let _%lp227876%_ ((_%rest227878%_ _%imports227874%_)
                                          (_%r227879%_ '()))
                         (let* ((_%$%rest227880227888%_ _%rest227878%_)
                                (_%$%E227883227892%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%$%rest227880227888%_
                                          '([in . rest])
                                          'else)
                                   (void)))
                                (_%$%else227882227896%_
                                 (lambda () _%r227879%_))
                                (_%$%K227884227913%_
                                 (lambda (_%rest227899%_ _%in227900%_)
                                   (if (gx#module-context? _%in227900%_)
                                       (if (fxzero? _%iphi227873%_)
                                           (_%lp227876%_
                                            _%rest227899%_
                                            (cons _%in227900%_ _%r227879%_))
                                           (_%lp227876%_
                                            _%rest227899%_
                                            _%r227879%_))
                                       (if (gx#module-import? _%in227900%_)
                                           (let ((_%iphi227904%_
                                                  (fx+ _%phi227871%_
                                                       (gx#module-import-phi
                                                        _%in227900%_))))
                                             (if (fxzero? _%iphi227904%_)
                                                 (_%lp227876%_
                                                  _%rest227899%_
                                                  (cons (gx#module-export-context
                                                         (gx#module-import-source
                                                          _%in227900%_))
                                                        _%r227879%_))
                                                 (_%lp227876%_
                                                  _%rest227899%_
                                                  _%r227879%_)))
                                           (if (gx#import-set? _%in227900%_)
                                               (let ((_%xphi227907%_
                                                      (fx+ _%iphi227873%_
                                                           (gx#import-set-phi
                                                            _%in227900%_))))
                                                 (if (fxzero? _%xphi227907%_)
                                                     (_%lp227876%_
                                                      _%rest227899%_
                                                      (cons (gx#import-set-source
                                                             _%in227900%_)
                                                            _%r227879%_))
                                                     (if (fxpositive?
                                                          _%xphi227907%_)
                                                         (_%lp227876%_
                                                          _%rest227899%_
                                                          (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%r227879%_
                         (_%import-set-template227794%_
                          _%in227900%_
                          _%iphi227873%_)))
                 (_%lp227876%_ _%rest227899%_ _%r227879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp227876%_
                                                _%rest227899%_
                                                _%r227879%_)))))))
                           (if (pair? _%$%rest227880227888%_)
                               (let ((_%$%hd227885227916%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest227880227888%_)))
                                     (_%$%tl227886227918%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest227880227888%_))))
                                 (let* ((_%in227921%_ _%$%hd227885227916%_)
                                        (_%rest227923%_ _%$%tl227886227918%_))
                                   (_%$%K227884227913%_
                                    _%rest227923%_
                                    _%in227921%_)))
                               (_%$%else227882227896%_)))))))
                  (_%find-deps227795%_
                   (lambda (_%rest227803%_ _%deps227804%_)
                     (let* ((_%$%rest227805227813%_ _%rest227803%_)
                            (_%$%E227808227817%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%rest227805227813%_
                                      '([hd . rest])
                                      'else)
                               (void)))
                            (_%$%else227807227821%_ (lambda () _%deps227804%_))
                            (_%$%K227809227858%_
                             (lambda (_%rest227824%_ _%hd227825%_)
                               (if (gx#module-context? _%hd227825%_)
                                   (let ((_%id227828%_
                                          (gx#expander-context-id
                                           _%hd227825%_))
                                         (_%imports227829%_
                                          (gx#module-context-import
                                           _%hd227825%_)))
                                     (if (hash-get _%ht227793%_ _%id227828%_)
                                         (_%find-deps227795%_
                                          _%rest227824%_
                                          _%deps227804%_)
                                         (let ((_%$e227832%_
                                                (gx#core-context-prelude
                                                 _%hd227825%_)))
                                           (if _%$e227832%_
                                               ((lambda (_%pre227835%_)
                                                  (let ((_%xdeps227837%_
                                                         (_%find-deps227795%_
                                                          (cons _%pre227835%_
                                                                _%imports227829%_)
                                                          _%deps227804%_)))
                                                    (hash-put!
                                                     _%ht227793%_
                                                     _%id227828%_
                                                     _%hd227825%_)
                                                    (_%find-deps227795%_
                                                     _%rest227824%_
                                                     (cons _%hd227825%_
                                                           _%xdeps227837%_))))
                                                _%$e227832%_)
                                               (let ((_%xdeps227840%_
                                                      (_%find-deps227795%_
                                                       _%imports227829%_
                                                       _%deps227804%_)))
                                                 (hash-put!
                                                  _%ht227793%_
                                                  _%id227828%_
                                                  _%hd227825%_)
                                                 (_%find-deps227795%_
                                                  _%rest227824%_
                                                  (cons _%hd227825%_
                                                        _%xdeps227840%_)))))))
                                   (if (gx#prelude-context? _%hd227825%_)
                                       (let ((_%id227843%_
                                              (gx#expander-context-id
                                               _%hd227825%_)))
                                         (if (hash-get
                                              _%ht227793%_
                                              _%id227843%_)
                                             (_%find-deps227795%_
                                              _%rest227824%_
                                              _%deps227804%_)
                                             (let ((_%xdeps227847%_
                                                    (_%find-deps227795%_
                                                     (gx#prelude-context-import
                                                      _%hd227825%_)
                                                     _%deps227804%_)))
                                               (if (hash-get
                                                    _%ht227793%_
                                                    _%id227843%_)
                                                   (_%find-deps227795%_
                                                    _%rest227824%_
                                                    _%xdeps227847%_)
                                                   (begin
                                                     (hash-put!
                                                      _%ht227793%_
                                                      _%id227843%_
                                                      _%hd227825%_)
                                                     (_%find-deps227795%_
                                                      _%rest227824%_
                                                      (cons _%hd227825%_
                                                            _%xdeps227847%_)))))))
                                       (if (gx#module-import? _%hd227825%_)
                                           (if (fxzero? (gx#module-import-phi
                                                         _%hd227825%_))
                                               (_%find-deps227795%_
                                                (cons (gx#module-import-source
                                                       _%hd227825%_)
                                                      _%rest227824%_)
                                                _%deps227804%_)
                                               (_%find-deps227795%_
                                                _%rest227824%_
                                                _%deps227804%_))
                                           (if (gx#module-export? _%hd227825%_)
                                               (_%find-deps227795%_
                                                (cons (gx#module-export-context
                                                       _%hd227825%_)
                                                      _%rest227824%_)
                                                _%deps227804%_)
                                               (if (gx#import-set?
                                                    _%hd227825%_)
                                                   (if (fxzero? (gx#import-set-phi
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd227825%_))
               (_%find-deps227795%_
                (cons (gx#import-set-source _%hd227825%_) _%rest227824%_)
                _%deps227804%_)
               (if (fxpositive? (gx#import-set-phi _%hd227825%_))
                   (let ((_%xdeps227854%_
                          (_%import-set-template227794%_ _%hd227825%_ '0)))
                     (_%find-deps227795%_
                      (foldl cons _%rest227824%_ _%xdeps227854%_)
                      _%deps227804%_))
                   (_%find-deps227795%_ _%rest227824%_ _%deps227804%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _%hd227825%_)))))))))
                       (if (pair? _%$%rest227805227813%_)
                           (let ((_%$%hd227810227861%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest227805227813%_)))
                                 (_%$%tl227811227863%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest227805227813%_))))
                             (let* ((_%hd227866%_ _%$%hd227810227861%_)
                                    (_%rest227868%_ _%$%tl227811227863%_))
                               (_%$%K227809227858%_
                                _%rest227868%_
                                _%hd227866%_)))
                           (_%$%else227807227821%_))))))
          (reverse (filter gx#expander-context-id
                           (_%find-deps227795%_
                            (let ((_%$e227797%_
                                   (gx#core-context-prelude _%ctx227791%_)))
                              (if _%$e227797%_
                                  ((lambda (_%pre227800%_)
                                     (cons _%pre227800%_
                                           (gx#module-context-import
                                            _%ctx227791%_)))
                                   _%$e227797%_)
                                  (gx#module-context-import _%ctx227791%_)))
                            '()))))))
    (define gxc#find-static-module-file
      (lambda (_%ctx227721%_)
        (let* ((_%context-id227723%_
                (if (gx#module-context? _%ctx227721%_)
                    (gx#expander-context-id _%ctx227721%_)
                    (string->symbol _%ctx227721%_)))
               (_%scm227725%_
                (string-append
                 (gxc#static-module-name _%context-id227723%_)
                 '".scm"))
               (_%dirs227727%_ (load-path))
               (_%dirs227733%_
                (let ((_%user-libpath227729%_ (getenv '"GERBIL_PATH" '#f)))
                  (if _%user-libpath227729%_
                      (let ((_%user-libpath227731%_
                             (path-expand '"lib" _%user-libpath227729%_)))
                        (if (member _%user-libpath227731%_ _%dirs227727%_)
                            _%dirs227727%_
                            (cons _%user-libpath227731%_ _%dirs227727%_)))
                      _%dirs227727%_)))
               (_%dirs227743%_
                (let ((_%$e227735%_ (gxc#current-compile-output-dir)))
                  (if _%$e227735%_
                      ((lambda (_%$%g227737227739%_)
                         (cons _%$%g227737227739%_ _%dirs227733%_))
                       _%$e227735%_)
                      _%dirs227733%_)))
               (_%dirs227749%_
                (map (lambda (_%$%g227744227746%_)
                       (path-expand '"static" _%$%g227744227746%_))
                     _%dirs227743%_)))
          (let _%lp227752%_ ((_%rest227754%_ _%dirs227749%_))
            (let* ((_%$%rest227755227763%_ _%rest227754%_)
                   (_%$%E227758227767%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest227755227763%_
                             '([dir . rest])
                             'else)
                      (void)))
                   (_%$%else227757227771%_
                    (lambda ()
                      (gxc#raise-compile-error
                       '"cannot find static module"
                       (gx#expander-context-id _%ctx227721%_)
                       _%scm227725%_)))
                   (_%$%K227759227779%_
                    (lambda (_%rest227774%_ _%dir227775%_)
                      (let ((_%path227777%_
                             (path-expand _%scm227725%_ _%dir227775%_)))
                        (if (file-exists? _%path227777%_)
                            _%path227777%_
                            (_%lp227752%_ _%rest227774%_))))))
              (if (pair? _%$%rest227755227763%_)
                  (let ((_%$%hd227760227782%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest227755227763%_)))
                        (_%$%tl227761227784%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest227755227763%_))))
                    (let* ((_%dir227787%_ _%$%hd227760227782%_)
                           (_%rest227789%_ _%$%tl227761227784%_))
                      (_%$%K227759227779%_ _%rest227789%_ _%dir227787%_)))
                  (_%$%else227757227771%_)))))))
    (define gxc#file-empty?
      (lambda (_%path227719%_)
        (zero? (file-info-size (file-info _%path227719%_ '#t)))))
    (define gxc#compile-top-module
      (lambda (_%ctx227710%_)
        (call-with-parameters
         (lambda ()
           (call-with-parameters
            (lambda ()
              (call-with-parameters
               (lambda ()
                 (call-with-parameters
                  (lambda ()
                    (call-with-parameters
                     (lambda ()
                       (call-with-parameters
                        (lambda ()
                          (gxc#verbose
                           '"compile "
                           (gx#expander-context-id _%ctx227710%_))
                          (if (gxc#current-compile-optimize)
                              (with-lock
                               gxc#+driver-mutex+
                               (lambda () (gxc#optimize! _%ctx227710%_)))
                              '#!void)
                          (gxc#collect-bindings _%ctx227710%_)
                          (gxc#compile-runtime-code _%ctx227710%_)
                          (gxc#compile-meta-code _%ctx227710%_)
                          (if (and (gxc#current-compile-optimize)
                                   (gxc#current-compile-generate-ssxi))
                              (gxc#compile-ssxi-code _%ctx227710%_)
                              '#!void))
                        gxc#current-compile-runtime-names
                        (make-hash-table)))
                     gxc#current-compile-runtime-sections
                     (make-hash-table-eq)))
                  gxc#current-compile-symbol-table
                  (gxc#make-symbol-table)))
               gx#current-expander-marks
               '()))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx227710%_)))
    (define gxc#collect-bindings
      (lambda (_%ctx227708%_)
        (gxc#apply-collect-bindings (gx#module-context-code _%ctx227708%_))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx227653%_)
        (letrec ((_%compile1227655%_
                  (lambda (_%ctx227697%_)
                    (let* ((_%code227699%_
                            (gx#module-context-code _%ctx227697%_))
                           (_%rtm227703%_
                            (let ((_%idstr227701%_
                                   (gxc#module-id->path-string
                                    (gx#expander-context-id _%ctx227697%_))))
                              (string-append _%idstr227701%_ '"~0")))
                           (_%rtc?227705%_
                            (gxc#apply-find-runtime-code _%code227699%_)))
                      (if _%rtc?227705%_
                          (hash-put!
                           (gxc#current-compile-runtime-sections)
                           _%ctx227697%_
                           _%rtm227703%_)
                          '#!void)
                      (_%generate-runtime-code227657%_
                       _%ctx227697%_
                       _%code227699%_
                       (if _%rtc?227705%_ _%rtm227703%_ '#f)))))
                 (_%context-timestamp227656%_
                  (lambda (_%ctx227695%_)
                    (string->symbol
                     (string-append
                      (symbol->string (gx#expander-context-id _%ctx227695%_))
                      '"::timestamp"))))
                 (_%generate-runtime-code227657%_
                  (lambda (_%ctx227664%_ _%code227665%_ _%rtm227666%_)
                    (let* ((_%runtime-code?227668%_ (if _%rtm227666%_ '#t '#f))
                           (_%lifts227670%_ (box '()))
                           (_%runtime-code227676%_
                            (if _%runtime-code?227668%_
                                (call-with-parameters
                                 (lambda ()
                                   (call-with-parameters
                                    (lambda ()
                                      (call-with-parameters
                                       (lambda ()
                                         (call-with-parameters
                                          (lambda ()
                                            (gxc#apply-generate-runtime
                                             _%code227665%_))
                                          gxc#current-compile-marks
                                          (make-hash-table-eq)))
                                       gxc#current-compile-lift
                                       _%lifts227670%_))
                                    gx#current-expander-phi
                                    '0))
                                 gx#current-expander-context
                                 _%ctx227664%_)
                                '#f))
                           (_%runtime-code227678%_
                            (if _%runtime-code?227668%_
                                (if (null? (unbox _%lifts227670%_))
                                    _%runtime-code227676%_
                                    (cons 'begin
                                          (foldr cons
                                                 (cons _%runtime-code227676%_
                                                       '())
                                                 (reverse (unbox _%lifts227670%_)))))
                                '#f))
                           (_%runtime-code227680%_
                            (if _%runtime-code?227668%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp227656%_
                                                         _%ctx227664%_)
                                                        (cons (gxc#current-compile-timestamp)
                                                              '())))
                                            (cons _%runtime-code227678%_ '())))
                                '#f))
                           (_%loader-code227683%_
                            (call-with-parameters
                             (lambda ()
                               (gxc#apply-generate-loader _%code227665%_))
                             gx#current-expander-context
                             _%ctx227664%_))
                           (_%loader-code227685%_
                            (cons 'begin
                                  (cons _%loader-code227683%_
                                        (cons (if _%runtime-code?227668%_
                                                  (cons 'load-module
                                                        (cons _%rtm227666%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0227687%_
                            (gxc#compile-output-file _%ctx227664%_ '0 '".scm"))
                           (_%scmrt227689%_
                            (gxc#compile-output-file
                             _%ctx227664%_
                             '#f
                             '".scm"))
                           (_%scms227691%_
                            (gxc#compile-static-output-file _%ctx227664%_)))
                      (if _%runtime-code?227668%_
                          (gxc#compile-scm-file
                           _%scm0227687%_
                           _%runtime-code227680%_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (gxc#compile-scm-file
                          _%scmrt227689%_
                          _%loader-code227685%_))
                       gxc#current-compile-gsc-options
                       '#f)
                      (if (file-exists? _%scms227691%_)
                          (delete-file _%scms227691%_)
                          '#!void)
                      (if _%runtime-code?227668%_
                          (copy-file _%scm0227687%_ _%scms227691%_)
                          (call-with-output-file _%scms227691%_ void))))))
          (let ((_%all-modules227659%_
                 (cons _%ctx227653%_ (gxc#lift-nested-modules _%ctx227653%_))))
            (for-each
             (lambda (_%ctx227661%_)
               (call-with-parameters
                (lambda () (_%compile1227655%_ _%ctx227661%_))
                gxc#current-compile-decls
                '()))
             _%all-modules227659%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx227552%_)
        (letrec ((_%compile-ssi227554%_
                  (lambda (_%code227621%_)
                    (let* ((_%path227623%_
                            (gxc#compile-output-file
                             _%ctx227552%_
                             '#f
                             '".ssi"))
                           (_%prelude227635%_
                            (let* ((_%super227625%_
                                    (gx#phi-context-super _%ctx227552%_))
                                   (_%$e227627%_
                                    (gx#expander-context-id _%super227625%_)))
                              (if _%$e227627%_
                                  ((lambda (_%$%g227629227631%_)
                                     (make-symbol '":" _%$%g227629227631%_))
                                   _%$e227627%_)
                                  ':<root>)))
                           (_%ns227637%_ (gx#module-context-ns _%ctx227552%_))
                           (_%idstr227639%_
                            (symbol->string
                             (gx#expander-context-id _%ctx227552%_)))
                           (_%pkg227647%_
                            (let ((_%$e227641%_
                                   (string-rindex _%idstr227639%_ '#\/)))
                              (if _%$e227641%_
                                  ((lambda (_%x227644%_)
                                     (string->symbol
                                      (substring
                                       _%idstr227639%_
                                       '0
                                       _%x227644%_)))
                                   _%$e227641%_)
                                  '#f)))
                           (_%rt227649%_
                            (hash-get
                             (gxc#current-compile-runtime-sections)
                             _%ctx227552%_)))
                      (gxc#verbose '"compile " _%path227623%_)
                      (gxc#with-output-to-scheme-file
                       _%path227623%_
                       (lambda ()
                         (displayln '"prelude:" '" " _%prelude227635%_)
                         (if _%pkg227647%_
                             (displayln '"package:" '" " _%pkg227647%_)
                             '#!void)
                         (displayln '"namespace:" '" " _%ns227637%_)
                         (newline)
                         (pretty-print _%code227621%_)
                         (if _%rt227649%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt227649%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi227555%_
                  (lambda (_%part227560%_)
                    (let* ((_%$%part227561227574%_ _%part227560%_)
                           (_%$%E227563227578%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%part227561227574%_
                                     '([phi-ctx phi n code]))
                              (void)))
                           (_%$%K227564227590%_
                            (lambda (_%code227581%_
                                     _%n227582%_
                                     _%phi227583%_
                                     _%phi-ctx227584%_)
                              (let ((_%code227588%_
                                     (call-with-parameters
                                      (lambda ()
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#generate-runtime-phi
                                            _%code227581%_))
                                         gx#current-expander-phi
                                         _%phi227583%_))
                                      gx#current-expander-context
                                      _%phi-ctx227584%_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _%ctx227552%_
                                  _%n227582%_
                                  '".scm")
                                 _%code227588%_
                                 '#t)))))
                      (if (pair? _%$%part227561227574%_)
                          (let ((_%$%hd227565227593%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part227561227574%_)))
                                (_%$%tl227566227595%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part227561227574%_))))
                            (let ((_%phi-ctx227598%_ _%$%hd227565227593%_))
                              (if (pair? _%$%tl227566227595%_)
                                  (let ((_%$%hd227567227600%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl227566227595%_)))
                                        (_%$%tl227568227602%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl227566227595%_))))
                                    (let ((_%phi227605%_ _%$%hd227567227600%_))
                                      (if (pair? _%$%tl227568227602%_)
                                          (let ((_%$%hd227569227607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl227568227602%_)))
                                                (_%$%tl227570227609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl227568227602%_))))
                                            (let ((_%n227612%_
                                                   _%$%hd227569227607%_))
                                              (if (pair? _%$%tl227570227609%_)
                                                  (let ((_%$%hd227571227614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl227570227609%_)))
                                                        (_%$%tl227572227616%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl227570227609%_))))
                                                    (let ((_%code227619%_
                                                           _%$%hd227571227614%_))
                                                      (if (null? _%$%tl227572227616%_)
                                                          (_%$%K227564227590%_
                                                           _%code227619%_
                                                           _%n227612%_
                                                           _%phi227605%_
                                                           _%phi-ctx227598%_)
                                                          (_%$%E227563227578%_))))
                                                  (_%$%E227563227578%_))))
                                          (_%$%E227563227578%_))))
                                  (_%$%E227563227578%_))))
                          (_%$%E227563227578%_))))))
          (let ((_g228566_ (gxc#generate-meta-code _%ctx227552%_)))
            (begin
              (let ((_g228567_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g228566_)
                           (##values-length _g228566_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g228567_ 2)))
                    (error "Context expects 2 values" _g228567_)))
              (let ((_%ssi-code227557%_
                     (let () (declare (not safe)) (##values-ref _g228566_ 0)))
                    (_%phi-code227558%_
                     (let () (declare (not safe)) (##values-ref _g228566_ 1))))
                (begin
                  (_%compile-ssi227554%_ _%ssi-code227557%_)
                  (for-each _%compile-phi227555%_ _%phi-code227558%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx227534%_)
        (let* ((_%path227536%_
                (gxc#compile-output-file _%ctx227534%_ '#f '".ssxi.ss"))
               (_%code227538%_
                (gxc#apply-generate-ssxi
                 (gx#module-context-code _%ctx227534%_)))
               (_%idstr227540%_
                (symbol->string (gx#expander-context-id _%ctx227534%_)))
               (_%pkg227548%_
                (let ((_%$e227542%_ (string-rindex _%idstr227540%_ '#\/)))
                  (if _%$e227542%_
                      ((lambda (_%x227545%_)
                         (string->symbol
                          (substring _%idstr227540%_ '0 _%x227545%_)))
                       _%$e227542%_)
                      '#f))))
          (gxc#verbose '"compile " _%path227536%_)
          (gxc#with-output-to-scheme-file
           _%path227536%_
           (lambda ()
             (displayln '"prelude: :gerbil/compiler/ssxi")
             (if _%pkg227548%_ (displayln '"package: " _%pkg227548%_) '#!void)
             (newline)
             (pretty-print _%code227538%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx227527%_)
        (let* ((_%state227529%_ (gxc#make-meta-state _%ctx227527%_))
               (_%ssi-code227531%_
                (gxc#apply-generate-meta
                 (gx#module-context-code _%ctx227527%_)
                 'state:
                 _%state227529%_)))
          (values _%ssi-code227531%_ (gxc#meta-state-end! _%state227529%_)))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx227519%_)
        (let ((_%lifts227521%_ (box '())))
          (call-with-parameters
           (lambda ()
             (call-with-parameters
              (lambda ()
                (let ((_%code227525%_
                       (gxc#apply-generate-runtime-phi _%stx227519%_)))
                  (if (null? (unbox _%lifts227521%_))
                      _%code227525%_
                      (cons 'begin
                            (foldr cons
                                   (cons _%code227525%_ '())
                                   (reverse (unbox _%lifts227521%_)))))))
              gxc#current-compile-marks
              (make-hash-table-eq)))
           gxc#current-compile-lift
           _%lifts227521%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx227515%_)
        (let ((_%modules227517%_ (box '())))
          (gxc#apply-lift-modules
           (gx#module-context-code _%ctx227515%_)
           'modules:
           _%modules227517%_)
          (reverse (unbox _%modules227517%_)))))
    (define gxc#compile-scm-file
      (let ((_%$%opt-lambda227493227503%_
             (lambda (_%path227495%_ _%code227496%_ _%phi?227497%_)
               (gxc#verbose '"compile " _%path227495%_)
               (gxc#with-output-to-scheme-file
                _%path227495%_
                (lambda ()
                  (pretty-print
                   (cons 'declare
                         (cons (cons 'block '())
                               (cons (cons 'standard-bindings '())
                                     (cons (cons 'extended-bindings '())
                                           (foldr cons
                                                  '()
                                                  (if _%phi?227497%_
                                                      '((inlining-limit 200))
                                                      '())))))))
                  (pretty-print _%code227496%_)))
               (if (gxc#current-compile-invoke-gsc)
                   (let ((_%compile-it227501%_
                          (lambda ()
                            (gxc#gsc-compile-file
                             _%path227495%_
                             _%phi?227497%_))))
                     (if (gxc#current-compile-parallel)
                         (gxc#add-compile-job!
                          _%compile-it227501%_
                          (cons 'compile-file (cons _%path227495%_ '())))
                         (_%compile-it227501%_)))
                   '#!void))))
        (lambda _g228568_
          (let ((_g228569_ (let () (declare (not safe)) (##length _g228568_))))
            (cond ((let () (declare (not safe)) (##fx= _g228569_ 2))
                   (apply (lambda (_%path227506%_ _%code227507%_)
                            (let ((_%phi?227509%_ '#f))
                              (_%$%opt-lambda227493227503%_
                               _%path227506%_
                               _%code227507%_
                               _%phi?227509%_)))
                          _g228568_))
                  ((let () (declare (not safe)) (##fx= _g228569_ 3))
                   (apply _%$%opt-lambda227493227503%_ _g228568_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g228568_)))))))
    (define gxc#gsc-link-options
      (let ((_%$%opt-lambda227394227486%_
             (lambda (_%phi?227396%_)
               (let _%lp227398%_ ((_%rest227400%_
                                   (gxc#current-compile-gsc-options))
                                  (_%opts227401%_ '()))
                 (let* ((_%$%rest227402227422%_ _%rest227400%_)
                        (_%$%E227407227426%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%$%rest227402227422%_
                                  '(["-cc-options" _ . rest])
                                  '(["-ld-options" _ . rest])
                                  '([opt . rest])
                                  'else)
                           (void)))
                        (_%$%else227406227430%_
                         (lambda ()
                           (if (gxc#current-compile-debug)
                               (cons '"-debug-source"
                                     (cons '"-track-scheme"
                                           (reverse _%opts227401%_)))
                               (reverse _%opts227401%_))))
                        (_%$%try-match227405227449%_
                         (lambda ()
                           (let ((_%$%K227408227437%_
                                  (lambda (_%rest227434%_ _%opt227435%_)
                                    (_%lp227398%_
                                     _%rest227434%_
                                     (cons _%opt227435%_ _%opts227401%_)))))
                             (if (pair? _%$%rest227402227422%_)
                                 (let ((_%$%hd227409227440%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest227402227422%_)))
                                       (_%$%tl227410227442%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest227402227422%_))))
                                   (let* ((_%opt227445%_ _%$%hd227409227440%_)
                                          (_%rest227447%_
                                           _%$%tl227410227442%_))
                                     (_%$%K227408227437%_
                                      _%rest227447%_
                                      _%opt227445%_)))
                                 (_%$%else227406227430%_)))))
                        (_%$%try-match227404227468%_
                         (lambda ()
                           (let ((_%$%K227411227455%_
                                  (lambda (_%rest227453%_)
                                    (_%lp227398%_
                                     _%rest227453%_
                                     _%opts227401%_))))
                             (if (pair? _%$%rest227402227422%_)
                                 (let ((_%$%hd227412227458%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%rest227402227422%_)))
                                       (_%$%tl227413227460%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest227402227422%_))))
                                   (if (equal? _%$%hd227412227458%_
                                               '"-ld-options")
                                       (if (pair? _%$%tl227413227460%_)
                                           (let* ((_%$%tl227415227463%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl227413227460%_)))
                                                  (_%rest227466%_
                                                   _%$%tl227415227463%_))
                                             (_%$%K227411227455%_
                                              _%rest227466%_))
                                           (_%$%try-match227405227449%_))
                                       (_%$%try-match227405227449%_)))
                                 (_%$%try-match227405227449%_)))))
                        (_%$%K227416227473%_
                         (lambda (_%rest227471%_)
                           (_%lp227398%_ _%rest227471%_ _%opts227401%_))))
                   (if (pair? _%$%rest227402227422%_)
                       (let ((_%$%hd227417227476%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%rest227402227422%_)))
                             (_%$%tl227418227478%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%rest227402227422%_))))
                         (if (equal? _%$%hd227417227476%_ '"-cc-options")
                             (if (pair? _%$%tl227418227478%_)
                                 (let* ((_%$%tl227420227481%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl227418227478%_)))
                                        (_%rest227484%_ _%$%tl227420227481%_))
                                   (_%$%K227416227473%_ _%rest227484%_))
                                 (_%$%try-match227404227468%_))
                             (_%$%try-match227404227468%_)))
                       (_%$%try-match227404227468%_)))))))
        (lambda _g228570_
          (let ((_g228571_ (let () (declare (not safe)) (##length _g228570_))))
            (cond ((let () (declare (not safe)) (##fx= _g228571_ 0))
                   (apply (lambda ()
                            (let ((_%phi?227490%_ '#f))
                              (_%$%opt-lambda227394227486%_ _%phi?227490%_)))
                          _g228570_))
                  ((let () (declare (not safe)) (##fx= _g228571_ 1))
                   (apply _%$%opt-lambda227394227486%_ _g228570_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#gsc-link-options
                    _g228570_)))))))
    (define gxc#gsc-cc-options
      (let ((_%$%kw-lambda227240227389%_
             (let ((_%$%kw-lambda-main227241227382%_
                    (let ((_%$%opt-lambda227244227370%_
                           (lambda (_%@@keywords227246%_
                                    _%$%static?227242227247%_
                                    _%phi?227248%_)
                             (let ((_%static?227250%_
                                    (if (eq? _%$%static?227242227247%_
                                             absent-value)
                                        '#f
                                        _%$%static?227242227247%_)))
                               (if _%phi?227248%_
                                   (if (gxc#current-compile-debug)
                                       (cons '"-cc-options" (cons '"-g" '()))
                                       '())
                                   (let _%lp227252%_ ((_%rest227254%_
                                                       (gxc#current-compile-gsc-options))
                                                      (_%opts227255%_ '()))
                                     (let* ((_%$%rest227256227282%_
                                             _%rest227254%_)
                                            (_%$%E227262227286%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%rest227256227282%_
                                                      '(["-cc-options"
                                                         (and opt "-Bstatic")
                                                         .
                                                         rest])
                                                      '(["-cc-options"
                                                         opt
                                                         .
                                                         rest])
                                                      '(["-ld-options"
                                                         _
                                                         .
                                                         rest])
                                                      '([_ . rest])
                                                      'else)
                                               (void)))
                                            (_%$%else227261227290%_
                                             (lambda ()
                                               (if (gxc#current-compile-debug)
                                                   (cons '"-cc-options"
                                                         (cons '"-g"
                                                               (reverse!
                                                                _%opts227255%_)))
                                                   (reverse! _%opts227255%_))))
                                            (_%$%try-match227260227304%_
                                             (lambda ()
                                               (let ((_%$%K227263227296%_
                                                      (lambda (_%rest227294%_)
                                                        (_%lp227252%_
                                                         _%rest227294%_
                                                         _%opts227255%_))))
                                                 (if (pair? _%$%rest227256227282%_)
                                                     (let* ((_%$%tl227265227299%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%rest227256227282%_)))
                    (_%rest227302%_ _%$%tl227265227299%_))
               (_%$%K227263227296%_ _%rest227302%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%else227261227290%_)))))
                                            (_%$%try-match227259227323%_
                                             (lambda ()
                                               (let ((_%$%K227266227310%_
                                                      (lambda (_%rest227308%_)
                                                        (_%lp227252%_
                                                         _%rest227308%_
                                                         _%opts227255%_))))
                                                 (if (pair? _%$%rest227256227282%_)
                                                     (let ((_%$%hd227267227313%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%rest227256227282%_)))
                                                           (_%$%tl227268227315%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%rest227256227282%_))))
                                                       (if (equal? _%$%hd227267227313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '"-ld-options")
                   (if (pair? _%$%tl227268227315%_)
                       (let* ((_%$%tl227270227318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl227268227315%_)))
                              (_%rest227321%_ _%$%tl227270227318%_))
                         (_%$%K227266227310%_ _%rest227321%_))
                       (_%$%try-match227260227304%_))
                   (_%$%try-match227260227304%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%try-match227260227304%_)))))
                                            (_%$%try-match227258227347%_
                                             (lambda ()
                                               (let ((_%$%K227271227330%_
                                                      (lambda (_%rest227327%_
                                                               _%opt227328%_)
                                                        (_%lp227252%_
                                                         _%rest227327%_
                                                         (cons* _%opt227328%_
                                                                '"-cc-options"
                                                                _%opts227255%_)))))
                                                 (if (pair? _%$%rest227256227282%_)
                                                     (let ((_%$%hd227272227333%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%rest227256227282%_)))
                                                           (_%$%tl227273227335%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%rest227256227282%_))))
                                                       (if (equal? _%$%hd227272227333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '"-cc-options")
                   (if (pair? _%$%tl227273227335%_)
                       (let ((_%$%hd227274227338%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tl227273227335%_)))
                             (_%$%tl227275227340%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tl227273227335%_))))
                         (let* ((_%opt227343%_ _%$%hd227274227338%_)
                                (_%rest227345%_ _%$%tl227275227340%_))
                           (_%$%K227271227330%_ _%rest227345%_ _%opt227343%_)))
                       (_%$%try-match227259227323%_))
                   (_%$%try-match227259227323%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%try-match227259227323%_)))))
                                            (_%$%K227276227353%_
                                             (lambda (_%rest227350%_
                                                      _%opt227351%_)
                                               (if _%static?227250%_
                                                   (_%lp227252%_
                                                    _%rest227350%_
                                                    (cons* _%opt227351%_
                                                           '"-cc-options"
                                                           _%opts227255%_))
                                                   (_%lp227252%_
                                                    _%rest227350%_
                                                    _%opts227255%_)))))
                                       (if (pair? _%$%rest227256227282%_)
                                           (let ((_%$%hd227277227356%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%rest227256227282%_)))
                                                 (_%$%tl227278227358%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%rest227256227282%_))))
                                             (if (equal? _%$%hd227277227356%_
                                                         '"-cc-options")
                                                 (if (pair? _%$%tl227278227358%_)
                                                     (let ((_%$%hd227279227361%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%tl227278227358%_)))
                                                           (_%$%tl227280227363%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%tl227278227358%_))))
                                                       (let ((_%opt227366%_
                                                              _%$%hd227279227361%_))
                                                         (if (equal? _%$%hd227279227361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '"-Bstatic")
                     (let ((_%rest227368%_ _%$%tl227280227363%_))
                       (_%$%K227276227353%_ _%rest227368%_ _%opt227366%_))
                     (_%$%try-match227258227347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%try-match227258227347%_))
                                                 (_%$%try-match227258227347%_)))
                                           (_%$%try-match227258227347%_)))))))))
                      (lambda _g228572_
                        (let ((_g228573_
                               (let ()
                                 (declare (not safe))
                                 (##length _g228572_))))
                          (cond ((let ()
                                   (declare (not safe))
                                   (##fx= _g228573_ 2))
                                 (apply (lambda (_%@@keywords227373%_
                                                 _%$%static?227242227374%_)
                                          (let ((_%phi?227376%_ '#f))
                                            (_%$%opt-lambda227244227370%_
                                             _%@@keywords227373%_
                                             _%$%static?227242227374%_
                                             _%phi?227376%_)))
                                        _g228572_))
                                ((let ()
                                   (declare (not safe))
                                   (##fx= _g228573_ 3))
                                 (apply _%$%opt-lambda227244227370%_
                                        _g228572_))
                                (else
                                 (##raise-wrong-number-of-arguments-exception
                                  'case-lambda-dispatch
                                  _g228572_))))))))
               (lambda (_%@@keywords227385%_ . _%args227386%_)
                 (apply _%$%kw-lambda-main227241227382%_
                        _%@@keywords227385%_
                        (symbolic-table-ref
                         _%@@keywords227385%_
                         'static:
                         absent-value)
                        _%args227386%_)))))
        (lambda _%$%args227243227392%_
          (apply keyword-dispatch
                 '#(static:)
                 _%$%kw-lambda227240227389%_
                 _%$%args227243227392%_))))
    (define gxc#gsc-ld-options
      (let ((_%$%kw-lambda227086227235%_
             (let ((_%$%kw-lambda-main227087227228%_
                    (let ((_%$%opt-lambda227090227216%_
                           (lambda (_%@@keywords227092%_
                                    _%$%static?227088227093%_
                                    _%phi?227094%_)
                             (let ((_%static?227096%_
                                    (if (eq? _%$%static?227088227093%_
                                             absent-value)
                                        '#f
                                        _%$%static?227088227093%_)))
                               (if _%phi?227094%_
                                   '()
                                   (let _%lp227098%_ ((_%rest227100%_
                                                       (gxc#current-compile-gsc-options))
                                                      (_%opts227101%_ '()))
                                     (let* ((_%$%rest227102227128%_
                                             _%rest227100%_)
                                            (_%$%E227108227132%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%rest227102227128%_
                                                      '(["-ld-options"
                                                         (and opt "-static")
                                                         .
                                                         rest])
                                                      '(["-ld-options"
                                                         opt
                                                         .
                                                         rest])
                                                      '(["-cc-options"
                                                         _
                                                         .
                                                         rest])
                                                      '([_ . rest])
                                                      'else)
                                               (void)))
                                            (_%$%else227107227136%_
                                             (lambda ()
                                               (reverse! _%opts227101%_)))
                                            (_%$%try-match227106227150%_
                                             (lambda ()
                                               (let ((_%$%K227109227142%_
                                                      (lambda (_%rest227140%_)
                                                        (_%lp227098%_
                                                         _%rest227140%_
                                                         _%opts227101%_))))
                                                 (if (pair? _%$%rest227102227128%_)
                                                     (let* ((_%$%tl227111227145%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%rest227102227128%_)))
                    (_%rest227148%_ _%$%tl227111227145%_))
               (_%$%K227109227142%_ _%rest227148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%else227107227136%_)))))
                                            (_%$%try-match227105227169%_
                                             (lambda ()
                                               (let ((_%$%K227112227156%_
                                                      (lambda (_%rest227154%_)
                                                        (_%lp227098%_
                                                         _%rest227154%_
                                                         _%opts227101%_))))
                                                 (if (pair? _%$%rest227102227128%_)
                                                     (let ((_%$%hd227113227159%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%rest227102227128%_)))
                                                           (_%$%tl227114227161%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%rest227102227128%_))))
                                                       (if (equal? _%$%hd227113227159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '"-cc-options")
                   (if (pair? _%$%tl227114227161%_)
                       (let* ((_%$%tl227116227164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl227114227161%_)))
                              (_%rest227167%_ _%$%tl227116227164%_))
                         (_%$%K227112227156%_ _%rest227167%_))
                       (_%$%try-match227106227150%_))
                   (_%$%try-match227106227150%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%try-match227106227150%_)))))
                                            (_%$%try-match227104227193%_
                                             (lambda ()
                                               (let ((_%$%K227117227176%_
                                                      (lambda (_%rest227173%_
                                                               _%opt227174%_)
                                                        (_%lp227098%_
                                                         _%rest227173%_
                                                         (cons* _%opt227174%_
                                                                '"-ld-options"
                                                                _%opts227101%_)))))
                                                 (if (pair? _%$%rest227102227128%_)
                                                     (let ((_%$%hd227118227179%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%rest227102227128%_)))
                                                           (_%$%tl227119227181%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%rest227102227128%_))))
                                                       (if (equal? _%$%hd227118227179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '"-ld-options")
                   (if (pair? _%$%tl227119227181%_)
                       (let ((_%$%hd227120227184%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tl227119227181%_)))
                             (_%$%tl227121227186%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tl227119227181%_))))
                         (let* ((_%opt227189%_ _%$%hd227120227184%_)
                                (_%rest227191%_ _%$%tl227121227186%_))
                           (_%$%K227117227176%_ _%rest227191%_ _%opt227189%_)))
                       (_%$%try-match227105227169%_))
                   (_%$%try-match227105227169%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%try-match227105227169%_)))))
                                            (_%$%K227122227199%_
                                             (lambda (_%rest227196%_
                                                      _%opt227197%_)
                                               (if _%static?227096%_
                                                   (_%lp227098%_
                                                    _%rest227196%_
                                                    (cons* _%opt227197%_
                                                           '"-ld-options"
                                                           _%opts227101%_))
                                                   (_%lp227098%_
                                                    _%rest227196%_
                                                    _%opts227101%_)))))
                                       (if (pair? _%$%rest227102227128%_)
                                           (let ((_%$%hd227123227202%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%rest227102227128%_)))
                                                 (_%$%tl227124227204%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%rest227102227128%_))))
                                             (if (equal? _%$%hd227123227202%_
                                                         '"-ld-options")
                                                 (if (pair? _%$%tl227124227204%_)
                                                     (let ((_%$%hd227125227207%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%tl227124227204%_)))
                                                           (_%$%tl227126227209%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%tl227124227204%_))))
                                                       (let ((_%opt227212%_
                                                              _%$%hd227125227207%_))
                                                         (if (equal? _%$%hd227125227207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '"-static")
                     (let ((_%rest227214%_ _%$%tl227126227209%_))
                       (_%$%K227122227199%_ _%rest227214%_ _%opt227212%_))
                     (_%$%try-match227104227193%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%try-match227104227193%_))
                                                 (_%$%try-match227104227193%_)))
                                           (_%$%try-match227104227193%_)))))))))
                      (lambda _g228574_
                        (let ((_g228575_
                               (let ()
                                 (declare (not safe))
                                 (##length _g228574_))))
                          (cond ((let ()
                                   (declare (not safe))
                                   (##fx= _g228575_ 2))
                                 (apply (lambda (_%@@keywords227219%_
                                                 _%$%static?227088227220%_)
                                          (let ((_%phi?227222%_ '#f))
                                            (_%$%opt-lambda227090227216%_
                                             _%@@keywords227219%_
                                             _%$%static?227088227220%_
                                             _%phi?227222%_)))
                                        _g228574_))
                                ((let ()
                                   (declare (not safe))
                                   (##fx= _g228575_ 3))
                                 (apply _%$%opt-lambda227090227216%_
                                        _g228574_))
                                (else
                                 (##raise-wrong-number-of-arguments-exception
                                  'case-lambda-dispatch
                                  _g228574_))))))))
               (lambda (_%@@keywords227231%_ . _%args227232%_)
                 (apply _%$%kw-lambda-main227087227228%_
                        _%@@keywords227231%_
                        (symbolic-table-ref
                         _%@@keywords227231%_
                         'static:
                         absent-value)
                        _%args227232%_)))))
        (lambda _%$%args227089227238%_
          (apply keyword-dispatch
                 '#(static:)
                 _%$%kw-lambda227086227235%_
                 _%$%args227089227238%_))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir227083%_)
        (let ((_%user-staticdir227085%_
               (path-expand (path-expand '"lib/static" (gerbil-path)))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir227083%_
                       '" -I "
                       _%user-staticdir227085%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp226995%_ ((_%rest226997%_ (gxc#current-compile-gsc-options))
                           (_%opts226998%_ '()))
          (let* ((_%$%rest226999227019%_ _%rest226997%_)
                 (_%$%E227004227023%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest226999227019%_
                           '(["-cc-options" _ . rest])
                           '(["-ld-options" opt . rest])
                           '([_ . rest])
                           'else)
                    (void)))
                 (_%$%else227003227027%_ (lambda () _%opts226998%_))
                 (_%$%try-match227002227041%_
                  (lambda ()
                    (let ((_%$%K227005227033%_
                           (lambda (_%rest227031%_)
                             (_%lp226995%_ _%rest227031%_ _%opts226998%_))))
                      (if (pair? _%$%rest226999227019%_)
                          (let* ((_%$%tl227007227036%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest226999227019%_)))
                                 (_%rest227039%_ _%$%tl227007227036%_))
                            (_%$%K227005227033%_ _%rest227039%_))
                          (_%$%else227003227027%_)))))
                 (_%$%try-match227001227065%_
                  (lambda ()
                    (let ((_%$%K227008227048%_
                           (lambda (_%rest227045%_ _%opt227046%_)
                             (_%lp226995%_
                              _%rest227045%_
                              (append _%opts226998%_
                                      (filter gxc#not-string-empty?
                                              (string-split
                                               _%opt227046%_
                                               '#\space)))))))
                      (if (pair? _%$%rest226999227019%_)
                          (let ((_%$%hd227009227051%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%rest226999227019%_)))
                                (_%$%tl227010227053%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%rest226999227019%_))))
                            (if (equal? _%$%hd227009227051%_ '"-ld-options")
                                (if (pair? _%$%tl227010227053%_)
                                    (let ((_%$%hd227011227056%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl227010227053%_)))
                                          (_%$%tl227012227058%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl227010227053%_))))
                                      (let* ((_%opt227061%_
                                              _%$%hd227011227056%_)
                                             (_%rest227063%_
                                              _%$%tl227012227058%_))
                                        (_%$%K227008227048%_
                                         _%rest227063%_
                                         _%opt227061%_)))
                                    (_%$%try-match227002227041%_))
                                (_%$%try-match227002227041%_)))
                          (_%$%try-match227002227041%_)))))
                 (_%$%K227013227070%_
                  (lambda (_%rest227068%_)
                    (_%lp226995%_ _%rest227068%_ _%opts226998%_))))
            (if (pair? _%$%rest226999227019%_)
                (let ((_%$%hd227014227073%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest226999227019%_)))
                      (_%$%tl227015227075%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest226999227019%_))))
                  (if (equal? _%$%hd227014227073%_ '"-cc-options")
                      (if (pair? _%$%tl227015227075%_)
                          (let* ((_%$%tl227017227078%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%tl227015227075%_)))
                                 (_%rest227081%_ _%$%tl227017227078%_))
                            (_%$%K227013227070%_ _%rest227081%_))
                          (_%$%try-match227001227065%_))
                      (_%$%try-match227001227065%_)))
                (_%$%try-match227001227065%_))))))
    (define gxc#not-string-empty?
      (lambda (_%str226992%_) (not (string-empty? _%str226992%_))))
    (define gxc#gsc-compile-file
      (lambda (_%path226985%_ _%phi?226986%_)
        (let ((_%gsc-link-opts226988%_ (gxc#gsc-link-options _%phi?226986%_))
              (_%gsc-cc-opts226989%_ (gxc#gsc-cc-options _%phi?226986%_))
              (_%gsc-ld-opts226990%_ (gxc#gsc-ld-options _%phi?226986%_)))
          (gxc#invoke
           (gxc#gerbil-gsc)
           (foldr cons
                  (foldr cons
                         (foldr cons
                                (cons _%path226985%_ '())
                                _%gsc-link-opts226988%_)
                         _%gsc-ld-opts226990%_)
                  _%gsc-cc-opts226989%_)))))
    (define gxc#compile-output-file
      (lambda (_%ctx226951%_ _%n226952%_ _%ext226953%_)
        (letrec ((_%module-relative-path226955%_
                  (lambda (_%ctx226983%_)
                    (path-strip-directory
                     (gxc#module-id->path-string
                      (gx#expander-context-id _%ctx226983%_)))))
                 (_%module-source-directory226956%_
                  (lambda (_%ctx226979%_)
                    (path-directory
                     (let ((_%mpath226981%_
                            (gx#module-context-path _%ctx226979%_)))
                       (if (string? _%mpath226981%_)
                           _%mpath226981%_
                           (last _%mpath226981%_))))))
                 (_%section-string226957%_
                  (lambda (_%n226973%_)
                    (if (number? _%n226973%_)
                        (number->string _%n226973%_)
                        (if (symbol? _%n226973%_)
                            (symbol->string _%n226973%_)
                            (if (string? _%n226973%_)
                                _%n226973%_
                                (gxc#raise-compile-error
                                 '"Unexpected section"
                                 _%n226973%_))))))
                 (_%file-name226958%_
                  (lambda (_%path226971%_)
                    (if _%n226952%_
                        (string-append
                         _%path226971%_
                         '"~"
                         (_%section-string226957%_ _%n226952%_)
                         _%ext226953%_)
                        (string-append _%path226971%_ _%ext226953%_))))
                 (_%file-path226959%_
                  (lambda ()
                    (let ((_%$e226965%_ (gxc#current-compile-output-dir)))
                      (if _%$e226965%_
                          ((lambda (_%outdir226968%_)
                             (path-expand
                              (_%file-name226958%_
                               (gxc#module-id->path-string
                                (gx#expander-context-id _%ctx226951%_)))
                              _%outdir226968%_))
                           _%$e226965%_)
                          (path-expand
                           (_%file-name226958%_
                            (_%module-relative-path226955%_ _%ctx226951%_))
                           (_%module-source-directory226956%_
                            _%ctx226951%_)))))))
          (let ((_%path226961%_ (_%file-path226959%_)))
            (with-lock
             gxc#+driver-mutex+
             (lambda () (create-directory* (path-directory _%path226961%_))))
            _%path226961%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx226932%_)
        (letrec ((_%file-name226934%_
                  (lambda (_%id226949%_)
                    (string-append
                     (gxc#static-module-name _%id226949%_)
                     '".scm")))
                 (_%file-path226935%_
                  (lambda ()
                    (let* ((_%file226941%_
                            (_%file-name226934%_
                             (gx#expander-context-id _%ctx226932%_)))
                           (_%$e226943%_ (gxc#current-compile-output-dir)))
                      (if _%$e226943%_
                          ((lambda (_%outdir226946%_)
                             (path-expand
                              _%file226941%_
                              (path-expand '"static" _%outdir226946%_)))
                           _%$e226943%_)
                          (path-expand _%file226941%_ '"static"))))))
          (let ((_%path226937%_ (_%file-path226935%_)))
            (with-lock
             gxc#+driver-mutex+
             (lambda () (create-directory* (path-directory _%path226937%_))))
            _%path226937%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx226925%_ _%opts226926%_)
        (let ((_%$e226928%_ (pgetq 'output-file: _%opts226926%_)))
          (if _%$e226928%_
              _%$e226928%_
              (path-strip-directory
               (symbol->string (gx#expander-context-id _%ctx226925%_)))))))
    (define gxc#static-module-name
      (lambda (_%idstr226915%_)
        (if (string? _%idstr226915%_)
            (let* ((_%str226918%_ (gxc#module-id->path-string _%idstr226915%_))
                   (_%strs226920%_ (string-split _%str226918%_ '#\/)))
              (string-join _%strs226920%_ '"__"))
            (if (symbol? _%idstr226915%_)
                (gxc#static-module-name (symbol->string _%idstr226915%_))
                (error '"Bad module id" _%idstr226915%_)))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (member '"--enable-shared"
                (string-split (configure-command-string) '#\'))))
    (define gxc#invoke
      (let ((_%$%kw-lambda226875226908%_
             (let ((_%$%kw-lambda-main226876226901%_
                    (lambda (_%@@keywords226881%_
                             _%$%stdout-redirection226877226882%_
                             _%$%stderr-redirection226878226883%_
                             _%program226884%_
                             _%args226885%_)
                      (let* ((_%stdout-redirection226887%_
                              (if (eq? _%$%stdout-redirection226877226882%_
                                       absent-value)
                                  '#f
                                  _%$%stdout-redirection226877226882%_))
                             (_%stderr-redirection226889%_
                              (if (eq? _%$%stderr-redirection226878226883%_
                                       absent-value)
                                  '#f
                                  _%$%stderr-redirection226878226883%_)))
                        (gxc#verbose
                         '"invoke "
                         (cons _%program226884%_ _%args226885%_))
                        (let* ((_%proc226891%_
                                (open-process
                                 (cons 'path:
                                       (cons _%program226884%_
                                             (cons 'arguments:
                                                   (cons _%args226885%_
                                                         (cons 'stdout-redirection:
                                                               (cons _%stdout-redirection226887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'stderr-redirection:
                                   (cons _%stderr-redirection226889%_
                                         '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%output226896%_
                                (if (or _%stdout-redirection226887%_
                                        _%stderr-redirection226889%_)
                                    (read-line _%proc226891%_ '#f)
                                    '#f))
                               (_%status226899%_
                                (process-status _%proc226891%_)))
                          (close-port _%proc226891%_)
                          (if (zero? _%status226899%_)
                              '#!void
                              (begin
                                (display _%output226896%_)
                                (gxc#raise-compile-error
                                 '"Compilation error; process exit with nonzero status"
                                 (cons _%program226884%_ _%args226885%_)
                                 _%status226899%_))))))))
               (lambda (_%@@keywords226904%_ . _%args226905%_)
                 (apply _%$%kw-lambda-main226876226901%_
                        _%@@keywords226904%_
                        (symbolic-table-ref
                         _%@@keywords226904%_
                         'stdout-redirection:
                         absent-value)
                        (symbolic-table-ref
                         _%@@keywords226904%_
                         'stderr-redirection:
                         absent-value)
                        _%args226905%_)))))
        (lambda _%$%args226879226911%_
          (apply keyword-dispatch
                 '#(stderr-redirection: stdout-redirection:)
                 _%$%kw-lambda226875226908%_
                 _%$%args226879226911%_))))))
