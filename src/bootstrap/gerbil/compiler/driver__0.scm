(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708452005)
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
      (lambda (_path154588_ _fun154589_)
        (with-output-to-file
         (let ((__tmp154682
                (let ()
                  (declare (not safe))
                  (cons _path154588_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp154682))
         _fun154589_)))
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
      (lambda (_gerbil-libdir154583_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir154583_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
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
      (lambda (_dir154581_) (delete-file-or-directory _dir154581_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath154555_ _opts154556_)
        (if (let () (declare (not safe)) (string? _srcpath154555_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath154555_)))
        (let ((_outdir154558_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts154556_)))
              (_invoke-gsc?154559_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts154556_)))
              (_gsc-options154560_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts154556_)))
              (_keep-scm?154561_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts154556_)))
              (_verbosity154562_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts154556_)))
              (_optimize154563_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts154556_)))
              (_debug154564_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts154556_)))
              (_gen-ssxi154565_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts154556_))))
          (if _outdir154558_
              (let ((__tmp154683
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir154558_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp154683))
              '#!void)
          (if _optimize154563_
              (let ((__tmp154684
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp154684))
              '#!void)
          (let ((__tmp154688
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath154555_))
                   (let ((__tmp154689
                          (let ((__tmp154690
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath154555_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp154690))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp154689))))
                (__tmp154687
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp154685
                 (let ((__tmp154686
                        (let ()
                          (declare (not safe))
                          (cons _srcpath154555_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp154686))))
            (declare (not safe))
            (call-with-parameters
             __tmp154688
             gxc#current-compile-output-dir
             _outdir154558_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?154559_
             gxc#current-compile-gsc-options
             _gsc-options154560_
             gxc#current-compile-keep-scm
             _keep-scm?154561_
             gxc#current-compile-verbose
             _verbosity154562_
             gxc#current-compile-optimize
             _optimize154563_
             gxc#current-compile-debug
             _debug154564_
             gxc#current-compile-generate-ssxi
             _gen-ssxi154565_
             gxc#current-compile-timestamp
             __tmp154687
             gxc#current-compile-context
             __tmp154685
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath154574_)
        (let ((_opts154576_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath154574_ _opts154576_))))
    (define gxc#compile-module
      (lambda _g154692_
        (let ((_g154691_ (let () (declare (not safe)) (##length _g154692_))))
          (cond ((let () (declare (not safe)) (##fx= _g154691_ 1))
                 (apply (lambda (_srcpath154574_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath154574_)))
                        _g154692_))
                ((let () (declare (not safe)) (##fx= _g154691_ 2))
                 (apply (lambda (_srcpath154578_ _opts154579_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath154578_
                             _opts154579_)))
                        _g154692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g154692_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath154531_ _opts154532_)
        (if (let () (declare (not safe)) (string? _srcpath154531_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath154531_)))
        (let ((_outdir154534_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts154532_)))
              (_invoke-gsc?154535_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts154532_)))
              (_gsc-options154536_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts154532_)))
              (_keep-scm?154537_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts154532_)))
              (_verbosity154538_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts154532_)))
              (_debug154539_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts154532_))))
          (if _outdir154534_
              (let ((__tmp154693
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir154534_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp154693))
              '#!void)
          (let ((__tmp154697
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath154531_))
                   (let ((__tmp154698
                          (let ((__tmp154699
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath154531_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp154699))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp154698
                      _opts154532_))))
                (__tmp154696
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp154694
                 (let ((__tmp154695
                        (let ()
                          (declare (not safe))
                          (cons _srcpath154531_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp154695))))
            (declare (not safe))
            (call-with-parameters
             __tmp154697
             gxc#current-compile-output-dir
             _outdir154534_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?154535_
             gxc#current-compile-gsc-options
             _gsc-options154536_
             gxc#current-compile-keep-scm
             _keep-scm?154537_
             gxc#current-compile-verbose
             _verbosity154538_
             gxc#current-compile-debug
             _debug154539_
             gxc#current-compile-timestamp
             __tmp154696
             gxc#current-compile-context
             __tmp154694
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath154547_)
        (let ((_opts154549_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath154547_ _opts154549_))))
    (define gxc#compile-exe
      (lambda _g154701_
        (let ((_g154700_ (let () (declare (not safe)) (##length _g154701_))))
          (cond ((let () (declare (not safe)) (##fx= _g154700_ 1))
                 (apply (lambda (_srcpath154547_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath154547_)))
                        _g154701_))
                ((let () (declare (not safe)) (##fx= _g154700_ 2))
                 (apply (lambda (_srcpath154551_ _opts154552_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath154551_ _opts154552_)))
                        _g154701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g154701_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx154527_ _opts154528_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts154528_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx154527_
               _opts154528_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx154527_
               _opts154528_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx154410_ _opts154411_)
        (letrec ((_generate-stub154413_
                  (lambda (_builtin-modules154523_)
                    (let ((_mod-main154525_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx154410_ 'main))))
                      (write (let ((__tmp154702
                                    (let ((__tmp154703
                                           (let ((__tmp154704
                                                  (let ((__tmp154705
                                                         (let ((__tmp154707
                                                                (let ((__tmp154708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules154523_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp154708)))
                       (__tmp154706
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp154707 __tmp154706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp154705))))
                                             (declare (not safe))
                                             (cons __tmp154704 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp154703))))
                               (declare (not safe))
                               (cons 'define __tmp154702)))
                      (write (let ((__tmp154709
                                    (let ((__tmp154748
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp154710
                                           (let ((__tmp154711
                                                  (let ((__tmp154712
                                                         (let ((__tmp154736
                                                                (let ((__tmp154737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154738
                                      (let ((__tmp154746
                                             (let ((__tmp154747
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp154747)))
                                            (__tmp154739
                                             (let ((__tmp154740
                                                    (let ((__tmp154741
                                                           (let ((__tmp154742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154743
                                 (let ((__tmp154744
                                        (let ((__tmp154745
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp154745 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp154744))))
                            (declare (not safe))
                            (cons __tmp154743 '()))))
                     (declare (not safe))
                     (cons _mod-main154525_ __tmp154742))))
              (declare (not safe))
              (cons 'apply __tmp154741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154740 '()))))
                                        (declare (not safe))
                                        (cons __tmp154746 __tmp154739))))
                                 (declare (not safe))
                                 (cons '() __tmp154738))))
                          (declare (not safe))
                          (cons 'lambda __tmp154737)))
                       (__tmp154713
                        (let ((__tmp154714
                               (let ((__tmp154715
                                      (let ((__tmp154716
                                             (let ((__tmp154727
                                                    (let ((__tmp154728
                                                           (let ((__tmp154729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154730
                                 (let ((__tmp154731
                                        (let ((__tmp154732
                                               (let ((__tmp154733
                                                      (let ((__tmp154734
                                                             (let ((__tmp154735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp154735 '()))))
                (declare (not safe))
                (cons 'force-output __tmp154734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154733 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp154732))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp154731))))
                            (declare (not safe))
                            (cons __tmp154730 '()))))
                     (declare (not safe))
                     (cons 'void __tmp154729))))
              (declare (not safe))
              (cons 'with-catch __tmp154728)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154717
                                                    (let ((__tmp154718
                                                           (let ((__tmp154719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154720
                                 (let ((__tmp154721
                                        (let ((__tmp154722
                                               (let ((__tmp154723
                                                      (let ((__tmp154724
                                                             (let ((__tmp154725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154726
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp154726 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp154725))))
                (declare (not safe))
                (cons __tmp154724 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp154723))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp154722))))
                                   (declare (not safe))
                                   (cons __tmp154721 '()))))
                            (declare (not safe))
                            (cons 'void __tmp154720))))
                     (declare (not safe))
                     (cons 'with-catch __tmp154719))))
              (declare (not safe))
              (cons __tmp154718 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154727
                                                     __tmp154717))))
                                        (declare (not safe))
                                        (cons '() __tmp154716))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp154715))))
                          (declare (not safe))
                          (cons __tmp154714 '()))))
                   (declare (not safe))
                   (cons __tmp154736 __tmp154713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp154712))))
                                             (declare (not safe))
                                             (cons __tmp154711 '()))))
                                      (declare (not safe))
                                      (cons __tmp154748 __tmp154710))))
                               (declare (not safe))
                               (cons 'define __tmp154709)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts154414_
                  (lambda (_libgerbil154521_)
                    (call-with-input-file
                     (string-append _libgerbil154521_ '".ldd")
                     read)))
                 (_replace-extension154415_
                  (lambda (_path154518_ _ext154519_)
                    (string-append
                     (path-strip-extension _path154518_)
                     _ext154519_)))
                 (_not-exclude-module?154416_
                  (lambda (_ctx154514_)
                    (let ((_id-str154516_
                           (symbol->string
                            (##structure-ref
                             _ctx154514_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp154749
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str154516_))))
                            (declare (not safe))
                            (not __tmp154749))
                          (let ((__tmp154750
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str154516_))))
                            (declare (not safe))
                            (not __tmp154750))
                          '#f))))
                 (_not-file-empty?154417_
                  (lambda (_path154512_)
                    (let ((__tmp154751
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path154512_))))
                      (declare (not safe))
                      (not __tmp154751))))
                 (_compile-stub154418_
                  (lambda (_output-scm154425_ _output-bin154426_)
                    (let* ((_gerbil-home154428_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir154430_
                            (path-expand '"lib" _gerbil-home154428_))
                           (_gerbil-staticdir154432_
                            (path-expand '"static" _gerbil-libdir154430_))
                           (_gxlink154434_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir154430_))
                           (_tmp154436_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path154440_
                            (lambda (_f154438_)
                              (path-expand
                               (path-strip-directory _f154438_)
                               _tmp154436_)))
                           (_deps154442_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx154410_)))
                           (_deps154444_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?154416_
                                      _deps154442_)))
                           (_src-deps-scm154446_
                            (map gxc#find-static-module-file _deps154444_))
                           (_src-deps-scm154448_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?154417_
                                      _src-deps-scm154446_)))
                           (_src-deps-scm154450_
                            (map path-expand _src-deps-scm154448_))
                           (_deps-scm154452_
                            (map _tmp-path154440_ _src-deps-scm154450_))
                           (_deps-c154458_
                            (map (lambda (_g154453154455_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension154415_
                                      _g154453154455_
                                      '".c")))
                                 _deps-scm154452_))
                           (_deps-o154464_
                            (map (lambda (_g154459154461_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension154415_
                                      _g154459154461_
                                      '".o")))
                                 _deps-scm154452_))
                           (_src-bin-scm154466_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx154410_)))
                           (_src-bin-scm154468_
                            (path-expand _src-bin-scm154466_))
                           (_bin-scm154470_
                            (let ()
                              (declare (not safe))
                              (_tmp-path154440_ _src-bin-scm154468_)))
                           (_bin-c154472_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154415_
                               _bin-scm154470_
                               '".c")))
                           (_bin-o154474_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154415_
                               _bin-scm154470_
                               '".o")))
                           (_output-bin154476_
                            (path-expand _output-bin154426_))
                           (_output-scm154478_
                            (path-expand _output-scm154425_))
                           (_output-c154480_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154415_
                               _output-scm154478_
                               '".c")))
                           (_output-o154482_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154415_
                               _output-scm154478_
                               '".o")))
                           (_output_-c154484_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154415_
                               _output-scm154478_
                               '"_.c")))
                           (_output_-o154486_
                            (let ()
                              (declare (not safe))
                              (_replace-extension154415_
                               _output-scm154478_
                               '"_.o")))
                           (_gsc-link-opts154488_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts154490_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts154492_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir154432_)))
                           (_output-ld-opts154494_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a154496_
                            (path-expand '"libgerbil.a" _gerbil-libdir154430_))
                           (_libgerbil.so154498_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir154430_))
                           (_libgerbil-ld-opts154500_
                            (if (file-exists? _libgerbil.so154498_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts154414_
                                   _libgerbil.so154498_))
                                (if (file-exists? _libgerbil.a154496_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts154414_
                                       _libgerbil.a154496_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a154496_
                                       _libgerbil.so154498_)))))
                           (_rpath154502_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir154430_)))
                           (_builtin-modules154506_
                            (map (lambda (_mod154504_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod154504_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx154410_ _deps154444_)))))
                      (let ((__tmp154752
                             (lambda ()
                               (let ((__tmp154753
                                      (path-directory _output-bin154476_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp154753)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp154752))
                      (let ((__tmp154754
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub154413_
                                  _builtin-modules154506_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm154478_
                         __tmp154754))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp154755
                                   (lambda () (create-directory _tmp154436_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp154755))
                            (for-each
                             copy-file
                             _src-deps-scm154450_
                             _deps-scm154452_)
                            (copy-file _src-bin-scm154468_ _bin-scm154470_)
                            (let ((__tmp154763
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp154756
                                   (let ((__tmp154757
                                          (let ((__tmp154758
                                                 (let ((__tmp154759
                                                        (let ((__tmp154760
                                                               (let ((__tmp154761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154762
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm154478_ '()))))
                                (declare (not safe))
                                (cons _bin-scm154470_ __tmp154762))))
                         (declare (not safe))
                         (foldr1 cons __tmp154761 _deps-scm154452_))))
                  (declare (not safe))
                  (foldr1 cons __tmp154760 _gsc-link-opts154488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink154434_
                                                         __tmp154759))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp154758))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp154757))))
                              (declare (not safe))
                              (gxc#invoke __tmp154763 __tmp154756))
                            (let ((__tmp154771
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp154764
                                   (let ((__tmp154765
                                          (let ((__tmp154766
                                                 (let ((__tmp154767
                                                        (let ((__tmp154768
                                                               (let ((__tmp154769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154770
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c154484_ '()))))
                                (declare (not safe))
                                (cons _output-c154480_ __tmp154770))))
                         (declare (not safe))
                         (cons _bin-c154472_ __tmp154769))))
                  (declare (not safe))
                  (foldr1 cons __tmp154768 _deps-c154458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp154767
                                                           _gsc-static-opts154492_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp154766
                                                    _gsc-cc-opts154490_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp154765))))
                              (declare (not safe))
                              (gxc#invoke __tmp154771 __tmp154764))
                            (let ((__tmp154784
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp154772
                                   (let ((__tmp154773
                                          (let ((__tmp154774
                                                 (let ((__tmp154775
                                                        (let ((__tmp154776
                                                               (let ((__tmp154777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154778
                                     (let ((__tmp154779
                                            (let ((__tmp154780
                                                   (let ((__tmp154781
                                                          (let ((__tmp154782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154783
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts154500_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp154783))))
                    (declare (not safe))
                    (cons _gerbil-libdir154430_ __tmp154782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp154781))))
                                              (declare (not safe))
                                              (cons _rpath154502_
                                                    __tmp154780))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp154779
                                               _output-ld-opts154494_))))
                                (declare (not safe))
                                (cons _output_-o154486_ __tmp154778))))
                         (declare (not safe))
                         (cons _output-o154482_ __tmp154777))))
                  (declare (not safe))
                  (cons _bin-o154474_ __tmp154776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp154775
                                                           _deps-o154464_))))
                                            (declare (not safe))
                                            (cons _output-bin154476_
                                                  __tmp154774))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp154773))))
                              (declare (not safe))
                              (gxc#invoke __tmp154784 __tmp154772))
                            (for-each
                             delete-file
                             (let ((__tmp154785
                                    (let ((__tmp154786
                                           (let ((__tmp154787
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o154486_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o154482_
                                                   __tmp154787))))
                                      (declare (not safe))
                                      (cons _output_-c154484_ __tmp154786))))
                               (declare (not safe))
                               (cons _output-c154480_ __tmp154785)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp154436_)))
                          '#!void)))))
          (let* ((_output-bin154420_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx154410_ _opts154411_)))
                 (_output-scm154422_
                  (string-append _output-bin154420_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub154418_ _output-scm154422_ _output-bin154420_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm154422_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx154235_ _opts154236_)
        (letrec ((_reset-declare154238_
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
                 (_generate-stub154239_
                  (lambda (_deps154401_)
                    (let ((_mod-main154403_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx154235_ 'main)))
                          (_reset-decl154404_
                           (let ()
                             (declare (not safe))
                             (_reset-declare154238_)))
                          (_user-decl154405_
                           (let ()
                             (declare (not safe))
                             (_user-declare154240_))))
                      (for-each
                       (lambda (_dep154407_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl154404_)
                         (newline)
                         (if _user-decl154405_
                             (begin (write _user-decl154405_) (newline))
                             '#!void)
                         (write (let ((__tmp154788
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep154407_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp154788)))
                         (newline))
                       _deps154401_)
                      (write (let ((__tmp154789
                                    (let ((__tmp154802
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp154790
                                           (let ((__tmp154798
                                                  (let ((__tmp154799
                                                         (let ((__tmp154800
                                                                (let ((__tmp154801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp154801))))
                   (declare (not safe))
                   (cons __tmp154800 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp154799)))
                                                 (__tmp154791
                                                  (let ((__tmp154792
                                                         (let ((__tmp154793
                                                                (let ((__tmp154794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154795
                                      (let ((__tmp154796
                                             (let ((__tmp154797
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp154797 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp154796))))
                                 (declare (not safe))
                                 (cons __tmp154795 '()))))
                          (declare (not safe))
                          (cons _mod-main154403_ __tmp154794))))
                   (declare (not safe))
                   (cons 'apply __tmp154793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154792 '()))))
                                             (declare (not safe))
                                             (cons __tmp154798 __tmp154791))))
                                      (declare (not safe))
                                      (cons __tmp154802 __tmp154790))))
                               (declare (not safe))
                               (cons 'define __tmp154789)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare154240_
                  (lambda ()
                    (let* ((_gsc-opts154306_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts154236_)))
                           (_gsc-prelude154308_
                            (if _gsc-opts154306_
                                (member '"-prelude" _gsc-opts154306_)
                                '#f))
                           (_gsc-prelude154310_
                            (if _gsc-prelude154308_
                                (read (open-input-string
                                       (cadr _gsc-prelude154308_)))
                                '#f)))
                      (let _lp154313_ ((_rest154315_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude154310_ '())))
                                       (_user-decls154316_ '()))
                        (let* ((_rest154317154325_ _rest154315_)
                               (_else154319154333_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls154316_))
                                      '#f
                                      (let ((__tmp154803
                                             (reverse _user-decls154316_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp154803)))))
                               (_K154321154389_
                                (lambda (_rest154336_ _expr154337_)
                                  (let* ((_expr154338154350_ _expr154337_)
                                         (_else154341154358_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp154313_
                                               _rest154336_
                                               _user-decls154316_)))))
                                    (let ((_K154346154379_
                                           (lambda (_decls154377_)
                                             (let ((__tmp154804
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls154316_
                                                              _decls154377_))))
                                               (declare (not safe))
                                               (_lp154313_
                                                _rest154336_
                                                __tmp154804))))
                                          (_K154343154364_
                                           (lambda (_exprs154362_)
                                             (let ((__tmp154805
                                                    (append _exprs154362_
                                                            _rest154336_)))
                                               (declare (not safe))
                                               (_lp154313_
                                                __tmp154805
                                                _user-decls154316_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr154338154350_))
                                          (let ((_tl154348154384_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr154338154350_)))
                                                (_hd154347154382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr154338154350_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd154347154382_
                                                         'declare))
                                                (let ((_decls154387_
                                                       _tl154348154384_))
                                                  (declare (not safe))
                                                  (_K154346154379_
                                                   _decls154387_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd154347154382_
                                                             'begin))
                                                    (let ((_exprs154372_
                                                           _tl154348154384_))
                                                      (declare (not safe))
                                                      (_K154343154364_
                                                       _exprs154372_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else154341154358_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else154341154358_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest154317154325_))
                              (let ((_hd154322154392_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest154317154325_)))
                                    (_tl154323154394_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest154317154325_))))
                                (let* ((_expr154397_ _hd154322154392_)
                                       (_rest154399_ _tl154323154394_))
                                  (declare (not safe))
                                  (_K154321154389_ _rest154399_ _expr154397_)))
                              (let ()
                                (declare (not safe))
                                (_else154319154333_))))))))
                 (_compile-stub154241_
                  (lambda (_output-scm154248_ _output-bin154249_)
                    (let* ((_gerbil-home154251_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir154253_
                            (path-expand '"lib" _gerbil-home154251_))
                           (_runtime154255_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp154257_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home154251_))
                           (_include-gambit-sharp154259_
                            (string-append
                             '"(include \""
                             _gambit-sharp154257_
                             '"\")"))
                           (_bin-scm154261_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx154235_)))
                           (_deps154263_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx154235_)))
                           (_deps154265_
                            (map gxc#find-static-module-file _deps154263_))
                           (_deps154270_
                            (let ((__tmp154806
                                   (lambda (_$obj154267_)
                                     (let ((__tmp154807
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj154267_))))
                                       (declare (not safe))
                                       (not __tmp154807)))))
                              (declare (not safe))
                              (filter __tmp154806 _deps154265_)))
                           (_deps154274_
                            (let ((__tmp154808
                                   (lambda (_f154272_)
                                     (let ((__tmp154809
                                            (member _f154272_
                                                    _runtime154255_)))
                                       (declare (not safe))
                                       (not __tmp154809)))))
                              (declare (not safe))
                              (filter __tmp154808 _deps154270_)))
                           (_output-base154276_
                            (string-append
                             (path-strip-extension _output-scm154248_)))
                           (_output-c154278_
                            (string-append _output-base154276_ '".c"))
                           (_output-o154280_
                            (string-append _output-base154276_ '".o"))
                           (_output-c_154282_
                            (string-append _output-base154276_ '"_.c"))
                           (_output-o_154284_
                            (string-append _output-base154276_ '"_.o"))
                           (_gsc-link-opts154286_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts154288_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts154290_
                            (let ((__tmp154810
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir154253_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp154810)))
                           (_output-ld-opts154292_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros154294_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp154811
                                       (let ((__tmp154812
                                              (let ((__tmp154813
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp154259_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp154813))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp154812))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp154811))
                                (let ((__tmp154814
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp154259_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp154814))))
                           (_gsc-link-opts154296_
                            (append _gsc-link-opts154286_
                                    _gsc-gx-macros154294_))
                           (_rpath154298_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir154253_)))
                           (_default-ld-options154300_
                            (let ((__tmp154815
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp154815))))
                      (let ((__tmp154816
                             (lambda ()
                               (let ((__tmp154817
                                      (path-directory _output-bin154249_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp154817)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp154816))
                      (let ((__tmp154818
                             (lambda ()
                               (let ((__tmp154819
                                      (let ((__tmp154820
                                             (let ((__tmp154821
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm154261_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp154821
                                                       _deps154274_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp154820
                                                _runtime154255_))))
                                 (declare (not safe))
                                 (_generate-stub154239_ __tmp154819)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm154248_
                         __tmp154818))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp154827
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp154822
                                   (let ((__tmp154823
                                          (let ((__tmp154824
                                                 (let ((__tmp154825
                                                        (let ((__tmp154826
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm154248_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp154826 _gsc-link-opts154296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_154282_
                                                         __tmp154825))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp154824))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp154823))))
                              (declare (not safe))
                              (gxc#invoke __tmp154827 __tmp154822))
                            (let ((__tmp154833
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp154828
                                   (let ((__tmp154829
                                          (let ((__tmp154830
                                                 (let ((__tmp154831
                                                        (let ((__tmp154832
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_154282_ '()))))
                  (declare (not safe))
                  (cons _output-c154278_ __tmp154832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp154831
                                                           _gsc-static-opts154290_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp154830
                                                    _gsc-cc-opts154288_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp154829))))
                              (declare (not safe))
                              (gxc#invoke __tmp154833 __tmp154828))
                            (let ((__tmp154843
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp154834
                                   (let ((__tmp154835
                                          (let ((__tmp154836
                                                 (let ((__tmp154837
                                                        (let ((__tmp154838
                                                               (let ((__tmp154839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154840
                                     (let ((__tmp154841
                                            (let ((__tmp154842
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options154300_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir154253_
                                                    __tmp154842))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp154841))))
                                (declare (not safe))
                                (cons _rpath154298_ __tmp154840))))
                         (declare (not safe))
                         (foldr1 cons __tmp154839 _output-ld-opts154292_))))
                  (declare (not safe))
                  (cons _output-o_154284_ __tmp154838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o154280_
                                                         __tmp154837))))
                                            (declare (not safe))
                                            (cons _output-bin154249_
                                                  __tmp154836))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp154835))))
                              (declare (not safe))
                              (gxc#invoke __tmp154843 __tmp154834)))
                          '#!void)))))
          (let* ((_output-bin154243_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx154235_ _opts154236_)))
                 (_output-scm154245_
                  (string-append _output-bin154243_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub154241_ _output-scm154245_ _output-bin154243_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm154245_))))))
    (define gxc#find-export-binding
      (lambda (_ctx154185_ _id154186_)
        (let ((_$e154232_
               (let ((__tmp154845
                      (lambda (_e154187154189_)
                        (let* ((_g154191154201_ _e154187154189_)
                               (_else154193154209_ (lambda () '#f))
                               (_K154195154213_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g154191154201_
                                 'gx#module-export::t))
                              (let* ((_e154196154216_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g154191154201_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e154197154219_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g154191154201_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e154198154222_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g154191154201_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e154198154222_ '0))
                                    (let ((_e154199154225_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g154191154201_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g154227154229_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g154227154229_
                                                    _id154186_)))
                                           _e154199154225_)
                                          (let ()
                                            (declare (not safe))
                                            (_K154195154213_))
                                          (let ()
                                            (declare (not safe))
                                            (_else154193154209_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else154193154209_))))
                              (let ()
                                (declare (not safe))
                                (_else154193154209_))))))
                     (__tmp154844
                      (##structure-ref
                       _ctx154185_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp154845 __tmp154844))))
          (if _$e154232_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e154232_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx154177_ _id154178_)
        (let ((_$e154180_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx154177_ _id154178_))))
          (if _$e154180_
              ((lambda (_bind154183_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind154183_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id154178_)))
                 (##structure-ref _bind154183_ '1 gx#binding::t '#f))
               _$e154180_)
              (let ((__tmp154846
                     (##structure-ref
                      _ctx154177_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp154846
                 _id154178_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx154064_)
        (letrec* ((_ht154066_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template154067_
                   (lambda (_in154129_ _phi154130_)
                     (let ((_iphi154132_
                            (fx+ _phi154130_
                                 (##direct-structure-ref
                                  _in154129_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports154133_
                            (##structure-ref
                             (##direct-structure-ref
                              _in154129_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp154135_ ((_rest154137_ _imports154133_)
                                        (_r154138_ '()))
                         (let* ((_rest154139154147_ _rest154137_)
                                (_else154141154155_ (lambda () _r154138_))
                                (_K154143154165_
                                 (lambda (_rest154158_ _in154159_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in154159_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi154132_))
                                           (let ((__tmp154847
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in154159_
                                                          _r154138_))))
                                             (declare (not safe))
                                             (_lp154135_
                                              _rest154158_
                                              __tmp154847))
                                           (let ()
                                             (declare (not safe))
                                             (_lp154135_
                                              _rest154158_
                                              _r154138_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in154159_
                                              'gx#module-import::t))
                                           (let ((_iphi154161_
                                                  (fx+ _phi154130_
                                                       (##direct-structure-ref
                                                        _in154159_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi154161_))
                                                 (let ((__tmp154848
                                                        (let ((__tmp154849
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in154159_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp154849 _r154138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp154135_
                                                    _rest154158_
                                                    __tmp154848))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp154135_
                                                    _rest154158_
                                                    _r154138_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in154159_
                                                  'gx#import-set::t))
                                               (let ((_xphi154163_
                                                      (fx+ _iphi154132_
                                                           (##direct-structure-ref
                                                            _in154159_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi154163_))
                                                     (let ((__tmp154850
                                                            (let ((__tmp154851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in154159_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp154851 _r154138_))))
               (declare (not safe))
               (_lp154135_ _rest154158_ __tmp154850))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi154163_)
                                                         (let ((__tmp154852
                                                                (let ((__tmp154853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template154067_
                                  _in154159_
                                  _iphi154132_))))
                          (declare (not safe))
                          (foldl1 cons _r154138_ __tmp154853))))
                   (declare (not safe))
                   (_lp154135_ _rest154158_ __tmp154852))
                 (let ()
                   (declare (not safe))
                   (_lp154135_ _rest154158_ _r154138_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp154135_
                                                  _rest154158_
                                                  _r154138_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest154139154147_))
                               (let ((_hd154144154168_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest154139154147_)))
                                     (_tl154145154170_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest154139154147_))))
                                 (let* ((_in154173_ _hd154144154168_)
                                        (_rest154175_ _tl154145154170_))
                                   (declare (not safe))
                                   (_K154143154165_ _rest154175_ _in154173_)))
                               (let ()
                                 (declare (not safe))
                                 (_else154141154155_))))))))
                  (_find-deps154068_
                   (lambda (_rest154075_ _deps154076_)
                     (let* ((_rest154077154085_ _rest154075_)
                            (_else154079154093_ (lambda () _deps154076_))
                            (_K154081154117_
                             (lambda (_rest154096_ _hd154097_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd154097_
                                      'gx#module-context::t))
                                   (let ((_id154099_
                                          (##structure-ref
                                           _hd154097_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports154100_
                                          (##structure-ref
                                           _hd154097_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht154066_ _id154099_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps154068_
                                            _rest154096_
                                            _deps154076_))
                                         (let ((_$e154102_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd154097_))))
                                           (if _$e154102_
                                               ((lambda (_pre154105_)
                                                  (let ((_xdeps154107_
                                                         (let ((__tmp154854
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre154105_ _imports154100_))))
                   (declare (not safe))
                   (_find-deps154068_ __tmp154854 _deps154076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht154066_
                                                       _id154099_
                                                       _hd154097_))
                                                    (let ((__tmp154855
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd154097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps154107_))))
              (declare (not safe))
              (_find-deps154068_ _rest154096_ __tmp154855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e154102_)
                                               (let ((_xdeps154109_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps154068_
                                                         _imports154100_
                                                         _deps154076_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht154066_
                                                    _id154099_
                                                    _hd154097_))
                                                 (let ((__tmp154856
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd154097_
                                                                _xdeps154109_))))
                                                   (declare (not safe))
                                                   (_find-deps154068_
                                                    _rest154096_
                                                    __tmp154856)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd154097_
                                          'gx#prelude-context::t))
                                       (let ((_id154111_
                                              (##structure-ref
                                               _hd154097_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht154066_
                                                _id154111_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps154068_
                                                _rest154096_
                                                _deps154076_))
                                             (let ((_xdeps154113_
                                                    (let ((__tmp154857
                                                           (##structure-ref
                                                            _hd154097_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps154068_
                                                       __tmp154857
                                                       _deps154076_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht154066_
                                                      _id154111_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps154068_
                                                      _rest154096_
                                                      _xdeps154113_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht154066_
                                                        _id154111_
                                                        _hd154097_))
                                                     (let ((__tmp154858
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd154097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps154113_))))
               (declare (not safe))
               (_find-deps154068_ _rest154096_ __tmp154858)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd154097_
                                              'gx#module-import::t))
                                           (if (let ((__tmp154859
                                                      (##direct-structure-ref
                                                       _hd154097_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp154859))
                                               (let ((__tmp154860
                                                      (let ((__tmp154861
                                                             (##direct-structure-ref
                                                              _hd154097_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp154861
                                                              _rest154096_))))
                                                 (declare (not safe))
                                                 (_find-deps154068_
                                                  __tmp154860
                                                  _deps154076_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps154068_
                                                  _rest154096_
                                                  _deps154076_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd154097_
                                                  'gx#module-export::t))
                                               (let ((__tmp154862
                                                      (let ((__tmp154863
                                                             (##direct-structure-ref
                                                              _hd154097_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp154863
                                                              _rest154096_))))
                                                 (declare (not safe))
                                                 (_find-deps154068_
                                                  __tmp154862
                                                  _deps154076_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd154097_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp154864
                                                              (##direct-structure-ref
                                                               _hd154097_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp154864))
                                                       (let ((__tmp154865
                                                              (let ((__tmp154866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd154097_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp154866 _rest154096_))))
                 (declare (not safe))
                 (_find-deps154068_ __tmp154865 _deps154076_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd154097_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps154115_
                           (let ()
                             (declare (not safe))
                             (_import-set-template154067_ _hd154097_ '0)))
                          (__tmp154867
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest154096_ _xdeps154115_))))
                     (declare (not safe))
                     (_find-deps154068_ __tmp154867 _deps154076_))
                   (let ()
                     (declare (not safe))
                     (_find-deps154068_ _rest154096_ _deps154076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd154097_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest154077154085_))
                           (let ((_hd154082154120_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest154077154085_)))
                                 (_tl154083154122_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest154077154085_))))
                             (let* ((_hd154125_ _hd154082154120_)
                                    (_rest154127_ _tl154083154122_))
                               (declare (not safe))
                               (_K154081154117_ _rest154127_ _hd154125_)))
                           (let ()
                             (declare (not safe))
                             (_else154079154093_)))))))
          (reverse (let ((__tmp154868
                          (let ((__tmp154869
                                 (let ((_$e154070_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx154064_))))
                                   (if _$e154070_
                                       ((lambda (_pre154073_)
                                          (let ((__tmp154870
                                                 (##structure-ref
                                                  _ctx154064_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre154073_ __tmp154870)))
                                        _$e154070_)
                                       (##structure-ref
                                        _ctx154064_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps154068_ __tmp154869 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp154868))))))
    (define gxc#find-static-module-file
      (lambda (_ctx153995_)
        (let* ((_context-id153997_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx153995_
                       'gx#module-context::t))
                    (##structure-ref _ctx153995_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx153995_)))
               (_scm153999_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id153997_))
                 '".scm"))
               (_dirs154001_ (gx#current-expander-module-library-path))
               (_dirs154007_
                (let ((_user-libpath154003_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath154003_
                      (let ((_user-libpath154005_
                             (path-expand '"lib" _user-libpath154003_)))
                        (if (member _user-libpath154005_ _dirs154001_)
                            _dirs154001_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath154005_ _dirs154001_))))
                      _dirs154001_)))
               (_dirs154016_
                (let ((_$e154009_ (gxc#current-compile-output-dir)))
                  (if _$e154009_
                      ((lambda (_g154011154013_)
                         (let ()
                           (declare (not safe))
                           (cons _g154011154013_ _dirs154007_)))
                       _$e154009_)
                      _dirs154007_)))
               (_dirs154022_
                (map (lambda (_g154017154019_)
                       (path-expand '"static" _g154017154019_))
                     _dirs154016_)))
          (let _lp154025_ ((_rest154027_ _dirs154022_))
            (let* ((_rest154028154036_ _rest154027_)
                   (_else154030154044_
                    (lambda ()
                      (let ((__tmp154871
                             (##structure-ref
                              _ctx153995_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp154871
                         _scm153999_))))
                   (_K154032154052_
                    (lambda (_rest154047_ _dir154048_)
                      (let ((_path154050_
                             (path-expand _scm153999_ _dir154048_)))
                        (if (file-exists? _path154050_)
                            _path154050_
                            (let ()
                              (declare (not safe))
                              (_lp154025_ _rest154047_)))))))
              (if (let () (declare (not safe)) (##pair? _rest154028154036_))
                  (let ((_hd154033154055_
                         (let ()
                           (declare (not safe))
                           (##car _rest154028154036_)))
                        (_tl154034154057_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest154028154036_))))
                    (let* ((_dir154060_ _hd154033154055_)
                           (_rest154062_ _tl154034154057_))
                      (declare (not safe))
                      (_K154032154052_ _rest154062_ _dir154060_)))
                  (let () (declare (not safe)) (_else154030154044_))))))))
    (define gxc#file-empty?
      (lambda (_path153993_)
        (let ((__tmp154872 (file-info-size (file-info _path153993_ '#t))))
          (declare (not safe))
          (zero? __tmp154872))))
    (define gxc#compile-top-module
      (lambda (_ctx153982_)
        (let ((__tmp154876
               (lambda ()
                 (let ((__tmp154877
                        (##structure-ref
                         _ctx153982_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp154877))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp154878
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx153982_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp154878))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx153982_))
                 (if (let ((__tmp154879
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx153982_))))
                       (declare (not safe))
                       (null? __tmp154879))
                     (let* ((_thr1153987_
                             (let ((__tmp154880
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx153982_)))))
                               (declare (not safe))
                               (spawn __tmp154880)))
                            (_thr2153990_
                             (let ((__tmp154881
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx153982_)))))
                               (declare (not safe))
                               (spawn __tmp154881))))
                       (let () (declare (not safe)) (gxc#join! _thr1153987_))
                       (let () (declare (not safe)) (gxc#join! _thr2153990_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx153982_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx153982_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx153982_))
                     '#!void)))
              (__tmp154875
               (let ((__obj154680
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj154680)
                 __obj154680))
              (__tmp154874 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp154873 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp154876
           gx#current-expander-context
           _ctx153982_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp154875
           gxc#current-compile-runtime-sections
           __tmp154874
           gxc#current-compile-runtime-names
           __tmp154873))))
    (define gxc#collect-bindings
      (lambda (_ctx153980_)
        (let ((__tmp154882
               (##structure-ref _ctx153980_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp154882))))
    (define gxc#compile-runtime-code
      (lambda (_ctx153926_)
        (letrec ((_compile1153928_
                  (lambda (_ctx153969_)
                    (let* ((_code153971_
                            (##structure-ref
                             _ctx153969_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt153975_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code153971_))
                                (let ((_idstr153973_
                                       (let ((__tmp154883
                                              (##structure-ref
                                               _ctx153969_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp154883))))
                                  (string-append _idstr153973_ '"__0"))
                                '#f)))
                      (if _rt153975_
                          (begin
                            (let ((__tmp154884
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp154884 _ctx153969_ _rt153975_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code153930_
                               _ctx153969_
                               _code153971_)))
                          (let ((_path153978_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx153969_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path153978_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code153931_
                         _ctx153969_
                         _code153971_
                         _rt153975_)))))
                 (_context-timestamp153929_
                  (lambda (_ctx153967_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx153967_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code153930_
                  (lambda (_ctx153949_ _code153950_)
                    (let* ((_lifts153952_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code153955_
                            (let ((__tmp154887
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code153950_))))
                                  (__tmp154886
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp154885
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp154887
                               gx#current-expander-context
                               _ctx153949_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts153952_
                               gxc#current-compile-marks
                               __tmp154886
                               gxc#current-compile-identifiers
                               __tmp154885)))
                           (_runtime-code153957_
                            (if (let ((__tmp154888 (unbox _lifts153952_)))
                                  (declare (not safe))
                                  (null? __tmp154888))
                                _runtime-code153955_
                                (let ((__tmp154889
                                       (let ((__tmp154891
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code153955_
                                                      '())))
                                             (__tmp154890
                                              (reverse (unbox _lifts153952_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp154891
                                                 __tmp154890))))
                                  (declare (not safe))
                                  (cons 'begin __tmp154889))))
                           (_runtime-code153959_
                            (let ((__tmp154892
                                   (let ((__tmp154894
                                          (let ((__tmp154895
                                                 (let ((__tmp154898
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp153929_
                                                           _ctx153949_)))
                                                       (__tmp154896
                                                        (let ((__tmp154897
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp154897
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp154898
                                                         __tmp154896))))
                                            (declare (not safe))
                                            (cons 'define __tmp154895)))
                                         (__tmp154893
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code153957_ '()))))
                                     (declare (not safe))
                                     (cons __tmp154894 __tmp154893))))
                              (declare (not safe))
                              (cons 'begin __tmp154892)))
                           (_scm0153961_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx153949_
                               '0
                               '".scm"))))
                      (let ((_scms153964_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx153949_))))
                        (let ((__tmp154899
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0153961_
                                    _runtime-code153959_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp154899
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms153964_)
                            (delete-file _scms153964_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0153961_
                           '" => "
                           _scms153964_))
                        (copy-file _scm0153961_ _scms153964_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0153961_))))))
                 (_generate-loader-code153931_
                  (lambda (_ctx153938_ _code153939_ _rt153940_)
                    (let* ((_loader-code153943_
                            (let ((__tmp154900
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code153939_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp154900
                               gx#current-expander-context
                               _ctx153938_)))
                           (_loader-code153945_
                            (if _rt153940_
                                (let ((__tmp154901
                                       (let ((__tmp154902
                                              (let ((__tmp154903
                                                     (let ((__tmp154904
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt153940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp154904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154903 '()))))
                                         (declare (not safe))
                                         (cons _loader-code153943_
                                               __tmp154902))))
                                  (declare (not safe))
                                  (cons 'begin __tmp154901))
                                _loader-code153943_)))
                      (let ((__tmp154905
                             (lambda ()
                               (let ((__tmp154906
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx153938_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp154906
                                  _loader-code153945_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp154905
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules153933_
                 (let ((__tmp154907
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx153926_))))
                   (declare (not safe))
                   (cons _ctx153926_ __tmp154907))))
            (for-each
             (lambda (_ctx153935_)
               (let ((__tmp154908
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1153928_ _ctx153935_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp154908
                  gxc#current-compile-decls
                  '())))
             _all-modules153933_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx153823_)
        (letrec ((_compile-ssi153825_
                  (lambda (_code153896_)
                    (let* ((_path153898_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx153823_
                               '#f
                               '".ssi")))
                           (_prelude153909_
                            (let* ((_super153900_
                                    (##structure-ref
                                     _ctx153823_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e153902_
                                    (##structure-ref
                                     _super153900_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e153902_
                                  ((lambda (_g153904153906_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g153904153906_)))
                                   _$e153902_)
                                  ':<root>)))
                           (_ns153911_
                            (##structure-ref
                             _ctx153823_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr153913_
                            (symbol->string
                             (##structure-ref
                              _ctx153823_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg153920_
                            (let ((_$e153915_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr153913_ '#\/))))
                              (if _$e153915_
                                  ((lambda (_x153918_)
                                     (string->symbol
                                      (substring _idstr153913_ '0 _x153918_)))
                                   _$e153915_)
                                  '#f)))
                           (_rt153922_
                            (let ((__tmp154909
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp154909 _ctx153823_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path153898_))
                      (let ((__tmp154910
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude153909_))
                               (if _pkg153920_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg153920_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns153911_))
                               (newline)
                               (pretty-print _code153896_)
                               (if _rt153922_
                                   (pretty-print
                                    (let ((__tmp154911
                                           (let ((__tmp154915
                                                  (let ((__tmp154916
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp154916)))
                                                 (__tmp154912
                                                  (let ((__tmp154913
                                                         (let ((__tmp154914
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt153922_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp154914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154913 '()))))
                                             (declare (not safe))
                                             (cons __tmp154915 __tmp154912))))
                                      (declare (not safe))
                                      (cons '%#call __tmp154911)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path153898_
                         __tmp154910)))))
                 (_compile-phi153826_
                  (lambda (_part153836_)
                    (let* ((_part153837153850_ _part153836_)
                           (_E153839153854_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part153837153850_))))
                           (_K153840153865_
                            (lambda (_code153857_
                                     _n153858_
                                     _phi153859_
                                     _phi-ctx153860_)
                              (let* ((_code153863_
                                      (let ((__tmp154917
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code153857_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp154917
                                         gx#current-expander-context
                                         _phi-ctx153860_
                                         gx#current-expander-phi
                                         _phi153859_)))
                                     (__tmp154918
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx153823_
                                         _n153858_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp154918
                                 _code153863_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part153837153850_))
                          (let ((_hd153841153868_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part153837153850_)))
                                (_tl153842153870_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part153837153850_))))
                            (let ((_phi-ctx153873_ _hd153841153868_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl153842153870_))
                                  (let ((_hd153843153875_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl153842153870_)))
                                        (_tl153844153877_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl153842153870_))))
                                    (let ((_phi153880_ _hd153843153875_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl153844153877_))
                                          (let ((_hd153845153882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl153844153877_)))
                                                (_tl153846153884_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl153844153877_))))
                                            (let ((_n153887_ _hd153845153882_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl153846153884_))
                                                  (let ((_hd153847153889_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl153846153884_)))
                                                        (_tl153848153891_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl153846153884_))))
                                                    (let ((_code153894_
                                                           _hd153847153889_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl153848153891_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K153840153865_
                                                             _code153894_
                                                             _n153887_
                                                             _phi153880_
                                                             _phi-ctx153873_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E153839153854_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E153839153854_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E153839153854_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E153839153854_)))))
                          (let () (declare (not safe)) (_E153839153854_)))))))
          (let ((_g154919_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx153823_))))
            (begin
              (let ((_g154920_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g154919_)
                           (##vector-length _g154919_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g154920_ 2)))
                    (error "Context expects 2 values" _g154920_)))
              (let ((_ssi-code153828_
                     (let () (declare (not safe)) (##vector-ref _g154919_ 0)))
                    (_phi-code153829_
                     (let () (declare (not safe)) (##vector-ref _g154919_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi153825_ _ssi-code153828_))
                  (let ((_threads153834_
                         (map (lambda (_code153831_)
                                (let ((__tmp154921
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi153826_
                                            _code153831_)))))
                                  (declare (not safe))
                                  (spawn __tmp154921)))
                              _phi-code153829_)))
                    (for-each gxc#join! _threads153834_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx153806_)
        (let* ((_path153808_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx153806_ '#f '".ssxi.ss")))
               (_code153810_
                (let ((__tmp154922
                       (##structure-ref
                        _ctx153806_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp154922)))
               (_idstr153812_
                (symbol->string
                 (##structure-ref _ctx153806_ '1 gx#expander-context::t '#f)))
               (_pkg153819_
                (let ((_$e153814_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr153812_ '#\/))))
                  (if _$e153814_
                      ((lambda (_x153817_)
                         (string->symbol
                          (substring _idstr153812_ '0 _x153817_)))
                       _$e153814_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path153808_))
          (let ((__tmp154923
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg153819_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg153819_))
                       '#!void)
                   (newline)
                   (pretty-print _code153810_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path153808_ __tmp154923)))))
    (define gxc#generate-meta-code
      (lambda (_ctx153799_)
        (let* ((_state153801_
                (let ((__obj154681
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj154681 _ctx153799_)
                  __obj154681))
               (_ssi-code153803_
                (let ((__tmp154924
                       (##structure-ref
                        _ctx153799_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp154924 _state153801_))))
          (values _ssi-code153803_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state153801_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx153792_)
        (let ((_lifts153794_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp154927
                 (lambda ()
                   (let ((_code153797_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx153792_))))
                     (if (let ((__tmp154928 (unbox _lifts153794_)))
                           (declare (not safe))
                           (null? __tmp154928))
                         _code153797_
                         (let ((__tmp154929
                                (let ((__tmp154931
                                       (let ()
                                         (declare (not safe))
                                         (cons _code153797_ '())))
                                      (__tmp154930
                                       (reverse (unbox _lifts153794_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp154931 __tmp154930))))
                           (declare (not safe))
                           (cons 'begin __tmp154929))))))
                (__tmp154926
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp154925
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp154927
             gxc#current-compile-lift
             _lifts153794_
             gxc#current-compile-marks
             __tmp154926
             gxc#current-compile-identifiers
             __tmp154925)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx153788_)
        (let ((_modules153790_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp154932
                 (##structure-ref _ctx153788_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp154932 _modules153790_))
          (reverse (unbox _modules153790_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path153771_ _code153772_ _phi?153773_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path153771_))
        (let ((__tmp154933
               (lambda ()
                 (pretty-print
                  (let ((__tmp154934
                         (let ((__tmp154941
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp154935
                                (let ((__tmp154940
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp154936
                                       (let ((__tmp154939
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp154937
                                              (let ((__tmp154938
                                                     (if _phi?153773_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp154938))))
                                         (declare (not safe))
                                         (cons __tmp154939 __tmp154937))))
                                  (declare (not safe))
                                  (cons __tmp154940 __tmp154936))))
                           (declare (not safe))
                           (cons __tmp154941 __tmp154935))))
                    (declare (not safe))
                    (cons 'declare __tmp154934)))
                 (pretty-print _code153772_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path153771_ __tmp154933))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path153771_ _phi?153773_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path153771_))))
    (define gxc#compile-scm-file__0
      (lambda (_path153779_ _code153780_)
        (let ((_phi?153782_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path153779_ _code153780_ _phi?153782_))))
    (define gxc#compile-scm-file
      (lambda _g154943_
        (let ((_g154942_ (let () (declare (not safe)) (##length _g154943_))))
          (cond ((let () (declare (not safe)) (##fx= _g154942_ 2))
                 (apply (lambda (_path153779_ _code153780_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path153779_
                             _code153780_)))
                        _g154943_))
                ((let () (declare (not safe)) (##fx= _g154942_ 3))
                 (apply (lambda (_path153784_ _code153785_ _phi?153786_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path153784_
                             _code153785_
                             _phi?153786_)))
                        _g154943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g154943_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?153672_)
        (let _lp153674_ ((_rest153676_ (gxc#current-compile-gsc-options))
                         (_opts153677_ '()))
          (let* ((_rest153678153698_ _rest153676_)
                 (_else153682153706_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?153672_))
                             (gxc#current-compile-debug))
                        (let ((__tmp154944
                               (let ((__tmp154945 (reverse _opts153677_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp154945))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp154944))
                        (reverse _opts153677_)))))
            (let ((_K153692153749_
                   (lambda (_rest153747_)
                     (let ()
                       (declare (not safe))
                       (_lp153674_ _rest153747_ _opts153677_))))
                  (_K153687153731_
                   (lambda (_rest153729_)
                     (let ()
                       (declare (not safe))
                       (_lp153674_ _rest153729_ _opts153677_))))
                  (_K153684153713_
                   (lambda (_rest153710_ _opt153711_)
                     (let ((__tmp154946
                            (let ()
                              (declare (not safe))
                              (cons _opt153711_ _opts153677_))))
                       (declare (not safe))
                       (_lp153674_ _rest153710_ __tmp154946)))))
              (if (let () (declare (not safe)) (##pair? _rest153678153698_))
                  (let ((_tl153694153754_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest153678153698_)))
                        (_hd153693153752_
                         (let ()
                           (declare (not safe))
                           (##car _rest153678153698_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd153693153752_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl153694153754_))
                            (let* ((_tl153696153757_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl153694153754_)))
                                   (_rest153760_ _tl153696153757_))
                              (declare (not safe))
                              (_K153692153749_ _rest153760_))
                            (let ((_opt153721_ _hd153693153752_)
                                  (_rest153723_ _tl153694153754_))
                              (let ()
                                (declare (not safe))
                                (_K153684153713_ _rest153723_ _opt153721_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd153693153752_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl153694153754_))
                                (let* ((_tl153691153739_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl153694153754_)))
                                       (_rest153742_ _tl153691153739_))
                                  (declare (not safe))
                                  (_K153687153731_ _rest153742_))
                                (let ((_opt153721_ _hd153693153752_)
                                      (_rest153723_ _tl153694153754_))
                                  (let ()
                                    (declare (not safe))
                                    (_K153684153713_
                                     _rest153723_
                                     _opt153721_))))
                            (let ((_opt153721_ _hd153693153752_)
                                  (_rest153723_ _tl153694153754_))
                              (let ()
                                (declare (not safe))
                                (_K153684153713_ _rest153723_ _opt153721_))))))
                  (let () (declare (not safe)) (_else153682153706_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?153766_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?153766_))))
    (define gxc#gsc-link-options
      (lambda _g154948_
        (let ((_g154947_ (let () (declare (not safe)) (##length _g154948_))))
          (cond ((let () (declare (not safe)) (##fx= _g154947_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g154948_))
                ((let () (declare (not safe)) (##fx= _g154947_ 1))
                 (apply (lambda (_phi?153768_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?153768_)))
                        _g154948_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g154948_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?153573_)
        (let _lp153575_ ((_rest153577_ (gxc#current-compile-gsc-options))
                         (_opts153578_ '()))
          (let* ((_rest153579153599_ _rest153577_)
                 (_else153583153607_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?153573_))
                             (gxc#current-compile-debug))
                        (let ((__tmp154949
                               (let ((__tmp154950 (reverse _opts153578_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp154950))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp154949))
                        (reverse _opts153578_)))))
            (let ((_K153593153646_
                   (lambda (_rest153643_ _opt153644_)
                     (let ((__tmp154951
                            (let ((__tmp154952
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts153578_))))
                              (declare (not safe))
                              (cons _opt153644_ __tmp154952))))
                       (declare (not safe))
                       (_lp153575_ _rest153643_ __tmp154951))))
                  (_K153588153627_
                   (lambda (_rest153625_)
                     (let ()
                       (declare (not safe))
                       (_lp153575_ _rest153625_ _opts153578_))))
                  (_K153585153613_
                   (lambda (_rest153611_)
                     (let ()
                       (declare (not safe))
                       (_lp153575_ _rest153611_ _opts153578_)))))
              (if (let () (declare (not safe)) (##pair? _rest153579153599_))
                  (let ((_tl153595153651_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest153579153599_)))
                        (_hd153594153649_
                         (let ()
                           (declare (not safe))
                           (##car _rest153579153599_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd153594153649_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl153595153651_))
                            (let ((_tl153597153656_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl153595153651_)))
                                  (_hd153596153654_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl153595153651_))))
                              (let ((_opt153659_ _hd153596153654_)
                                    (_rest153661_ _tl153597153656_))
                                (let ()
                                  (declare (not safe))
                                  (_K153593153646_ _rest153661_ _opt153659_))))
                            (let ((_rest153619_ _tl153595153651_))
                              (declare (not safe))
                              (_K153585153613_ _rest153619_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd153594153649_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl153595153651_))
                                (let* ((_tl153592153635_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl153595153651_)))
                                       (_rest153638_ _tl153592153635_))
                                  (declare (not safe))
                                  (_K153588153627_ _rest153638_))
                                (let ((_rest153619_ _tl153595153651_))
                                  (declare (not safe))
                                  (_K153585153613_ _rest153619_)))
                            (let ((_rest153619_ _tl153595153651_))
                              (declare (not safe))
                              (_K153585153613_ _rest153619_)))))
                  (let () (declare (not safe)) (_else153583153607_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?153667_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?153667_))))
    (define gxc#gsc-cc-options
      (lambda _g154954_
        (let ((_g154953_ (let () (declare (not safe)) (##length _g154954_))))
          (cond ((let () (declare (not safe)) (##fx= _g154953_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g154954_))
                ((let () (declare (not safe)) (##fx= _g154953_ 1))
                 (apply (lambda (_phi?153669_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?153669_)))
                        _g154954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g154954_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir153568_)
        (let* ((_user-staticdir153570_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp154955
                (let ((__tmp154956
                       (string-append
                        '"-I "
                        _staticdir153568_
                        '" -I "
                        _user-staticdir153570_)))
                  (declare (not safe))
                  (cons __tmp154956 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp154955))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp153480_ ((_rest153482_ (gxc#current-compile-gsc-options))
                         (_opts153483_ '()))
          (let* ((_rest153484153504_ _rest153482_)
                 (_else153488153512_ (lambda () _opts153483_)))
            (let ((_K153498153555_
                   (lambda (_rest153553_)
                     (let ()
                       (declare (not safe))
                       (_lp153480_ _rest153553_ _opts153483_))))
                  (_K153493153533_
                   (lambda (_rest153530_ _opt153531_)
                     (let ((__tmp154957
                            (append _opts153483_
                                    (let ((__tmp154958
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt153531_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp154958)))))
                       (declare (not safe))
                       (_lp153480_ _rest153530_ __tmp154957))))
                  (_K153490153518_
                   (lambda (_rest153516_)
                     (let ()
                       (declare (not safe))
                       (_lp153480_ _rest153516_ _opts153483_)))))
              (if (let () (declare (not safe)) (##pair? _rest153484153504_))
                  (let ((_tl153500153560_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest153484153504_)))
                        (_hd153499153558_
                         (let ()
                           (declare (not safe))
                           (##car _rest153484153504_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd153499153558_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl153500153560_))
                            (let* ((_tl153502153563_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl153500153560_)))
                                   (_rest153566_ _tl153502153563_))
                              (declare (not safe))
                              (_K153498153555_ _rest153566_))
                            (let ((_rest153524_ _tl153500153560_))
                              (declare (not safe))
                              (_K153490153518_ _rest153524_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd153499153558_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl153500153560_))
                                (let ((_tl153497153543_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl153500153560_)))
                                      (_hd153496153541_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl153500153560_))))
                                  (let ((_opt153546_ _hd153496153541_)
                                        (_rest153548_ _tl153497153543_))
                                    (let ()
                                      (declare (not safe))
                                      (_K153493153533_
                                       _rest153548_
                                       _opt153546_))))
                                (let ((_rest153524_ _tl153500153560_))
                                  (declare (not safe))
                                  (_K153490153518_ _rest153524_)))
                            (let ((_rest153524_ _tl153500153560_))
                              (declare (not safe))
                              (_K153490153518_ _rest153524_)))))
                  (let () (declare (not safe)) (_else153488153512_))))))))
    (define gxc#not-string-empty?
      (lambda (_str153477_)
        (let ((__tmp154959
               (let () (declare (not safe)) (string-empty? _str153477_))))
          (declare (not safe))
          (not __tmp154959))))
    (define gxc#gsc-compile-file
      (lambda (_path153445_ _phi?153446_)
        (letrec ((_gsc-link-path153448_
                  (lambda (_base-path153469_)
                    (let _lp153471_ ((_n153473_ '1))
                      (let ((_path153475_
                             (string-append
                              _base-path153469_
                              '".o"
                              (number->string _n153473_))))
                        (if (file-exists? _path153475_)
                            (let ((__tmp154960
                                   (let ()
                                     (declare (not safe))
                                     (+ _n153473_ '1))))
                              (declare (not safe))
                              (_lp153471_ __tmp154960))
                            _path153475_))))))
          (let* ((_base-path153450_ (path-strip-extension _path153445_))
                 (_path-c153452_ (string-append _base-path153450_ '".c"))
                 (_path-o153454_ (string-append _base-path153450_ '".o"))
                 (_link-path153456_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path153448_ _base-path153450_)))
                 (_link-path-c153458_ (string-append _link-path153456_ '".c"))
                 (_link-path-o153460_ (string-append _link-path153456_ '".o"))
                 (_gsc-link-opts153462_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?153446_)))
                 (_gsc-cc-opts153464_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?153446_)))
                 (_gcc-ld-opts153466_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp154967 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp154961
                   (let ((__tmp154962
                          (let ((__tmp154963
                                 (let ((__tmp154964
                                        (let ((__tmp154965
                                               (let ((__tmp154966
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path153445_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp154966
                                                         _gsc-link-opts153462_))))
                                          (declare (not safe))
                                          (cons _link-path-c153458_
                                                __tmp154965))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp154964))))
                            (declare (not safe))
                            (cons '"-flat" __tmp154963))))
                     (declare (not safe))
                     (cons '"-link" __tmp154962))))
              (declare (not safe))
              (gxc#invoke __tmp154967 __tmp154961 'stdout-redirection: '#t))
            (let ((__tmp154974 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp154968
                   (let ((__tmp154969
                          (let ((__tmp154970
                                 (let ((__tmp154971
                                        (let ((__tmp154972
                                               (let ((__tmp154973
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c153458_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c153452_
                                                       __tmp154973))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp154972
                                                  _gsc-cc-opts153464_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp154971))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp154970))))
                     (declare (not safe))
                     (cons '"-obj" __tmp154969))))
              (declare (not safe))
              (gxc#invoke __tmp154974 __tmp154968 'stdout-redirection: '#t))
            (let ((__tmp154980 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp154975
                   (let ((__tmp154976
                          (let ((__tmp154977
                                 (let ((__tmp154978
                                        (let ((__tmp154979
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o153460_
                                                       _gcc-ld-opts153466_))))
                                          (declare (not safe))
                                          (cons _path-o153454_ __tmp154979))))
                                   (declare (not safe))
                                   (cons _link-path153456_ __tmp154978))))
                            (declare (not safe))
                            (cons '"-o" __tmp154977))))
                     (declare (not safe))
                     (cons '"-shared" __tmp154976))))
              (declare (not safe))
              (gxc#invoke __tmp154980 __tmp154975))
            (for-each
             delete-file
             (let ((__tmp154981
                    (let ((__tmp154982
                           (let ((__tmp154983
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o153460_ '()))))
                             (declare (not safe))
                             (cons _link-path-c153458_ __tmp154983))))
                      (declare (not safe))
                      (cons _path-o153454_ __tmp154982))))
               (declare (not safe))
               (cons _path-c153452_ __tmp154981)))))))
    (define gxc#compile-output-file
      (lambda (_ctx153416_ _n153417_ _ext153418_)
        (letrec ((_module-relative-path153420_
                  (lambda (_ctx153443_)
                    (path-strip-directory
                     (let ((__tmp154984
                            (##structure-ref
                             _ctx153443_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp154984)))))
                 (_module-source-directory153421_
                  (lambda (_ctx153439_)
                    (path-directory
                     (let ((_mpath153441_
                            (##structure-ref
                             _ctx153439_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath153441_))
                           _mpath153441_
                           (let ()
                             (declare (not safe))
                             (last _mpath153441_)))))))
                 (_section-string153422_
                  (lambda (_n153437_)
                    (if (let () (declare (not safe)) (number? _n153437_))
                        (number->string _n153437_)
                        (if (let () (declare (not safe)) (symbol? _n153437_))
                            (symbol->string _n153437_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n153437_))
                                _n153437_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n153437_)))))))
                 (_file-name153423_
                  (lambda (_path153435_)
                    (if _n153417_
                        (string-append
                         _path153435_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string153422_ _n153417_))
                         _ext153418_)
                        (string-append _path153435_ _ext153418_))))
                 (_file-path153424_
                  (lambda ()
                    (let ((_$e153430_ (gxc#current-compile-output-dir)))
                      (if _$e153430_
                          ((lambda (_outdir153433_)
                             (path-expand
                              (let ((__tmp154985
                                     (let ((__tmp154986
                                            (##structure-ref
                                             _ctx153416_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp154986))))
                                (declare (not safe))
                                (_file-name153423_ __tmp154985))
                              _outdir153433_))
                           _$e153430_)
                          (path-expand
                           (let ((__tmp154987
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path153420_
                                     _ctx153416_))))
                             (declare (not safe))
                             (_file-name153423_ __tmp154987))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory153421_
                              _ctx153416_))))))))
          (let ((_path153426_
                 (let () (declare (not safe)) (_file-path153424_))))
            (let ((__tmp154988
                   (lambda ()
                     (let ((__tmp154989 (path-directory _path153426_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp154989)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp154988))
            _path153426_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx153398_)
        (letrec ((_file-name153400_
                  (lambda (_id153414_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id153414_))
                     '".scm")))
                 (_file-path153401_
                  (lambda ()
                    (let* ((_file153407_
                            (let ((__tmp154990
                                   (##structure-ref
                                    _ctx153398_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name153400_ __tmp154990)))
                           (_$e153409_ (gxc#current-compile-output-dir)))
                      (if _$e153409_
                          ((lambda (_outdir153412_)
                             (path-expand
                              _file153407_
                              (path-expand '"static" _outdir153412_)))
                           _$e153409_)
                          (path-expand _file153407_ '"static"))))))
          (let ((_path153403_
                 (let () (declare (not safe)) (_file-path153401_))))
            (let ((__tmp154991
                   (lambda ()
                     (let ((__tmp154992 (path-directory _path153403_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp154992)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp154991))
            _path153403_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx153392_ _opts153393_)
        (let ((_$e153395_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts153393_))))
          (if _$e153395_
              (values _$e153395_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx153392_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr153385_)
        (if (let () (declare (not safe)) (string? _idstr153385_))
            (let* ((_str153387_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr153385_)))
                   (_strs153389_
                    (let ()
                      (declare (not safe))
                      (string-split _str153387_ '#\/))))
              (let () (declare (not safe)) (string-join _strs153389_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr153385_))
                (let ((__tmp154993 (symbol->string _idstr153385_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp154993))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr153385_))))))
    (define gxc#invoke__%
      (lambda (_g154994_
               _stdout-redirection153346153350_
               _stderr-redirection153347153352_
               _program153354_
               _args153355_)
        (let* ((_stdout-redirection153357_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection153346153350_ absent-value))
                    '#f
                    _stdout-redirection153346153350_))
               (_stderr-redirection153359_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection153347153352_ absent-value))
                    '#f
                    _stderr-redirection153347153352_)))
          (let ((__tmp154995
                 (let ()
                   (declare (not safe))
                   (cons _program153354_ _args153355_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp154995))
          (let* ((_proc153361_
                  (open-process
                   (let ((__tmp154996
                          (let ((__tmp154997
                                 (let ((__tmp154998
                                        (let ((__tmp154999
                                               (let ((__tmp155000
                                                      (let ((__tmp155001
                                                             (let ((__tmp155002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection153359_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp155002))))
                (declare (not safe))
                (cons _stdout-redirection153357_ __tmp155001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp155000))))
                                          (declare (not safe))
                                          (cons _args153355_ __tmp154999))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp154998))))
                            (declare (not safe))
                            (cons _program153354_ __tmp154997))))
                     (declare (not safe))
                     (cons 'path: __tmp154996))))
                 (_output153366_
                  (if (or _stdout-redirection153357_
                          _stderr-redirection153359_)
                      (read-line _proc153361_ '#f)
                      '#f)))
            (let ((_status153369_ (process-status _proc153361_)))
              (close-port _proc153361_)
              (if (let () (declare (not safe)) (zero? _status153369_))
                  '#!void
                  (begin
                    (display _output153366_)
                    (let ((__tmp155003
                           (let ()
                             (declare (not safe))
                             (cons _program153354_ _args153355_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp155003
                       _status153369_)))))))))
    (define gxc#invoke__@
      (lambda (_keys153345153374_ . _args153376_)
        (apply gxc#invoke__%
               _keys153345153374_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys153345153374_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys153345153374_
                  'stderr-redirection:
                  absent-value))
               _args153376_)))
    (define gxc#invoke
      (lambda _args153348153382_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args153348153382_)))
    (define gxc#join!
      (lambda (_thread153339_)
        (let ((__tmp155005
               (lambda (_exn153341_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn153341_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn153341_)))
                     (raise _exn153341_))))
              (__tmp155004 (lambda () (thread-join! _thread153339_))))
          (declare (not safe))
          (with-catch __tmp155005 __tmp155004))))))
