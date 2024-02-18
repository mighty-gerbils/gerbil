(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708280341)
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
      (lambda (_path295631_ _fun295632_)
        (with-output-to-file
         (let ((__tmp299792
                (let ()
                  (declare (not safe))
                  (cons _path295631_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp299792))
         _fun295632_)))
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
      (lambda (_gerbil-libdir295626_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir295626_)))
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
      (lambda (_dir295624_) (delete-file-or-directory _dir295624_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath295598_ _opts295599_)
        (if (let () (declare (not safe)) (string? _srcpath295598_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath295598_)))
        (let ((_outdir295601_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts295599_)))
              (_invoke-gsc?295602_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts295599_)))
              (_gsc-options295603_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts295599_)))
              (_keep-scm?295604_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts295599_)))
              (_verbosity295605_
               (let () (declare (not safe)) (pgetq 'verbose: _opts295599_)))
              (_optimize295606_
               (let () (declare (not safe)) (pgetq 'optimize: _opts295599_)))
              (_debug295607_
               (let () (declare (not safe)) (pgetq 'debug: _opts295599_)))
              (_gen-ssxi295608_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts295599_))))
          (if _outdir295601_
              (let ((__tmp299793
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir295601_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp299793))
              '#!void)
          (if _optimize295606_
              (let ((__tmp299794
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp299794))
              '#!void)
          (let ((__tmp299798
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath295598_))
                   (let ((__tmp299799
                          (let ((__tmp299800
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath295598_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp299800))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp299799))))
                (__tmp299797
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp299795
                 (let ((__tmp299796
                        (let ()
                          (declare (not safe))
                          (cons _srcpath295598_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp299796))))
            (declare (not safe))
            (call-with-parameters
             __tmp299798
             gxc#current-compile-output-dir
             _outdir295601_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?295602_
             gxc#current-compile-gsc-options
             _gsc-options295603_
             gxc#current-compile-keep-scm
             _keep-scm?295604_
             gxc#current-compile-verbose
             _verbosity295605_
             gxc#current-compile-optimize
             _optimize295606_
             gxc#current-compile-debug
             _debug295607_
             gxc#current-compile-generate-ssxi
             _gen-ssxi295608_
             gxc#current-compile-timestamp
             __tmp299797
             gxc#current-compile-context
             __tmp299795
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath295617_)
        (let ((_opts295619_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath295617_ _opts295619_))))
    (define gxc#compile-module
      (lambda _g299802_
        (let ((_g299801_ (let () (declare (not safe)) (##length _g299802_))))
          (cond ((let () (declare (not safe)) (##fx= _g299801_ 1))
                 (apply (lambda (_srcpath295617_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath295617_)))
                        _g299802_))
                ((let () (declare (not safe)) (##fx= _g299801_ 2))
                 (apply (lambda (_srcpath295621_ _opts295622_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath295621_
                             _opts295622_)))
                        _g299802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g299802_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath295574_ _opts295575_)
        (if (let () (declare (not safe)) (string? _srcpath295574_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath295574_)))
        (let ((_outdir295577_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts295575_)))
              (_invoke-gsc?295578_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts295575_)))
              (_gsc-options295579_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts295575_)))
              (_keep-scm?295580_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts295575_)))
              (_verbosity295581_
               (let () (declare (not safe)) (pgetq 'verbose: _opts295575_)))
              (_debug295582_
               (let () (declare (not safe)) (pgetq 'debug: _opts295575_))))
          (if _outdir295577_
              (let ((__tmp299803
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir295577_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp299803))
              '#!void)
          (let ((__tmp299807
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath295574_))
                   (let ((__tmp299808
                          (let ((__tmp299809
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath295574_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp299809))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp299808
                      _opts295575_))))
                (__tmp299806
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp299804
                 (let ((__tmp299805
                        (let ()
                          (declare (not safe))
                          (cons _srcpath295574_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp299805))))
            (declare (not safe))
            (call-with-parameters
             __tmp299807
             gxc#current-compile-output-dir
             _outdir295577_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?295578_
             gxc#current-compile-gsc-options
             _gsc-options295579_
             gxc#current-compile-keep-scm
             _keep-scm?295580_
             gxc#current-compile-verbose
             _verbosity295581_
             gxc#current-compile-debug
             _debug295582_
             gxc#current-compile-timestamp
             __tmp299806
             gxc#current-compile-context
             __tmp299804
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath295590_)
        (let ((_opts295592_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath295590_ _opts295592_))))
    (define gxc#compile-exe
      (lambda _g299811_
        (let ((_g299810_ (let () (declare (not safe)) (##length _g299811_))))
          (cond ((let () (declare (not safe)) (##fx= _g299810_ 1))
                 (apply (lambda (_srcpath295590_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath295590_)))
                        _g299811_))
                ((let () (declare (not safe)) (##fx= _g299810_ 2))
                 (apply (lambda (_srcpath295594_ _opts295595_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath295594_ _opts295595_)))
                        _g299811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g299811_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx295570_ _opts295571_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts295571_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx295570_
               _opts295571_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx295570_
               _opts295571_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx295453_ _opts295454_)
        (letrec ((_generate-stub295456_
                  (lambda (_builtin-modules295566_)
                    (let ((_mod-main295568_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx295453_ 'main))))
                      (write (let ((__tmp299812
                                    (let ((__tmp299813
                                           (let ((__tmp299814
                                                  (let ((__tmp299815
                                                         (let ((__tmp299817
                                                                (let ((__tmp299818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules295566_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp299818)))
                       (__tmp299816
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp299817 __tmp299816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp299815))))
                                             (declare (not safe))
                                             (cons __tmp299814 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp299813))))
                               (declare (not safe))
                               (cons 'define __tmp299812)))
                      (write (let ((__tmp299819
                                    (let ((__tmp299858
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp299820
                                           (let ((__tmp299821
                                                  (let ((__tmp299822
                                                         (let ((__tmp299846
                                                                (let ((__tmp299847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp299848
                                      (let ((__tmp299856
                                             (let ((__tmp299857
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp299857)))
                                            (__tmp299849
                                             (let ((__tmp299850
                                                    (let ((__tmp299851
                                                           (let ((__tmp299852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp299853
                                 (let ((__tmp299854
                                        (let ((__tmp299855
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp299855 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp299854))))
                            (declare (not safe))
                            (cons __tmp299853 '()))))
                     (declare (not safe))
                     (cons _mod-main295568_ __tmp299852))))
              (declare (not safe))
              (cons 'apply __tmp299851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp299850 '()))))
                                        (declare (not safe))
                                        (cons __tmp299856 __tmp299849))))
                                 (declare (not safe))
                                 (cons '() __tmp299848))))
                          (declare (not safe))
                          (cons 'lambda __tmp299847)))
                       (__tmp299823
                        (let ((__tmp299824
                               (let ((__tmp299825
                                      (let ((__tmp299826
                                             (let ((__tmp299837
                                                    (let ((__tmp299838
                                                           (let ((__tmp299839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp299840
                                 (let ((__tmp299841
                                        (let ((__tmp299842
                                               (let ((__tmp299843
                                                      (let ((__tmp299844
                                                             (let ((__tmp299845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp299845 '()))))
                (declare (not safe))
                (cons 'force-output __tmp299844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp299843 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp299842))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp299841))))
                            (declare (not safe))
                            (cons __tmp299840 '()))))
                     (declare (not safe))
                     (cons 'void __tmp299839))))
              (declare (not safe))
              (cons 'with-catch __tmp299838)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp299827
                                                    (let ((__tmp299828
                                                           (let ((__tmp299829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp299830
                                 (let ((__tmp299831
                                        (let ((__tmp299832
                                               (let ((__tmp299833
                                                      (let ((__tmp299834
                                                             (let ((__tmp299835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp299836
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp299836 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp299835))))
                (declare (not safe))
                (cons __tmp299834 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp299833))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp299832))))
                                   (declare (not safe))
                                   (cons __tmp299831 '()))))
                            (declare (not safe))
                            (cons 'void __tmp299830))))
                     (declare (not safe))
                     (cons 'with-catch __tmp299829))))
              (declare (not safe))
              (cons __tmp299828 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp299837
                                                     __tmp299827))))
                                        (declare (not safe))
                                        (cons '() __tmp299826))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp299825))))
                          (declare (not safe))
                          (cons __tmp299824 '()))))
                   (declare (not safe))
                   (cons __tmp299846 __tmp299823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp299822))))
                                             (declare (not safe))
                                             (cons __tmp299821 '()))))
                                      (declare (not safe))
                                      (cons __tmp299858 __tmp299820))))
                               (declare (not safe))
                               (cons 'define __tmp299819)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts295457_
                  (lambda (_libgerbil295564_)
                    (call-with-input-file
                     (string-append _libgerbil295564_ '".ldd")
                     read)))
                 (_replace-extension295458_
                  (lambda (_path295561_ _ext295562_)
                    (string-append
                     (path-strip-extension _path295561_)
                     _ext295562_)))
                 (_not-exclude-module?295459_
                  (lambda (_ctx295557_)
                    (let ((_id-str295559_
                           (symbol->string
                            (##structure-ref
                             _ctx295557_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp299860
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str295559_))))
                            (declare (not safe))
                            (not __tmp299860))
                          (let ((__tmp299859
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str295559_))))
                            (declare (not safe))
                            (not __tmp299859))
                          '#f))))
                 (_not-file-empty?295460_
                  (lambda (_path295555_)
                    (let ((__tmp299861
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path295555_))))
                      (declare (not safe))
                      (not __tmp299861))))
                 (_compile-stub295461_
                  (lambda (_output-scm295468_ _output-bin295469_)
                    (let* ((_gerbil-home295471_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir295473_
                            (path-expand '"lib" _gerbil-home295471_))
                           (_gerbil-staticdir295475_
                            (path-expand '"static" _gerbil-libdir295473_))
                           (_gxlink295477_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir295473_))
                           (_tmp295479_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path295483_
                            (lambda (_f295481_)
                              (path-expand
                               (path-strip-directory _f295481_)
                               _tmp295479_)))
                           (_deps295485_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx295453_)))
                           (_deps295487_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?295459_
                                      _deps295485_)))
                           (_src-deps-scm295489_
                            (map gxc#find-static-module-file _deps295487_))
                           (_src-deps-scm295491_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?295460_
                                      _src-deps-scm295489_)))
                           (_src-deps-scm295493_
                            (map path-expand _src-deps-scm295491_))
                           (_deps-scm295495_
                            (map _tmp-path295483_ _src-deps-scm295493_))
                           (_deps-c295501_
                            (map (lambda (_g295496295498_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension295458_
                                      _g295496295498_
                                      '".c")))
                                 _deps-scm295495_))
                           (_deps-o295507_
                            (map (lambda (_g295502295504_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension295458_
                                      _g295502295504_
                                      '".o")))
                                 _deps-scm295495_))
                           (_src-bin-scm295509_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx295453_)))
                           (_src-bin-scm295511_
                            (path-expand _src-bin-scm295509_))
                           (_bin-scm295513_
                            (let ()
                              (declare (not safe))
                              (_tmp-path295483_ _src-bin-scm295511_)))
                           (_bin-c295515_
                            (let ()
                              (declare (not safe))
                              (_replace-extension295458_
                               _bin-scm295513_
                               '".c")))
                           (_bin-o295517_
                            (let ()
                              (declare (not safe))
                              (_replace-extension295458_
                               _bin-scm295513_
                               '".o")))
                           (_output-bin295519_
                            (path-expand _output-bin295469_))
                           (_output-scm295521_
                            (path-expand _output-scm295468_))
                           (_output-c295523_
                            (let ()
                              (declare (not safe))
                              (_replace-extension295458_
                               _output-scm295521_
                               '".c")))
                           (_output-o295525_
                            (let ()
                              (declare (not safe))
                              (_replace-extension295458_
                               _output-scm295521_
                               '".o")))
                           (_output_-c295527_
                            (let ()
                              (declare (not safe))
                              (_replace-extension295458_
                               _output-scm295521_
                               '"_.c")))
                           (_output_-o295529_
                            (let ()
                              (declare (not safe))
                              (_replace-extension295458_
                               _output-scm295521_
                               '"_.o")))
                           (_gsc-link-opts295531_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts295533_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts295535_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir295475_)))
                           (_output-ld-opts295537_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a295539_
                            (path-expand '"libgerbil.a" _gerbil-libdir295473_))
                           (_libgerbil.so295541_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir295473_))
                           (_libgerbil-ld-opts295543_
                            (if (file-exists? _libgerbil.so295541_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts295457_
                                   _libgerbil.so295541_))
                                (if (file-exists? _libgerbil.a295539_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts295457_
                                       _libgerbil.a295539_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a295539_
                                       _libgerbil.so295541_)))))
                           (_rpath295545_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir295473_)))
                           (_builtin-modules295549_
                            (map (lambda (_mod295547_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod295547_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx295453_ _deps295487_)))))
                      (let ((__tmp299862
                             (lambda ()
                               (let ((__tmp299863
                                      (path-directory _output-bin295519_)))
                                 (declare (not safe))
                                 (create-directory* __tmp299863)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp299862))
                      (let ((__tmp299864
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub295456_
                                  _builtin-modules295549_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm295521_
                         __tmp299864))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp299865
                                   (lambda () (create-directory _tmp295479_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp299865))
                            (for-each
                             copy-file
                             _src-deps-scm295493_
                             _deps-scm295495_)
                            (copy-file _src-bin-scm295511_ _bin-scm295513_)
                            (let ((__tmp299873
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp299866
                                   (let ((__tmp299867
                                          (let ((__tmp299868
                                                 (let ((__tmp299869
                                                        (let ((__tmp299870
                                                               (let ((__tmp299871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp299872
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm295521_ '()))))
                                (declare (not safe))
                                (cons _bin-scm295513_ __tmp299872))))
                         (declare (not safe))
                         (foldr1 cons __tmp299871 _deps-scm295495_))))
                  (declare (not safe))
                  (foldr1 cons __tmp299870 _gsc-link-opts295531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink295477_
                                                         __tmp299869))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp299868))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp299867))))
                              (declare (not safe))
                              (gxc#invoke __tmp299873 __tmp299866))
                            (let ((__tmp299881
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp299874
                                   (let ((__tmp299875
                                          (let ((__tmp299876
                                                 (let ((__tmp299877
                                                        (let ((__tmp299878
                                                               (let ((__tmp299879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp299880
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c295527_ '()))))
                                (declare (not safe))
                                (cons _output-c295523_ __tmp299880))))
                         (declare (not safe))
                         (cons _bin-c295515_ __tmp299879))))
                  (declare (not safe))
                  (foldr1 cons __tmp299878 _deps-c295501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp299877
                                                           _gsc-static-opts295535_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp299876
                                                    _gsc-cc-opts295533_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp299875))))
                              (declare (not safe))
                              (gxc#invoke __tmp299881 __tmp299874))
                            (let ((__tmp299894
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp299882
                                   (let ((__tmp299883
                                          (let ((__tmp299884
                                                 (let ((__tmp299885
                                                        (let ((__tmp299886
                                                               (let ((__tmp299887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp299888
                                     (let ((__tmp299889
                                            (let ((__tmp299890
                                                   (let ((__tmp299891
                                                          (let ((__tmp299892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp299893
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts295543_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp299893))))
                    (declare (not safe))
                    (cons _gerbil-libdir295473_ __tmp299892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp299891))))
                                              (declare (not safe))
                                              (cons _rpath295545_
                                                    __tmp299890))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp299889
                                               _output-ld-opts295537_))))
                                (declare (not safe))
                                (cons _output_-o295529_ __tmp299888))))
                         (declare (not safe))
                         (cons _output-o295525_ __tmp299887))))
                  (declare (not safe))
                  (cons _bin-o295517_ __tmp299886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp299885
                                                           _deps-o295507_))))
                                            (declare (not safe))
                                            (cons _output-bin295519_
                                                  __tmp299884))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp299883))))
                              (declare (not safe))
                              (gxc#invoke __tmp299894 __tmp299882))
                            (for-each
                             delete-file
                             (let ((__tmp299895
                                    (let ((__tmp299896
                                           (let ((__tmp299897
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o295529_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o295525_
                                                   __tmp299897))))
                                      (declare (not safe))
                                      (cons _output_-c295527_ __tmp299896))))
                               (declare (not safe))
                               (cons _output-c295523_ __tmp299895)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp295479_)))
                          '#!void)))))
          (let* ((_output-bin295463_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx295453_ _opts295454_)))
                 (_output-scm295465_
                  (string-append _output-bin295463_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub295461_ _output-scm295465_ _output-bin295463_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm295465_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx295278_ _opts295279_)
        (letrec ((_reset-declare295281_
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
                 (_generate-stub295282_
                  (lambda (_deps295444_)
                    (let ((_mod-main295446_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx295278_ 'main)))
                          (_reset-decl295447_
                           (let ()
                             (declare (not safe))
                             (_reset-declare295281_)))
                          (_user-decl295448_
                           (let ()
                             (declare (not safe))
                             (_user-declare295283_))))
                      (for-each
                       (lambda (_dep295450_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl295447_)
                         (newline)
                         (if _user-decl295448_
                             (begin (write _user-decl295448_) (newline))
                             '#!void)
                         (write (let ((__tmp299898
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep295450_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp299898)))
                         (newline))
                       _deps295444_)
                      (write (let ((__tmp299899
                                    (let ((__tmp299912
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp299900
                                           (let ((__tmp299908
                                                  (let ((__tmp299909
                                                         (let ((__tmp299910
                                                                (let ((__tmp299911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp299911))))
                   (declare (not safe))
                   (cons __tmp299910 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp299909)))
                                                 (__tmp299901
                                                  (let ((__tmp299902
                                                         (let ((__tmp299903
                                                                (let ((__tmp299904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp299905
                                      (let ((__tmp299906
                                             (let ((__tmp299907
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp299907 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp299906))))
                                 (declare (not safe))
                                 (cons __tmp299905 '()))))
                          (declare (not safe))
                          (cons _mod-main295446_ __tmp299904))))
                   (declare (not safe))
                   (cons 'apply __tmp299903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp299902 '()))))
                                             (declare (not safe))
                                             (cons __tmp299908 __tmp299901))))
                                      (declare (not safe))
                                      (cons __tmp299912 __tmp299900))))
                               (declare (not safe))
                               (cons 'define __tmp299899)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare295283_
                  (lambda ()
                    (let* ((_gsc-opts295349_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts295279_)))
                           (_gsc-prelude295351_
                            (if _gsc-opts295349_
                                (member '"-prelude" _gsc-opts295349_)
                                '#f))
                           (_gsc-prelude295353_
                            (if _gsc-prelude295351_
                                (read (open-input-string
                                       (cadr _gsc-prelude295351_)))
                                '#f)))
                      (let _lp295356_ ((_rest295358_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude295353_ '())))
                                       (_user-decls295359_ '()))
                        (let* ((_rest295360295368_ _rest295358_)
                               (_else295362295376_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls295359_))
                                      '#f
                                      (let ((__tmp299913
                                             (reverse _user-decls295359_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp299913)))))
                               (_K295364295432_
                                (lambda (_rest295379_ _expr295380_)
                                  (let* ((_expr295381295393_ _expr295380_)
                                         (_else295384295401_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp295356_
                                               _rest295379_
                                               _user-decls295359_)))))
                                    (let ((_K295389295422_
                                           (lambda (_decls295420_)
                                             (let ((__tmp299914
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls295359_
                                                              _decls295420_))))
                                               (declare (not safe))
                                               (_lp295356_
                                                _rest295379_
                                                __tmp299914))))
                                          (_K295386295407_
                                           (lambda (_exprs295405_)
                                             (let ((__tmp299915
                                                    (append _exprs295405_
                                                            _rest295379_)))
                                               (declare (not safe))
                                               (_lp295356_
                                                __tmp299915
                                                _user-decls295359_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr295381295393_))
                                          (let ((_tl295391295427_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr295381295393_)))
                                                (_hd295390295425_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr295381295393_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd295390295425_
                                                         'declare))
                                                (let ((_decls295430_
                                                       _tl295391295427_))
                                                  (declare (not safe))
                                                  (_K295389295422_
                                                   _decls295430_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd295390295425_
                                                             'begin))
                                                    (let ((_exprs295415_
                                                           _tl295391295427_))
                                                      (declare (not safe))
                                                      (_K295386295407_
                                                       _exprs295415_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else295384295401_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else295384295401_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest295360295368_))
                              (let ((_hd295365295435_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest295360295368_)))
                                    (_tl295366295437_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest295360295368_))))
                                (let* ((_expr295440_ _hd295365295435_)
                                       (_rest295442_ _tl295366295437_))
                                  (declare (not safe))
                                  (_K295364295432_ _rest295442_ _expr295440_)))
                              (let ()
                                (declare (not safe))
                                (_else295362295376_))))))))
                 (_compile-stub295284_
                  (lambda (_output-scm295291_ _output-bin295292_)
                    (let* ((_gerbil-home295294_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir295296_
                            (path-expand '"lib" _gerbil-home295294_))
                           (_runtime295298_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp295300_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home295294_))
                           (_include-gambit-sharp295302_
                            (string-append
                             '"(include \""
                             _gambit-sharp295300_
                             '"\")"))
                           (_bin-scm295304_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx295278_)))
                           (_deps295306_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx295278_)))
                           (_deps295308_
                            (map gxc#find-static-module-file _deps295306_))
                           (_deps295313_
                            (let ((__tmp299916
                                   (lambda (_$obj295310_)
                                     (let ((__tmp299917
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj295310_))))
                                       (declare (not safe))
                                       (not __tmp299917)))))
                              (declare (not safe))
                              (filter __tmp299916 _deps295308_)))
                           (_deps295317_
                            (let ((__tmp299918
                                   (lambda (_f295315_)
                                     (let ((__tmp299919
                                            (member _f295315_
                                                    _runtime295298_)))
                                       (declare (not safe))
                                       (not __tmp299919)))))
                              (declare (not safe))
                              (filter __tmp299918 _deps295313_)))
                           (_output-base295319_
                            (string-append
                             (path-strip-extension _output-scm295291_)))
                           (_output-c295321_
                            (string-append _output-base295319_ '".c"))
                           (_output-o295323_
                            (string-append _output-base295319_ '".o"))
                           (_output-c_295325_
                            (string-append _output-base295319_ '"_.c"))
                           (_output-o_295327_
                            (string-append _output-base295319_ '"_.o"))
                           (_gsc-link-opts295329_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts295331_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts295333_
                            (let ((__tmp299920
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir295296_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp299920)))
                           (_output-ld-opts295335_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros295337_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp299922
                                       (let ((__tmp299923
                                              (let ((__tmp299924
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp295302_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp299924))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp299923))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp299922))
                                (let ((__tmp299921
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp295302_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp299921))))
                           (_gsc-link-opts295339_
                            (append _gsc-link-opts295329_
                                    _gsc-gx-macros295337_))
                           (_rpath295341_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir295296_)))
                           (_default-ld-options295343_
                            (let ((__tmp299925
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp299925))))
                      (let ((__tmp299926
                             (lambda ()
                               (let ((__tmp299927
                                      (path-directory _output-bin295292_)))
                                 (declare (not safe))
                                 (create-directory* __tmp299927)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp299926))
                      (let ((__tmp299928
                             (lambda ()
                               (let ((__tmp299929
                                      (let ((__tmp299930
                                             (let ((__tmp299931
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm295304_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp299931
                                                       _deps295317_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp299930
                                                _runtime295298_))))
                                 (declare (not safe))
                                 (_generate-stub295282_ __tmp299929)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm295291_
                         __tmp299928))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp299937
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp299932
                                   (let ((__tmp299933
                                          (let ((__tmp299934
                                                 (let ((__tmp299935
                                                        (let ((__tmp299936
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm295291_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp299936 _gsc-link-opts295339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_295325_
                                                         __tmp299935))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp299934))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp299933))))
                              (declare (not safe))
                              (gxc#invoke __tmp299937 __tmp299932))
                            (let ((__tmp299943
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp299938
                                   (let ((__tmp299939
                                          (let ((__tmp299940
                                                 (let ((__tmp299941
                                                        (let ((__tmp299942
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_295325_ '()))))
                  (declare (not safe))
                  (cons _output-c295321_ __tmp299942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp299941
                                                           _gsc-static-opts295333_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp299940
                                                    _gsc-cc-opts295331_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp299939))))
                              (declare (not safe))
                              (gxc#invoke __tmp299943 __tmp299938))
                            (let ((__tmp299953
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp299944
                                   (let ((__tmp299945
                                          (let ((__tmp299946
                                                 (let ((__tmp299947
                                                        (let ((__tmp299948
                                                               (let ((__tmp299949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp299950
                                     (let ((__tmp299951
                                            (let ((__tmp299952
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options295343_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir295296_
                                                    __tmp299952))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp299951))))
                                (declare (not safe))
                                (cons _rpath295341_ __tmp299950))))
                         (declare (not safe))
                         (foldr1 cons __tmp299949 _output-ld-opts295335_))))
                  (declare (not safe))
                  (cons _output-o_295327_ __tmp299948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o295323_
                                                         __tmp299947))))
                                            (declare (not safe))
                                            (cons _output-bin295292_
                                                  __tmp299946))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp299945))))
                              (declare (not safe))
                              (gxc#invoke __tmp299953 __tmp299944)))
                          '#!void)))))
          (let* ((_output-bin295286_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx295278_ _opts295279_)))
                 (_output-scm295288_
                  (string-append _output-bin295286_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub295284_ _output-scm295288_ _output-bin295286_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm295288_))))))
    (define gxc#find-export-binding
      (lambda (_ctx295228_ _id295229_)
        (let ((_$e295275_
               (let ((__tmp299955
                      (lambda (_e295230295232_)
                        (let* ((_g295234295244_ _e295230295232_)
                               (_else295236295252_ (lambda () '#f))
                               (_K295238295256_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g295234295244_
                                 'gx#module-export::t))
                              (let* ((_e295239295259_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g295234295244_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e295240295262_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g295234295244_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e295241295265_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g295234295244_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e295241295265_ '0))
                                    (let ((_e295242295268_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g295234295244_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g295270295272_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g295270295272_
                                                    _id295229_)))
                                           _e295242295268_)
                                          (let ()
                                            (declare (not safe))
                                            (_K295238295256_))
                                          (let ()
                                            (declare (not safe))
                                            (_else295236295252_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else295236295252_))))
                              (let ()
                                (declare (not safe))
                                (_else295236295252_))))))
                     (__tmp299954
                      (##structure-ref
                       _ctx295228_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp299955 __tmp299954))))
          (if _$e295275_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e295275_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx295220_ _id295221_)
        (let ((_$e295223_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx295220_ _id295221_))))
          (if _$e295223_
              ((lambda (_bind295226_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind295226_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id295221_)))
                 (##structure-ref _bind295226_ '1 gx#binding::t '#f))
               _$e295223_)
              (let ((__tmp299956
                     (##structure-ref
                      _ctx295220_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp299956
                 _id295221_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx295107_)
        (letrec* ((_ht295109_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template295110_
                   (lambda (_in295172_ _phi295173_)
                     (let ((_iphi295175_
                            (fx+ _phi295173_
                                 (##direct-structure-ref
                                  _in295172_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports295176_
                            (##structure-ref
                             (##direct-structure-ref
                              _in295172_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp295178_ ((_rest295180_ _imports295176_)
                                        (_r295181_ '()))
                         (let* ((_rest295182295190_ _rest295180_)
                                (_else295184295198_ (lambda () _r295181_))
                                (_K295186295208_
                                 (lambda (_rest295201_ _in295202_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in295202_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi295175_))
                                           (let ((__tmp299963
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in295202_
                                                          _r295181_))))
                                             (declare (not safe))
                                             (_lp295178_
                                              _rest295201_
                                              __tmp299963))
                                           (let ()
                                             (declare (not safe))
                                             (_lp295178_
                                              _rest295201_
                                              _r295181_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in295202_
                                              'gx#module-import::t))
                                           (let ((_iphi295204_
                                                  (fx+ _phi295173_
                                                       (##direct-structure-ref
                                                        _in295202_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi295204_))
                                                 (let ((__tmp299961
                                                        (let ((__tmp299962
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in295202_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp299962 _r295181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp295178_
                                                    _rest295201_
                                                    __tmp299961))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp295178_
                                                    _rest295201_
                                                    _r295181_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in295202_
                                                  'gx#import-set::t))
                                               (let ((_xphi295206_
                                                      (fx+ _iphi295175_
                                                           (##direct-structure-ref
                                                            _in295202_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi295206_))
                                                     (let ((__tmp299959
                                                            (let ((__tmp299960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in295202_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp299960 _r295181_))))
               (declare (not safe))
               (_lp295178_ _rest295201_ __tmp299959))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi295206_)
                                                         (let ((__tmp299957
                                                                (let ((__tmp299958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template295110_
                                  _in295202_
                                  _iphi295175_))))
                          (declare (not safe))
                          (foldl1 cons _r295181_ __tmp299958))))
                   (declare (not safe))
                   (_lp295178_ _rest295201_ __tmp299957))
                 (let ()
                   (declare (not safe))
                   (_lp295178_ _rest295201_ _r295181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp295178_
                                                  _rest295201_
                                                  _r295181_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest295182295190_))
                               (let ((_hd295187295211_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest295182295190_)))
                                     (_tl295188295213_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest295182295190_))))
                                 (let* ((_in295216_ _hd295187295211_)
                                        (_rest295218_ _tl295188295213_))
                                   (declare (not safe))
                                   (_K295186295208_ _rest295218_ _in295216_)))
                               (let ()
                                 (declare (not safe))
                                 (_else295184295198_))))))))
                  (_find-deps295111_
                   (lambda (_rest295118_ _deps295119_)
                     (let* ((_rest295120295128_ _rest295118_)
                            (_else295122295136_ (lambda () _deps295119_))
                            (_K295124295160_
                             (lambda (_rest295139_ _hd295140_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd295140_
                                      'gx#module-context::t))
                                   (let ((_id295142_
                                          (##structure-ref
                                           _hd295140_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports295143_
                                          (##structure-ref
                                           _hd295140_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht295109_ _id295142_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps295111_
                                            _rest295139_
                                            _deps295119_))
                                         (let ((_$e295145_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd295140_))))
                                           (if _$e295145_
                                               ((lambda (_pre295148_)
                                                  (let ((_xdeps295150_
                                                         (let ((__tmp299976
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre295148_ _imports295143_))))
                   (declare (not safe))
                   (_find-deps295111_ __tmp299976 _deps295119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht295109_
                                                       _id295142_
                                                       _hd295140_))
                                                    (let ((__tmp299977
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd295140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps295150_))))
              (declare (not safe))
              (_find-deps295111_ _rest295139_ __tmp299977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e295145_)
                                               (let ((_xdeps295152_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps295111_
                                                         _imports295143_
                                                         _deps295119_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht295109_
                                                    _id295142_
                                                    _hd295140_))
                                                 (let ((__tmp299975
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd295140_
                                                                _xdeps295152_))))
                                                   (declare (not safe))
                                                   (_find-deps295111_
                                                    _rest295139_
                                                    __tmp299975)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd295140_
                                          'gx#prelude-context::t))
                                       (let ((_id295154_
                                              (##structure-ref
                                               _hd295140_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht295109_
                                                _id295154_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps295111_
                                                _rest295139_
                                                _deps295119_))
                                             (let ((_xdeps295156_
                                                    (let ((__tmp299973
                                                           (##structure-ref
                                                            _hd295140_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps295111_
                                                       __tmp299973
                                                       _deps295119_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht295109_
                                                      _id295154_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps295111_
                                                      _rest295139_
                                                      _xdeps295156_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht295109_
                                                        _id295154_
                                                        _hd295140_))
                                                     (let ((__tmp299974
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd295140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps295156_))))
               (declare (not safe))
               (_find-deps295111_ _rest295139_ __tmp299974)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd295140_
                                              'gx#module-import::t))
                                           (if (let ((__tmp299972
                                                      (##direct-structure-ref
                                                       _hd295140_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp299972))
                                               (let ((__tmp299970
                                                      (let ((__tmp299971
                                                             (##direct-structure-ref
                                                              _hd295140_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp299971
                                                              _rest295139_))))
                                                 (declare (not safe))
                                                 (_find-deps295111_
                                                  __tmp299970
                                                  _deps295119_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps295111_
                                                  _rest295139_
                                                  _deps295119_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd295140_
                                                  'gx#module-export::t))
                                               (let ((__tmp299968
                                                      (let ((__tmp299969
                                                             (##direct-structure-ref
                                                              _hd295140_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp299969
                                                              _rest295139_))))
                                                 (declare (not safe))
                                                 (_find-deps295111_
                                                  __tmp299968
                                                  _deps295119_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd295140_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp299967
                                                              (##direct-structure-ref
                                                               _hd295140_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp299967))
                                                       (let ((__tmp299965
                                                              (let ((__tmp299966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd295140_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp299966 _rest295139_))))
                 (declare (not safe))
                 (_find-deps295111_ __tmp299965 _deps295119_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd295140_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps295158_
                           (let ()
                             (declare (not safe))
                             (_import-set-template295110_ _hd295140_ '0)))
                          (__tmp299964
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest295139_ _xdeps295158_))))
                     (declare (not safe))
                     (_find-deps295111_ __tmp299964 _deps295119_))
                   (let ()
                     (declare (not safe))
                     (_find-deps295111_ _rest295139_ _deps295119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd295140_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest295120295128_))
                           (let ((_hd295125295163_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest295120295128_)))
                                 (_tl295126295165_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest295120295128_))))
                             (let* ((_hd295168_ _hd295125295163_)
                                    (_rest295170_ _tl295126295165_))
                               (declare (not safe))
                               (_K295124295160_ _rest295170_ _hd295168_)))
                           (let ()
                             (declare (not safe))
                             (_else295122295136_)))))))
          (reverse (let ((__tmp299978
                          (let ((__tmp299979
                                 (let ((_$e295113_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx295107_))))
                                   (if _$e295113_
                                       ((lambda (_pre295116_)
                                          (let ((__tmp299980
                                                 (##structure-ref
                                                  _ctx295107_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre295116_ __tmp299980)))
                                        _$e295113_)
                                       (##structure-ref
                                        _ctx295107_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps295111_ __tmp299979 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp299978))))))
    (define gxc#find-static-module-file
      (lambda (_ctx295038_)
        (let* ((_context-id295040_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx295038_
                       'gx#module-context::t))
                    (##structure-ref _ctx295038_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx295038_)))
               (_scm295042_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id295040_))
                 '".scm"))
               (_dirs295044_ (gx#current-expander-module-library-path))
               (_dirs295050_
                (let ((_user-libpath295046_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath295046_
                      (let ((_user-libpath295048_
                             (path-expand '"lib" _user-libpath295046_)))
                        (if (member _user-libpath295048_ _dirs295044_)
                            _dirs295044_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath295048_ _dirs295044_))))
                      _dirs295044_)))
               (_dirs295059_
                (let ((_$e295052_ (gxc#current-compile-output-dir)))
                  (if _$e295052_
                      ((lambda (_g295054295056_)
                         (let ()
                           (declare (not safe))
                           (cons _g295054295056_ _dirs295050_)))
                       _$e295052_)
                      _dirs295050_)))
               (_dirs295065_
                (map (lambda (_g295060295062_)
                       (path-expand '"static" _g295060295062_))
                     _dirs295059_)))
          (let _lp295068_ ((_rest295070_ _dirs295065_))
            (let* ((_rest295071295079_ _rest295070_)
                   (_else295073295087_
                    (lambda ()
                      (let ((__tmp299981
                             (##structure-ref
                              _ctx295038_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp299981
                         _scm295042_))))
                   (_K295075295095_
                    (lambda (_rest295090_ _dir295091_)
                      (let ((_path295093_
                             (path-expand _scm295042_ _dir295091_)))
                        (if (file-exists? _path295093_)
                            _path295093_
                            (let ()
                              (declare (not safe))
                              (_lp295068_ _rest295090_)))))))
              (if (let () (declare (not safe)) (##pair? _rest295071295079_))
                  (let ((_hd295076295098_
                         (let ()
                           (declare (not safe))
                           (##car _rest295071295079_)))
                        (_tl295077295100_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest295071295079_))))
                    (let* ((_dir295103_ _hd295076295098_)
                           (_rest295105_ _tl295077295100_))
                      (declare (not safe))
                      (_K295075295095_ _rest295105_ _dir295103_)))
                  (let () (declare (not safe)) (_else295073295087_))))))))
    (define gxc#file-empty?
      (lambda (_path295036_)
        (let ((__tmp299982 (file-info-size (file-info _path295036_ '#t))))
          (declare (not safe))
          (zero? __tmp299982))))
    (define gxc#compile-top-module
      (lambda (_ctx295025_)
        (let ((__tmp299986
               (lambda ()
                 (let ((__tmp299987
                        (##structure-ref
                         _ctx295025_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp299987))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp299988
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx295025_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp299988))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx295025_))
                 (if (let ((__tmp299991
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx295025_))))
                       (declare (not safe))
                       (null? __tmp299991))
                     (let* ((_thr1295030_
                             (let ((__tmp299989
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx295025_)))))
                               (declare (not safe))
                               (spawn __tmp299989)))
                            (_thr2295033_
                             (let ((__tmp299990
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx295025_)))))
                               (declare (not safe))
                               (spawn __tmp299990))))
                       (let () (declare (not safe)) (gxc#join! _thr1295030_))
                       (let () (declare (not safe)) (gxc#join! _thr2295033_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx295025_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx295025_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx295025_))
                     '#!void)))
              (__tmp299985
               (let ((__obj299790
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj299790)
                 __obj299790))
              (__tmp299984 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp299983 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp299986
           gx#current-expander-context
           _ctx295025_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp299985
           gxc#current-compile-runtime-sections
           __tmp299984
           gxc#current-compile-runtime-names
           __tmp299983))))
    (define gxc#collect-bindings
      (lambda (_ctx295023_)
        (let ((__tmp299992
               (##structure-ref _ctx295023_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp299992))))
    (define gxc#compile-runtime-code
      (lambda (_ctx294969_)
        (letrec ((_compile1294971_
                  (lambda (_ctx295012_)
                    (let* ((_code295014_
                            (##structure-ref
                             _ctx295012_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt295018_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code295014_))
                                (let ((_idstr295016_
                                       (let ((__tmp299993
                                              (##structure-ref
                                               _ctx295012_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp299993))))
                                  (string-append _idstr295016_ '"__0"))
                                '#f)))
                      (if _rt295018_
                          (begin
                            (let ((__tmp299994
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp299994 _ctx295012_ _rt295018_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code294973_
                               _ctx295012_
                               _code295014_)))
                          (let ((_path295021_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx295012_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path295021_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code294974_
                         _ctx295012_
                         _code295014_
                         _rt295018_)))))
                 (_context-timestamp294972_
                  (lambda (_ctx295010_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx295010_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code294973_
                  (lambda (_ctx294992_ _code294993_)
                    (let* ((_lifts294995_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code294998_
                            (let ((__tmp299997
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code294993_))))
                                  (__tmp299996
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp299995
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp299997
                               gx#current-expander-context
                               _ctx294992_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts294995_
                               gxc#current-compile-marks
                               __tmp299996
                               gxc#current-compile-identifiers
                               __tmp299995)))
                           (_runtime-code295000_
                            (if (let ((__tmp300001 (unbox _lifts294995_)))
                                  (declare (not safe))
                                  (null? __tmp300001))
                                _runtime-code294998_
                                (let ((__tmp299998
                                       (let ((__tmp300000
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code294998_
                                                      '())))
                                             (__tmp299999
                                              (reverse (unbox _lifts294995_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp300000
                                                 __tmp299999))))
                                  (declare (not safe))
                                  (cons 'begin __tmp299998))))
                           (_runtime-code295002_
                            (let ((__tmp300002
                                   (let ((__tmp300004
                                          (let ((__tmp300005
                                                 (let ((__tmp300008
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp294972_
                                                           _ctx294992_)))
                                                       (__tmp300006
                                                        (let ((__tmp300007
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp300007
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp300008
                                                         __tmp300006))))
                                            (declare (not safe))
                                            (cons 'define __tmp300005)))
                                         (__tmp300003
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code295000_ '()))))
                                     (declare (not safe))
                                     (cons __tmp300004 __tmp300003))))
                              (declare (not safe))
                              (cons 'begin __tmp300002)))
                           (_scm0295004_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx294992_
                               '0
                               '".scm"))))
                      (let ((_scms295007_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx294992_))))
                        (let ((__tmp300009
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0295004_
                                    _runtime-code295002_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp300009
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms295007_)
                            (delete-file _scms295007_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0295004_
                           '" => "
                           _scms295007_))
                        (copy-file _scm0295004_ _scms295007_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0295004_))))))
                 (_generate-loader-code294974_
                  (lambda (_ctx294981_ _code294982_ _rt294983_)
                    (let* ((_loader-code294986_
                            (let ((__tmp300010
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code294982_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp300010
                               gx#current-expander-context
                               _ctx294981_)))
                           (_loader-code294988_
                            (if _rt294983_
                                (let ((__tmp300011
                                       (let ((__tmp300012
                                              (let ((__tmp300013
                                                     (let ((__tmp300014
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt294983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp300014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp300013 '()))))
                                         (declare (not safe))
                                         (cons _loader-code294986_
                                               __tmp300012))))
                                  (declare (not safe))
                                  (cons 'begin __tmp300011))
                                _loader-code294986_)))
                      (let ((__tmp300015
                             (lambda ()
                               (let ((__tmp300016
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx294981_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp300016
                                  _loader-code294988_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp300015
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules294976_
                 (let ((__tmp300017
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx294969_))))
                   (declare (not safe))
                   (cons _ctx294969_ __tmp300017))))
            (for-each
             (lambda (_ctx294978_)
               (let ((__tmp300018
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1294971_ _ctx294978_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp300018
                  gxc#current-compile-decls
                  '())))
             _all-modules294976_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx294866_)
        (letrec ((_compile-ssi294868_
                  (lambda (_code294939_)
                    (let* ((_path294941_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx294866_
                               '#f
                               '".ssi")))
                           (_prelude294952_
                            (let* ((_super294943_
                                    (##structure-ref
                                     _ctx294866_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e294945_
                                    (##structure-ref
                                     _super294943_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e294945_
                                  ((lambda (_g294947294949_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g294947294949_)))
                                   _$e294945_)
                                  ':<root>)))
                           (_ns294954_
                            (##structure-ref
                             _ctx294866_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr294956_
                            (symbol->string
                             (##structure-ref
                              _ctx294866_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg294963_
                            (let ((_$e294958_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr294956_ '#\/))))
                              (if _$e294958_
                                  ((lambda (_x294961_)
                                     (string->symbol
                                      (substring _idstr294956_ '0 _x294961_)))
                                   _$e294958_)
                                  '#f)))
                           (_rt294965_
                            (let ((__tmp300019
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp300019 _ctx294866_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path294941_))
                      (let ((__tmp300020
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude294952_))
                               (if _pkg294963_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg294963_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns294954_))
                               (newline)
                               (pretty-print _code294939_)
                               (if _rt294965_
                                   (pretty-print
                                    (let ((__tmp300021
                                           (let ((__tmp300025
                                                  (let ((__tmp300026
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp300026)))
                                                 (__tmp300022
                                                  (let ((__tmp300023
                                                         (let ((__tmp300024
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt294965_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp300024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp300023 '()))))
                                             (declare (not safe))
                                             (cons __tmp300025 __tmp300022))))
                                      (declare (not safe))
                                      (cons '%#call __tmp300021)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path294941_
                         __tmp300020)))))
                 (_compile-phi294869_
                  (lambda (_part294879_)
                    (let* ((_part294880294893_ _part294879_)
                           (_E294882294897_
                            (lambda ()
                              (error '"No clause matching"
                                     _part294880294893_)))
                           (_K294883294908_
                            (lambda (_code294900_
                                     _n294901_
                                     _phi294902_
                                     _phi-ctx294903_)
                              (let* ((_code294906_
                                      (let ((__tmp300027
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code294900_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp300027
                                         gx#current-expander-context
                                         _phi-ctx294903_
                                         gx#current-expander-phi
                                         _phi294902_)))
                                     (__tmp300028
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx294866_
                                         _n294901_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp300028
                                 _code294906_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part294880294893_))
                          (let ((_hd294884294911_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part294880294893_)))
                                (_tl294885294913_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part294880294893_))))
                            (let ((_phi-ctx294916_ _hd294884294911_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl294885294913_))
                                  (let ((_hd294886294918_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl294885294913_)))
                                        (_tl294887294920_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl294885294913_))))
                                    (let ((_phi294923_ _hd294886294918_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl294887294920_))
                                          (let ((_hd294888294925_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl294887294920_)))
                                                (_tl294889294927_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl294887294920_))))
                                            (let ((_n294930_ _hd294888294925_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl294889294927_))
                                                  (let ((_hd294890294932_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl294889294927_)))
                                                        (_tl294891294934_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl294889294927_))))
                                                    (let ((_code294937_
                                                           _hd294890294932_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl294891294934_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K294883294908_
                                                             _code294937_
                                                             _n294930_
                                                             _phi294923_
                                                             _phi-ctx294916_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E294882294897_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E294882294897_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E294882294897_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E294882294897_)))))
                          (let () (declare (not safe)) (_E294882294897_)))))))
          (let ((_g300029_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx294866_))))
            (begin
              (let ((_g300030_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g300029_)
                           (##vector-length _g300029_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g300030_ 2)))
                    (error "Context expects 2 values" _g300030_)))
              (let ((_ssi-code294871_
                     (let () (declare (not safe)) (##vector-ref _g300029_ 0)))
                    (_phi-code294872_
                     (let () (declare (not safe)) (##vector-ref _g300029_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi294868_ _ssi-code294871_))
                  (let ((_threads294877_
                         (map (lambda (_code294874_)
                                (let ((__tmp300031
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi294869_
                                            _code294874_)))))
                                  (declare (not safe))
                                  (spawn __tmp300031)))
                              _phi-code294872_)))
                    (for-each gxc#join! _threads294877_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx294849_)
        (let* ((_path294851_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx294849_ '#f '".ssxi.ss")))
               (_code294853_
                (let ((__tmp300032
                       (##structure-ref
                        _ctx294849_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp300032)))
               (_idstr294855_
                (symbol->string
                 (##structure-ref _ctx294849_ '1 gx#expander-context::t '#f)))
               (_pkg294862_
                (let ((_$e294857_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr294855_ '#\/))))
                  (if _$e294857_
                      ((lambda (_x294860_)
                         (string->symbol
                          (substring _idstr294855_ '0 _x294860_)))
                       _$e294857_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path294851_))
          (let ((__tmp300033
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg294862_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg294862_))
                       '#!void)
                   (newline)
                   (pretty-print _code294853_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path294851_ __tmp300033)))))
    (define gxc#generate-meta-code
      (lambda (_ctx294842_)
        (let* ((_state294844_
                (let ((__obj299791
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj299791 _ctx294842_)
                  __obj299791))
               (_ssi-code294846_
                (let ((__tmp300034
                       (##structure-ref
                        _ctx294842_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp300034 _state294844_))))
          (values _ssi-code294846_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state294844_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx294835_)
        (let ((_lifts294837_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp300037
                 (lambda ()
                   (let ((_code294840_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx294835_))))
                     (if (let ((__tmp300041 (unbox _lifts294837_)))
                           (declare (not safe))
                           (null? __tmp300041))
                         _code294840_
                         (let ((__tmp300038
                                (let ((__tmp300040
                                       (let ()
                                         (declare (not safe))
                                         (cons _code294840_ '())))
                                      (__tmp300039
                                       (reverse (unbox _lifts294837_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp300040 __tmp300039))))
                           (declare (not safe))
                           (cons 'begin __tmp300038))))))
                (__tmp300036
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp300035
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp300037
             gxc#current-compile-lift
             _lifts294837_
             gxc#current-compile-marks
             __tmp300036
             gxc#current-compile-identifiers
             __tmp300035)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx294831_)
        (let ((_modules294833_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp300042
                 (##structure-ref _ctx294831_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp300042 _modules294833_))
          (reverse (unbox _modules294833_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path294814_ _code294815_ _phi?294816_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path294814_))
        (let ((__tmp300043
               (lambda ()
                 (pretty-print
                  (let ((__tmp300044
                         (let ((__tmp300051
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp300045
                                (let ((__tmp300050
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp300046
                                       (let ((__tmp300049
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp300047
                                              (let ((__tmp300048
                                                     (if _phi?294816_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp300048))))
                                         (declare (not safe))
                                         (cons __tmp300049 __tmp300047))))
                                  (declare (not safe))
                                  (cons __tmp300050 __tmp300046))))
                           (declare (not safe))
                           (cons __tmp300051 __tmp300045))))
                    (declare (not safe))
                    (cons 'declare __tmp300044)))
                 (pretty-print _code294815_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path294814_ __tmp300043))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path294814_ _phi?294816_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path294814_))))
    (define gxc#compile-scm-file__0
      (lambda (_path294822_ _code294823_)
        (let ((_phi?294825_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path294822_ _code294823_ _phi?294825_))))
    (define gxc#compile-scm-file
      (lambda _g300053_
        (let ((_g300052_ (let () (declare (not safe)) (##length _g300053_))))
          (cond ((let () (declare (not safe)) (##fx= _g300052_ 2))
                 (apply (lambda (_path294822_ _code294823_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path294822_
                             _code294823_)))
                        _g300053_))
                ((let () (declare (not safe)) (##fx= _g300052_ 3))
                 (apply (lambda (_path294827_ _code294828_ _phi?294829_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path294827_
                             _code294828_
                             _phi?294829_)))
                        _g300053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g300053_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?294715_)
        (let _lp294717_ ((_rest294719_ (gxc#current-compile-gsc-options))
                         (_opts294720_ '()))
          (let* ((_rest294721294741_ _rest294719_)
                 (_else294725294749_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?294715_))
                             (gxc#current-compile-debug))
                        (let ((__tmp300054
                               (let ((__tmp300055 (reverse _opts294720_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp300055))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp300054))
                        (reverse _opts294720_)))))
            (let ((_K294735294792_
                   (lambda (_rest294790_)
                     (let ()
                       (declare (not safe))
                       (_lp294717_ _rest294790_ _opts294720_))))
                  (_K294730294774_
                   (lambda (_rest294772_)
                     (let ()
                       (declare (not safe))
                       (_lp294717_ _rest294772_ _opts294720_))))
                  (_K294727294756_
                   (lambda (_rest294753_ _opt294754_)
                     (let ((__tmp300056
                            (let ()
                              (declare (not safe))
                              (cons _opt294754_ _opts294720_))))
                       (declare (not safe))
                       (_lp294717_ _rest294753_ __tmp300056)))))
              (if (let () (declare (not safe)) (##pair? _rest294721294741_))
                  (let ((_tl294737294797_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest294721294741_)))
                        (_hd294736294795_
                         (let ()
                           (declare (not safe))
                           (##car _rest294721294741_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd294736294795_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl294737294797_))
                            (let* ((_tl294739294800_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl294737294797_)))
                                   (_rest294803_ _tl294739294800_))
                              (declare (not safe))
                              (_K294735294792_ _rest294803_))
                            (let ((_opt294764_ _hd294736294795_)
                                  (_rest294766_ _tl294737294797_))
                              (let ()
                                (declare (not safe))
                                (_K294727294756_ _rest294766_ _opt294764_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd294736294795_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl294737294797_))
                                (let* ((_tl294734294782_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl294737294797_)))
                                       (_rest294785_ _tl294734294782_))
                                  (declare (not safe))
                                  (_K294730294774_ _rest294785_))
                                (let ((_opt294764_ _hd294736294795_)
                                      (_rest294766_ _tl294737294797_))
                                  (let ()
                                    (declare (not safe))
                                    (_K294727294756_
                                     _rest294766_
                                     _opt294764_))))
                            (let ((_opt294764_ _hd294736294795_)
                                  (_rest294766_ _tl294737294797_))
                              (let ()
                                (declare (not safe))
                                (_K294727294756_ _rest294766_ _opt294764_))))))
                  (let () (declare (not safe)) (_else294725294749_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?294809_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?294809_))))
    (define gxc#gsc-link-options
      (lambda _g300058_
        (let ((_g300057_ (let () (declare (not safe)) (##length _g300058_))))
          (cond ((let () (declare (not safe)) (##fx= _g300057_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g300058_))
                ((let () (declare (not safe)) (##fx= _g300057_ 1))
                 (apply (lambda (_phi?294811_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?294811_)))
                        _g300058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g300058_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?294616_)
        (let _lp294618_ ((_rest294620_ (gxc#current-compile-gsc-options))
                         (_opts294621_ '()))
          (let* ((_rest294622294642_ _rest294620_)
                 (_else294626294650_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?294616_))
                             (gxc#current-compile-debug))
                        (let ((__tmp300059
                               (let ((__tmp300060 (reverse _opts294621_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp300060))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp300059))
                        (reverse _opts294621_)))))
            (let ((_K294636294689_
                   (lambda (_rest294686_ _opt294687_)
                     (let ((__tmp300061
                            (let ((__tmp300062
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts294621_))))
                              (declare (not safe))
                              (cons _opt294687_ __tmp300062))))
                       (declare (not safe))
                       (_lp294618_ _rest294686_ __tmp300061))))
                  (_K294631294670_
                   (lambda (_rest294668_)
                     (let ()
                       (declare (not safe))
                       (_lp294618_ _rest294668_ _opts294621_))))
                  (_K294628294656_
                   (lambda (_rest294654_)
                     (let ()
                       (declare (not safe))
                       (_lp294618_ _rest294654_ _opts294621_)))))
              (if (let () (declare (not safe)) (##pair? _rest294622294642_))
                  (let ((_tl294638294694_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest294622294642_)))
                        (_hd294637294692_
                         (let ()
                           (declare (not safe))
                           (##car _rest294622294642_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd294637294692_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl294638294694_))
                            (let ((_tl294640294699_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl294638294694_)))
                                  (_hd294639294697_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl294638294694_))))
                              (let ((_opt294702_ _hd294639294697_)
                                    (_rest294704_ _tl294640294699_))
                                (let ()
                                  (declare (not safe))
                                  (_K294636294689_ _rest294704_ _opt294702_))))
                            (let ((_rest294662_ _tl294638294694_))
                              (declare (not safe))
                              (_K294628294656_ _rest294662_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd294637294692_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl294638294694_))
                                (let* ((_tl294635294678_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl294638294694_)))
                                       (_rest294681_ _tl294635294678_))
                                  (declare (not safe))
                                  (_K294631294670_ _rest294681_))
                                (let ((_rest294662_ _tl294638294694_))
                                  (declare (not safe))
                                  (_K294628294656_ _rest294662_)))
                            (let ((_rest294662_ _tl294638294694_))
                              (declare (not safe))
                              (_K294628294656_ _rest294662_)))))
                  (let () (declare (not safe)) (_else294626294650_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?294710_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?294710_))))
    (define gxc#gsc-cc-options
      (lambda _g300064_
        (let ((_g300063_ (let () (declare (not safe)) (##length _g300064_))))
          (cond ((let () (declare (not safe)) (##fx= _g300063_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g300064_))
                ((let () (declare (not safe)) (##fx= _g300063_ 1))
                 (apply (lambda (_phi?294712_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?294712_)))
                        _g300064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g300064_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir294611_)
        (let* ((_user-staticdir294613_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp300065
                (let ((__tmp300066
                       (string-append
                        '"-I "
                        _staticdir294611_
                        '" -I "
                        _user-staticdir294613_)))
                  (declare (not safe))
                  (cons __tmp300066 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp300065))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp294523_ ((_rest294525_ (gxc#current-compile-gsc-options))
                         (_opts294526_ '()))
          (let* ((_rest294527294547_ _rest294525_)
                 (_else294531294555_ (lambda () _opts294526_)))
            (let ((_K294541294598_
                   (lambda (_rest294596_)
                     (let ()
                       (declare (not safe))
                       (_lp294523_ _rest294596_ _opts294526_))))
                  (_K294536294576_
                   (lambda (_rest294573_ _opt294574_)
                     (let ((__tmp300067
                            (append _opts294526_
                                    (let ((__tmp300068
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt294574_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp300068)))))
                       (declare (not safe))
                       (_lp294523_ _rest294573_ __tmp300067))))
                  (_K294533294561_
                   (lambda (_rest294559_)
                     (let ()
                       (declare (not safe))
                       (_lp294523_ _rest294559_ _opts294526_)))))
              (if (let () (declare (not safe)) (##pair? _rest294527294547_))
                  (let ((_tl294543294603_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest294527294547_)))
                        (_hd294542294601_
                         (let ()
                           (declare (not safe))
                           (##car _rest294527294547_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd294542294601_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl294543294603_))
                            (let* ((_tl294545294606_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl294543294603_)))
                                   (_rest294609_ _tl294545294606_))
                              (declare (not safe))
                              (_K294541294598_ _rest294609_))
                            (let ((_rest294567_ _tl294543294603_))
                              (declare (not safe))
                              (_K294533294561_ _rest294567_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd294542294601_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl294543294603_))
                                (let ((_tl294540294586_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl294543294603_)))
                                      (_hd294539294584_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl294543294603_))))
                                  (let ((_opt294589_ _hd294539294584_)
                                        (_rest294591_ _tl294540294586_))
                                    (let ()
                                      (declare (not safe))
                                      (_K294536294576_
                                       _rest294591_
                                       _opt294589_))))
                                (let ((_rest294567_ _tl294543294603_))
                                  (declare (not safe))
                                  (_K294533294561_ _rest294567_)))
                            (let ((_rest294567_ _tl294543294603_))
                              (declare (not safe))
                              (_K294533294561_ _rest294567_)))))
                  (let () (declare (not safe)) (_else294531294555_))))))))
    (define gxc#not-string-empty?
      (lambda (_str294520_)
        (let ((__tmp300069
               (let () (declare (not safe)) (string-empty? _str294520_))))
          (declare (not safe))
          (not __tmp300069))))
    (define gxc#gsc-compile-file
      (lambda (_path294488_ _phi?294489_)
        (letrec ((_gsc-link-path294491_
                  (lambda (_base-path294512_)
                    (let _lp294514_ ((_n294516_ '1))
                      (let ((_path294518_
                             (string-append
                              _base-path294512_
                              '".o"
                              (number->string _n294516_))))
                        (if (file-exists? _path294518_)
                            (let ((__tmp300070
                                   (let ()
                                     (declare (not safe))
                                     (+ _n294516_ '1))))
                              (declare (not safe))
                              (_lp294514_ __tmp300070))
                            _path294518_))))))
          (let* ((_base-path294493_ (path-strip-extension _path294488_))
                 (_path-c294495_ (string-append _base-path294493_ '".c"))
                 (_path-o294497_ (string-append _base-path294493_ '".o"))
                 (_link-path294499_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path294491_ _base-path294493_)))
                 (_link-path-c294501_ (string-append _link-path294499_ '".c"))
                 (_link-path-o294503_ (string-append _link-path294499_ '".o"))
                 (_gsc-link-opts294505_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?294489_)))
                 (_gsc-cc-opts294507_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?294489_)))
                 (_gcc-ld-opts294509_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp300077 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp300071
                   (let ((__tmp300072
                          (let ((__tmp300073
                                 (let ((__tmp300074
                                        (let ((__tmp300075
                                               (let ((__tmp300076
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path294488_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp300076
                                                         _gsc-link-opts294505_))))
                                          (declare (not safe))
                                          (cons _link-path-c294501_
                                                __tmp300075))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp300074))))
                            (declare (not safe))
                            (cons '"-flat" __tmp300073))))
                     (declare (not safe))
                     (cons '"-link" __tmp300072))))
              (declare (not safe))
              (gxc#invoke __tmp300077 __tmp300071 'stdout-redirection: '#t))
            (let ((__tmp300084 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp300078
                   (let ((__tmp300079
                          (let ((__tmp300080
                                 (let ((__tmp300081
                                        (let ((__tmp300082
                                               (let ((__tmp300083
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c294501_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c294495_
                                                       __tmp300083))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp300082
                                                  _gsc-cc-opts294507_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp300081))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp300080))))
                     (declare (not safe))
                     (cons '"-obj" __tmp300079))))
              (declare (not safe))
              (gxc#invoke __tmp300084 __tmp300078 'stdout-redirection: '#t))
            (let ((__tmp300090 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp300085
                   (let ((__tmp300086
                          (let ((__tmp300087
                                 (let ((__tmp300088
                                        (let ((__tmp300089
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o294503_
                                                       _gcc-ld-opts294509_))))
                                          (declare (not safe))
                                          (cons _path-o294497_ __tmp300089))))
                                   (declare (not safe))
                                   (cons _link-path294499_ __tmp300088))))
                            (declare (not safe))
                            (cons '"-o" __tmp300087))))
                     (declare (not safe))
                     (cons '"-shared" __tmp300086))))
              (declare (not safe))
              (gxc#invoke __tmp300090 __tmp300085))
            (for-each
             delete-file
             (let ((__tmp300091
                    (let ((__tmp300092
                           (let ((__tmp300093
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o294503_ '()))))
                             (declare (not safe))
                             (cons _link-path-c294501_ __tmp300093))))
                      (declare (not safe))
                      (cons _path-o294497_ __tmp300092))))
               (declare (not safe))
               (cons _path-c294495_ __tmp300091)))))))
    (define gxc#compile-output-file
      (lambda (_ctx294459_ _n294460_ _ext294461_)
        (letrec ((_module-relative-path294463_
                  (lambda (_ctx294486_)
                    (path-strip-directory
                     (let ((__tmp300094
                            (##structure-ref
                             _ctx294486_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp300094)))))
                 (_module-source-directory294464_
                  (lambda (_ctx294482_)
                    (path-directory
                     (let ((_mpath294484_
                            (##structure-ref
                             _ctx294482_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath294484_))
                           _mpath294484_
                           (let ()
                             (declare (not safe))
                             (last _mpath294484_)))))))
                 (_section-string294465_
                  (lambda (_n294480_)
                    (if (let () (declare (not safe)) (number? _n294480_))
                        (number->string _n294480_)
                        (if (let () (declare (not safe)) (symbol? _n294480_))
                            (symbol->string _n294480_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n294480_))
                                _n294480_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n294480_)))))))
                 (_file-name294466_
                  (lambda (_path294478_)
                    (if _n294460_
                        (string-append
                         _path294478_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string294465_ _n294460_))
                         _ext294461_)
                        (string-append _path294478_ _ext294461_))))
                 (_file-path294467_
                  (lambda ()
                    (let ((_$e294473_ (gxc#current-compile-output-dir)))
                      (if _$e294473_
                          ((lambda (_outdir294476_)
                             (path-expand
                              (let ((__tmp300096
                                     (let ((__tmp300097
                                            (##structure-ref
                                             _ctx294459_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp300097))))
                                (declare (not safe))
                                (_file-name294466_ __tmp300096))
                              _outdir294476_))
                           _$e294473_)
                          (path-expand
                           (let ((__tmp300095
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path294463_
                                     _ctx294459_))))
                             (declare (not safe))
                             (_file-name294466_ __tmp300095))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory294464_
                              _ctx294459_))))))))
          (let ((_path294469_
                 (let () (declare (not safe)) (_file-path294467_))))
            (let ((__tmp300098
                   (lambda ()
                     (let ((__tmp300099 (path-directory _path294469_)))
                       (declare (not safe))
                       (create-directory* __tmp300099)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp300098))
            _path294469_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx294441_)
        (letrec ((_file-name294443_
                  (lambda (_id294457_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id294457_))
                     '".scm")))
                 (_file-path294444_
                  (lambda ()
                    (let* ((_file294450_
                            (let ((__tmp300100
                                   (##structure-ref
                                    _ctx294441_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name294443_ __tmp300100)))
                           (_$e294452_ (gxc#current-compile-output-dir)))
                      (if _$e294452_
                          ((lambda (_outdir294455_)
                             (path-expand
                              _file294450_
                              (path-expand '"static" _outdir294455_)))
                           _$e294452_)
                          (path-expand _file294450_ '"static"))))))
          (let ((_path294446_
                 (let () (declare (not safe)) (_file-path294444_))))
            (let ((__tmp300101
                   (lambda ()
                     (let ((__tmp300102 (path-directory _path294446_)))
                       (declare (not safe))
                       (create-directory* __tmp300102)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp300101))
            _path294446_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx294435_ _opts294436_)
        (let ((_$e294438_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts294436_))))
          (if _$e294438_
              (values _$e294438_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx294435_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr294428_)
        (if (let () (declare (not safe)) (string? _idstr294428_))
            (let* ((_str294430_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr294428_)))
                   (_strs294432_
                    (let ()
                      (declare (not safe))
                      (string-split _str294430_ '#\/))))
              (let () (declare (not safe)) (string-join _strs294432_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr294428_))
                (let ((__tmp300103 (symbol->string _idstr294428_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp300103))
                (error '"Bad module id" _idstr294428_)))))
    (define gxc#invoke__%
      (lambda (_g300104_
               _stdout-redirection294389294393_
               _stderr-redirection294390294395_
               _program294397_
               _args294398_)
        (let* ((_stdout-redirection294400_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection294389294393_ absent-value))
                    '#f
                    _stdout-redirection294389294393_))
               (_stderr-redirection294402_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection294390294395_ absent-value))
                    '#f
                    _stderr-redirection294390294395_)))
          (let ((__tmp300105
                 (let ()
                   (declare (not safe))
                   (cons _program294397_ _args294398_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp300105))
          (let* ((_proc294404_
                  (open-process
                   (let ((__tmp300106
                          (let ((__tmp300107
                                 (let ((__tmp300108
                                        (let ((__tmp300109
                                               (let ((__tmp300110
                                                      (let ((__tmp300111
                                                             (let ((__tmp300112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection294402_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp300112))))
                (declare (not safe))
                (cons _stdout-redirection294400_ __tmp300111))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp300110))))
                                          (declare (not safe))
                                          (cons _args294398_ __tmp300109))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp300108))))
                            (declare (not safe))
                            (cons _program294397_ __tmp300107))))
                     (declare (not safe))
                     (cons 'path: __tmp300106))))
                 (_output294409_
                  (if (or _stdout-redirection294400_
                          _stderr-redirection294402_)
                      (read-line _proc294404_ '#f)
                      '#f)))
            (let ((_status294412_ (process-status _proc294404_)))
              (close-port _proc294404_)
              (if (let () (declare (not safe)) (zero? _status294412_))
                  '#!void
                  (begin
                    (display _output294409_)
                    (let ((__tmp300113
                           (let ()
                             (declare (not safe))
                             (cons _program294397_ _args294398_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp300113
                       _status294412_)))))))))
    (define gxc#invoke__@
      (lambda (_keys294388294417_ . _args294419_)
        (apply gxc#invoke__%
               _keys294388294417_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys294388294417_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys294388294417_
                  'stderr-redirection:
                  absent-value))
               _args294419_)))
    (define gxc#invoke
      (lambda _args294391294425_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args294391294425_)))
    (define gxc#join!
      (lambda (_thread294382_)
        (let ((__tmp300115
               (lambda (_exn294384_)
                 (if (uncaught-exception? _exn294384_)
                     (raise (uncaught-exception-reason _exn294384_))
                     (raise _exn294384_))))
              (__tmp300114 (lambda () (thread-join! _thread294382_))))
          (declare (not safe))
          (with-catch __tmp300115 __tmp300114))))))
