(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1713000285)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp201910 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp201910))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp201911 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp201911))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path201767%_ _%fun201768%_)
        (with-output-to-file
         (cons 'path: (cons _%path201767%_ gxc#scheme-file-settings))
         _%fun201768%_)))
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
      (lambda (_%gerbil-libdir201762%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir201762%_)))
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
      (lambda (_%dir201760%_) (delete-file-or-directory _%dir201760%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath201733%_ _%opts201734%_)
        (if (string? _%srcpath201733%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath201733%_)))
        (let ((_%outdir201736%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts201734%_)))
              (_%invoke-gsc?201737%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts201734%_)))
              (_%gsc-options201738%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts201734%_)))
              (_%keep-scm?201739%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts201734%_)))
              (_%verbosity201740%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts201734%_)))
              (_%optimize201741%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts201734%_)))
              (_%debug201742%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts201734%_)))
              (_%gen-ssxi201743%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts201734%_)))
              (_%parallel?201744%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts201734%_))))
          (if _%outdir201736%_
              (let ((__tmp201912
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir201736%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp201912))
              '#!void)
          (if _%optimize201741%_
              (let ((__tmp201913
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp201913))
              '#!void)
          (let ((__tmp201916
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath201733%_))
                   (gxc#compile-top-module
                    (let ((__tmp201917
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath201733%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp201917)))))
                (__tmp201915 (gxc#compile-timestamp))
                (__tmp201914
                 (cons 'compile-module (cons _%srcpath201733%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp201916
             gxc#current-compile-output-dir
             _%outdir201736%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?201737%_
             gxc#current-compile-gsc-options
             _%gsc-options201738%_
             gxc#current-compile-keep-scm
             _%keep-scm?201739%_
             gxc#current-compile-verbose
             _%verbosity201740%_
             gxc#current-compile-optimize
             _%optimize201741%_
             gxc#current-compile-debug
             _%debug201742%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi201743%_
             gxc#current-compile-timestamp
             __tmp201915
             gxc#current-compile-context
             __tmp201914
             gxc#current-compile-parallel
             _%parallel?201744%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath201753%_)
        (let ((_%opts201755%_ '()))
          (gxc#compile-module__% _%srcpath201753%_ _%opts201755%_))))
    (define gxc#compile-module
      (lambda _g201919_
        (let ((_g201918_ (let () (declare (not safe)) (##length _g201919_))))
          (cond ((let () (declare (not safe)) (##fx= _g201918_ 1))
                 (apply gxc#compile-module__0 _g201919_))
                ((let () (declare (not safe)) (##fx= _g201918_ 2))
                 (apply gxc#compile-module__% _g201919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g201919_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath201708%_ _%opts201709%_)
        (if (string? _%srcpath201708%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath201708%_)))
        (let ((_%outdir201711%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts201709%_)))
              (_%invoke-gsc?201712%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts201709%_)))
              (_%gsc-options201713%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts201709%_)))
              (_%keep-scm?201714%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts201709%_)))
              (_%verbosity201715%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts201709%_)))
              (_%debug201716%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts201709%_)))
              (_%parallel?201717%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts201709%_))))
          (if _%outdir201711%_
              (let ((__tmp201920
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir201711%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp201920))
              '#!void)
          (let ((__tmp201923
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath201708%_))
                   (gxc#compile-executable-module
                    (let ((__tmp201924
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath201708%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp201924))
                    _%opts201709%_)))
                (__tmp201922 (gxc#compile-timestamp))
                (__tmp201921 (cons 'compile-exe (cons _%srcpath201708%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp201923
             gxc#current-compile-output-dir
             _%outdir201711%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?201712%_
             gxc#current-compile-gsc-options
             _%gsc-options201713%_
             gxc#current-compile-keep-scm
             _%keep-scm?201714%_
             gxc#current-compile-verbose
             _%verbosity201715%_
             gxc#current-compile-debug
             _%debug201716%_
             gxc#current-compile-timestamp
             __tmp201922
             gxc#current-compile-context
             __tmp201921
             gxc#current-compile-parallel
             _%parallel?201717%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath201725%_)
        (let ((_%opts201727%_ '()))
          (gxc#compile-exe__% _%srcpath201725%_ _%opts201727%_))))
    (define gxc#compile-exe
      (lambda _g201926_
        (let ((_g201925_ (let () (declare (not safe)) (##length _g201926_))))
          (cond ((let () (declare (not safe)) (##fx= _g201925_ 1))
                 (apply gxc#compile-exe__0 _g201926_))
                ((let () (declare (not safe)) (##fx= _g201925_ 2))
                 (apply gxc#compile-exe__% _g201926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g201926_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx201704%_ _%opts201705%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts201705%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx201704%_
             _%opts201705%_)
            (gxc#compile-executable-module/separate
             _%ctx201704%_
             _%opts201705%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx201494%_ _%opts201495%_)
        (letrec ((_%generate-stub201497%_
                  (lambda (_%builtin-modules201700%_)
                    (let ((_%mod-main201702%_
                           (gxc#find-runtime-symbol _%ctx201494%_ 'main)))
                      (let ((__tmp201927
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules201700%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp201927))
                      (let ((__tmp201928
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main201702%_
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
                        (##write __tmp201928))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts201498%_
                  (lambda (_%gerbil-libdir201698%_)
                    (let ((__tmp201929
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir201698%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp201929 read))))
                 (_%replace-extension201499%_
                  (lambda (_%path201695%_ _%ext201696%_)
                    (string-append
                     (path-strip-extension _%path201695%_)
                     _%ext201696%_)))
                 (_%userlib-module?201500%_
                  (lambda (_%ctx201693%_)
                    (if (_%exclude-module?201502%_ _%ctx201693%_)
                        '#f
                        (not (_%libgerbil-module?201501%_ _%ctx201693%_)))))
                 (_%libgerbil-module?201501%_
                  (lambda (_%ctx201686%_)
                    (let ((_%id-str201688%_
                           (symbol->string
                            (##structure-ref
                             _%ctx201686%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?201502%_ _%id-str201688%_)
                          '#f
                          (let ((_%$e201690%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str201688%_))))
                            (if _%$e201690%_
                                _%$e201690%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str201688%_))))))))
                 (_%exclude-module?201502%_
                  (lambda (_%ctx-or-str201682%_)
                    (let ((_%str201684%_
                           (if (string? _%ctx-or-str201682%_)
                               _%ctx-or-str201682%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str201682%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str201684%_))))
                 (_%not-file-empty?201503%_
                  (lambda (_%path201680%_)
                    (not (gxc#file-empty? _%path201680%_))))
                 (_%fold-libgerbil-runtime-scm201504%_
                  (lambda (_%gerbil-staticdir201673%_ _%libgerbil-scm201674%_)
                    (let ((_%gerbil-runtime-scm201678%_
                           (let ((__tmp201930
                                  (lambda (_%rtm201676%_)
                                    (path-expand
                                     (let ((__tmp201931
                                            (let ((__tmp201932
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm201676%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp201932
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp201931 '".scm"))
                                     _%gerbil-staticdir201673%_))))
                             (declare (not safe))
                             (##map __tmp201930 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates201505%_
                       (append _%gerbil-runtime-scm201678%_
                               _%libgerbil-scm201674%_)))))
                 (_%remove-duplicates201505%_
                  (lambda (_%strlst201633%_)
                    (let _%loop201635%_ ((_%rest201637%_ _%strlst201633%_)
                                         (_%result201638%_ '()))
                      (let* ((_%rest201639201647%_ _%rest201637%_)
                             (_%else201641201655%_
                              (lambda () (reverse! _%result201638%_)))
                             (_%K201643201661%_
                              (lambda (_%rest201658%_ _%path201659%_)
                                (if (member _%path201659%_ _%result201638%_)
                                    (_%loop201635%_
                                     _%rest201658%_
                                     _%result201638%_)
                                    (_%loop201635%_
                                     _%rest201658%_
                                     (cons _%path201659%_
                                           _%result201638%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest201639201647%_))
                            (let ((_%hd201644201664%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201639201647%_)))
                                  (_%tl201645201666%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201639201647%_))))
                              (let* ((_%path201669%_ _%hd201644201664%_)
                                     (_%rest201671%_ _%tl201645201666%_))
                                (_%K201643201661%_
                                 _%rest201671%_
                                 _%path201669%_)))
                            (_%else201641201655%_))))))
                 (_%compile-stub201506%_
                  (lambda (_%output-scm201513%_ _%output-bin201514%_)
                    (let* ((_%gerbil-home201516%_
                            (let ((__tmp201933
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp201933)))
                           (_%gerbil-libdir201518%_
                            (path-expand '"lib" _%gerbil-home201516%_))
                           (_%gerbil-staticdir201520%_
                            (path-expand '"static" _%gerbil-libdir201518%_))
                           (_%deps201522%_
                            (gxc#find-runtime-module-deps _%ctx201494%_))
                           (_%libgerbil-deps201524%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?201501%_
                               _%deps201522%_)))
                           (_%libgerbil-scm201526%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps201524%_)))
                           (_%libgerbil-scm201528%_
                            (_%fold-libgerbil-runtime-scm201504%_
                             _%gerbil-staticdir201520%_
                             _%libgerbil-scm201526%_))
                           (_%libgerbil-c201534%_
                            (map (lambda (_%g201529201531%_)
                                   (_%replace-extension201499%_
                                    _%g201529201531%_
                                    '".c"))
                                 _%libgerbil-scm201528%_))
                           (_%libgerbil-o201540%_
                            (map (lambda (_%g201535201537%_)
                                   (_%replace-extension201499%_
                                    _%g201535201537%_
                                    '".o"))
                                 _%libgerbil-scm201528%_))
                           (_%src-deps201542%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?201500%_
                               _%deps201522%_)))
                           (_%src-deps-scm201544%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps201542%_)))
                           (_%src-deps-scm201546%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?201503%_
                               _%src-deps-scm201544%_)))
                           (_%src-deps-scm201548%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm201546%_)))
                           (_%src-deps-c201554%_
                            (let ((__tmp201934
                                   (lambda (_%g201549201551%_)
                                     (_%replace-extension201499%_
                                      _%g201549201551%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp201934 _%src-deps-scm201548%_)))
                           (_%src-deps-o201560%_
                            (let ((__tmp201935
                                   (lambda (_%g201555201557%_)
                                     (_%replace-extension201499%_
                                      _%g201555201557%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp201935 _%src-deps-scm201548%_)))
                           (_%src-bin-scm201562%_
                            (gxc#find-static-module-file _%ctx201494%_))
                           (_%src-bin-scm201564%_
                            (path-expand _%src-bin-scm201562%_))
                           (_%src-bin-c201566%_
                            (_%replace-extension201499%_
                             _%src-bin-scm201564%_
                             '".c"))
                           (_%src-bin-o201568%_
                            (_%replace-extension201499%_
                             _%src-bin-scm201564%_
                             '".o"))
                           (_%output-bin201570%_
                            (path-expand _%output-bin201514%_))
                           (_%output-scm201572%_
                            (path-expand _%output-scm201513%_))
                           (_%output-c201574%_
                            (_%replace-extension201499%_
                             _%output-scm201572%_
                             '".c"))
                           (_%output-o201576%_
                            (_%replace-extension201499%_
                             _%output-scm201572%_
                             '".o"))
                           (_%output_-c201578%_
                            (_%replace-extension201499%_
                             _%output-scm201572%_
                             '"_.c"))
                           (_%output_-o201580%_
                            (_%replace-extension201499%_
                             _%output-scm201572%_
                             '"_.o"))
                           (_%gsc-link-opts201582%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts201584%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts201586%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir201520%_))
                           (_%output-ld-opts201588%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts201590%_
                            (_%get-libgerbil-ld-opts201498%_
                             _%gerbil-libdir201518%_))
                           (_%rpath201592%_
                            (gxc#gerbil-rpath _%gerbil-libdir201518%_))
                           (_%builtin-modules201596%_
                            (_%remove-duplicates201505%_
                             (let ((__tmp201936
                                    (let ((__tmp201938
                                           (lambda (_%mod201594%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod201594%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp201937
                                           (cons _%ctx201494%_
                                                 _%deps201522%_)))
                                      (declare (not safe))
                                      (##map __tmp201938 __tmp201937))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp201936)))))
                      (letrec ((_%compile-obj201599%_
                                (lambda (_%scm-path201606%_ _%c-path201607%_)
                                  (let* ((_%o-path201609%_
                                          (_%replace-extension201499%_
                                           _%c-path201607%_
                                           '".o"))
                                         (_%lock201611%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path201609%_
                                             '".lock")))
                                         (_%locked201613%_ '#f)
                                         (_%unlock201616%_
                                          (lambda ()
                                            (close-port _%locked201613%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock201611%_)))))
                                    (let _%retry201619%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock201611%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry201619%_))
                                          (begin
                                            (set! _%locked201613%_
                                                  (let ((__tmp201939
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock201611%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp201939)))
                                            (if _%locked201613%_
                                                '#!void
                                                (_%retry201619%_)))))
                                    (let ((__tmp201941
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path201609%_)))
                                                     (not _%scm-path201606%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path201606%_
                                                        _%o-path201609%_)))
                                                 (let ((_%gsc-cc-opts201630%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp201942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp201943 (cons _%c-path201607%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp201943
                            _%gsc-static-opts201586%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp201942 _%gsc-cc-opts201630%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp201940
                                           (lambda () (_%unlock201616%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp201941
                                       __tmp201940))))))
                        (let ((__tmp201944
                               (lambda ()
                                 (let ((__tmp201945
                                        (path-directory _%output-bin201570%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp201945)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp201944))
                        (gxc#with-output-to-scheme-file
                         _%output-scm201572%_
                         (lambda ()
                           (_%generate-stub201497%_
                            _%builtin-modules201596%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it201604%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp201946
                                                   (let ((__tmp201947
                                                          (let ((__tmp201948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm201564%_
                               (cons _%output-scm201572%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp201948 _%src-deps-scm201548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp201947
                                                      _%libgerbil-c201534%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp201946
                                               _%gsc-link-opts201582%_))))
                                     (for-each
                                      _%compile-obj201599%_
                                      (let ((__tmp201949
                                             (cons _%src-bin-scm201564%_
                                                   (cons _%output-scm201572%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp201949
                                         _%src-deps-scm201548%_))
                                      (let ((__tmp201950
                                             (cons _%src-bin-c201566%_
                                                   (cons _%output-c201574%_
                                                         (cons _%output_-c201578%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp201950
                                         _%src-deps-c201554%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin201570%_
                                                        (let ((__tmp201951
                                                               (cons _%src-bin-o201568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o201576%_
                                   (cons _%output_-o201580%_
                                         (let ((__tmp201952
                                                (let ((__tmp201953
                                                       (let ((__tmp201955
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir201518%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts201590%_))))
                     (__tmp201954
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath201592%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp201955 __tmp201954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp201953
                                                   _%output-ld-opts201588%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp201952
                                            _%libgerbil-o201540%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp201951 _%src-deps-o201560%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp201956
                                            (cons _%output-c201574%_
                                                  (cons _%output_-c201578%_
                                                        (cons _%output-o201576%_
                                                              (cons _%output_-o201580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp201956)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it201604%_))
                                  (_%compile-it201604%_)))
                            '#!void))))))
          (let* ((_%output-bin201508%_
                  (gxc#compile-exe-output-file _%ctx201494%_ _%opts201495%_))
                 (_%output-scm201510%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin201508%_ '"__exe.scm"))))
            (_%compile-stub201506%_
             _%output-scm201510%_
             _%output-bin201508%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx201316%_ _%opts201317%_)
        (letrec ((_%reset-declare201319%_
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
                 (_%generate-stub201320%_
                  (lambda (_%deps201485%_)
                    (let ((_%mod-main201487%_
                           (gxc#find-runtime-symbol _%ctx201316%_ 'main))
                          (_%reset-decl201488%_ (_%reset-declare201319%_))
                          (_%user-decl201489%_ (_%user-declare201321%_)))
                      (for-each
                       (lambda (_%dep201491%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl201488%_))
                         (newline)
                         (if _%user-decl201489%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl201489%_))
                               (newline))
                             '#!void)
                         (let ((__tmp201957
                                (cons 'include (cons _%dep201491%_ '()))))
                           (declare (not safe))
                           (##write __tmp201957))
                         (newline))
                       _%deps201485%_)
                      (let ((__tmp201958
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main201487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp201958))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare201321%_
                  (lambda ()
                    (let* ((_%gsc-opts201390%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts201317%_)))
                           (_%gsc-prelude201392%_
                            (if _%gsc-opts201390%_
                                (member '"-prelude" _%gsc-opts201390%_)
                                '#f))
                           (_%gsc-prelude201394%_
                            (if _%gsc-prelude201392%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude201392%_)))
                                '#f)))
                      (let _%lp201397%_ ((_%rest201399%_
                                          (cons _%gsc-prelude201394%_ '()))
                                         (_%user-decls201400%_ '()))
                        (let* ((_%rest201401201409%_ _%rest201399%_)
                               (_%else201403201417%_
                                (lambda ()
                                  (if (null? _%user-decls201400%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls201400%_)))))
                               (_%K201405201473%_
                                (lambda (_%rest201420%_ _%expr201421%_)
                                  (let* ((_%expr201422201434%_ _%expr201421%_)
                                         (_%else201425201442%_
                                          (lambda ()
                                            (_%lp201397%_
                                             _%rest201420%_
                                             _%user-decls201400%_))))
                                    (let ((_%K201430201463%_
                                           (lambda (_%decls201461%_)
                                             (_%lp201397%_
                                              _%rest201420%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls201400%_
                                                 _%decls201461%_)))))
                                          (_%K201427201448%_
                                           (lambda (_%exprs201446%_)
                                             (_%lp201397%_
                                              (append _%exprs201446%_
                                                      _%rest201420%_)
                                              _%user-decls201400%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr201422201434%_))
                                          (let ((_%tl201432201468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr201422201434%_)))
                                                (_%hd201431201466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr201422201434%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd201431201466%_
                                                         'declare))
                                                (let ((_%decls201471%_
                                                       _%tl201432201468%_))
                                                  (_%K201430201463%_
                                                   _%decls201471%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd201431201466%_
                                                             'begin))
                                                    (let ((_%exprs201456%_
                                                           _%tl201432201468%_))
                                                      (_%K201427201448%_
                                                       _%exprs201456%_))
                                                    (_%else201425201442%_))))
                                          (_%else201425201442%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest201401201409%_))
                              (let ((_%hd201406201476%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest201401201409%_)))
                                    (_%tl201407201478%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest201401201409%_))))
                                (let* ((_%expr201481%_ _%hd201406201476%_)
                                       (_%rest201483%_ _%tl201407201478%_))
                                  (_%K201405201473%_
                                   _%rest201483%_
                                   _%expr201481%_)))
                              (_%else201403201417%_)))))))
                 (_%compile-stub201322%_
                  (lambda (_%output-scm201329%_ _%output-bin201330%_)
                    (let* ((_%gerbil-home201332%_
                            (let ((__tmp201959
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp201959)))
                           (_%gerbil-libdir201334%_
                            (path-expand '"lib" _%gerbil-home201332%_))
                           (_%runtime201336%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp201338%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home201332%_))
                           (_%include-gambit-sharp201340%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp201338%_
                               '"\")")))
                           (_%bin-scm201342%_
                            (gxc#find-static-module-file _%ctx201316%_))
                           (_%deps201344%_
                            (gxc#find-runtime-module-deps _%ctx201316%_))
                           (_%deps201346%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps201344%_)))
                           (_%deps201351%_
                            (let ((__tmp201960
                                   (lambda (_%$obj201348%_)
                                     (not (gxc#file-empty? _%$obj201348%_)))))
                              (declare (not safe))
                              (##filter __tmp201960 _%deps201346%_)))
                           (_%deps201355%_
                            (let ((__tmp201961
                                   (lambda (_%f201353%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f201353%_
                                             _%runtime201336%_))))))
                              (declare (not safe))
                              (##filter __tmp201961 _%deps201351%_)))
                           (_%output-base201357%_
                            (let ((__tmp201962
                                   (path-strip-extension
                                    _%output-scm201329%_)))
                              (declare (not safe))
                              (##string-append __tmp201962)))
                           (_%output-c201359%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201357%_ '".c")))
                           (_%output-o201361%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201357%_ '".o")))
                           (_%output-c_201363%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201357%_ '"_.c")))
                           (_%output-o_201365%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base201357%_ '"_.o")))
                           (_%gsc-link-opts201367%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts201369%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts201371%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir201334%_)))
                           (_%output-ld-opts201373%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros201375%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp201340%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp201340%_
                                            '()))))
                           (_%gsc-link-opts201377%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts201367%_
                               _%gsc-gx-macros201375%_)))
                           (_%rpath201379%_
                            (gxc#gerbil-rpath _%gerbil-libdir201334%_))
                           (_%default-ld-options201381%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp201963
                             (lambda ()
                               (let ((__tmp201964
                                      (path-directory _%output-bin201330%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp201964)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp201963))
                      (gxc#with-output-to-scheme-file
                       _%output-scm201329%_
                       (lambda ()
                         (_%generate-stub201320%_
                          (let ((__tmp201965
                                 (let ((__tmp201966
                                        (cons _%bin-scm201342%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp201966
                                    _%deps201355%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp201965 _%runtime201336%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it201387%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_201363%_
                                                      (let ((__tmp201967
                                                             (cons _%output-scm201329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp201967 _%gsc-link-opts201377%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp201968
                                                 (let ((__tmp201969
                                                        (cons _%output-c201359%_
                                                              (cons _%output-c_201363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp201969
                                                    _%gsc-static-opts201371%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp201968
                                             _%gsc-cc-opts201369%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin201330%_
                                                      (cons _%output-o201361%_
                                                            (cons _%output-o_201365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201970
                                 (let ((__tmp201972
                                        (cons '"-L"
                                              (cons _%gerbil-libdir201334%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options201381%_))))
                                       (__tmp201971
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath201379%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp201972 __tmp201971))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp201970
                             _%output-ld-opts201373%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it201387%_))
                                (_%compile-it201387%_)))
                          '#!void)))))
          (let* ((_%output-bin201324%_
                  (gxc#compile-exe-output-file _%ctx201316%_ _%opts201317%_))
                 (_%output-scm201326%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin201324%_ '"__exe.scm"))))
            (_%compile-stub201322%_
             _%output-scm201326%_
             _%output-bin201324%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx201265%_ _%id201266%_)
        (let ((_%$e201312%_
               (let ((__tmp201974
                      (lambda (_%e201267201269%_)
                        (let* ((_%g201271201281%_ _%e201267201269%_)
                               (_%else201273201289%_ (lambda () '#f))
                               (_%K201275201293%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g201271201281%_
                                 'gx#module-export::t))
                              (let* ((_%e201276201296%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201271201281%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e201277201299%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201271201281%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e201278201302%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g201271201281%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e201278201302%_ '0))
                                    (let ((_%e201279201305%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g201271201281%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g201307201309%_)
                                             (eq? _%g201307201309%_
                                                  _%id201266%_))
                                           _%e201279201305%_)
                                          (_%K201275201293%_)
                                          (_%else201273201289%_)))
                                    (_%else201273201289%_)))
                              (_%else201273201289%_)))))
                     (__tmp201973
                      (##structure-ref
                       _%ctx201265%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp201974 __tmp201973))))
          (if _%$e201312%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e201312%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx201256%_ _%id201257%_)
        (let ((_%$e201259%_
               (gxc#find-export-binding _%ctx201256%_ _%id201257%_)))
          (if _%$e201259%_
              ((lambda (_%bind201262%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind201262%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id201257%_)))
                 (##structure-ref _%bind201262%_ '1 gx#binding::t '#f))
               _%$e201259%_)
              (let ((__tmp201975
                     (##structure-ref
                      _%ctx201256%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp201975
                 _%id201257%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx201122%_)
        (letrec* ((_%ht201124%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template201125%_
                   (lambda (_%in201201%_ _%phi201202%_)
                     (let ((_%iphi201204%_
                            (fx+ _%phi201202%_
                                 (##direct-structure-ref
                                  _%in201201%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports201205%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in201201%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp201207%_ ((_%rest201209%_ _%imports201205%_)
                                          (_%r201210%_ '()))
                         (let* ((_%rest201211201219%_ _%rest201209%_)
                                (_%else201213201227%_ (lambda () _%r201210%_))
                                (_%K201215201244%_
                                 (lambda (_%rest201230%_ _%in201231%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in201231%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi201204%_))
                                           (_%lp201207%_
                                            _%rest201230%_
                                            (cons _%in201231%_ _%r201210%_))
                                           (_%lp201207%_
                                            _%rest201230%_
                                            _%r201210%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in201231%_
                                              'gx#module-import::t))
                                           (let ((_%iphi201235%_
                                                  (fx+ _%phi201202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in201231%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi201235%_))
                                                 (_%lp201207%_
                                                  _%rest201230%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in201231%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r201210%_))
                                                 (_%lp201207%_
                                                  _%rest201230%_
                                                  _%r201210%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in201231%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi201238%_
                                                      (fx+ _%iphi201204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in201231%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi201238%_))
                                                     (_%lp201207%_
                                                      _%rest201230%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in201231%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r201210%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi201238%_))
                                                         (_%lp201207%_
                                                          _%rest201230%_
                                                          (let ((__tmp201976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template201125%_
                          _%in201231%_
                          _%iphi201204%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r201210%_ __tmp201976)))
                 (_%lp201207%_ _%rest201230%_ _%r201210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp201207%_
                                                _%rest201230%_
                                                _%r201210%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest201211201219%_))
                               (let ((_%hd201216201247%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest201211201219%_)))
                                     (_%tl201217201249%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest201211201219%_))))
                                 (let* ((_%in201252%_ _%hd201216201247%_)
                                        (_%rest201254%_ _%tl201217201249%_))
                                   (_%K201215201244%_
                                    _%rest201254%_
                                    _%in201252%_)))
                               (_%else201213201227%_)))))))
                  (_%find-deps201126%_
                   (lambda (_%rest201134%_ _%deps201135%_)
                     (let* ((_%rest201136201144%_ _%rest201134%_)
                            (_%else201138201152%_ (lambda () _%deps201135%_))
                            (_%K201140201189%_
                             (lambda (_%rest201155%_ _%hd201156%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd201156%_
                                      'gx#module-context::t))
                                   (let ((_%id201159%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201156%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports201160%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd201156%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht201124%_
                                            _%id201159%_))
                                         (_%find-deps201126%_
                                          _%rest201155%_
                                          _%deps201135%_)
                                         (let ((_%$e201163%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd201156%_))))
                                           (if _%$e201163%_
                                               ((lambda (_%pre201166%_)
                                                  (let ((_%xdeps201168%_
                                                         (_%find-deps201126%_
                                                          (cons _%pre201166%_
                                                                _%imports201160%_)
                                                          _%deps201135%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht201124%_
                                                       _%id201159%_
                                                       _%hd201156%_))
                                                    (_%find-deps201126%_
                                                     _%rest201155%_
                                                     (cons _%hd201156%_
                                                           _%xdeps201168%_))))
                                                _%$e201163%_)
                                               (let ((_%xdeps201171%_
                                                      (_%find-deps201126%_
                                                       _%imports201160%_
                                                       _%deps201135%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht201124%_
                                                    _%id201159%_
                                                    _%hd201156%_))
                                                 (_%find-deps201126%_
                                                  _%rest201155%_
                                                  (cons _%hd201156%_
                                                        _%xdeps201171%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd201156%_
                                          'gx#prelude-context::t))
                                       (let ((_%id201174%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd201156%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht201124%_
                                                _%id201174%_))
                                             (_%find-deps201126%_
                                              _%rest201155%_
                                              _%deps201135%_)
                                             (let ((_%xdeps201178%_
                                                    (_%find-deps201126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd201156%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps201135%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht201124%_
                                                      _%id201174%_))
                                                   (_%find-deps201126%_
                                                    _%rest201155%_
                                                    _%xdeps201178%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht201124%_
                                                        _%id201174%_
                                                        _%hd201156%_))
                                                     (_%find-deps201126%_
                                                      _%rest201155%_
                                                      (cons _%hd201156%_
                                                            _%xdeps201178%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd201156%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd201156%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps201126%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201156%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201155%_)
                                                _%deps201135%_)
                                               (_%find-deps201126%_
                                                _%rest201155%_
                                                _%deps201135%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd201156%_
                                                  'gx#module-export::t))
                                               (_%find-deps201126%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd201156%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest201155%_)
                                                _%deps201135%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd201156%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd201156%_ '2 '#f '#f)))
               (_%find-deps201126%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd201156%_ '1 '#f '#f))
                      _%rest201155%_)
                _%deps201135%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd201156%_ '2 '#f '#f)))
                   (let ((_%xdeps201185%_
                          (_%import-set-template201125%_ _%hd201156%_ '0)))
                     (_%find-deps201126%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest201155%_ _%xdeps201185%_))
                      _%deps201135%_))
                   (_%find-deps201126%_ _%rest201155%_ _%deps201135%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd201156%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest201136201144%_))
                           (let ((_%hd201141201192%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest201136201144%_)))
                                 (_%tl201142201194%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest201136201144%_))))
                             (let* ((_%hd201197%_ _%hd201141201192%_)
                                    (_%rest201199%_ _%tl201142201194%_))
                               (_%K201140201189%_
                                _%rest201199%_
                                _%hd201197%_)))
                           (_%else201138201152%_))))))
          (let ((__tmp201977
                 (filter gx#expander-context-id
                         (_%find-deps201126%_
                          (let ((_%$e201128%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx201122%_))))
                            (if _%$e201128%_
                                ((lambda (_%pre201131%_)
                                   (cons _%pre201131%_
                                         (##structure-ref
                                          _%ctx201122%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e201128%_)
                                (##structure-ref
                                 _%ctx201122%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp201977)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx201052%_)
        (let* ((_%context-id201054%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx201052%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx201052%_ '1 '#f '#f))
                    (string->symbol _%ctx201052%_)))
               (_%scm201056%_
                (let ((__tmp201978
                       (gxc#static-module-name _%context-id201054%_)))
                  (declare (not safe))
                  (##string-append __tmp201978 '".scm")))
               (_%dirs201058%_ (let () (declare (not safe)) (load-path)))
               (_%dirs201064%_
                (let ((_%user-libpath201060%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath201060%_
                      (let ((_%user-libpath201062%_
                             (path-expand '"lib" _%user-libpath201060%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath201062%_ _%dirs201058%_))
                            _%dirs201058%_
                            (cons _%user-libpath201062%_ _%dirs201058%_)))
                      _%dirs201058%_)))
               (_%dirs201074%_
                (let ((_%$e201066%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e201066%_
                      ((lambda (_%g201068201070%_)
                         (cons _%g201068201070%_ _%dirs201064%_))
                       _%$e201066%_)
                      _%dirs201064%_)))
               (_%dirs201080%_
                (let ((__tmp201979
                       (lambda (_%g201075201077%_)
                         (path-expand '"static" _%g201075201077%_))))
                  (declare (not safe))
                  (##map __tmp201979 _%dirs201074%_))))
          (let _%lp201083%_ ((_%rest201085%_ _%dirs201080%_))
            (let* ((_%rest201086201094%_ _%rest201085%_)
                   (_%else201088201102%_
                    (lambda ()
                      (let ((__tmp201980
                             (##structure-ref
                              _%ctx201052%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp201980
                         _%scm201056%_))))
                   (_%K201090201110%_
                    (lambda (_%rest201105%_ _%dir201106%_)
                      (let ((_%path201108%_
                             (path-expand _%scm201056%_ _%dir201106%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path201108%_))
                            _%path201108%_
                            (_%lp201083%_ _%rest201105%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest201086201094%_))
                  (let ((_%hd201091201113%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201086201094%_)))
                        (_%tl201092201115%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201086201094%_))))
                    (let* ((_%dir201118%_ _%hd201091201113%_)
                           (_%rest201120%_ _%tl201092201115%_))
                      (_%K201090201110%_ _%rest201120%_ _%dir201118%_)))
                  (_%else201088201102%_)))))))
    (define gxc#file-empty?
      (lambda (_%path201050%_)
        (zero? (let ((__tmp201981 (file-info _%path201050%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp201981)))))
    (define gxc#compile-top-module
      (lambda (_%ctx201046%_)
        (let ((__tmp201985
               (lambda ()
                 (let ((__tmp201986
                        (##structure-ref
                         _%ctx201046%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp201986))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp201987
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx201046%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp201987))
                     '#!void)
                 (gxc#collect-bindings _%ctx201046%_)
                 (gxc#compile-runtime-code _%ctx201046%_)
                 (gxc#compile-meta-code _%ctx201046%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx201046%_)
                     '#!void)))
              (__tmp201984
               (let ((__obj201908
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj201908))
                 __obj201908))
              (__tmp201983 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp201982
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
           __tmp201985
           gx#current-expander-context
           _%ctx201046%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp201984
           gxc#current-compile-runtime-sections
           __tmp201983
           gxc#current-compile-runtime-names
           __tmp201982))))
    (define gxc#collect-bindings
      (lambda (_%ctx201044%_)
        (let ((__tmp201988
               (##structure-ref _%ctx201044%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp201988))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx200992%_)
        (letrec ((_%compile1200994%_
                  (lambda (_%ctx201033%_)
                    (let* ((_%code201035%_
                            (##structure-ref
                             _%ctx201033%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm201039%_
                            (let ((_%idstr201037%_
                                   (let ((__tmp201989
                                          (##structure-ref
                                           _%ctx201033%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp201989))))
                              (declare (not safe))
                              (##string-append _%idstr201037%_ '"~0")))
                           (_%rtc?201041%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code201035%_))))
                      (if _%rtc?201041%_
                          (let ((__tmp201990
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp201990
                             _%ctx201033%_
                             _%rtm201039%_))
                          '#!void)
                      (_%generate-runtime-code200996%_
                       _%ctx201033%_
                       _%code201035%_
                       (if _%rtc?201041%_ _%rtm201039%_ '#f)))))
                 (_%context-timestamp200995%_
                  (lambda (_%ctx201031%_)
                    (let ((__tmp201991
                           (let ((__tmp201992
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx201031%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp201992 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp201991))))
                 (_%generate-runtime-code200996%_
                  (lambda (_%ctx201003%_ _%code201004%_ _%rtm201005%_)
                    (let* ((_%runtime-code?201007%_ (if _%rtm201005%_ '#t '#f))
                           (_%lifts201009%_ (box '()))
                           (_%runtime-code201012%_
                            (if _%runtime-code?201007%_
                                (let ((__tmp201995
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code201004%_))))
                                      (__tmp201994
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp201993
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp201995
                                   gx#current-expander-context
                                   _%ctx201003%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts201009%_
                                   gxc#current-compile-marks
                                   __tmp201994
                                   gxc#current-compile-identifiers
                                   __tmp201993))
                                '#f))
                           (_%runtime-code201014%_
                            (if _%runtime-code?201007%_
                                (if (null? (unbox _%lifts201009%_))
                                    _%runtime-code201012%_
                                    (cons 'begin
                                          (let ((__tmp201997
                                                 (cons _%runtime-code201012%_
                                                       '()))
                                                (__tmp201996
                                                 (reverse (unbox _%lifts201009%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp201997
                                             __tmp201996))))
                                '#f))
                           (_%runtime-code201016%_
                            (if _%runtime-code?201007%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp200995%_
                                                         _%ctx201003%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code201014%_ '())))
                                '#f))
                           (_%loader-code201019%_
                            (let ((__tmp201998
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code201004%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp201998
                               gx#current-expander-context
                               _%ctx201003%_)))
                           (_%loader-code201021%_
                            (cons 'begin
                                  (cons _%loader-code201019%_
                                        (cons (if _%runtime-code?201007%_
                                                  (cons 'load-module
                                                        (cons _%rtm201005%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0201023%_
                            (gxc#compile-output-file _%ctx201003%_ '0 '".scm"))
                           (_%scmrt201025%_
                            (gxc#compile-output-file
                             _%ctx201003%_
                             '#f
                             '".scm"))
                           (_%scms201027%_
                            (gxc#compile-static-output-file _%ctx201003%_)))
                      (if _%runtime-code?201007%_
                          (gxc#compile-scm-file__0
                           _%scm0201023%_
                           _%runtime-code201016%_)
                          '#!void)
                      (let ((__tmp201999
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt201025%_
                                _%loader-code201021%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp201999
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms201027%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms201027%_))
                          '#!void)
                      (if _%runtime-code?201007%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0201023%_ _%scms201027%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms201027%_ void)))))))
          (let* ((_%all-modules200998%_
                  (cons _%ctx200992%_ (gxc#lift-nested-modules _%ctx200992%_)))
                 (__tmp202000
                  (lambda (_%ctx201000%_)
                    (let ((__tmp202001
                           (lambda () (_%compile1200994%_ _%ctx201000%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp202001
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp202000 _%all-modules200998%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx200892%_)
        (letrec ((_%compile-ssi200894%_
                  (lambda (_%code200960%_)
                    (let* ((_%path200962%_
                            (gxc#compile-output-file
                             _%ctx200892%_
                             '#f
                             '".ssi"))
                           (_%prelude200974%_
                            (let* ((_%super200964%_
                                    (##structure-ref
                                     _%ctx200892%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e200966%_
                                    (##structure-ref
                                     _%super200964%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e200966%_
                                  ((lambda (_%g200968200970%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g200968200970%_)))
                                   _%$e200966%_)
                                  ':<root>)))
                           (_%ns200976%_
                            (##structure-ref
                             _%ctx200892%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr200978%_
                            (symbol->string
                             (##structure-ref
                              _%ctx200892%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg200986%_
                            (let ((_%$e200980%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr200978%_ '#\/))))
                              (if _%$e200980%_
                                  ((lambda (_%x200983%_)
                                     (let ((__tmp202002
                                            (substring
                                             _%idstr200978%_
                                             '0
                                             _%x200983%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp202002)))
                                   _%$e200980%_)
                                  '#f)))
                           (_%rt200988%_
                            (let ((__tmp202003
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp202003 _%ctx200892%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path200962%_))
                      (gxc#with-output-to-scheme-file
                       _%path200962%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude200974%_))
                         (if _%pkg200986%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg200986%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns200976%_))
                         (newline)
                         (pretty-print _%code200960%_)
                         (if _%rt200988%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt200988%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi200895%_
                  (lambda (_%part200900%_)
                    (let* ((_%part200901200914%_ _%part200900%_)
                           (_%E200903200918%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part200901200914%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K200904200929%_
                            (lambda (_%code200921%_
                                     _%n200922%_
                                     _%phi200923%_
                                     _%phi-ctx200924%_)
                              (let ((_%code200927%_
                                     (let ((__tmp202004
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code200921%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp202004
                                        gx#current-expander-context
                                        _%phi-ctx200924%_
                                        gx#current-expander-phi
                                        _%phi200923%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx200892%_
                                  _%n200922%_
                                  '".scm")
                                 _%code200927%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part200901200914%_))
                          (let ((_%hd200905200932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part200901200914%_)))
                                (_%tl200906200934%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part200901200914%_))))
                            (let ((_%phi-ctx200937%_ _%hd200905200932%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl200906200934%_))
                                  (let ((_%hd200907200939%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl200906200934%_)))
                                        (_%tl200908200941%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl200906200934%_))))
                                    (let ((_%phi200944%_ _%hd200907200939%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl200908200941%_))
                                          (let ((_%hd200909200946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl200908200941%_)))
                                                (_%tl200910200948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl200908200941%_))))
                                            (let ((_%n200951%_
                                                   _%hd200909200946%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl200910200948%_))
                                                  (let ((_%hd200911200953%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl200910200948%_)))
                                                        (_%tl200912200955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl200910200948%_))))
                                                    (let ((_%code200958%_
                                                           _%hd200911200953%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl200912200955%_))
                                                          (_%K200904200929%_
                                                           _%code200958%_
                                                           _%n200951%_
                                                           _%phi200944%_
                                                           _%phi-ctx200937%_)
                                                          (_%E200903200918%_))))
                                                  (_%E200903200918%_))))
                                          (_%E200903200918%_))))
                                  (_%E200903200918%_))))
                          (_%E200903200918%_))))))
          (let ((_g202005_ (gxc#generate-meta-code _%ctx200892%_)))
            (begin
              (let ((_g202006_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g202005_)
                           (##vector-length _g202005_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g202006_ 2)))
                    (error "Context expects 2 values" _g202006_)))
              (let ((_%ssi-code200897%_
                     (let () (declare (not safe)) (##vector-ref _g202005_ 0)))
                    (_%phi-code200898%_
                     (let () (declare (not safe)) (##vector-ref _g202005_ 1))))
                (begin
                  (_%compile-ssi200894%_ _%ssi-code200897%_)
                  (for-each _%compile-phi200895%_ _%phi-code200898%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx200874%_)
        (let* ((_%path200876%_
                (gxc#compile-output-file _%ctx200874%_ '#f '".ssxi.ss"))
               (_%code200878%_
                (let ((__tmp202007
                       (##structure-ref
                        _%ctx200874%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp202007)))
               (_%idstr200880%_
                (symbol->string
                 (##structure-ref
                  _%ctx200874%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg200888%_
                (let ((_%$e200882%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr200880%_ '#\/))))
                  (if _%$e200882%_
                      ((lambda (_%x200885%_)
                         (let ((__tmp202008
                                (substring _%idstr200880%_ '0 _%x200885%_)))
                           (declare (not safe))
                           (##string->symbol __tmp202008)))
                       _%$e200882%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path200876%_))
          (gxc#with-output-to-scheme-file
           _%path200876%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg200888%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg200888%_))
                 '#!void)
             (newline)
             (pretty-print _%code200878%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx200867%_)
        (let* ((_%state200869%_
                (let ((__obj201909
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj201909 _%ctx200867%_))
                  __obj201909))
               (_%ssi-code200871%_
                (let ((__tmp202009
                       (##structure-ref
                        _%ctx200867%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state200869%_
                   __tmp202009))))
          (values _%ssi-code200871%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state200869%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx200860%_)
        (let ((_%lifts200862%_ (box '())))
          (let ((__tmp202012
                 (lambda ()
                   (let ((_%code200865%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx200860%_))))
                     (if (null? (unbox _%lifts200862%_))
                         _%code200865%_
                         (cons 'begin
                               (let ((__tmp202014 (cons _%code200865%_ '()))
                                     (__tmp202013
                                      (reverse (unbox _%lifts200862%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp202014 __tmp202013)))))))
                (__tmp202011
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp202010
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp202012
             gxc#current-compile-lift
             _%lifts200862%_
             gxc#current-compile-marks
             __tmp202011
             gxc#current-compile-identifiers
             __tmp202010)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx200856%_)
        (let ((_%modules200858%_ (box '())))
          (let ((__tmp202015
                 (##structure-ref _%ctx200856%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules200858%_ __tmp202015))
          (reverse (unbox _%modules200858%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path200836%_ _%code200837%_ _%phi?200838%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path200836%_))
        (gxc#with-output-to-scheme-file
         _%path200836%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp202016
                                           (if _%phi?200838%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp202016)))))))
           (pretty-print _%code200837%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it200842%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path200836%_ _%phi?200838%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp202017
                         (cons 'compile-file (cons _%path200836%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it200842%_ __tmp202017))
                  (_%compile-it200842%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path200847%_ _%code200848%_)
        (let ((_%phi?200850%_ '#f))
          (gxc#compile-scm-file__%
           _%path200847%_
           _%code200848%_
           _%phi?200850%_))))
    (define gxc#compile-scm-file
      (lambda _g202019_
        (let ((_g202018_ (let () (declare (not safe)) (##length _g202019_))))
          (cond ((let () (declare (not safe)) (##fx= _g202018_ 2))
                 (apply gxc#compile-scm-file__0 _g202019_))
                ((let () (declare (not safe)) (##fx= _g202018_ 3))
                 (apply gxc#compile-scm-file__% _g202019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g202019_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?200737%_)
        (let _%lp200739%_ ((_%rest200741%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts200742%_ '()))
          (let* ((_%rest200743200763%_ _%rest200741%_)
                 (_%else200747200771%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts200742%_)))
                        (reverse _%opts200742%_)))))
            (let ((_%K200757200814%_
                   (lambda (_%rest200812%_)
                     (_%lp200739%_ _%rest200812%_ _%opts200742%_)))
                  (_%K200752200796%_
                   (lambda (_%rest200794%_)
                     (_%lp200739%_ _%rest200794%_ _%opts200742%_)))
                  (_%K200749200778%_
                   (lambda (_%rest200775%_ _%opt200776%_)
                     (_%lp200739%_
                      _%rest200775%_
                      (cons _%opt200776%_ _%opts200742%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest200743200763%_))
                  (let ((_%tl200759200819%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200743200763%_)))
                        (_%hd200758200817%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200743200763%_))))
                    (if (equal? _%hd200758200817%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl200759200819%_))
                            (let* ((_%tl200761200822%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl200759200819%_)))
                                   (_%rest200825%_ _%tl200761200822%_))
                              (_%K200757200814%_ _%rest200825%_))
                            (let ((_%opt200786%_ _%hd200758200817%_)
                                  (_%rest200788%_ _%tl200759200819%_))
                              (_%K200749200778%_
                               _%rest200788%_
                               _%opt200786%_)))
                        (if (equal? _%hd200758200817%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl200759200819%_))
                                (let* ((_%tl200756200804%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl200759200819%_)))
                                       (_%rest200807%_ _%tl200756200804%_))
                                  (_%K200752200796%_ _%rest200807%_))
                                (let ((_%opt200786%_ _%hd200758200817%_)
                                      (_%rest200788%_ _%tl200759200819%_))
                                  (_%K200749200778%_
                                   _%rest200788%_
                                   _%opt200786%_)))
                            (let ((_%opt200786%_ _%hd200758200817%_)
                                  (_%rest200788%_ _%tl200759200819%_))
                              (_%K200749200778%_
                               _%rest200788%_
                               _%opt200786%_)))))
                  (_%else200747200771%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?200831%_ '#f)) (gxc#gsc-link-options__% _%phi?200831%_))))
    (define gxc#gsc-link-options
      (lambda _g202021_
        (let ((_g202020_ (let () (declare (not safe)) (##length _g202021_))))
          (cond ((let () (declare (not safe)) (##fx= _g202020_ 0))
                 (apply gxc#gsc-link-options__0 _g202021_))
                ((let () (declare (not safe)) (##fx= _g202020_ 1))
                 (apply gxc#gsc-link-options__% _g202021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g202021_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords200586%_ _%static?200582200587%_ _%phi?200589%_)
        (let ((_%static?200591%_
               (if (eq? _%static?200582200587%_ absent-value)
                   '#f
                   _%static?200582200587%_)))
          (if _%phi?200589%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp200593%_ ((_%rest200595%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts200596%_ '()))
                (let* ((_%rest200597200623%_ _%rest200595%_)
                       (_%else200602200631%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts200596%_)))
                              (reverse! _%opts200596%_)))))
                  (let ((_%K200617200694%_
                         (lambda (_%rest200691%_ _%opt200692%_)
                           (if _%static?200591%_
                               (_%lp200593%_
                                _%rest200691%_
                                (cons _%opt200692%_
                                      (cons '"-cc-options" _%opts200596%_)))
                               (_%lp200593%_ _%rest200691%_ _%opts200596%_))))
                        (_%K200612200671%_
                         (lambda (_%rest200668%_ _%opt200669%_)
                           (_%lp200593%_
                            _%rest200668%_
                            (cons _%opt200669%_
                                  (cons '"-cc-options" _%opts200596%_)))))
                        (_%K200607200651%_
                         (lambda (_%rest200649%_)
                           (_%lp200593%_ _%rest200649%_ _%opts200596%_)))
                        (_%K200604200637%_
                         (lambda (_%rest200635%_)
                           (_%lp200593%_ _%rest200635%_ _%opts200596%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest200597200623%_))
                        (let ((_%tl200619200699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest200597200623%_)))
                              (_%hd200618200697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest200597200623%_))))
                          (if (equal? _%hd200618200697%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl200619200699%_))
                                  (let ((_%tl200621200704%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl200619200699%_)))
                                        (_%hd200620200702%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl200619200699%_))))
                                    (if (equal? _%hd200620200702%_ '"-Bstatic")
                                        (let ((_%opt200707%_
                                               _%hd200620200702%_)
                                              (_%rest200709%_
                                               _%tl200621200704%_))
                                          (_%K200617200694%_
                                           _%rest200709%_
                                           _%opt200707%_))
                                        (let ((_%opt200684%_
                                               _%hd200620200702%_)
                                              (_%rest200686%_
                                               _%tl200621200704%_))
                                          (_%K200612200671%_
                                           _%rest200686%_
                                           _%opt200684%_))))
                                  (let ((_%rest200643%_ _%tl200619200699%_))
                                    (_%K200604200637%_ _%rest200643%_)))
                              (if (equal? _%hd200618200697%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl200619200699%_))
                                      (let* ((_%tl200611200659%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl200619200699%_)))
                                             (_%rest200662%_
                                              _%tl200611200659%_))
                                        (_%K200607200651%_ _%rest200662%_))
                                      (let ((_%rest200643%_
                                             _%tl200619200699%_))
                                        (_%K200604200637%_ _%rest200643%_)))
                                  (let ((_%rest200643%_ _%tl200619200699%_))
                                    (_%K200604200637%_ _%rest200643%_)))))
                        (_%else200602200631%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords200714%_ _%static?200582200715%_)
        (let ((_%phi?200717%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords200714%_
           _%static?200582200715%_
           _%phi?200717%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g202023_
        (let ((_g202022_ (let () (declare (not safe)) (##length _g202023_))))
          (cond ((let () (declare (not safe)) (##fx= _g202022_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g202023_))
                ((let () (declare (not safe)) (##fx= _g202022_ 3))
                 (apply gxc#gsc-cc-options__%__% _g202023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g202023_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords200726%_ . _%args200727%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords200726%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200726%_
                  'static:
                  absent-value))
               _%args200727%_)))
    (define gxc#gsc-cc-options
      (lambda _%args200583200733%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args200583200733%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords200431%_ _%static?200427200432%_ _%phi?200434%_)
        (let ((_%static?200436%_
               (if (eq? _%static?200427200432%_ absent-value)
                   '#f
                   _%static?200427200432%_)))
          (if _%phi?200434%_
              '()
              (let _%lp200438%_ ((_%rest200440%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts200441%_ '()))
                (let* ((_%rest200442200468%_ _%rest200440%_)
                       (_%else200447200476%_
                        (lambda () (reverse! _%opts200441%_))))
                  (let ((_%K200462200539%_
                         (lambda (_%rest200536%_ _%opt200537%_)
                           (if _%static?200436%_
                               (_%lp200438%_
                                _%rest200536%_
                                (cons _%opt200537%_
                                      (cons '"-ld-options" _%opts200441%_)))
                               (_%lp200438%_ _%rest200536%_ _%opts200441%_))))
                        (_%K200457200516%_
                         (lambda (_%rest200513%_ _%opt200514%_)
                           (_%lp200438%_
                            _%rest200513%_
                            (cons _%opt200514%_
                                  (cons '"-ld-options" _%opts200441%_)))))
                        (_%K200452200496%_
                         (lambda (_%rest200494%_)
                           (_%lp200438%_ _%rest200494%_ _%opts200441%_)))
                        (_%K200449200482%_
                         (lambda (_%rest200480%_)
                           (_%lp200438%_ _%rest200480%_ _%opts200441%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest200442200468%_))
                        (let ((_%tl200464200544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest200442200468%_)))
                              (_%hd200463200542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest200442200468%_))))
                          (if (equal? _%hd200463200542%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl200464200544%_))
                                  (let ((_%tl200466200549%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl200464200544%_)))
                                        (_%hd200465200547%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl200464200544%_))))
                                    (if (equal? _%hd200465200547%_ '"-static")
                                        (let ((_%opt200552%_
                                               _%hd200465200547%_)
                                              (_%rest200554%_
                                               _%tl200466200549%_))
                                          (_%K200462200539%_
                                           _%rest200554%_
                                           _%opt200552%_))
                                        (let ((_%opt200529%_
                                               _%hd200465200547%_)
                                              (_%rest200531%_
                                               _%tl200466200549%_))
                                          (_%K200457200516%_
                                           _%rest200531%_
                                           _%opt200529%_))))
                                  (let ((_%rest200488%_ _%tl200464200544%_))
                                    (_%K200449200482%_ _%rest200488%_)))
                              (if (equal? _%hd200463200542%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl200464200544%_))
                                      (let* ((_%tl200456200504%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl200464200544%_)))
                                             (_%rest200507%_
                                              _%tl200456200504%_))
                                        (_%K200452200496%_ _%rest200507%_))
                                      (let ((_%rest200488%_
                                             _%tl200464200544%_))
                                        (_%K200449200482%_ _%rest200488%_)))
                                  (let ((_%rest200488%_ _%tl200464200544%_))
                                    (_%K200449200482%_ _%rest200488%_)))))
                        (_%else200447200476%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords200559%_ _%static?200427200560%_)
        (let ((_%phi?200562%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords200559%_
           _%static?200427200560%_
           _%phi?200562%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g202025_
        (let ((_g202024_ (let () (declare (not safe)) (##length _g202025_))))
          (cond ((let () (declare (not safe)) (##fx= _g202024_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g202025_))
                ((let () (declare (not safe)) (##fx= _g202024_ 3))
                 (apply gxc#gsc-ld-options__%__% _g202025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g202025_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords200571%_ . _%args200572%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords200571%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200571%_
                  'static:
                  absent-value))
               _%args200572%_)))
    (define gxc#gsc-ld-options
      (lambda _%args200428200578%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args200428200578%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir200422%_)
        (let ((_%user-staticdir200424%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir200422%_
                       '" -I "
                       _%user-staticdir200424%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp200334%_ ((_%rest200336%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts200337%_ '()))
          (let* ((_%rest200338200358%_ _%rest200336%_)
                 (_%else200342200366%_ (lambda () _%opts200337%_)))
            (let ((_%K200352200409%_
                   (lambda (_%rest200407%_)
                     (_%lp200334%_ _%rest200407%_ _%opts200337%_)))
                  (_%K200347200387%_
                   (lambda (_%rest200384%_ _%opt200385%_)
                     (_%lp200334%_
                      _%rest200384%_
                      (let ((__tmp202026
                             (let ((__tmp202027
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt200385%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp202027))))
                        (declare (not safe))
                        (##append _%opts200337%_ __tmp202026)))))
                  (_%K200344200372%_
                   (lambda (_%rest200370%_)
                     (_%lp200334%_ _%rest200370%_ _%opts200337%_))))
              (if (let () (declare (not safe)) (##pair? _%rest200338200358%_))
                  (let ((_%tl200354200414%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200338200358%_)))
                        (_%hd200353200412%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200338200358%_))))
                    (if (equal? _%hd200353200412%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl200354200414%_))
                            (let* ((_%tl200356200417%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl200354200414%_)))
                                   (_%rest200420%_ _%tl200356200417%_))
                              (_%K200352200409%_ _%rest200420%_))
                            (let ((_%rest200378%_ _%tl200354200414%_))
                              (_%K200344200372%_ _%rest200378%_)))
                        (if (equal? _%hd200353200412%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl200354200414%_))
                                (let ((_%tl200351200397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl200354200414%_)))
                                      (_%hd200350200395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl200354200414%_))))
                                  (let ((_%opt200400%_ _%hd200350200395%_)
                                        (_%rest200402%_ _%tl200351200397%_))
                                    (_%K200347200387%_
                                     _%rest200402%_
                                     _%opt200400%_)))
                                (let ((_%rest200378%_ _%tl200354200414%_))
                                  (_%K200344200372%_ _%rest200378%_)))
                            (let ((_%rest200378%_ _%tl200354200414%_))
                              (_%K200344200372%_ _%rest200378%_)))))
                  (_%else200342200366%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str200331%_)
        (not (let () (declare (not safe)) (string-empty? _%str200331%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path200324%_ _%phi?200325%_)
        (let ((_%gsc-link-opts200327%_
               (gxc#gsc-link-options__% _%phi?200325%_))
              (_%gsc-cc-opts200328%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?200325%_))
              (_%gsc-ld-opts200329%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?200325%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp202028
                  (let ((__tmp202029
                         (let ((__tmp202030 (cons _%path200324%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp202030
                            _%gsc-link-opts200327%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp202029 _%gsc-ld-opts200329%_))))
             (declare (not safe))
             (__foldr1 cons __tmp202028 _%gsc-cc-opts200328%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx200290%_ _%n200291%_ _%ext200292%_)
        (letrec ((_%module-relative-path200294%_
                  (lambda (_%ctx200322%_)
                    (path-strip-directory
                     (let ((__tmp202031
                            (##structure-ref
                             _%ctx200322%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp202031)))))
                 (_%module-source-directory200295%_
                  (lambda (_%ctx200318%_)
                    (path-directory
                     (let ((_%mpath200320%_
                            (##structure-ref
                             _%ctx200318%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath200320%_)
                           _%mpath200320%_
                           (last _%mpath200320%_))))))
                 (_%section-string200296%_
                  (lambda (_%n200312%_)
                    (if (number? _%n200312%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n200312%_))
                        (if (symbol? _%n200312%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n200312%_))
                            (if (string? _%n200312%_)
                                _%n200312%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n200312%_)))))))
                 (_%file-name200297%_
                  (lambda (_%path200310%_)
                    (if _%n200291%_
                        (string-append
                         _%path200310%_
                         '"~"
                         (_%section-string200296%_ _%n200291%_)
                         _%ext200292%_)
                        (string-append _%path200310%_ _%ext200292%_))))
                 (_%file-path200298%_
                  (lambda ()
                    (let ((_%$e200304%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e200304%_
                          ((lambda (_%outdir200307%_)
                             (path-expand
                              (_%file-name200297%_
                               (let ((__tmp202032
                                      (##structure-ref
                                       _%ctx200290%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp202032)))
                              _%outdir200307%_))
                           _%$e200304%_)
                          (path-expand
                           (_%file-name200297%_
                            (_%module-relative-path200294%_ _%ctx200290%_))
                           (_%module-source-directory200295%_
                            _%ctx200290%_)))))))
          (let ((_%path200300%_ (_%file-path200298%_)))
            (let ((__tmp202033
                   (lambda ()
                     (let ((__tmp202034 (path-directory _%path200300%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202034)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202033))
            _%path200300%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx200271%_)
        (letrec ((_%file-name200273%_
                  (lambda (_%id200288%_)
                    (let ((__tmp202035 (gxc#static-module-name _%id200288%_)))
                      (declare (not safe))
                      (##string-append __tmp202035 '".scm"))))
                 (_%file-path200274%_
                  (lambda ()
                    (let* ((_%file200280%_
                            (_%file-name200273%_
                             (##structure-ref
                              _%ctx200271%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e200282%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e200282%_
                          ((lambda (_%outdir200285%_)
                             (path-expand
                              _%file200280%_
                              (path-expand '"static" _%outdir200285%_)))
                           _%$e200282%_)
                          (path-expand _%file200280%_ '"static"))))))
          (let ((_%path200276%_ (_%file-path200274%_)))
            (let ((__tmp202036
                   (lambda ()
                     (let ((__tmp202037 (path-directory _%path200276%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp202037)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp202036))
            _%path200276%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx200264%_ _%opts200265%_)
        (let ((_%$e200267%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts200265%_))))
          (if _%$e200267%_
              _%$e200267%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx200264%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr200254%_)
        (if (string? _%idstr200254%_)
            (let* ((_%str200257%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr200254%_)))
                   (_%strs200259%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str200257%_ '#\/))))
              (declare (not safe))
              (string-join _%strs200259%_ '"__"))
            (if (symbol? _%idstr200254%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr200254%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr200254%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp202038
               (let ((__tmp202039 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp202039 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp202038))))
    (define gxc#invoke__%
      (lambda (_%@@keywords200218%_
               _%stdout-redirection200214200219%_
               _%stderr-redirection200215200221%_
               _%program200223%_
               _%args200224%_)
        (let* ((_%stdout-redirection200226%_
                (if (eq? _%stdout-redirection200214200219%_ absent-value)
                    '#f
                    _%stdout-redirection200214200219%_))
               (_%stderr-redirection200228%_
                (if (eq? _%stderr-redirection200215200221%_ absent-value)
                    '#f
                    _%stderr-redirection200215200221%_)))
          (let ((__tmp202040 (cons _%program200223%_ _%args200224%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp202040))
          (let* ((_%proc200230%_
                  (open-process
                   (cons 'path:
                         (cons _%program200223%_
                               (cons 'arguments:
                                     (cons _%args200224%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection200226%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection200228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output200235%_
                  (if (or _%stdout-redirection200226%_
                          _%stderr-redirection200228%_)
                      (read-line _%proc200230%_ '#f)
                      '#f))
                 (_%status200238%_ (process-status _%proc200230%_)))
            (let () (declare (not safe)) (##close-port _%proc200230%_))
            (if (zero? _%status200238%_)
                '#!void
                (begin
                  (display _%output200235%_)
                  (let ((__tmp202041 (cons _%program200223%_ _%args200224%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp202041
                     _%status200238%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords200243%_ . _%args200244%_)
        (apply gxc#invoke__%
               _%@@keywords200243%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200243%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200243%_
                  'stderr-redirection:
                  absent-value))
               _%args200244%_)))
    (define gxc#invoke
      (lambda _%args200216200250%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args200216200250%_)))))
