(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712823033)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp197472 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp197472))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp197473 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp197473))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path197329%_ _%fun197330%_)
        (with-output-to-file
         (cons 'path: (cons _%path197329%_ gxc#scheme-file-settings))
         _%fun197330%_)))
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
      (lambda (_%gerbil-libdir197324%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir197324%_)))
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
      (lambda (_%dir197322%_) (delete-file-or-directory _%dir197322%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath197295%_ _%opts197296%_)
        (if (string? _%srcpath197295%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath197295%_)))
        (let ((_%outdir197298%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts197296%_)))
              (_%invoke-gsc?197299%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts197296%_)))
              (_%gsc-options197300%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts197296%_)))
              (_%keep-scm?197301%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts197296%_)))
              (_%verbosity197302%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts197296%_)))
              (_%optimize197303%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts197296%_)))
              (_%debug197304%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts197296%_)))
              (_%gen-ssxi197305%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts197296%_)))
              (_%parallel?197306%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts197296%_))))
          (if _%outdir197298%_
              (let ((__tmp197474
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir197298%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp197474))
              '#!void)
          (if _%optimize197303%_
              (let ((__tmp197475
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp197475))
              '#!void)
          (let ((__tmp197478
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath197295%_))
                   (gxc#compile-top-module
                    (let ((__tmp197479
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath197295%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp197479)))))
                (__tmp197477 (gxc#compile-timestamp))
                (__tmp197476
                 (cons 'compile-module (cons _%srcpath197295%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp197478
             gxc#current-compile-output-dir
             _%outdir197298%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?197299%_
             gxc#current-compile-gsc-options
             _%gsc-options197300%_
             gxc#current-compile-keep-scm
             _%keep-scm?197301%_
             gxc#current-compile-verbose
             _%verbosity197302%_
             gxc#current-compile-optimize
             _%optimize197303%_
             gxc#current-compile-debug
             _%debug197304%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi197305%_
             gxc#current-compile-timestamp
             __tmp197477
             gxc#current-compile-context
             __tmp197476
             gxc#current-compile-parallel
             _%parallel?197306%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath197315%_)
        (let ((_%opts197317%_ '()))
          (gxc#compile-module__% _%srcpath197315%_ _%opts197317%_))))
    (define gxc#compile-module
      (lambda _g197481_
        (let ((_g197480_ (let () (declare (not safe)) (##length _g197481_))))
          (cond ((let () (declare (not safe)) (##fx= _g197480_ 1))
                 (apply gxc#compile-module__0 _g197481_))
                ((let () (declare (not safe)) (##fx= _g197480_ 2))
                 (apply gxc#compile-module__% _g197481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g197481_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath197270%_ _%opts197271%_)
        (if (string? _%srcpath197270%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath197270%_)))
        (let ((_%outdir197273%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts197271%_)))
              (_%invoke-gsc?197274%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts197271%_)))
              (_%gsc-options197275%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts197271%_)))
              (_%keep-scm?197276%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts197271%_)))
              (_%verbosity197277%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts197271%_)))
              (_%debug197278%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts197271%_)))
              (_%parallel?197279%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts197271%_))))
          (if _%outdir197273%_
              (let ((__tmp197482
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir197273%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp197482))
              '#!void)
          (let ((__tmp197485
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath197270%_))
                   (gxc#compile-executable-module
                    (let ((__tmp197486
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath197270%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp197486))
                    _%opts197271%_)))
                (__tmp197484 (gxc#compile-timestamp))
                (__tmp197483 (cons 'compile-exe (cons _%srcpath197270%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp197485
             gxc#current-compile-output-dir
             _%outdir197273%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?197274%_
             gxc#current-compile-gsc-options
             _%gsc-options197275%_
             gxc#current-compile-keep-scm
             _%keep-scm?197276%_
             gxc#current-compile-verbose
             _%verbosity197277%_
             gxc#current-compile-debug
             _%debug197278%_
             gxc#current-compile-timestamp
             __tmp197484
             gxc#current-compile-context
             __tmp197483
             gxc#current-compile-parallel
             _%parallel?197279%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath197287%_)
        (let ((_%opts197289%_ '()))
          (gxc#compile-exe__% _%srcpath197287%_ _%opts197289%_))))
    (define gxc#compile-exe
      (lambda _g197488_
        (let ((_g197487_ (let () (declare (not safe)) (##length _g197488_))))
          (cond ((let () (declare (not safe)) (##fx= _g197487_ 1))
                 (apply gxc#compile-exe__0 _g197488_))
                ((let () (declare (not safe)) (##fx= _g197487_ 2))
                 (apply gxc#compile-exe__% _g197488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g197488_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx197266%_ _%opts197267%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts197267%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx197266%_
             _%opts197267%_)
            (gxc#compile-executable-module/separate
             _%ctx197266%_
             _%opts197267%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx197056%_ _%opts197057%_)
        (letrec ((_%generate-stub197059%_
                  (lambda (_%builtin-modules197262%_)
                    (let ((_%mod-main197264%_
                           (gxc#find-runtime-symbol _%ctx197056%_ 'main)))
                      (let ((__tmp197489
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules197262%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp197489))
                      (let ((__tmp197490
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main197264%_
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
                        (##write __tmp197490))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts197060%_
                  (lambda (_%gerbil-libdir197260%_)
                    (let ((__tmp197491
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir197260%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp197491 read))))
                 (_%replace-extension197061%_
                  (lambda (_%path197257%_ _%ext197258%_)
                    (string-append
                     (path-strip-extension _%path197257%_)
                     _%ext197258%_)))
                 (_%userlib-module?197062%_
                  (lambda (_%ctx197255%_)
                    (if (not (_%exclude-module?197064%_ _%ctx197255%_))
                        (not (_%libgerbil-module?197063%_ _%ctx197255%_))
                        '#f)))
                 (_%libgerbil-module?197063%_
                  (lambda (_%ctx197248%_)
                    (let ((_%id-str197250%_
                           (symbol->string
                            (##structure-ref
                             _%ctx197248%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (_%exclude-module?197064%_ _%id-str197250%_))
                          (let ((_%$e197252%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str197250%_))))
                            (if _%$e197252%_
                                _%$e197252%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str197250%_))))
                          '#f))))
                 (_%exclude-module?197064%_
                  (lambda (_%ctx-or-str197244%_)
                    (let ((_%str197246%_
                           (if (string? _%ctx-or-str197244%_)
                               _%ctx-or-str197244%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str197244%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str197246%_))))
                 (_%not-file-empty?197065%_
                  (lambda (_%path197242%_)
                    (not (gxc#file-empty? _%path197242%_))))
                 (_%fold-libgerbil-runtime-scm197066%_
                  (lambda (_%gerbil-staticdir197235%_ _%libgerbil-scm197236%_)
                    (let ((_%gerbil-runtime-scm197240%_
                           (let ((__tmp197492
                                  (lambda (_%rtm197238%_)
                                    (path-expand
                                     (let ((__tmp197493
                                            (let ((__tmp197494
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm197238%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp197494
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp197493 '".scm"))
                                     _%gerbil-staticdir197235%_))))
                             (declare (not safe))
                             (##map __tmp197492 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates197067%_
                       (append _%gerbil-runtime-scm197240%_
                               _%libgerbil-scm197236%_)))))
                 (_%remove-duplicates197067%_
                  (lambda (_%strlst197195%_)
                    (let _%loop197197%_ ((_%rest197199%_ _%strlst197195%_)
                                         (_%result197200%_ '()))
                      (let* ((_%rest197201197209%_ _%rest197199%_)
                             (_%else197203197217%_
                              (lambda () (reverse! _%result197200%_)))
                             (_%K197205197223%_
                              (lambda (_%rest197220%_ _%path197221%_)
                                (if (member _%path197221%_ _%result197200%_)
                                    (_%loop197197%_
                                     _%rest197220%_
                                     _%result197200%_)
                                    (_%loop197197%_
                                     _%rest197220%_
                                     (cons _%path197221%_
                                           _%result197200%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest197201197209%_))
                            (let ((_%hd197206197226%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest197201197209%_)))
                                  (_%tl197207197228%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest197201197209%_))))
                              (let* ((_%path197231%_ _%hd197206197226%_)
                                     (_%rest197233%_ _%tl197207197228%_))
                                (_%K197205197223%_
                                 _%rest197233%_
                                 _%path197231%_)))
                            (_%else197203197217%_))))))
                 (_%compile-stub197068%_
                  (lambda (_%output-scm197075%_ _%output-bin197076%_)
                    (let* ((_%gerbil-home197078%_
                            (let ((__tmp197495
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp197495)))
                           (_%gerbil-libdir197080%_
                            (path-expand '"lib" _%gerbil-home197078%_))
                           (_%gerbil-staticdir197082%_
                            (path-expand '"static" _%gerbil-libdir197080%_))
                           (_%deps197084%_
                            (gxc#find-runtime-module-deps _%ctx197056%_))
                           (_%libgerbil-deps197086%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?197063%_
                               _%deps197084%_)))
                           (_%libgerbil-scm197088%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps197086%_)))
                           (_%libgerbil-scm197090%_
                            (_%fold-libgerbil-runtime-scm197066%_
                             _%gerbil-staticdir197082%_
                             _%libgerbil-scm197088%_))
                           (_%libgerbil-c197096%_
                            (map (lambda (_%g197091197093%_)
                                   (_%replace-extension197061%_
                                    _%g197091197093%_
                                    '".c"))
                                 _%libgerbil-scm197090%_))
                           (_%libgerbil-o197102%_
                            (map (lambda (_%g197097197099%_)
                                   (_%replace-extension197061%_
                                    _%g197097197099%_
                                    '".o"))
                                 _%libgerbil-scm197090%_))
                           (_%src-deps197104%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?197062%_
                               _%deps197084%_)))
                           (_%src-deps-scm197106%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps197104%_)))
                           (_%src-deps-scm197108%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?197065%_
                               _%src-deps-scm197106%_)))
                           (_%src-deps-scm197110%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm197108%_)))
                           (_%src-deps-c197116%_
                            (let ((__tmp197496
                                   (lambda (_%g197111197113%_)
                                     (_%replace-extension197061%_
                                      _%g197111197113%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp197496 _%src-deps-scm197110%_)))
                           (_%src-deps-o197122%_
                            (let ((__tmp197497
                                   (lambda (_%g197117197119%_)
                                     (_%replace-extension197061%_
                                      _%g197117197119%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp197497 _%src-deps-scm197110%_)))
                           (_%src-bin-scm197124%_
                            (gxc#find-static-module-file _%ctx197056%_))
                           (_%src-bin-scm197126%_
                            (path-expand _%src-bin-scm197124%_))
                           (_%src-bin-c197128%_
                            (_%replace-extension197061%_
                             _%src-bin-scm197126%_
                             '".c"))
                           (_%src-bin-o197130%_
                            (_%replace-extension197061%_
                             _%src-bin-scm197126%_
                             '".o"))
                           (_%output-bin197132%_
                            (path-expand _%output-bin197076%_))
                           (_%output-scm197134%_
                            (path-expand _%output-scm197075%_))
                           (_%output-c197136%_
                            (_%replace-extension197061%_
                             _%output-scm197134%_
                             '".c"))
                           (_%output-o197138%_
                            (_%replace-extension197061%_
                             _%output-scm197134%_
                             '".o"))
                           (_%output_-c197140%_
                            (_%replace-extension197061%_
                             _%output-scm197134%_
                             '"_.c"))
                           (_%output_-o197142%_
                            (_%replace-extension197061%_
                             _%output-scm197134%_
                             '"_.o"))
                           (_%gsc-link-opts197144%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts197146%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts197148%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir197082%_))
                           (_%output-ld-opts197150%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts197152%_
                            (_%get-libgerbil-ld-opts197060%_
                             _%gerbil-libdir197080%_))
                           (_%rpath197154%_
                            (gxc#gerbil-rpath _%gerbil-libdir197080%_))
                           (_%builtin-modules197158%_
                            (_%remove-duplicates197067%_
                             (let ((__tmp197498
                                    (let ((__tmp197500
                                           (lambda (_%mod197156%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod197156%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp197499
                                           (cons _%ctx197056%_
                                                 _%deps197084%_)))
                                      (declare (not safe))
                                      (##map __tmp197500 __tmp197499))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp197498)))))
                      (letrec ((_%compile-obj197161%_
                                (lambda (_%scm-path197168%_ _%c-path197169%_)
                                  (let* ((_%o-path197171%_
                                          (_%replace-extension197061%_
                                           _%c-path197169%_
                                           '".o"))
                                         (_%lock197173%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path197171%_
                                             '".lock")))
                                         (_%locked197175%_ '#f)
                                         (_%unlock197178%_
                                          (lambda ()
                                            (close-port _%locked197175%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock197173%_)))))
                                    (let _%retry197181%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock197173%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry197181%_))
                                          (begin
                                            (set! _%locked197175%_
                                                  (let ((__tmp197501
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock197173%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp197501)))
                                            (if _%locked197175%_
                                                '#!void
                                                (_%retry197181%_)))))
                                    (let ((__tmp197503
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path197171%_)))
                                                     (not _%scm-path197168%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path197168%_
                                                        _%o-path197171%_)))
                                                 (let ((_%gsc-cc-opts197192%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp197504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp197505 (cons _%c-path197169%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp197505
                            _%gsc-static-opts197148%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp197504 _%gsc-cc-opts197192%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp197502
                                           (lambda () (_%unlock197178%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp197503
                                       __tmp197502))))))
                        (let ((__tmp197506
                               (lambda ()
                                 (let ((__tmp197507
                                        (path-directory _%output-bin197132%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp197507)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp197506))
                        (gxc#with-output-to-scheme-file
                         _%output-scm197134%_
                         (lambda ()
                           (_%generate-stub197059%_
                            _%builtin-modules197158%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it197166%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp197508
                                                   (let ((__tmp197509
                                                          (let ((__tmp197510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm197126%_
                               (cons _%output-scm197134%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp197510 _%src-deps-scm197110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp197509
                                                      _%libgerbil-c197096%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp197508
                                               _%gsc-link-opts197144%_))))
                                     (for-each
                                      _%compile-obj197161%_
                                      (let ((__tmp197511
                                             (cons _%src-bin-scm197126%_
                                                   (cons _%output-scm197134%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp197511
                                         _%src-deps-scm197110%_))
                                      (let ((__tmp197512
                                             (cons _%src-bin-c197128%_
                                                   (cons _%output-c197136%_
                                                         (cons _%output_-c197140%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp197512
                                         _%src-deps-c197116%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin197132%_
                                                        (let ((__tmp197513
                                                               (cons _%src-bin-o197130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o197138%_
                                   (cons _%output_-o197142%_
                                         (let ((__tmp197514
                                                (let ((__tmp197515
                                                       (let ((__tmp197517
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir197080%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts197152%_))))
                     (__tmp197516
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath197154%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp197517 __tmp197516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp197515
                                                   _%output-ld-opts197150%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp197514
                                            _%libgerbil-o197102%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp197513 _%src-deps-o197122%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp197518
                                            (cons _%output-c197136%_
                                                  (cons _%output_-c197140%_
                                                        (cons _%output-o197138%_
                                                              (cons _%output_-o197142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp197518)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it197166%_))
                                  (_%compile-it197166%_)))
                            '#!void))))))
          (let* ((_%output-bin197070%_
                  (gxc#compile-exe-output-file _%ctx197056%_ _%opts197057%_))
                 (_%output-scm197072%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin197070%_ '"__exe.scm"))))
            (_%compile-stub197068%_
             _%output-scm197072%_
             _%output-bin197070%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx196878%_ _%opts196879%_)
        (letrec ((_%reset-declare196881%_
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
                 (_%generate-stub196882%_
                  (lambda (_%deps197047%_)
                    (let ((_%mod-main197049%_
                           (gxc#find-runtime-symbol _%ctx196878%_ 'main))
                          (_%reset-decl197050%_ (_%reset-declare196881%_))
                          (_%user-decl197051%_ (_%user-declare196883%_)))
                      (for-each
                       (lambda (_%dep197053%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl197050%_))
                         (newline)
                         (if _%user-decl197051%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl197051%_))
                               (newline))
                             '#!void)
                         (let ((__tmp197519
                                (cons 'include (cons _%dep197053%_ '()))))
                           (declare (not safe))
                           (##write __tmp197519))
                         (newline))
                       _%deps197047%_)
                      (let ((__tmp197520
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main197049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp197520))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare196883%_
                  (lambda ()
                    (let* ((_%gsc-opts196952%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts196879%_)))
                           (_%gsc-prelude196954%_
                            (if _%gsc-opts196952%_
                                (member '"-prelude" _%gsc-opts196952%_)
                                '#f))
                           (_%gsc-prelude196956%_
                            (if _%gsc-prelude196954%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude196954%_)))
                                '#f)))
                      (let _%lp196959%_ ((_%rest196961%_
                                          (cons _%gsc-prelude196956%_ '()))
                                         (_%user-decls196962%_ '()))
                        (let* ((_%rest196963196971%_ _%rest196961%_)
                               (_%else196965196979%_
                                (lambda ()
                                  (if (null? _%user-decls196962%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls196962%_)))))
                               (_%K196967197035%_
                                (lambda (_%rest196982%_ _%expr196983%_)
                                  (let* ((_%expr196984196996%_ _%expr196983%_)
                                         (_%else196987197004%_
                                          (lambda ()
                                            (_%lp196959%_
                                             _%rest196982%_
                                             _%user-decls196962%_))))
                                    (let ((_%K196992197025%_
                                           (lambda (_%decls197023%_)
                                             (_%lp196959%_
                                              _%rest196982%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls196962%_
                                                 _%decls197023%_)))))
                                          (_%K196989197010%_
                                           (lambda (_%exprs197008%_)
                                             (_%lp196959%_
                                              (append _%exprs197008%_
                                                      _%rest196982%_)
                                              _%user-decls196962%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr196984196996%_))
                                          (let ((_%tl196994197030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr196984196996%_)))
                                                (_%hd196993197028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr196984196996%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd196993197028%_
                                                         'declare))
                                                (let ((_%decls197033%_
                                                       _%tl196994197030%_))
                                                  (_%K196992197025%_
                                                   _%decls197033%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd196993197028%_
                                                             'begin))
                                                    (let ((_%exprs197018%_
                                                           _%tl196994197030%_))
                                                      (_%K196989197010%_
                                                       _%exprs197018%_))
                                                    (_%else196987197004%_))))
                                          (_%else196987197004%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest196963196971%_))
                              (let ((_%hd196968197038%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest196963196971%_)))
                                    (_%tl196969197040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest196963196971%_))))
                                (let* ((_%expr197043%_ _%hd196968197038%_)
                                       (_%rest197045%_ _%tl196969197040%_))
                                  (_%K196967197035%_
                                   _%rest197045%_
                                   _%expr197043%_)))
                              (_%else196965196979%_)))))))
                 (_%compile-stub196884%_
                  (lambda (_%output-scm196891%_ _%output-bin196892%_)
                    (let* ((_%gerbil-home196894%_
                            (let ((__tmp197521
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp197521)))
                           (_%gerbil-libdir196896%_
                            (path-expand '"lib" _%gerbil-home196894%_))
                           (_%runtime196898%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp196900%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home196894%_))
                           (_%include-gambit-sharp196902%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp196900%_
                               '"\")")))
                           (_%bin-scm196904%_
                            (gxc#find-static-module-file _%ctx196878%_))
                           (_%deps196906%_
                            (gxc#find-runtime-module-deps _%ctx196878%_))
                           (_%deps196908%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps196906%_)))
                           (_%deps196913%_
                            (let ((__tmp197522
                                   (lambda (_%$obj196910%_)
                                     (not (gxc#file-empty? _%$obj196910%_)))))
                              (declare (not safe))
                              (##filter __tmp197522 _%deps196908%_)))
                           (_%deps196917%_
                            (let ((__tmp197523
                                   (lambda (_%f196915%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f196915%_
                                             _%runtime196898%_))))))
                              (declare (not safe))
                              (##filter __tmp197523 _%deps196913%_)))
                           (_%output-base196919%_
                            (let ((__tmp197524
                                   (path-strip-extension
                                    _%output-scm196891%_)))
                              (declare (not safe))
                              (##string-append __tmp197524)))
                           (_%output-c196921%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196919%_ '".c")))
                           (_%output-o196923%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196919%_ '".o")))
                           (_%output-c_196925%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196919%_ '"_.c")))
                           (_%output-o_196927%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196919%_ '"_.o")))
                           (_%gsc-link-opts196929%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts196931%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts196933%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir196896%_)))
                           (_%output-ld-opts196935%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros196937%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp196902%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp196902%_
                                            '()))))
                           (_%gsc-link-opts196939%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts196929%_
                               _%gsc-gx-macros196937%_)))
                           (_%rpath196941%_
                            (gxc#gerbil-rpath _%gerbil-libdir196896%_))
                           (_%default-ld-options196943%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp197525
                             (lambda ()
                               (let ((__tmp197526
                                      (path-directory _%output-bin196892%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp197526)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp197525))
                      (gxc#with-output-to-scheme-file
                       _%output-scm196891%_
                       (lambda ()
                         (_%generate-stub196882%_
                          (let ((__tmp197527
                                 (let ((__tmp197528
                                        (cons _%bin-scm196904%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp197528
                                    _%deps196917%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp197527 _%runtime196898%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it196949%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_196925%_
                                                      (let ((__tmp197529
                                                             (cons _%output-scm196891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp197529 _%gsc-link-opts196939%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp197530
                                                 (let ((__tmp197531
                                                        (cons _%output-c196921%_
                                                              (cons _%output-c_196925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp197531
                                                    _%gsc-static-opts196933%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp197530
                                             _%gsc-cc-opts196931%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin196892%_
                                                      (cons _%output-o196923%_
                                                            (cons _%output-o_196927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp197532
                                 (let ((__tmp197534
                                        (cons '"-L"
                                              (cons _%gerbil-libdir196896%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options196943%_))))
                                       (__tmp197533
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath196941%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp197534 __tmp197533))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp197532
                             _%output-ld-opts196935%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it196949%_))
                                (_%compile-it196949%_)))
                          '#!void)))))
          (let* ((_%output-bin196886%_
                  (gxc#compile-exe-output-file _%ctx196878%_ _%opts196879%_))
                 (_%output-scm196888%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin196886%_ '"__exe.scm"))))
            (_%compile-stub196884%_
             _%output-scm196888%_
             _%output-bin196886%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx196827%_ _%id196828%_)
        (let ((_%$e196874%_
               (let ((__tmp197536
                      (lambda (_%e196829196831%_)
                        (let* ((_%g196833196843%_ _%e196829196831%_)
                               (_%else196835196851%_ (lambda () '#f))
                               (_%K196837196855%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g196833196843%_
                                 'gx#module-export::t))
                              (let* ((_%e196838196858%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g196833196843%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e196839196861%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g196833196843%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e196840196864%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g196833196843%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e196840196864%_ '0))
                                    (let ((_%e196841196867%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g196833196843%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g196869196871%_)
                                             (eq? _%g196869196871%_
                                                  _%id196828%_))
                                           _%e196841196867%_)
                                          (_%K196837196855%_)
                                          (_%else196835196851%_)))
                                    (_%else196835196851%_)))
                              (_%else196835196851%_)))))
                     (__tmp197535
                      (##structure-ref
                       _%ctx196827%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp197536 __tmp197535))))
          (if _%$e196874%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e196874%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx196818%_ _%id196819%_)
        (let ((_%$e196821%_
               (gxc#find-export-binding _%ctx196818%_ _%id196819%_)))
          (if _%$e196821%_
              ((lambda (_%bind196824%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind196824%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id196819%_)))
                 (##structure-ref _%bind196824%_ '1 gx#binding::t '#f))
               _%$e196821%_)
              (let ((__tmp197537
                     (##structure-ref
                      _%ctx196818%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp197537
                 _%id196819%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx196684%_)
        (letrec* ((_%ht196686%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template196687%_
                   (lambda (_%in196763%_ _%phi196764%_)
                     (let ((_%iphi196766%_
                            (fx+ _%phi196764%_
                                 (##direct-structure-ref
                                  _%in196763%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports196767%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in196763%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp196769%_ ((_%rest196771%_ _%imports196767%_)
                                          (_%r196772%_ '()))
                         (let* ((_%rest196773196781%_ _%rest196771%_)
                                (_%else196775196789%_ (lambda () _%r196772%_))
                                (_%K196777196806%_
                                 (lambda (_%rest196792%_ _%in196793%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in196793%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi196766%_))
                                           (_%lp196769%_
                                            _%rest196792%_
                                            (cons _%in196793%_ _%r196772%_))
                                           (_%lp196769%_
                                            _%rest196792%_
                                            _%r196772%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in196793%_
                                              'gx#module-import::t))
                                           (let ((_%iphi196797%_
                                                  (fx+ _%phi196764%_
                                                       (##direct-structure-ref
                                                        _%in196793%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi196797%_))
                                                 (_%lp196769%_
                                                  _%rest196792%_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _%in196793%_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r196772%_))
                                                 (_%lp196769%_
                                                  _%rest196792%_
                                                  _%r196772%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in196793%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi196800%_
                                                      (fx+ _%iphi196766%_
                                                           (##direct-structure-ref
                                                            _%in196793%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi196800%_))
                                                     (_%lp196769%_
                                                      _%rest196792%_
                                                      (cons (##direct-structure-ref
                                                             _%in196793%_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _%r196772%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi196800%_))
                                                         (_%lp196769%_
                                                          _%rest196792%_
                                                          (let ((__tmp197538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template196687%_
                          _%in196793%_
                          _%iphi196766%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r196772%_ __tmp197538)))
                 (_%lp196769%_ _%rest196792%_ _%r196772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp196769%_
                                                _%rest196792%_
                                                _%r196772%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest196773196781%_))
                               (let ((_%hd196778196809%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest196773196781%_)))
                                     (_%tl196779196811%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest196773196781%_))))
                                 (let* ((_%in196814%_ _%hd196778196809%_)
                                        (_%rest196816%_ _%tl196779196811%_))
                                   (_%K196777196806%_
                                    _%rest196816%_
                                    _%in196814%_)))
                               (_%else196775196789%_)))))))
                  (_%find-deps196688%_
                   (lambda (_%rest196696%_ _%deps196697%_)
                     (let* ((_%rest196698196706%_ _%rest196696%_)
                            (_%else196700196714%_ (lambda () _%deps196697%_))
                            (_%K196702196751%_
                             (lambda (_%rest196717%_ _%hd196718%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd196718%_
                                      'gx#module-context::t))
                                   (let ((_%id196721%_
                                          (##structure-ref
                                           _%hd196718%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports196722%_
                                          (##structure-ref
                                           _%hd196718%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht196686%_
                                            _%id196721%_))
                                         (_%find-deps196688%_
                                          _%rest196717%_
                                          _%deps196697%_)
                                         (let ((_%$e196725%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd196718%_))))
                                           (if _%$e196725%_
                                               ((lambda (_%pre196728%_)
                                                  (let ((_%xdeps196730%_
                                                         (_%find-deps196688%_
                                                          (cons _%pre196728%_
                                                                _%imports196722%_)
                                                          _%deps196697%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht196686%_
                                                       _%id196721%_
                                                       _%hd196718%_))
                                                    (_%find-deps196688%_
                                                     _%rest196717%_
                                                     (cons _%hd196718%_
                                                           _%xdeps196730%_))))
                                                _%$e196725%_)
                                               (let ((_%xdeps196733%_
                                                      (_%find-deps196688%_
                                                       _%imports196722%_
                                                       _%deps196697%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht196686%_
                                                    _%id196721%_
                                                    _%hd196718%_))
                                                 (_%find-deps196688%_
                                                  _%rest196717%_
                                                  (cons _%hd196718%_
                                                        _%xdeps196733%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd196718%_
                                          'gx#prelude-context::t))
                                       (let ((_%id196736%_
                                              (##structure-ref
                                               _%hd196718%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht196686%_
                                                _%id196736%_))
                                             (_%find-deps196688%_
                                              _%rest196717%_
                                              _%deps196697%_)
                                             (let ((_%xdeps196740%_
                                                    (_%find-deps196688%_
                                                     (##structure-ref
                                                      _%hd196718%_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _%deps196697%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht196686%_
                                                      _%id196736%_))
                                                   (_%find-deps196688%_
                                                    _%rest196717%_
                                                    _%xdeps196740%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht196686%_
                                                        _%id196736%_
                                                        _%hd196718%_))
                                                     (_%find-deps196688%_
                                                      _%rest196717%_
                                                      (cons _%hd196718%_
                                                            _%xdeps196740%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd196718%_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _%hd196718%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_%find-deps196688%_
                                                (cons (##direct-structure-ref
                                                       _%hd196718%_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _%rest196717%_)
                                                _%deps196697%_)
                                               (_%find-deps196688%_
                                                _%rest196717%_
                                                _%deps196697%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd196718%_
                                                  'gx#module-export::t))
                                               (_%find-deps196688%_
                                                (cons (##direct-structure-ref
                                                       _%hd196718%_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _%rest196717%_)
                                                _%deps196697%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd196718%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd196718%_
                         '2
                         gx#import-set::t
                         '#f))
               (_%find-deps196688%_
                (cons (##direct-structure-ref
                       _%hd196718%_
                       '1
                       gx#import-set::t
                       '#f)
                      _%rest196717%_)
                _%deps196697%_)
               (if (fxpositive?
                    (##direct-structure-ref
                     _%hd196718%_
                     '2
                     gx#import-set::t
                     '#f))
                   (let ((_%xdeps196747%_
                          (_%import-set-template196687%_ _%hd196718%_ '0)))
                     (_%find-deps196688%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest196717%_ _%xdeps196747%_))
                      _%deps196697%_))
                   (_%find-deps196688%_ _%rest196717%_ _%deps196697%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd196718%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest196698196706%_))
                           (let ((_%hd196703196754%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest196698196706%_)))
                                 (_%tl196704196756%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest196698196706%_))))
                             (let* ((_%hd196759%_ _%hd196703196754%_)
                                    (_%rest196761%_ _%tl196704196756%_))
                               (_%K196702196751%_
                                _%rest196761%_
                                _%hd196759%_)))
                           (_%else196700196714%_))))))
          (let ((__tmp197539
                 (filter gx#expander-context-id
                         (_%find-deps196688%_
                          (let ((_%$e196690%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx196684%_))))
                            (if _%$e196690%_
                                ((lambda (_%pre196693%_)
                                   (cons _%pre196693%_
                                         (##structure-ref
                                          _%ctx196684%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e196690%_)
                                (##structure-ref
                                 _%ctx196684%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp197539)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx196614%_)
        (let* ((_%context-id196616%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx196614%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx196614%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx196614%_)))
               (_%scm196618%_
                (let ((__tmp197540
                       (gxc#static-module-name _%context-id196616%_)))
                  (declare (not safe))
                  (##string-append __tmp197540 '".scm")))
               (_%dirs196620%_ (let () (declare (not safe)) (load-path)))
               (_%dirs196626%_
                (let ((_%user-libpath196622%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath196622%_
                      (let ((_%user-libpath196624%_
                             (path-expand '"lib" _%user-libpath196622%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath196624%_ _%dirs196620%_))
                            _%dirs196620%_
                            (cons _%user-libpath196624%_ _%dirs196620%_)))
                      _%dirs196620%_)))
               (_%dirs196636%_
                (let ((_%$e196628%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e196628%_
                      ((lambda (_%g196630196632%_)
                         (cons _%g196630196632%_ _%dirs196626%_))
                       _%$e196628%_)
                      _%dirs196626%_)))
               (_%dirs196642%_
                (let ((__tmp197541
                       (lambda (_%g196637196639%_)
                         (path-expand '"static" _%g196637196639%_))))
                  (declare (not safe))
                  (##map __tmp197541 _%dirs196636%_))))
          (let _%lp196645%_ ((_%rest196647%_ _%dirs196642%_))
            (let* ((_%rest196648196656%_ _%rest196647%_)
                   (_%else196650196664%_
                    (lambda ()
                      (let ((__tmp197542
                             (##structure-ref
                              _%ctx196614%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp197542
                         _%scm196618%_))))
                   (_%K196652196672%_
                    (lambda (_%rest196667%_ _%dir196668%_)
                      (let ((_%path196670%_
                             (path-expand _%scm196618%_ _%dir196668%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path196670%_))
                            _%path196670%_
                            (_%lp196645%_ _%rest196667%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest196648196656%_))
                  (let ((_%hd196653196675%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest196648196656%_)))
                        (_%tl196654196677%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest196648196656%_))))
                    (let* ((_%dir196680%_ _%hd196653196675%_)
                           (_%rest196682%_ _%tl196654196677%_))
                      (_%K196652196672%_ _%rest196682%_ _%dir196680%_)))
                  (_%else196650196664%_)))))))
    (define gxc#file-empty?
      (lambda (_%path196612%_)
        (zero? (let ((__tmp197543 (file-info _%path196612%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp197543)))))
    (define gxc#compile-top-module
      (lambda (_%ctx196608%_)
        (let ((__tmp197547
               (lambda ()
                 (let ((__tmp197548
                        (##structure-ref
                         _%ctx196608%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp197548))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp197549
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx196608%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp197549))
                     '#!void)
                 (gxc#collect-bindings _%ctx196608%_)
                 (gxc#compile-runtime-code _%ctx196608%_)
                 (gxc#compile-meta-code _%ctx196608%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx196608%_)
                     '#!void)))
              (__tmp197546
               (let ((__obj197470
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj197470))
                 __obj197470))
              (__tmp197545 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp197544
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
           __tmp197547
           gx#current-expander-context
           _%ctx196608%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp197546
           gxc#current-compile-runtime-sections
           __tmp197545
           gxc#current-compile-runtime-names
           __tmp197544))))
    (define gxc#collect-bindings
      (lambda (_%ctx196606%_)
        (let ((__tmp197550
               (##structure-ref _%ctx196606%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp197550))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx196554%_)
        (letrec ((_%compile1196556%_
                  (lambda (_%ctx196595%_)
                    (let* ((_%code196597%_
                            (##structure-ref
                             _%ctx196595%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm196601%_
                            (let ((_%idstr196599%_
                                   (let ((__tmp197551
                                          (##structure-ref
                                           _%ctx196595%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp197551))))
                              (declare (not safe))
                              (##string-append _%idstr196599%_ '"~0")))
                           (_%rtc?196603%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code196597%_))))
                      (if _%rtc?196603%_
                          (let ((__tmp197552
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp197552
                             _%ctx196595%_
                             _%rtm196601%_))
                          '#!void)
                      (_%generate-runtime-code196558%_
                       _%ctx196595%_
                       _%code196597%_
                       (if _%rtc?196603%_ _%rtm196601%_ '#f)))))
                 (_%context-timestamp196557%_
                  (lambda (_%ctx196593%_)
                    (let ((__tmp197553
                           (let ((__tmp197554
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx196593%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp197554 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp197553))))
                 (_%generate-runtime-code196558%_
                  (lambda (_%ctx196565%_ _%code196566%_ _%rtm196567%_)
                    (let* ((_%runtime-code?196569%_ (if _%rtm196567%_ '#t '#f))
                           (_%lifts196571%_ (box '()))
                           (_%runtime-code196574%_
                            (if _%runtime-code?196569%_
                                (let ((__tmp197557
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code196566%_))))
                                      (__tmp197556
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp197555
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp197557
                                   gx#current-expander-context
                                   _%ctx196565%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts196571%_
                                   gxc#current-compile-marks
                                   __tmp197556
                                   gxc#current-compile-identifiers
                                   __tmp197555))
                                '#f))
                           (_%runtime-code196576%_
                            (if _%runtime-code?196569%_
                                (if (null? (unbox _%lifts196571%_))
                                    _%runtime-code196574%_
                                    (cons 'begin
                                          (let ((__tmp197559
                                                 (cons _%runtime-code196574%_
                                                       '()))
                                                (__tmp197558
                                                 (reverse (unbox _%lifts196571%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp197559
                                             __tmp197558))))
                                '#f))
                           (_%runtime-code196578%_
                            (if _%runtime-code?196569%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp196557%_
                                                         _%ctx196565%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code196576%_ '())))
                                '#f))
                           (_%loader-code196581%_
                            (let ((__tmp197560
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code196566%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp197560
                               gx#current-expander-context
                               _%ctx196565%_)))
                           (_%loader-code196583%_
                            (cons 'begin
                                  (cons _%loader-code196581%_
                                        (cons (if _%runtime-code?196569%_
                                                  (cons 'load-module
                                                        (cons _%rtm196567%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0196585%_
                            (gxc#compile-output-file _%ctx196565%_ '0 '".scm"))
                           (_%scmrt196587%_
                            (gxc#compile-output-file
                             _%ctx196565%_
                             '#f
                             '".scm"))
                           (_%scms196589%_
                            (gxc#compile-static-output-file _%ctx196565%_)))
                      (if _%runtime-code?196569%_
                          (gxc#compile-scm-file__0
                           _%scm0196585%_
                           _%runtime-code196578%_)
                          '#!void)
                      (let ((__tmp197561
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt196587%_
                                _%loader-code196583%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp197561
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms196589%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms196589%_))
                          '#!void)
                      (if _%runtime-code?196569%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0196585%_ _%scms196589%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms196589%_ void)))))))
          (let* ((_%all-modules196560%_
                  (cons _%ctx196554%_ (gxc#lift-nested-modules _%ctx196554%_)))
                 (__tmp197562
                  (lambda (_%ctx196562%_)
                    (let ((__tmp197563
                           (lambda () (_%compile1196556%_ _%ctx196562%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp197563
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp197562 _%all-modules196560%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx196454%_)
        (letrec ((_%compile-ssi196456%_
                  (lambda (_%code196522%_)
                    (let* ((_%path196524%_
                            (gxc#compile-output-file
                             _%ctx196454%_
                             '#f
                             '".ssi"))
                           (_%prelude196536%_
                            (let* ((_%super196526%_
                                    (##structure-ref
                                     _%ctx196454%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e196528%_
                                    (##structure-ref
                                     _%super196526%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e196528%_
                                  ((lambda (_%g196530196532%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g196530196532%_)))
                                   _%$e196528%_)
                                  ':<root>)))
                           (_%ns196538%_
                            (##structure-ref
                             _%ctx196454%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr196540%_
                            (symbol->string
                             (##structure-ref
                              _%ctx196454%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg196548%_
                            (let ((_%$e196542%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr196540%_ '#\/))))
                              (if _%$e196542%_
                                  ((lambda (_%x196545%_)
                                     (let ((__tmp197564
                                            (substring
                                             _%idstr196540%_
                                             '0
                                             _%x196545%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp197564)))
                                   _%$e196542%_)
                                  '#f)))
                           (_%rt196550%_
                            (let ((__tmp197565
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp197565 _%ctx196454%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path196524%_))
                      (gxc#with-output-to-scheme-file
                       _%path196524%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude196536%_))
                         (if _%pkg196548%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg196548%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns196538%_))
                         (newline)
                         (pretty-print _%code196522%_)
                         (if _%rt196550%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt196550%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi196457%_
                  (lambda (_%part196462%_)
                    (let* ((_%part196463196476%_ _%part196462%_)
                           (_%E196465196480%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part196463196476%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K196466196491%_
                            (lambda (_%code196483%_
                                     _%n196484%_
                                     _%phi196485%_
                                     _%phi-ctx196486%_)
                              (let ((_%code196489%_
                                     (let ((__tmp197566
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code196483%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp197566
                                        gx#current-expander-context
                                        _%phi-ctx196486%_
                                        gx#current-expander-phi
                                        _%phi196485%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx196454%_
                                  _%n196484%_
                                  '".scm")
                                 _%code196489%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part196463196476%_))
                          (let ((_%hd196467196494%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part196463196476%_)))
                                (_%tl196468196496%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part196463196476%_))))
                            (let ((_%phi-ctx196499%_ _%hd196467196494%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl196468196496%_))
                                  (let ((_%hd196469196501%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl196468196496%_)))
                                        (_%tl196470196503%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl196468196496%_))))
                                    (let ((_%phi196506%_ _%hd196469196501%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl196470196503%_))
                                          (let ((_%hd196471196508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl196470196503%_)))
                                                (_%tl196472196510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl196470196503%_))))
                                            (let ((_%n196513%_
                                                   _%hd196471196508%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl196472196510%_))
                                                  (let ((_%hd196473196515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl196472196510%_)))
                                                        (_%tl196474196517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl196472196510%_))))
                                                    (let ((_%code196520%_
                                                           _%hd196473196515%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl196474196517%_))
                                                          (_%K196466196491%_
                                                           _%code196520%_
                                                           _%n196513%_
                                                           _%phi196506%_
                                                           _%phi-ctx196499%_)
                                                          (_%E196465196480%_))))
                                                  (_%E196465196480%_))))
                                          (_%E196465196480%_))))
                                  (_%E196465196480%_))))
                          (_%E196465196480%_))))))
          (let ((_g197567_ (gxc#generate-meta-code _%ctx196454%_)))
            (begin
              (let ((_g197568_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g197567_)
                           (##vector-length _g197567_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g197568_ 2)))
                    (error "Context expects 2 values" _g197568_)))
              (let ((_%ssi-code196459%_
                     (let () (declare (not safe)) (##vector-ref _g197567_ 0)))
                    (_%phi-code196460%_
                     (let () (declare (not safe)) (##vector-ref _g197567_ 1))))
                (begin
                  (_%compile-ssi196456%_ _%ssi-code196459%_)
                  (for-each _%compile-phi196457%_ _%phi-code196460%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx196436%_)
        (let* ((_%path196438%_
                (gxc#compile-output-file _%ctx196436%_ '#f '".ssxi.ss"))
               (_%code196440%_
                (let ((__tmp197569
                       (##structure-ref
                        _%ctx196436%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp197569)))
               (_%idstr196442%_
                (symbol->string
                 (##structure-ref
                  _%ctx196436%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg196450%_
                (let ((_%$e196444%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr196442%_ '#\/))))
                  (if _%$e196444%_
                      ((lambda (_%x196447%_)
                         (let ((__tmp197570
                                (substring _%idstr196442%_ '0 _%x196447%_)))
                           (declare (not safe))
                           (##string->symbol __tmp197570)))
                       _%$e196444%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path196438%_))
          (gxc#with-output-to-scheme-file
           _%path196438%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg196450%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg196450%_))
                 '#!void)
             (newline)
             (pretty-print _%code196440%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx196429%_)
        (let* ((_%state196431%_
                (let ((__obj197471
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj197471 _%ctx196429%_))
                  __obj197471))
               (_%ssi-code196433%_
                (let ((__tmp197571
                       (##structure-ref
                        _%ctx196429%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state196431%_
                   __tmp197571))))
          (values _%ssi-code196433%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state196431%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx196422%_)
        (let ((_%lifts196424%_ (box '())))
          (let ((__tmp197574
                 (lambda ()
                   (let ((_%code196427%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx196422%_))))
                     (if (null? (unbox _%lifts196424%_))
                         _%code196427%_
                         (cons 'begin
                               (let ((__tmp197576 (cons _%code196427%_ '()))
                                     (__tmp197575
                                      (reverse (unbox _%lifts196424%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp197576 __tmp197575)))))))
                (__tmp197573
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp197572
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp197574
             gxc#current-compile-lift
             _%lifts196424%_
             gxc#current-compile-marks
             __tmp197573
             gxc#current-compile-identifiers
             __tmp197572)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx196418%_)
        (let ((_%modules196420%_ (box '())))
          (let ((__tmp197577
                 (##structure-ref _%ctx196418%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules196420%_ __tmp197577))
          (reverse (unbox _%modules196420%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path196398%_ _%code196399%_ _%phi?196400%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path196398%_))
        (gxc#with-output-to-scheme-file
         _%path196398%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp197578
                                           (if _%phi?196400%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp197578)))))))
           (pretty-print _%code196399%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it196404%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path196398%_ _%phi?196400%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp197579
                         (cons 'compile-file (cons _%path196398%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it196404%_ __tmp197579))
                  (_%compile-it196404%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path196409%_ _%code196410%_)
        (let ((_%phi?196412%_ '#f))
          (gxc#compile-scm-file__%
           _%path196409%_
           _%code196410%_
           _%phi?196412%_))))
    (define gxc#compile-scm-file
      (lambda _g197581_
        (let ((_g197580_ (let () (declare (not safe)) (##length _g197581_))))
          (cond ((let () (declare (not safe)) (##fx= _g197580_ 2))
                 (apply gxc#compile-scm-file__0 _g197581_))
                ((let () (declare (not safe)) (##fx= _g197580_ 3))
                 (apply gxc#compile-scm-file__% _g197581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g197581_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?196299%_)
        (let _%lp196301%_ ((_%rest196303%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts196304%_ '()))
          (let* ((_%rest196305196325%_ _%rest196303%_)
                 (_%else196309196333%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts196304%_)))
                        (reverse _%opts196304%_)))))
            (let ((_%K196319196376%_
                   (lambda (_%rest196374%_)
                     (_%lp196301%_ _%rest196374%_ _%opts196304%_)))
                  (_%K196314196358%_
                   (lambda (_%rest196356%_)
                     (_%lp196301%_ _%rest196356%_ _%opts196304%_)))
                  (_%K196311196340%_
                   (lambda (_%rest196337%_ _%opt196338%_)
                     (_%lp196301%_
                      _%rest196337%_
                      (cons _%opt196338%_ _%opts196304%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest196305196325%_))
                  (let ((_%tl196321196381%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest196305196325%_)))
                        (_%hd196320196379%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest196305196325%_))))
                    (if (equal? _%hd196320196379%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl196321196381%_))
                            (let* ((_%tl196323196384%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl196321196381%_)))
                                   (_%rest196387%_ _%tl196323196384%_))
                              (_%K196319196376%_ _%rest196387%_))
                            (let ((_%opt196348%_ _%hd196320196379%_)
                                  (_%rest196350%_ _%tl196321196381%_))
                              (_%K196311196340%_
                               _%rest196350%_
                               _%opt196348%_)))
                        (if (equal? _%hd196320196379%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl196321196381%_))
                                (let* ((_%tl196318196366%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl196321196381%_)))
                                       (_%rest196369%_ _%tl196318196366%_))
                                  (_%K196314196358%_ _%rest196369%_))
                                (let ((_%opt196348%_ _%hd196320196379%_)
                                      (_%rest196350%_ _%tl196321196381%_))
                                  (_%K196311196340%_
                                   _%rest196350%_
                                   _%opt196348%_)))
                            (let ((_%opt196348%_ _%hd196320196379%_)
                                  (_%rest196350%_ _%tl196321196381%_))
                              (_%K196311196340%_
                               _%rest196350%_
                               _%opt196348%_)))))
                  (_%else196309196333%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?196393%_ '#f)) (gxc#gsc-link-options__% _%phi?196393%_))))
    (define gxc#gsc-link-options
      (lambda _g197583_
        (let ((_g197582_ (let () (declare (not safe)) (##length _g197583_))))
          (cond ((let () (declare (not safe)) (##fx= _g197582_ 0))
                 (apply gxc#gsc-link-options__0 _g197583_))
                ((let () (declare (not safe)) (##fx= _g197582_ 1))
                 (apply gxc#gsc-link-options__% _g197583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g197583_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords196148%_ _%static?196144196149%_ _%phi?196151%_)
        (let ((_%static?196153%_
               (if (eq? _%static?196144196149%_ absent-value)
                   '#f
                   _%static?196144196149%_)))
          (if _%phi?196151%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp196155%_ ((_%rest196157%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts196158%_ '()))
                (let* ((_%rest196159196185%_ _%rest196157%_)
                       (_%else196164196193%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts196158%_)))
                              (reverse! _%opts196158%_)))))
                  (let ((_%K196179196256%_
                         (lambda (_%rest196253%_ _%opt196254%_)
                           (if _%static?196153%_
                               (_%lp196155%_
                                _%rest196253%_
                                (cons _%opt196254%_
                                      (cons '"-cc-options" _%opts196158%_)))
                               (_%lp196155%_ _%rest196253%_ _%opts196158%_))))
                        (_%K196174196233%_
                         (lambda (_%rest196230%_ _%opt196231%_)
                           (_%lp196155%_
                            _%rest196230%_
                            (cons _%opt196231%_
                                  (cons '"-cc-options" _%opts196158%_)))))
                        (_%K196169196213%_
                         (lambda (_%rest196211%_)
                           (_%lp196155%_ _%rest196211%_ _%opts196158%_)))
                        (_%K196166196199%_
                         (lambda (_%rest196197%_)
                           (_%lp196155%_ _%rest196197%_ _%opts196158%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest196159196185%_))
                        (let ((_%tl196181196261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest196159196185%_)))
                              (_%hd196180196259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest196159196185%_))))
                          (if (equal? _%hd196180196259%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl196181196261%_))
                                  (let ((_%tl196183196266%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl196181196261%_)))
                                        (_%hd196182196264%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl196181196261%_))))
                                    (if (equal? _%hd196182196264%_ '"-Bstatic")
                                        (let ((_%opt196269%_
                                               _%hd196182196264%_)
                                              (_%rest196271%_
                                               _%tl196183196266%_))
                                          (_%K196179196256%_
                                           _%rest196271%_
                                           _%opt196269%_))
                                        (let ((_%opt196246%_
                                               _%hd196182196264%_)
                                              (_%rest196248%_
                                               _%tl196183196266%_))
                                          (_%K196174196233%_
                                           _%rest196248%_
                                           _%opt196246%_))))
                                  (let ((_%rest196205%_ _%tl196181196261%_))
                                    (_%K196166196199%_ _%rest196205%_)))
                              (if (equal? _%hd196180196259%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl196181196261%_))
                                      (let* ((_%tl196173196221%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl196181196261%_)))
                                             (_%rest196224%_
                                              _%tl196173196221%_))
                                        (_%K196169196213%_ _%rest196224%_))
                                      (let ((_%rest196205%_
                                             _%tl196181196261%_))
                                        (_%K196166196199%_ _%rest196205%_)))
                                  (let ((_%rest196205%_ _%tl196181196261%_))
                                    (_%K196166196199%_ _%rest196205%_)))))
                        (_%else196164196193%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords196276%_ _%static?196144196277%_)
        (let ((_%phi?196279%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords196276%_
           _%static?196144196277%_
           _%phi?196279%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g197585_
        (let ((_g197584_ (let () (declare (not safe)) (##length _g197585_))))
          (cond ((let () (declare (not safe)) (##fx= _g197584_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g197585_))
                ((let () (declare (not safe)) (##fx= _g197584_ 3))
                 (apply gxc#gsc-cc-options__%__% _g197585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g197585_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords196288%_ . _%args196289%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords196288%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords196288%_
                  'static:
                  absent-value))
               _%args196289%_)))
    (define gxc#gsc-cc-options
      (lambda _%args196145196295%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args196145196295%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords195993%_ _%static?195989195994%_ _%phi?195996%_)
        (let ((_%static?195998%_
               (if (eq? _%static?195989195994%_ absent-value)
                   '#f
                   _%static?195989195994%_)))
          (if _%phi?195996%_
              '()
              (let _%lp196000%_ ((_%rest196002%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts196003%_ '()))
                (let* ((_%rest196004196030%_ _%rest196002%_)
                       (_%else196009196038%_
                        (lambda () (reverse! _%opts196003%_))))
                  (let ((_%K196024196101%_
                         (lambda (_%rest196098%_ _%opt196099%_)
                           (if _%static?195998%_
                               (_%lp196000%_
                                _%rest196098%_
                                (cons _%opt196099%_
                                      (cons '"-ld-options" _%opts196003%_)))
                               (_%lp196000%_ _%rest196098%_ _%opts196003%_))))
                        (_%K196019196078%_
                         (lambda (_%rest196075%_ _%opt196076%_)
                           (_%lp196000%_
                            _%rest196075%_
                            (cons _%opt196076%_
                                  (cons '"-ld-options" _%opts196003%_)))))
                        (_%K196014196058%_
                         (lambda (_%rest196056%_)
                           (_%lp196000%_ _%rest196056%_ _%opts196003%_)))
                        (_%K196011196044%_
                         (lambda (_%rest196042%_)
                           (_%lp196000%_ _%rest196042%_ _%opts196003%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest196004196030%_))
                        (let ((_%tl196026196106%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest196004196030%_)))
                              (_%hd196025196104%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest196004196030%_))))
                          (if (equal? _%hd196025196104%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl196026196106%_))
                                  (let ((_%tl196028196111%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl196026196106%_)))
                                        (_%hd196027196109%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl196026196106%_))))
                                    (if (equal? _%hd196027196109%_ '"-static")
                                        (let ((_%opt196114%_
                                               _%hd196027196109%_)
                                              (_%rest196116%_
                                               _%tl196028196111%_))
                                          (_%K196024196101%_
                                           _%rest196116%_
                                           _%opt196114%_))
                                        (let ((_%opt196091%_
                                               _%hd196027196109%_)
                                              (_%rest196093%_
                                               _%tl196028196111%_))
                                          (_%K196019196078%_
                                           _%rest196093%_
                                           _%opt196091%_))))
                                  (let ((_%rest196050%_ _%tl196026196106%_))
                                    (_%K196011196044%_ _%rest196050%_)))
                              (if (equal? _%hd196025196104%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl196026196106%_))
                                      (let* ((_%tl196018196066%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl196026196106%_)))
                                             (_%rest196069%_
                                              _%tl196018196066%_))
                                        (_%K196014196058%_ _%rest196069%_))
                                      (let ((_%rest196050%_
                                             _%tl196026196106%_))
                                        (_%K196011196044%_ _%rest196050%_)))
                                  (let ((_%rest196050%_ _%tl196026196106%_))
                                    (_%K196011196044%_ _%rest196050%_)))))
                        (_%else196009196038%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords196121%_ _%static?195989196122%_)
        (let ((_%phi?196124%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords196121%_
           _%static?195989196122%_
           _%phi?196124%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g197587_
        (let ((_g197586_ (let () (declare (not safe)) (##length _g197587_))))
          (cond ((let () (declare (not safe)) (##fx= _g197586_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g197587_))
                ((let () (declare (not safe)) (##fx= _g197586_ 3))
                 (apply gxc#gsc-ld-options__%__% _g197587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g197587_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords196133%_ . _%args196134%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords196133%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords196133%_
                  'static:
                  absent-value))
               _%args196134%_)))
    (define gxc#gsc-ld-options
      (lambda _%args195990196140%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args195990196140%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir195984%_)
        (let ((_%user-staticdir195986%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir195984%_
                       '" -I "
                       _%user-staticdir195986%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp195896%_ ((_%rest195898%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts195899%_ '()))
          (let* ((_%rest195900195920%_ _%rest195898%_)
                 (_%else195904195928%_ (lambda () _%opts195899%_)))
            (let ((_%K195914195971%_
                   (lambda (_%rest195969%_)
                     (_%lp195896%_ _%rest195969%_ _%opts195899%_)))
                  (_%K195909195949%_
                   (lambda (_%rest195946%_ _%opt195947%_)
                     (_%lp195896%_
                      _%rest195946%_
                      (let ((__tmp197588
                             (let ((__tmp197589
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt195947%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp197589))))
                        (declare (not safe))
                        (##append _%opts195899%_ __tmp197588)))))
                  (_%K195906195934%_
                   (lambda (_%rest195932%_)
                     (_%lp195896%_ _%rest195932%_ _%opts195899%_))))
              (if (let () (declare (not safe)) (##pair? _%rest195900195920%_))
                  (let ((_%tl195916195976%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195900195920%_)))
                        (_%hd195915195974%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195900195920%_))))
                    (if (equal? _%hd195915195974%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl195916195976%_))
                            (let* ((_%tl195918195979%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl195916195976%_)))
                                   (_%rest195982%_ _%tl195918195979%_))
                              (_%K195914195971%_ _%rest195982%_))
                            (let ((_%rest195940%_ _%tl195916195976%_))
                              (_%K195906195934%_ _%rest195940%_)))
                        (if (equal? _%hd195915195974%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl195916195976%_))
                                (let ((_%tl195913195959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl195916195976%_)))
                                      (_%hd195912195957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl195916195976%_))))
                                  (let ((_%opt195962%_ _%hd195912195957%_)
                                        (_%rest195964%_ _%tl195913195959%_))
                                    (_%K195909195949%_
                                     _%rest195964%_
                                     _%opt195962%_)))
                                (let ((_%rest195940%_ _%tl195916195976%_))
                                  (_%K195906195934%_ _%rest195940%_)))
                            (let ((_%rest195940%_ _%tl195916195976%_))
                              (_%K195906195934%_ _%rest195940%_)))))
                  (_%else195904195928%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str195893%_)
        (not (let () (declare (not safe)) (string-empty? _%str195893%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path195886%_ _%phi?195887%_)
        (let ((_%gsc-link-opts195889%_
               (gxc#gsc-link-options__% _%phi?195887%_))
              (_%gsc-cc-opts195890%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?195887%_))
              (_%gsc-ld-opts195891%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?195887%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp197590
                  (let ((__tmp197591
                         (let ((__tmp197592 (cons _%path195886%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp197592
                            _%gsc-link-opts195889%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp197591 _%gsc-ld-opts195891%_))))
             (declare (not safe))
             (__foldr1 cons __tmp197590 _%gsc-cc-opts195890%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx195852%_ _%n195853%_ _%ext195854%_)
        (letrec ((_%module-relative-path195856%_
                  (lambda (_%ctx195884%_)
                    (path-strip-directory
                     (let ((__tmp197593
                            (##structure-ref
                             _%ctx195884%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp197593)))))
                 (_%module-source-directory195857%_
                  (lambda (_%ctx195880%_)
                    (path-directory
                     (let ((_%mpath195882%_
                            (##structure-ref
                             _%ctx195880%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath195882%_)
                           _%mpath195882%_
                           (last _%mpath195882%_))))))
                 (_%section-string195858%_
                  (lambda (_%n195874%_)
                    (if (number? _%n195874%_)
                        (number->string _%n195874%_)
                        (if (symbol? _%n195874%_)
                            (symbol->string _%n195874%_)
                            (if (string? _%n195874%_)
                                _%n195874%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n195874%_)))))))
                 (_%file-name195859%_
                  (lambda (_%path195872%_)
                    (if _%n195853%_
                        (string-append
                         _%path195872%_
                         '"~"
                         (_%section-string195858%_ _%n195853%_)
                         _%ext195854%_)
                        (string-append _%path195872%_ _%ext195854%_))))
                 (_%file-path195860%_
                  (lambda ()
                    (let ((_%$e195866%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e195866%_
                          ((lambda (_%outdir195869%_)
                             (path-expand
                              (_%file-name195859%_
                               (let ((__tmp197594
                                      (##structure-ref
                                       _%ctx195852%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp197594)))
                              _%outdir195869%_))
                           _%$e195866%_)
                          (path-expand
                           (_%file-name195859%_
                            (_%module-relative-path195856%_ _%ctx195852%_))
                           (_%module-source-directory195857%_
                            _%ctx195852%_)))))))
          (let ((_%path195862%_ (_%file-path195860%_)))
            (let ((__tmp197595
                   (lambda ()
                     (let ((__tmp197596 (path-directory _%path195862%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp197596)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp197595))
            _%path195862%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx195833%_)
        (letrec ((_%file-name195835%_
                  (lambda (_%id195850%_)
                    (let ((__tmp197597 (gxc#static-module-name _%id195850%_)))
                      (declare (not safe))
                      (##string-append __tmp197597 '".scm"))))
                 (_%file-path195836%_
                  (lambda ()
                    (let* ((_%file195842%_
                            (_%file-name195835%_
                             (##structure-ref
                              _%ctx195833%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e195844%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e195844%_
                          ((lambda (_%outdir195847%_)
                             (path-expand
                              _%file195842%_
                              (path-expand '"static" _%outdir195847%_)))
                           _%$e195844%_)
                          (path-expand _%file195842%_ '"static"))))))
          (let ((_%path195838%_ (_%file-path195836%_)))
            (let ((__tmp197598
                   (lambda ()
                     (let ((__tmp197599 (path-directory _%path195838%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp197599)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp197598))
            _%path195838%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx195826%_ _%opts195827%_)
        (let ((_%$e195829%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts195827%_))))
          (if _%$e195829%_
              (values _%$e195829%_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx195826%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr195816%_)
        (if (string? _%idstr195816%_)
            (let* ((_%str195819%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr195816%_)))
                   (_%strs195821%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str195819%_ '#\/))))
              (declare (not safe))
              (string-join _%strs195821%_ '"__"))
            (if (symbol? _%idstr195816%_)
                (gxc#static-module-name (symbol->string _%idstr195816%_))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr195816%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp197600
               (let ((__tmp197601 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp197601 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp197600))))
    (define gxc#invoke__%
      (lambda (_%@@keywords195780%_
               _%stdout-redirection195776195781%_
               _%stderr-redirection195777195783%_
               _%program195785%_
               _%args195786%_)
        (let* ((_%stdout-redirection195788%_
                (if (eq? _%stdout-redirection195776195781%_ absent-value)
                    '#f
                    _%stdout-redirection195776195781%_))
               (_%stderr-redirection195790%_
                (if (eq? _%stderr-redirection195777195783%_ absent-value)
                    '#f
                    _%stderr-redirection195777195783%_)))
          (let ((__tmp197602 (cons _%program195785%_ _%args195786%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp197602))
          (let* ((_%proc195792%_
                  (open-process
                   (cons 'path:
                         (cons _%program195785%_
                               (cons 'arguments:
                                     (cons _%args195786%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection195788%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection195790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output195797%_
                  (if (or _%stdout-redirection195788%_
                          _%stderr-redirection195790%_)
                      (read-line _%proc195792%_ '#f)
                      '#f))
                 (_%status195800%_ (process-status _%proc195792%_)))
            (let () (declare (not safe)) (##close-port _%proc195792%_))
            (if (zero? _%status195800%_)
                '#!void
                (begin
                  (display _%output195797%_)
                  (let ((__tmp197603 (cons _%program195785%_ _%args195786%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp197603
                     _%status195800%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords195805%_ . _%args195806%_)
        (apply gxc#invoke__%
               _%@@keywords195805%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords195805%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords195805%_
                  'stderr-redirection:
                  absent-value))
               _%args195806%_)))
    (define gxc#invoke
      (lambda _%args195778195812%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args195778195812%_)))))
