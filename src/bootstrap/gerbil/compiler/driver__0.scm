(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708194439)
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
      (lambda (_path282678_ _fun282679_)
        (with-output-to-file
         (let ((__tmp286839
                (let ()
                  (declare (not safe))
                  (cons _path282678_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp286839))
         _fun282679_)))
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
      (lambda (_gerbil-libdir282673_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir282673_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/loader"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir282671_) (delete-file-or-directory _dir282671_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath282645_ _opts282646_)
        (if (let () (declare (not safe)) (string? _srcpath282645_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath282645_)))
        (let ((_outdir282648_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts282646_)))
              (_invoke-gsc?282649_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts282646_)))
              (_gsc-options282650_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts282646_)))
              (_keep-scm?282651_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts282646_)))
              (_verbosity282652_
               (let () (declare (not safe)) (pgetq 'verbose: _opts282646_)))
              (_optimize282653_
               (let () (declare (not safe)) (pgetq 'optimize: _opts282646_)))
              (_debug282654_
               (let () (declare (not safe)) (pgetq 'debug: _opts282646_)))
              (_gen-ssxi282655_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts282646_))))
          (if _outdir282648_
              (let ((__tmp286840
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir282648_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp286840))
              '#!void)
          (if _optimize282653_
              (let ((__tmp286841
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp286841))
              '#!void)
          (let ((__tmp286845
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath282645_))
                   (let ((__tmp286846
                          (let ((__tmp286847
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath282645_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp286847))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp286846))))
                (__tmp286844
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp286842
                 (let ((__tmp286843
                        (let ()
                          (declare (not safe))
                          (cons _srcpath282645_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp286843))))
            (declare (not safe))
            (call-with-parameters
             __tmp286845
             gxc#current-compile-output-dir
             _outdir282648_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?282649_
             gxc#current-compile-gsc-options
             _gsc-options282650_
             gxc#current-compile-keep-scm
             _keep-scm?282651_
             gxc#current-compile-verbose
             _verbosity282652_
             gxc#current-compile-optimize
             _optimize282653_
             gxc#current-compile-debug
             _debug282654_
             gxc#current-compile-generate-ssxi
             _gen-ssxi282655_
             gxc#current-compile-timestamp
             __tmp286844
             gxc#current-compile-context
             __tmp286842
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath282664_)
        (let ((_opts282666_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath282664_ _opts282666_))))
    (define gxc#compile-module
      (lambda _g286849_
        (let ((_g286848_ (let () (declare (not safe)) (##length _g286849_))))
          (cond ((let () (declare (not safe)) (##fx= _g286848_ 1))
                 (apply (lambda (_srcpath282664_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath282664_)))
                        _g286849_))
                ((let () (declare (not safe)) (##fx= _g286848_ 2))
                 (apply (lambda (_srcpath282668_ _opts282669_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath282668_
                             _opts282669_)))
                        _g286849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g286849_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath282621_ _opts282622_)
        (if (let () (declare (not safe)) (string? _srcpath282621_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath282621_)))
        (let ((_outdir282624_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts282622_)))
              (_invoke-gsc?282625_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts282622_)))
              (_gsc-options282626_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts282622_)))
              (_keep-scm?282627_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts282622_)))
              (_verbosity282628_
               (let () (declare (not safe)) (pgetq 'verbose: _opts282622_)))
              (_debug282629_
               (let () (declare (not safe)) (pgetq 'debug: _opts282622_))))
          (if _outdir282624_
              (let ((__tmp286850
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir282624_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp286850))
              '#!void)
          (let ((__tmp286854
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath282621_))
                   (let ((__tmp286855
                          (let ((__tmp286856
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath282621_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp286856))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp286855
                      _opts282622_))))
                (__tmp286853
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp286851
                 (let ((__tmp286852
                        (let ()
                          (declare (not safe))
                          (cons _srcpath282621_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp286852))))
            (declare (not safe))
            (call-with-parameters
             __tmp286854
             gxc#current-compile-output-dir
             _outdir282624_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?282625_
             gxc#current-compile-gsc-options
             _gsc-options282626_
             gxc#current-compile-keep-scm
             _keep-scm?282627_
             gxc#current-compile-verbose
             _verbosity282628_
             gxc#current-compile-debug
             _debug282629_
             gxc#current-compile-timestamp
             __tmp286853
             gxc#current-compile-context
             __tmp286851
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath282637_)
        (let ((_opts282639_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath282637_ _opts282639_))))
    (define gxc#compile-exe
      (lambda _g286858_
        (let ((_g286857_ (let () (declare (not safe)) (##length _g286858_))))
          (cond ((let () (declare (not safe)) (##fx= _g286857_ 1))
                 (apply (lambda (_srcpath282637_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath282637_)))
                        _g286858_))
                ((let () (declare (not safe)) (##fx= _g286857_ 2))
                 (apply (lambda (_srcpath282641_ _opts282642_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath282641_ _opts282642_)))
                        _g286858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g286858_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx282617_ _opts282618_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts282618_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx282617_
               _opts282618_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx282617_
               _opts282618_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx282500_ _opts282501_)
        (letrec ((_generate-stub282503_
                  (lambda (_builtin-modules282613_)
                    (let ((_mod-main282615_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx282500_ 'main))))
                      (write (let ((__tmp286859
                                    (let ((__tmp286860
                                           (let ((__tmp286861
                                                  (let ((__tmp286862
                                                         (let ((__tmp286864
                                                                (let ((__tmp286865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules282613_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp286865)))
                       (__tmp286863
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp286864 __tmp286863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp286862))))
                                             (declare (not safe))
                                             (cons __tmp286861 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp286860))))
                               (declare (not safe))
                               (cons 'define __tmp286859)))
                      (write (let ((__tmp286866
                                    (let ((__tmp286905
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp286867
                                           (let ((__tmp286868
                                                  (let ((__tmp286869
                                                         (let ((__tmp286893
                                                                (let ((__tmp286894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp286895
                                      (let ((__tmp286903
                                             (let ((__tmp286904
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp286904)))
                                            (__tmp286896
                                             (let ((__tmp286897
                                                    (let ((__tmp286898
                                                           (let ((__tmp286899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp286900
                                 (let ((__tmp286901
                                        (let ((__tmp286902
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp286902 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp286901))))
                            (declare (not safe))
                            (cons __tmp286900 '()))))
                     (declare (not safe))
                     (cons _mod-main282615_ __tmp286899))))
              (declare (not safe))
              (cons 'apply __tmp286898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp286897 '()))))
                                        (declare (not safe))
                                        (cons __tmp286903 __tmp286896))))
                                 (declare (not safe))
                                 (cons '() __tmp286895))))
                          (declare (not safe))
                          (cons 'lambda __tmp286894)))
                       (__tmp286870
                        (let ((__tmp286871
                               (let ((__tmp286872
                                      (let ((__tmp286873
                                             (let ((__tmp286884
                                                    (let ((__tmp286885
                                                           (let ((__tmp286886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp286887
                                 (let ((__tmp286888
                                        (let ((__tmp286889
                                               (let ((__tmp286890
                                                      (let ((__tmp286891
                                                             (let ((__tmp286892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp286892 '()))))
                (declare (not safe))
                (cons 'force-output __tmp286891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp286890 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp286889))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp286888))))
                            (declare (not safe))
                            (cons __tmp286887 '()))))
                     (declare (not safe))
                     (cons 'void __tmp286886))))
              (declare (not safe))
              (cons 'with-catch __tmp286885)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp286874
                                                    (let ((__tmp286875
                                                           (let ((__tmp286876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp286877
                                 (let ((__tmp286878
                                        (let ((__tmp286879
                                               (let ((__tmp286880
                                                      (let ((__tmp286881
                                                             (let ((__tmp286882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp286883
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp286883 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp286882))))
                (declare (not safe))
                (cons __tmp286881 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp286880))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp286879))))
                                   (declare (not safe))
                                   (cons __tmp286878 '()))))
                            (declare (not safe))
                            (cons 'void __tmp286877))))
                     (declare (not safe))
                     (cons 'with-catch __tmp286876))))
              (declare (not safe))
              (cons __tmp286875 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp286884
                                                     __tmp286874))))
                                        (declare (not safe))
                                        (cons '() __tmp286873))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp286872))))
                          (declare (not safe))
                          (cons __tmp286871 '()))))
                   (declare (not safe))
                   (cons __tmp286893 __tmp286870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp286869))))
                                             (declare (not safe))
                                             (cons __tmp286868 '()))))
                                      (declare (not safe))
                                      (cons __tmp286905 __tmp286867))))
                               (declare (not safe))
                               (cons 'define __tmp286866)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts282504_
                  (lambda (_libgerbil282611_)
                    (call-with-input-file
                     (string-append _libgerbil282611_ '".ldd")
                     read)))
                 (_replace-extension282505_
                  (lambda (_path282608_ _ext282609_)
                    (string-append
                     (path-strip-extension _path282608_)
                     _ext282609_)))
                 (_not-exclude-module?282506_
                  (lambda (_ctx282604_)
                    (let ((_id-str282606_
                           (symbol->string
                            (##structure-ref
                             _ctx282604_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp286906
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str282606_))))
                            (declare (not safe))
                            (not __tmp286906))
                          (let ((__tmp286907
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str282606_))))
                            (declare (not safe))
                            (not __tmp286907))
                          '#f))))
                 (_not-file-empty?282507_
                  (lambda (_path282602_)
                    (let ((__tmp286908
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path282602_))))
                      (declare (not safe))
                      (not __tmp286908))))
                 (_compile-stub282508_
                  (lambda (_output-scm282515_ _output-bin282516_)
                    (let* ((_gerbil-home282518_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir282520_
                            (path-expand '"lib" _gerbil-home282518_))
                           (_gerbil-staticdir282522_
                            (path-expand '"static" _gerbil-libdir282520_))
                           (_gxlink282524_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir282520_))
                           (_tmp282526_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path282530_
                            (lambda (_f282528_)
                              (path-expand
                               (path-strip-directory _f282528_)
                               _tmp282526_)))
                           (_deps282532_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx282500_)))
                           (_deps282534_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?282506_
                                      _deps282532_)))
                           (_src-deps-scm282536_
                            (map gxc#find-static-module-file _deps282534_))
                           (_src-deps-scm282538_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?282507_
                                      _src-deps-scm282536_)))
                           (_src-deps-scm282540_
                            (map path-expand _src-deps-scm282538_))
                           (_deps-scm282542_
                            (map _tmp-path282530_ _src-deps-scm282540_))
                           (_deps-c282548_
                            (map (lambda (_g282543282545_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension282505_
                                      _g282543282545_
                                      '".c")))
                                 _deps-scm282542_))
                           (_deps-o282554_
                            (map (lambda (_g282549282551_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension282505_
                                      _g282549282551_
                                      '".o")))
                                 _deps-scm282542_))
                           (_src-bin-scm282556_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx282500_)))
                           (_src-bin-scm282558_
                            (path-expand _src-bin-scm282556_))
                           (_bin-scm282560_
                            (let ()
                              (declare (not safe))
                              (_tmp-path282530_ _src-bin-scm282558_)))
                           (_bin-c282562_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282505_
                               _bin-scm282560_
                               '".c")))
                           (_bin-o282564_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282505_
                               _bin-scm282560_
                               '".o")))
                           (_output-bin282566_
                            (path-expand _output-bin282516_))
                           (_output-scm282568_
                            (path-expand _output-scm282515_))
                           (_output-c282570_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282505_
                               _output-scm282568_
                               '".c")))
                           (_output-o282572_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282505_
                               _output-scm282568_
                               '".o")))
                           (_output_-c282574_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282505_
                               _output-scm282568_
                               '"_.c")))
                           (_output_-o282576_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282505_
                               _output-scm282568_
                               '"_.o")))
                           (_gsc-link-opts282578_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts282580_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts282582_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir282522_)))
                           (_output-ld-opts282584_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a282586_
                            (path-expand '"libgerbil.a" _gerbil-libdir282520_))
                           (_libgerbil.so282588_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir282520_))
                           (_libgerbil-ld-opts282590_
                            (if (file-exists? _libgerbil.so282588_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts282504_
                                   _libgerbil.so282588_))
                                (if (file-exists? _libgerbil.a282586_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts282504_
                                       _libgerbil.a282586_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a282586_
                                       _libgerbil.so282588_)))))
                           (_rpath282592_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir282520_)))
                           (_builtin-modules282596_
                            (map (lambda (_mod282594_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod282594_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx282500_ _deps282534_)))))
                      (let ((__tmp286909
                             (lambda ()
                               (let ((__tmp286910
                                      (path-directory _output-bin282566_)))
                                 (declare (not safe))
                                 (create-directory* __tmp286910)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp286909))
                      (let ((__tmp286911
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub282503_
                                  _builtin-modules282596_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm282568_
                         __tmp286911))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp286912
                                   (lambda () (create-directory _tmp282526_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp286912))
                            (for-each
                             copy-file
                             _src-deps-scm282540_
                             _deps-scm282542_)
                            (copy-file _src-bin-scm282558_ _bin-scm282560_)
                            (let ((__tmp286920
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp286913
                                   (let ((__tmp286914
                                          (let ((__tmp286915
                                                 (let ((__tmp286916
                                                        (let ((__tmp286917
                                                               (let ((__tmp286918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp286919
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm282568_ '()))))
                                (declare (not safe))
                                (cons _bin-scm282560_ __tmp286919))))
                         (declare (not safe))
                         (foldr1 cons __tmp286918 _deps-scm282542_))))
                  (declare (not safe))
                  (foldr1 cons __tmp286917 _gsc-link-opts282578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink282524_
                                                         __tmp286916))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp286915))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp286914))))
                              (declare (not safe))
                              (gxc#invoke __tmp286920 __tmp286913))
                            (let ((__tmp286928
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp286921
                                   (let ((__tmp286922
                                          (let ((__tmp286923
                                                 (let ((__tmp286924
                                                        (let ((__tmp286925
                                                               (let ((__tmp286926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp286927
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c282574_ '()))))
                                (declare (not safe))
                                (cons _output-c282570_ __tmp286927))))
                         (declare (not safe))
                         (cons _bin-c282562_ __tmp286926))))
                  (declare (not safe))
                  (foldr1 cons __tmp286925 _deps-c282548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp286924
                                                           _gsc-static-opts282582_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp286923
                                                    _gsc-cc-opts282580_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp286922))))
                              (declare (not safe))
                              (gxc#invoke __tmp286928 __tmp286921))
                            (let ((__tmp286941
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp286929
                                   (let ((__tmp286930
                                          (let ((__tmp286931
                                                 (let ((__tmp286932
                                                        (let ((__tmp286933
                                                               (let ((__tmp286934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp286935
                                     (let ((__tmp286936
                                            (let ((__tmp286937
                                                   (let ((__tmp286938
                                                          (let ((__tmp286939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp286940
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts282590_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp286940))))
                    (declare (not safe))
                    (cons _gerbil-libdir282520_ __tmp286939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp286938))))
                                              (declare (not safe))
                                              (cons _rpath282592_
                                                    __tmp286937))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp286936
                                               _output-ld-opts282584_))))
                                (declare (not safe))
                                (cons _output_-o282576_ __tmp286935))))
                         (declare (not safe))
                         (cons _output-o282572_ __tmp286934))))
                  (declare (not safe))
                  (cons _bin-o282564_ __tmp286933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp286932
                                                           _deps-o282554_))))
                                            (declare (not safe))
                                            (cons _output-bin282566_
                                                  __tmp286931))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp286930))))
                              (declare (not safe))
                              (gxc#invoke __tmp286941 __tmp286929))
                            (for-each
                             delete-file
                             (let ((__tmp286942
                                    (let ((__tmp286943
                                           (let ((__tmp286944
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o282576_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o282572_
                                                   __tmp286944))))
                                      (declare (not safe))
                                      (cons _output_-c282574_ __tmp286943))))
                               (declare (not safe))
                               (cons _output-c282570_ __tmp286942)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp282526_)))
                          '#!void)))))
          (let* ((_output-bin282510_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx282500_ _opts282501_)))
                 (_output-scm282512_
                  (string-append _output-bin282510_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub282508_ _output-scm282512_ _output-bin282510_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm282512_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx282325_ _opts282326_)
        (letrec ((_reset-declare282328_
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
                 (_generate-stub282329_
                  (lambda (_deps282491_)
                    (let ((_mod-main282493_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx282325_ 'main)))
                          (_reset-decl282494_
                           (let ()
                             (declare (not safe))
                             (_reset-declare282328_)))
                          (_user-decl282495_
                           (let ()
                             (declare (not safe))
                             (_user-declare282330_))))
                      (for-each
                       (lambda (_dep282497_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl282494_)
                         (newline)
                         (if _user-decl282495_
                             (begin (write _user-decl282495_) (newline))
                             '#!void)
                         (write (let ((__tmp286945
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep282497_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp286945)))
                         (newline))
                       _deps282491_)
                      (write (let ((__tmp286946
                                    (let ((__tmp286959
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp286947
                                           (let ((__tmp286955
                                                  (let ((__tmp286956
                                                         (let ((__tmp286957
                                                                (let ((__tmp286958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp286958))))
                   (declare (not safe))
                   (cons __tmp286957 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp286956)))
                                                 (__tmp286948
                                                  (let ((__tmp286949
                                                         (let ((__tmp286950
                                                                (let ((__tmp286951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp286952
                                      (let ((__tmp286953
                                             (let ((__tmp286954
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp286954 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp286953))))
                                 (declare (not safe))
                                 (cons __tmp286952 '()))))
                          (declare (not safe))
                          (cons _mod-main282493_ __tmp286951))))
                   (declare (not safe))
                   (cons 'apply __tmp286950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp286949 '()))))
                                             (declare (not safe))
                                             (cons __tmp286955 __tmp286948))))
                                      (declare (not safe))
                                      (cons __tmp286959 __tmp286947))))
                               (declare (not safe))
                               (cons 'define __tmp286946)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare282330_
                  (lambda ()
                    (let* ((_gsc-opts282396_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts282326_)))
                           (_gsc-prelude282398_
                            (if _gsc-opts282396_
                                (member '"-prelude" _gsc-opts282396_)
                                '#f))
                           (_gsc-prelude282400_
                            (if _gsc-prelude282398_
                                (read (open-input-string
                                       (cadr _gsc-prelude282398_)))
                                '#f)))
                      (let _lp282403_ ((_rest282405_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude282400_ '())))
                                       (_user-decls282406_ '()))
                        (let* ((_rest282407282415_ _rest282405_)
                               (_else282409282423_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls282406_))
                                      '#f
                                      (let ((__tmp286960
                                             (reverse _user-decls282406_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp286960)))))
                               (_K282411282479_
                                (lambda (_rest282426_ _expr282427_)
                                  (let* ((_expr282428282440_ _expr282427_)
                                         (_else282431282448_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp282403_
                                               _rest282426_
                                               _user-decls282406_)))))
                                    (let ((_K282436282469_
                                           (lambda (_decls282467_)
                                             (let ((__tmp286961
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls282406_
                                                              _decls282467_))))
                                               (declare (not safe))
                                               (_lp282403_
                                                _rest282426_
                                                __tmp286961))))
                                          (_K282433282454_
                                           (lambda (_exprs282452_)
                                             (let ((__tmp286962
                                                    (append _exprs282452_
                                                            _rest282426_)))
                                               (declare (not safe))
                                               (_lp282403_
                                                __tmp286962
                                                _user-decls282406_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr282428282440_))
                                          (let ((_tl282438282474_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr282428282440_)))
                                                (_hd282437282472_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr282428282440_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd282437282472_
                                                         'declare))
                                                (let ((_decls282477_
                                                       _tl282438282474_))
                                                  (declare (not safe))
                                                  (_K282436282469_
                                                   _decls282477_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd282437282472_
                                                             'begin))
                                                    (let ((_exprs282462_
                                                           _tl282438282474_))
                                                      (declare (not safe))
                                                      (_K282433282454_
                                                       _exprs282462_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else282431282448_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else282431282448_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest282407282415_))
                              (let ((_hd282412282482_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest282407282415_)))
                                    (_tl282413282484_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest282407282415_))))
                                (let* ((_expr282487_ _hd282412282482_)
                                       (_rest282489_ _tl282413282484_))
                                  (declare (not safe))
                                  (_K282411282479_ _rest282489_ _expr282487_)))
                              (let ()
                                (declare (not safe))
                                (_else282409282423_))))))))
                 (_compile-stub282331_
                  (lambda (_output-scm282338_ _output-bin282339_)
                    (let* ((_gerbil-home282341_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir282343_
                            (path-expand '"lib" _gerbil-home282341_))
                           (_runtime282345_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp282347_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home282341_))
                           (_include-gambit-sharp282349_
                            (string-append
                             '"(include \""
                             _gambit-sharp282347_
                             '"\")"))
                           (_bin-scm282351_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx282325_)))
                           (_deps282353_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx282325_)))
                           (_deps282355_
                            (map gxc#find-static-module-file _deps282353_))
                           (_deps282360_
                            (let ((__tmp286963
                                   (lambda (_$obj282357_)
                                     (let ((__tmp286964
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj282357_))))
                                       (declare (not safe))
                                       (not __tmp286964)))))
                              (declare (not safe))
                              (filter __tmp286963 _deps282355_)))
                           (_deps282364_
                            (let ((__tmp286965
                                   (lambda (_f282362_)
                                     (let ((__tmp286966
                                            (member _f282362_
                                                    _runtime282345_)))
                                       (declare (not safe))
                                       (not __tmp286966)))))
                              (declare (not safe))
                              (filter __tmp286965 _deps282360_)))
                           (_output-base282366_
                            (string-append
                             (path-strip-extension _output-scm282338_)))
                           (_output-c282368_
                            (string-append _output-base282366_ '".c"))
                           (_output-o282370_
                            (string-append _output-base282366_ '".o"))
                           (_output-c_282372_
                            (string-append _output-base282366_ '"_.c"))
                           (_output-o_282374_
                            (string-append _output-base282366_ '"_.o"))
                           (_gsc-link-opts282376_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts282378_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts282380_
                            (let ((__tmp286967
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir282343_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp286967)))
                           (_output-ld-opts282382_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros282384_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp286968
                                       (let ((__tmp286969
                                              (let ((__tmp286970
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp282349_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp286970))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp286969))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp286968))
                                (let ((__tmp286971
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp282349_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp286971))))
                           (_gsc-link-opts282386_
                            (append _gsc-link-opts282376_
                                    _gsc-gx-macros282384_))
                           (_rpath282388_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir282343_)))
                           (_default-ld-options282390_
                            (let ((__tmp286972
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp286972))))
                      (let ((__tmp286973
                             (lambda ()
                               (let ((__tmp286974
                                      (path-directory _output-bin282339_)))
                                 (declare (not safe))
                                 (create-directory* __tmp286974)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp286973))
                      (let ((__tmp286975
                             (lambda ()
                               (let ((__tmp286976
                                      (let ((__tmp286977
                                             (let ((__tmp286978
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm282351_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp286978
                                                       _deps282364_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp286977
                                                _runtime282345_))))
                                 (declare (not safe))
                                 (_generate-stub282329_ __tmp286976)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm282338_
                         __tmp286975))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp286984
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp286979
                                   (let ((__tmp286980
                                          (let ((__tmp286981
                                                 (let ((__tmp286982
                                                        (let ((__tmp286983
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm282338_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp286983 _gsc-link-opts282386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_282372_
                                                         __tmp286982))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp286981))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp286980))))
                              (declare (not safe))
                              (gxc#invoke __tmp286984 __tmp286979))
                            (let ((__tmp286990
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp286985
                                   (let ((__tmp286986
                                          (let ((__tmp286987
                                                 (let ((__tmp286988
                                                        (let ((__tmp286989
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_282372_ '()))))
                  (declare (not safe))
                  (cons _output-c282368_ __tmp286989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp286988
                                                           _gsc-static-opts282380_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp286987
                                                    _gsc-cc-opts282378_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp286986))))
                              (declare (not safe))
                              (gxc#invoke __tmp286990 __tmp286985))
                            (let ((__tmp287000
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp286991
                                   (let ((__tmp286992
                                          (let ((__tmp286993
                                                 (let ((__tmp286994
                                                        (let ((__tmp286995
                                                               (let ((__tmp286996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp286997
                                     (let ((__tmp286998
                                            (let ((__tmp286999
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options282390_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir282343_
                                                    __tmp286999))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp286998))))
                                (declare (not safe))
                                (cons _rpath282388_ __tmp286997))))
                         (declare (not safe))
                         (foldr1 cons __tmp286996 _output-ld-opts282382_))))
                  (declare (not safe))
                  (cons _output-o_282374_ __tmp286995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o282370_
                                                         __tmp286994))))
                                            (declare (not safe))
                                            (cons _output-bin282339_
                                                  __tmp286993))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp286992))))
                              (declare (not safe))
                              (gxc#invoke __tmp287000 __tmp286991)))
                          '#!void)))))
          (let* ((_output-bin282333_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx282325_ _opts282326_)))
                 (_output-scm282335_
                  (string-append _output-bin282333_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub282331_ _output-scm282335_ _output-bin282333_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm282335_))))))
    (define gxc#find-export-binding
      (lambda (_ctx282275_ _id282276_)
        (let ((_$e282322_
               (let ((__tmp287002
                      (lambda (_e282277282279_)
                        (let* ((_g282281282291_ _e282277282279_)
                               (_else282283282299_ (lambda () '#f))
                               (_K282285282303_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g282281282291_
                                 'gx#module-export::t))
                              (let* ((_e282286282306_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282281282291_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e282287282309_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282281282291_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e282288282312_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282281282291_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e282288282312_ '0))
                                    (let ((_e282289282315_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g282281282291_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g282317282319_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g282317282319_
                                                    _id282276_)))
                                           _e282289282315_)
                                          (let ()
                                            (declare (not safe))
                                            (_K282285282303_))
                                          (let ()
                                            (declare (not safe))
                                            (_else282283282299_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else282283282299_))))
                              (let ()
                                (declare (not safe))
                                (_else282283282299_))))))
                     (__tmp287001
                      (##structure-ref
                       _ctx282275_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp287002 __tmp287001))))
          (if _$e282322_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e282322_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx282267_ _id282268_)
        (let ((_$e282270_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx282267_ _id282268_))))
          (if _$e282270_
              ((lambda (_bind282273_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind282273_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id282268_)))
                 (##structure-ref _bind282273_ '1 gx#binding::t '#f))
               _$e282270_)
              (let ((__tmp287003
                     (##structure-ref
                      _ctx282267_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp287003
                 _id282268_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx282154_)
        (letrec* ((_ht282156_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template282157_
                   (lambda (_in282219_ _phi282220_)
                     (let ((_iphi282222_
                            (fx+ _phi282220_
                                 (##direct-structure-ref
                                  _in282219_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports282223_
                            (##structure-ref
                             (##direct-structure-ref
                              _in282219_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp282225_ ((_rest282227_ _imports282223_)
                                        (_r282228_ '()))
                         (let* ((_rest282229282237_ _rest282227_)
                                (_else282231282245_ (lambda () _r282228_))
                                (_K282233282255_
                                 (lambda (_rest282248_ _in282249_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in282249_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi282222_))
                                           (let ((__tmp287004
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in282249_
                                                          _r282228_))))
                                             (declare (not safe))
                                             (_lp282225_
                                              _rest282248_
                                              __tmp287004))
                                           (let ()
                                             (declare (not safe))
                                             (_lp282225_
                                              _rest282248_
                                              _r282228_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in282249_
                                              'gx#module-import::t))
                                           (let ((_iphi282251_
                                                  (fx+ _phi282220_
                                                       (##direct-structure-ref
                                                        _in282249_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi282251_))
                                                 (let ((__tmp287005
                                                        (let ((__tmp287006
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in282249_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp287006 _r282228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp282225_
                                                    _rest282248_
                                                    __tmp287005))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp282225_
                                                    _rest282248_
                                                    _r282228_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in282249_
                                                  'gx#import-set::t))
                                               (let ((_xphi282253_
                                                      (fx+ _iphi282222_
                                                           (##direct-structure-ref
                                                            _in282249_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi282253_))
                                                     (let ((__tmp287007
                                                            (let ((__tmp287008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in282249_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp287008 _r282228_))))
               (declare (not safe))
               (_lp282225_ _rest282248_ __tmp287007))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi282253_)
                                                         (let ((__tmp287009
                                                                (let ((__tmp287010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template282157_
                                  _in282249_
                                  _iphi282222_))))
                          (declare (not safe))
                          (foldl1 cons _r282228_ __tmp287010))))
                   (declare (not safe))
                   (_lp282225_ _rest282248_ __tmp287009))
                 (let ()
                   (declare (not safe))
                   (_lp282225_ _rest282248_ _r282228_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp282225_
                                                  _rest282248_
                                                  _r282228_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest282229282237_))
                               (let ((_hd282234282258_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest282229282237_)))
                                     (_tl282235282260_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest282229282237_))))
                                 (let* ((_in282263_ _hd282234282258_)
                                        (_rest282265_ _tl282235282260_))
                                   (declare (not safe))
                                   (_K282233282255_ _rest282265_ _in282263_)))
                               (let ()
                                 (declare (not safe))
                                 (_else282231282245_))))))))
                  (_find-deps282158_
                   (lambda (_rest282165_ _deps282166_)
                     (let* ((_rest282167282175_ _rest282165_)
                            (_else282169282183_ (lambda () _deps282166_))
                            (_K282171282207_
                             (lambda (_rest282186_ _hd282187_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd282187_
                                      'gx#module-context::t))
                                   (let ((_id282189_
                                          (##structure-ref
                                           _hd282187_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports282190_
                                          (##structure-ref
                                           _hd282187_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht282156_ _id282189_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps282158_
                                            _rest282186_
                                            _deps282166_))
                                         (let ((_$e282192_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd282187_))))
                                           (if _$e282192_
                                               ((lambda (_pre282195_)
                                                  (let ((_xdeps282197_
                                                         (let ((__tmp287011
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre282195_ _imports282190_))))
                   (declare (not safe))
                   (_find-deps282158_ __tmp287011 _deps282166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht282156_
                                                       _id282189_
                                                       _hd282187_))
                                                    (let ((__tmp287012
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd282187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps282197_))))
              (declare (not safe))
              (_find-deps282158_ _rest282186_ __tmp287012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e282192_)
                                               (let ((_xdeps282199_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps282158_
                                                         _imports282190_
                                                         _deps282166_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht282156_
                                                    _id282189_
                                                    _hd282187_))
                                                 (let ((__tmp287013
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd282187_
                                                                _xdeps282199_))))
                                                   (declare (not safe))
                                                   (_find-deps282158_
                                                    _rest282186_
                                                    __tmp287013)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd282187_
                                          'gx#prelude-context::t))
                                       (let ((_id282201_
                                              (##structure-ref
                                               _hd282187_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht282156_
                                                _id282201_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps282158_
                                                _rest282186_
                                                _deps282166_))
                                             (let ((_xdeps282203_
                                                    (let ((__tmp287014
                                                           (##structure-ref
                                                            _hd282187_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps282158_
                                                       __tmp287014
                                                       _deps282166_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht282156_
                                                      _id282201_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps282158_
                                                      _rest282186_
                                                      _xdeps282203_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht282156_
                                                        _id282201_
                                                        _hd282187_))
                                                     (let ((__tmp287015
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd282187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps282203_))))
               (declare (not safe))
               (_find-deps282158_ _rest282186_ __tmp287015)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd282187_
                                              'gx#module-import::t))
                                           (if (let ((__tmp287016
                                                      (##direct-structure-ref
                                                       _hd282187_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp287016))
                                               (let ((__tmp287017
                                                      (let ((__tmp287018
                                                             (##direct-structure-ref
                                                              _hd282187_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp287018
                                                              _rest282186_))))
                                                 (declare (not safe))
                                                 (_find-deps282158_
                                                  __tmp287017
                                                  _deps282166_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps282158_
                                                  _rest282186_
                                                  _deps282166_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd282187_
                                                  'gx#module-export::t))
                                               (let ((__tmp287019
                                                      (let ((__tmp287020
                                                             (##direct-structure-ref
                                                              _hd282187_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp287020
                                                              _rest282186_))))
                                                 (declare (not safe))
                                                 (_find-deps282158_
                                                  __tmp287019
                                                  _deps282166_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd282187_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp287021
                                                              (##direct-structure-ref
                                                               _hd282187_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp287021))
                                                       (let ((__tmp287022
                                                              (let ((__tmp287023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd282187_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp287023 _rest282186_))))
                 (declare (not safe))
                 (_find-deps282158_ __tmp287022 _deps282166_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd282187_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps282205_
                           (let ()
                             (declare (not safe))
                             (_import-set-template282157_ _hd282187_ '0)))
                          (__tmp287024
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest282186_ _xdeps282205_))))
                     (declare (not safe))
                     (_find-deps282158_ __tmp287024 _deps282166_))
                   (let ()
                     (declare (not safe))
                     (_find-deps282158_ _rest282186_ _deps282166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd282187_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest282167282175_))
                           (let ((_hd282172282210_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest282167282175_)))
                                 (_tl282173282212_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest282167282175_))))
                             (let* ((_hd282215_ _hd282172282210_)
                                    (_rest282217_ _tl282173282212_))
                               (declare (not safe))
                               (_K282171282207_ _rest282217_ _hd282215_)))
                           (let ()
                             (declare (not safe))
                             (_else282169282183_)))))))
          (reverse (let ((__tmp287025
                          (let ((__tmp287026
                                 (let ((_$e282160_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx282154_))))
                                   (if _$e282160_
                                       ((lambda (_pre282163_)
                                          (let ((__tmp287027
                                                 (##structure-ref
                                                  _ctx282154_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre282163_ __tmp287027)))
                                        _$e282160_)
                                       (##structure-ref
                                        _ctx282154_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps282158_ __tmp287026 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp287025))))))
    (define gxc#find-static-module-file
      (lambda (_ctx282085_)
        (let* ((_context-id282087_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx282085_
                       'gx#module-context::t))
                    (##structure-ref _ctx282085_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx282085_)))
               (_scm282089_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id282087_))
                 '".scm"))
               (_dirs282091_ (gx#current-expander-module-library-path))
               (_dirs282097_
                (let ((_user-libpath282093_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath282093_
                      (let ((_user-libpath282095_
                             (path-expand '"lib" _user-libpath282093_)))
                        (if (member _user-libpath282095_ _dirs282091_)
                            _dirs282091_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath282095_ _dirs282091_))))
                      _dirs282091_)))
               (_dirs282106_
                (let ((_$e282099_ (gxc#current-compile-output-dir)))
                  (if _$e282099_
                      ((lambda (_g282101282103_)
                         (let ()
                           (declare (not safe))
                           (cons _g282101282103_ _dirs282097_)))
                       _$e282099_)
                      _dirs282097_)))
               (_dirs282112_
                (map (lambda (_g282107282109_)
                       (path-expand '"static" _g282107282109_))
                     _dirs282106_)))
          (let _lp282115_ ((_rest282117_ _dirs282112_))
            (let* ((_rest282118282126_ _rest282117_)
                   (_else282120282134_
                    (lambda ()
                      (let ((__tmp287028
                             (##structure-ref
                              _ctx282085_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp287028
                         _scm282089_))))
                   (_K282122282142_
                    (lambda (_rest282137_ _dir282138_)
                      (let ((_path282140_
                             (path-expand _scm282089_ _dir282138_)))
                        (if (file-exists? _path282140_)
                            _path282140_
                            (let ()
                              (declare (not safe))
                              (_lp282115_ _rest282137_)))))))
              (if (let () (declare (not safe)) (##pair? _rest282118282126_))
                  (let ((_hd282123282145_
                         (let ()
                           (declare (not safe))
                           (##car _rest282118282126_)))
                        (_tl282124282147_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282118282126_))))
                    (let* ((_dir282150_ _hd282123282145_)
                           (_rest282152_ _tl282124282147_))
                      (declare (not safe))
                      (_K282122282142_ _rest282152_ _dir282150_)))
                  (let () (declare (not safe)) (_else282120282134_))))))))
    (define gxc#file-empty?
      (lambda (_path282083_)
        (let ((__tmp287029 (file-info-size (file-info _path282083_ '#t))))
          (declare (not safe))
          (zero? __tmp287029))))
    (define gxc#compile-top-module
      (lambda (_ctx282072_)
        (let ((__tmp287033
               (lambda ()
                 (let ((__tmp287034
                        (##structure-ref
                         _ctx282072_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp287034))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp287035
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx282072_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp287035))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx282072_))
                 (if (let ((__tmp287036
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx282072_))))
                       (declare (not safe))
                       (null? __tmp287036))
                     (let* ((_thr1282077_
                             (let ((__tmp287037
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx282072_)))))
                               (declare (not safe))
                               (spawn __tmp287037)))
                            (_thr2282080_
                             (let ((__tmp287038
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx282072_)))))
                               (declare (not safe))
                               (spawn __tmp287038))))
                       (let () (declare (not safe)) (gxc#join! _thr1282077_))
                       (let () (declare (not safe)) (gxc#join! _thr2282080_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx282072_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx282072_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx282072_))
                     '#!void)))
              (__tmp287032
               (let ((__obj286837
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj286837)
                 __obj286837))
              (__tmp287031 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp287030 (make-hash-table)))
          (declare (not safe))
          (call-with-parameters
           __tmp287033
           gx#current-expander-context
           _ctx282072_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp287032
           gxc#current-compile-runtime-sections
           __tmp287031
           gxc#current-compile-runtime-names
           __tmp287030))))
    (define gxc#collect-bindings
      (lambda (_ctx282070_)
        (let ((__tmp287039
               (##structure-ref _ctx282070_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp287039))))
    (define gxc#compile-runtime-code
      (lambda (_ctx282016_)
        (letrec ((_compile1282018_
                  (lambda (_ctx282059_)
                    (let* ((_code282061_
                            (##structure-ref
                             _ctx282059_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt282065_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code282061_))
                                (let ((_idstr282063_
                                       (let ((__tmp287040
                                              (##structure-ref
                                               _ctx282059_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp287040))))
                                  (string-append _idstr282063_ '"__0"))
                                '#f)))
                      (if _rt282065_
                          (begin
                            (let ((__tmp287041
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp287041 _ctx282059_ _rt282065_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code282020_
                               _ctx282059_
                               _code282061_)))
                          (let ((_path282068_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx282059_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path282068_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code282021_
                         _ctx282059_
                         _code282061_
                         _rt282065_)))))
                 (_context-timestamp282019_
                  (lambda (_ctx282057_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx282057_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code282020_
                  (lambda (_ctx282039_ _code282040_)
                    (let* ((_lifts282042_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code282045_
                            (let ((__tmp287044
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code282040_))))
                                  (__tmp287043
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp287042
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp287044
                               gx#current-expander-context
                               _ctx282039_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts282042_
                               gxc#current-compile-marks
                               __tmp287043
                               gxc#current-compile-identifiers
                               __tmp287042)))
                           (_runtime-code282047_
                            (if (let ((__tmp287045 (unbox _lifts282042_)))
                                  (declare (not safe))
                                  (null? __tmp287045))
                                _runtime-code282045_
                                (let ((__tmp287046
                                       (let ((__tmp287048
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code282045_
                                                      '())))
                                             (__tmp287047
                                              (reverse (unbox _lifts282042_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp287048
                                                 __tmp287047))))
                                  (declare (not safe))
                                  (cons 'begin __tmp287046))))
                           (_runtime-code282049_
                            (let ((__tmp287049
                                   (let ((__tmp287051
                                          (let ((__tmp287052
                                                 (let ((__tmp287055
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp282019_
                                                           _ctx282039_)))
                                                       (__tmp287053
                                                        (let ((__tmp287054
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp287054
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp287055
                                                         __tmp287053))))
                                            (declare (not safe))
                                            (cons 'define __tmp287052)))
                                         (__tmp287050
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code282047_ '()))))
                                     (declare (not safe))
                                     (cons __tmp287051 __tmp287050))))
                              (declare (not safe))
                              (cons 'begin __tmp287049)))
                           (_scm0282051_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx282039_
                               '0
                               '".scm"))))
                      (let ((_scms282054_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx282039_))))
                        (let ((__tmp287056
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0282051_
                                    _runtime-code282049_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp287056
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms282054_)
                            (delete-file _scms282054_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0282051_
                           '" => "
                           _scms282054_))
                        (copy-file _scm0282051_ _scms282054_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0282051_))))))
                 (_generate-loader-code282021_
                  (lambda (_ctx282028_ _code282029_ _rt282030_)
                    (let* ((_loader-code282033_
                            (let ((__tmp287057
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code282029_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp287057
                               gx#current-expander-context
                               _ctx282028_)))
                           (_loader-code282035_
                            (if _rt282030_
                                (let ((__tmp287058
                                       (let ((__tmp287059
                                              (let ((__tmp287060
                                                     (let ((__tmp287061
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt282030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp287061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287060 '()))))
                                         (declare (not safe))
                                         (cons _loader-code282033_
                                               __tmp287059))))
                                  (declare (not safe))
                                  (cons 'begin __tmp287058))
                                _loader-code282033_)))
                      (let ((__tmp287062
                             (lambda ()
                               (let ((__tmp287063
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx282028_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp287063
                                  _loader-code282035_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp287062
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules282023_
                 (let ((__tmp287064
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx282016_))))
                   (declare (not safe))
                   (cons _ctx282016_ __tmp287064))))
            (for-each
             (lambda (_ctx282025_)
               (let ((__tmp287065
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1282018_ _ctx282025_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp287065
                  gxc#current-compile-decls
                  '())))
             _all-modules282023_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx281913_)
        (letrec ((_compile-ssi281915_
                  (lambda (_code281986_)
                    (let* ((_path281988_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx281913_
                               '#f
                               '".ssi")))
                           (_prelude281999_
                            (let* ((_super281990_
                                    (##structure-ref
                                     _ctx281913_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e281992_
                                    (##structure-ref
                                     _super281990_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e281992_
                                  ((lambda (_g281994281996_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g281994281996_)))
                                   _$e281992_)
                                  ':<root>)))
                           (_ns282001_
                            (##structure-ref
                             _ctx281913_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr282003_
                            (symbol->string
                             (##structure-ref
                              _ctx281913_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg282010_
                            (let ((_$e282005_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr282003_ '#\/))))
                              (if _$e282005_
                                  ((lambda (_x282008_)
                                     (string->symbol
                                      (substring _idstr282003_ '0 _x282008_)))
                                   _$e282005_)
                                  '#f)))
                           (_rt282012_
                            (let ((__tmp287066
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp287066 _ctx281913_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path281988_))
                      (let ((__tmp287067
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude281999_))
                               (if _pkg282010_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg282010_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns282001_))
                               (newline)
                               (pretty-print _code281986_)
                               (if _rt282012_
                                   (pretty-print
                                    (let ((__tmp287068
                                           (let ((__tmp287072
                                                  (let ((__tmp287073
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp287073)))
                                                 (__tmp287069
                                                  (let ((__tmp287070
                                                         (let ((__tmp287071
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt282012_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp287071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287070 '()))))
                                             (declare (not safe))
                                             (cons __tmp287072 __tmp287069))))
                                      (declare (not safe))
                                      (cons '%#call __tmp287068)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path281988_
                         __tmp287067)))))
                 (_compile-phi281916_
                  (lambda (_part281926_)
                    (let* ((_part281927281940_ _part281926_)
                           (_E281929281944_
                            (lambda ()
                              (error '"No clause matching"
                                     _part281927281940_)))
                           (_K281930281955_
                            (lambda (_code281947_
                                     _n281948_
                                     _phi281949_
                                     _phi-ctx281950_)
                              (let* ((_code281953_
                                      (let ((__tmp287074
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code281947_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp287074
                                         gx#current-expander-context
                                         _phi-ctx281950_
                                         gx#current-expander-phi
                                         _phi281949_)))
                                     (__tmp287075
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx281913_
                                         _n281948_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp287075
                                 _code281953_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part281927281940_))
                          (let ((_hd281931281958_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part281927281940_)))
                                (_tl281932281960_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part281927281940_))))
                            (let ((_phi-ctx281963_ _hd281931281958_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl281932281960_))
                                  (let ((_hd281933281965_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl281932281960_)))
                                        (_tl281934281967_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl281932281960_))))
                                    (let ((_phi281970_ _hd281933281965_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl281934281967_))
                                          (let ((_hd281935281972_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl281934281967_)))
                                                (_tl281936281974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl281934281967_))))
                                            (let ((_n281977_ _hd281935281972_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl281936281974_))
                                                  (let ((_hd281937281979_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl281936281974_)))
                                                        (_tl281938281981_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl281936281974_))))
                                                    (let ((_code281984_
                                                           _hd281937281979_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl281938281981_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K281930281955_
                                                             _code281984_
                                                             _n281977_
                                                             _phi281970_
                                                             _phi-ctx281963_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E281929281944_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E281929281944_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E281929281944_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E281929281944_)))))
                          (let () (declare (not safe)) (_E281929281944_)))))))
          (let ((_g287076_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx281913_))))
            (begin
              (let ((_g287077_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g287076_)
                           (##vector-length _g287076_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g287077_ 2)))
                    (error "Context expects 2 values" _g287077_)))
              (let ((_ssi-code281918_
                     (let () (declare (not safe)) (##vector-ref _g287076_ 0)))
                    (_phi-code281919_
                     (let () (declare (not safe)) (##vector-ref _g287076_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi281915_ _ssi-code281918_))
                  (let ((_threads281924_
                         (map (lambda (_code281921_)
                                (let ((__tmp287078
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi281916_
                                            _code281921_)))))
                                  (declare (not safe))
                                  (spawn __tmp287078)))
                              _phi-code281919_)))
                    (for-each gxc#join! _threads281924_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx281896_)
        (let* ((_path281898_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx281896_ '#f '".ssxi.ss")))
               (_code281900_
                (let ((__tmp287079
                       (##structure-ref
                        _ctx281896_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp287079)))
               (_idstr281902_
                (symbol->string
                 (##structure-ref _ctx281896_ '1 gx#expander-context::t '#f)))
               (_pkg281909_
                (let ((_$e281904_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr281902_ '#\/))))
                  (if _$e281904_
                      ((lambda (_x281907_)
                         (string->symbol
                          (substring _idstr281902_ '0 _x281907_)))
                       _$e281904_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path281898_))
          (let ((__tmp287080
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg281909_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg281909_))
                       '#!void)
                   (newline)
                   (pretty-print _code281900_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path281898_ __tmp287080)))))
    (define gxc#generate-meta-code
      (lambda (_ctx281889_)
        (let* ((_state281891_
                (let ((__obj286838
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj286838 _ctx281889_)
                  __obj286838))
               (_ssi-code281893_
                (let ((__tmp287081
                       (##structure-ref
                        _ctx281889_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp287081 _state281891_))))
          (values _ssi-code281893_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state281891_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx281882_)
        (let ((_lifts281884_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp287084
                 (lambda ()
                   (let ((_code281887_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx281882_))))
                     (if (let ((__tmp287085 (unbox _lifts281884_)))
                           (declare (not safe))
                           (null? __tmp287085))
                         _code281887_
                         (let ((__tmp287086
                                (let ((__tmp287088
                                       (let ()
                                         (declare (not safe))
                                         (cons _code281887_ '())))
                                      (__tmp287087
                                       (reverse (unbox _lifts281884_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp287088 __tmp287087))))
                           (declare (not safe))
                           (cons 'begin __tmp287086))))))
                (__tmp287083
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp287082
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp287084
             gxc#current-compile-lift
             _lifts281884_
             gxc#current-compile-marks
             __tmp287083
             gxc#current-compile-identifiers
             __tmp287082)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx281878_)
        (let ((_modules281880_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp287089
                 (##structure-ref _ctx281878_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp287089 _modules281880_))
          (reverse (unbox _modules281880_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path281861_ _code281862_ _phi?281863_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path281861_))
        (let ((__tmp287090
               (lambda ()
                 (pretty-print
                  (let ((__tmp287091
                         (let ((__tmp287098
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp287092
                                (let ((__tmp287097
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp287093
                                       (let ((__tmp287096
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp287094
                                              (let ((__tmp287095
                                                     (if _phi?281863_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp287095))))
                                         (declare (not safe))
                                         (cons __tmp287096 __tmp287094))))
                                  (declare (not safe))
                                  (cons __tmp287097 __tmp287093))))
                           (declare (not safe))
                           (cons __tmp287098 __tmp287092))))
                    (declare (not safe))
                    (cons 'declare __tmp287091)))
                 (pretty-print _code281862_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path281861_ __tmp287090))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path281861_ _phi?281863_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path281861_))))
    (define gxc#compile-scm-file__0
      (lambda (_path281869_ _code281870_)
        (let ((_phi?281872_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path281869_ _code281870_ _phi?281872_))))
    (define gxc#compile-scm-file
      (lambda _g287100_
        (let ((_g287099_ (let () (declare (not safe)) (##length _g287100_))))
          (cond ((let () (declare (not safe)) (##fx= _g287099_ 2))
                 (apply (lambda (_path281869_ _code281870_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path281869_
                             _code281870_)))
                        _g287100_))
                ((let () (declare (not safe)) (##fx= _g287099_ 3))
                 (apply (lambda (_path281874_ _code281875_ _phi?281876_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path281874_
                             _code281875_
                             _phi?281876_)))
                        _g287100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g287100_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?281762_)
        (let _lp281764_ ((_rest281766_ (gxc#current-compile-gsc-options))
                         (_opts281767_ '()))
          (let* ((_rest281768281788_ _rest281766_)
                 (_else281772281796_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?281762_))
                             (gxc#current-compile-debug))
                        (let ((__tmp287101
                               (let ((__tmp287102 (reverse _opts281767_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp287102))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp287101))
                        (reverse _opts281767_)))))
            (let ((_K281782281839_
                   (lambda (_rest281837_)
                     (let ()
                       (declare (not safe))
                       (_lp281764_ _rest281837_ _opts281767_))))
                  (_K281777281821_
                   (lambda (_rest281819_)
                     (let ()
                       (declare (not safe))
                       (_lp281764_ _rest281819_ _opts281767_))))
                  (_K281774281803_
                   (lambda (_rest281800_ _opt281801_)
                     (let ((__tmp287103
                            (let ()
                              (declare (not safe))
                              (cons _opt281801_ _opts281767_))))
                       (declare (not safe))
                       (_lp281764_ _rest281800_ __tmp287103)))))
              (if (let () (declare (not safe)) (##pair? _rest281768281788_))
                  (let ((_tl281784281844_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281768281788_)))
                        (_hd281783281842_
                         (let ()
                           (declare (not safe))
                           (##car _rest281768281788_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281783281842_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281784281844_))
                            (let* ((_tl281786281847_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl281784281844_)))
                                   (_rest281850_ _tl281786281847_))
                              (declare (not safe))
                              (_K281782281839_ _rest281850_))
                            (let ((_opt281811_ _hd281783281842_)
                                  (_rest281813_ _tl281784281844_))
                              (let ()
                                (declare (not safe))
                                (_K281774281803_ _rest281813_ _opt281811_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281783281842_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281784281844_))
                                (let* ((_tl281781281829_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl281784281844_)))
                                       (_rest281832_ _tl281781281829_))
                                  (declare (not safe))
                                  (_K281777281821_ _rest281832_))
                                (let ((_opt281811_ _hd281783281842_)
                                      (_rest281813_ _tl281784281844_))
                                  (let ()
                                    (declare (not safe))
                                    (_K281774281803_
                                     _rest281813_
                                     _opt281811_))))
                            (let ((_opt281811_ _hd281783281842_)
                                  (_rest281813_ _tl281784281844_))
                              (let ()
                                (declare (not safe))
                                (_K281774281803_ _rest281813_ _opt281811_))))))
                  (let () (declare (not safe)) (_else281772281796_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?281856_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?281856_))))
    (define gxc#gsc-link-options
      (lambda _g287105_
        (let ((_g287104_ (let () (declare (not safe)) (##length _g287105_))))
          (cond ((let () (declare (not safe)) (##fx= _g287104_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g287105_))
                ((let () (declare (not safe)) (##fx= _g287104_ 1))
                 (apply (lambda (_phi?281858_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?281858_)))
                        _g287105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g287105_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?281663_)
        (let _lp281665_ ((_rest281667_ (gxc#current-compile-gsc-options))
                         (_opts281668_ '()))
          (let* ((_rest281669281689_ _rest281667_)
                 (_else281673281697_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?281663_))
                             (gxc#current-compile-debug))
                        (let ((__tmp287106
                               (let ((__tmp287107 (reverse _opts281668_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp287107))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp287106))
                        (reverse _opts281668_)))))
            (let ((_K281683281736_
                   (lambda (_rest281733_ _opt281734_)
                     (let ((__tmp287108
                            (let ((__tmp287109
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts281668_))))
                              (declare (not safe))
                              (cons _opt281734_ __tmp287109))))
                       (declare (not safe))
                       (_lp281665_ _rest281733_ __tmp287108))))
                  (_K281678281717_
                   (lambda (_rest281715_)
                     (let ()
                       (declare (not safe))
                       (_lp281665_ _rest281715_ _opts281668_))))
                  (_K281675281703_
                   (lambda (_rest281701_)
                     (let ()
                       (declare (not safe))
                       (_lp281665_ _rest281701_ _opts281668_)))))
              (if (let () (declare (not safe)) (##pair? _rest281669281689_))
                  (let ((_tl281685281741_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281669281689_)))
                        (_hd281684281739_
                         (let ()
                           (declare (not safe))
                           (##car _rest281669281689_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281684281739_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281685281741_))
                            (let ((_tl281687281746_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl281685281741_)))
                                  (_hd281686281744_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl281685281741_))))
                              (let ((_opt281749_ _hd281686281744_)
                                    (_rest281751_ _tl281687281746_))
                                (let ()
                                  (declare (not safe))
                                  (_K281683281736_ _rest281751_ _opt281749_))))
                            (let ((_rest281709_ _tl281685281741_))
                              (declare (not safe))
                              (_K281675281703_ _rest281709_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281684281739_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281685281741_))
                                (let* ((_tl281682281725_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl281685281741_)))
                                       (_rest281728_ _tl281682281725_))
                                  (declare (not safe))
                                  (_K281678281717_ _rest281728_))
                                (let ((_rest281709_ _tl281685281741_))
                                  (declare (not safe))
                                  (_K281675281703_ _rest281709_)))
                            (let ((_rest281709_ _tl281685281741_))
                              (declare (not safe))
                              (_K281675281703_ _rest281709_)))))
                  (let () (declare (not safe)) (_else281673281697_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?281757_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?281757_))))
    (define gxc#gsc-cc-options
      (lambda _g287111_
        (let ((_g287110_ (let () (declare (not safe)) (##length _g287111_))))
          (cond ((let () (declare (not safe)) (##fx= _g287110_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g287111_))
                ((let () (declare (not safe)) (##fx= _g287110_ 1))
                 (apply (lambda (_phi?281759_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?281759_)))
                        _g287111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g287111_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir281658_)
        (let* ((_user-staticdir281660_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp287112
                (let ((__tmp287113
                       (string-append
                        '"-I "
                        _staticdir281658_
                        '" -I "
                        _user-staticdir281660_)))
                  (declare (not safe))
                  (cons __tmp287113 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp287112))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp281570_ ((_rest281572_ (gxc#current-compile-gsc-options))
                         (_opts281573_ '()))
          (let* ((_rest281574281594_ _rest281572_)
                 (_else281578281602_ (lambda () _opts281573_)))
            (let ((_K281588281645_
                   (lambda (_rest281643_)
                     (let ()
                       (declare (not safe))
                       (_lp281570_ _rest281643_ _opts281573_))))
                  (_K281583281623_
                   (lambda (_rest281620_ _opt281621_)
                     (let ((__tmp287114
                            (append _opts281573_
                                    (let ((__tmp287115
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt281621_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp287115)))))
                       (declare (not safe))
                       (_lp281570_ _rest281620_ __tmp287114))))
                  (_K281580281608_
                   (lambda (_rest281606_)
                     (let ()
                       (declare (not safe))
                       (_lp281570_ _rest281606_ _opts281573_)))))
              (if (let () (declare (not safe)) (##pair? _rest281574281594_))
                  (let ((_tl281590281650_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281574281594_)))
                        (_hd281589281648_
                         (let ()
                           (declare (not safe))
                           (##car _rest281574281594_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281589281648_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281590281650_))
                            (let* ((_tl281592281653_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl281590281650_)))
                                   (_rest281656_ _tl281592281653_))
                              (declare (not safe))
                              (_K281588281645_ _rest281656_))
                            (let ((_rest281614_ _tl281590281650_))
                              (declare (not safe))
                              (_K281580281608_ _rest281614_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281589281648_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281590281650_))
                                (let ((_tl281587281633_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl281590281650_)))
                                      (_hd281586281631_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl281590281650_))))
                                  (let ((_opt281636_ _hd281586281631_)
                                        (_rest281638_ _tl281587281633_))
                                    (let ()
                                      (declare (not safe))
                                      (_K281583281623_
                                       _rest281638_
                                       _opt281636_))))
                                (let ((_rest281614_ _tl281590281650_))
                                  (declare (not safe))
                                  (_K281580281608_ _rest281614_)))
                            (let ((_rest281614_ _tl281590281650_))
                              (declare (not safe))
                              (_K281580281608_ _rest281614_)))))
                  (let () (declare (not safe)) (_else281578281602_))))))))
    (define gxc#not-string-empty?
      (lambda (_str281567_)
        (let ((__tmp287116
               (let () (declare (not safe)) (string-empty? _str281567_))))
          (declare (not safe))
          (not __tmp287116))))
    (define gxc#gsc-compile-file
      (lambda (_path281535_ _phi?281536_)
        (letrec ((_gsc-link-path281538_
                  (lambda (_base-path281559_)
                    (let _lp281561_ ((_n281563_ '1))
                      (let ((_path281565_
                             (string-append
                              _base-path281559_
                              '".o"
                              (number->string _n281563_))))
                        (if (file-exists? _path281565_)
                            (let ((__tmp287117
                                   (let ()
                                     (declare (not safe))
                                     (+ _n281563_ '1))))
                              (declare (not safe))
                              (_lp281561_ __tmp287117))
                            _path281565_))))))
          (let* ((_base-path281540_ (path-strip-extension _path281535_))
                 (_path-c281542_ (string-append _base-path281540_ '".c"))
                 (_path-o281544_ (string-append _base-path281540_ '".o"))
                 (_link-path281546_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path281538_ _base-path281540_)))
                 (_link-path-c281548_ (string-append _link-path281546_ '".c"))
                 (_link-path-o281550_ (string-append _link-path281546_ '".o"))
                 (_gsc-link-opts281552_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?281536_)))
                 (_gsc-cc-opts281554_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?281536_)))
                 (_gcc-ld-opts281556_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp287124 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp287118
                   (let ((__tmp287119
                          (let ((__tmp287120
                                 (let ((__tmp287121
                                        (let ((__tmp287122
                                               (let ((__tmp287123
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path281535_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp287123
                                                         _gsc-link-opts281552_))))
                                          (declare (not safe))
                                          (cons _link-path-c281548_
                                                __tmp287122))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp287121))))
                            (declare (not safe))
                            (cons '"-flat" __tmp287120))))
                     (declare (not safe))
                     (cons '"-link" __tmp287119))))
              (declare (not safe))
              (gxc#invoke __tmp287124 __tmp287118 'stdout-redirection: '#t))
            (let ((__tmp287131 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp287125
                   (let ((__tmp287126
                          (let ((__tmp287127
                                 (let ((__tmp287128
                                        (let ((__tmp287129
                                               (let ((__tmp287130
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c281548_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c281542_
                                                       __tmp287130))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp287129
                                                  _gsc-cc-opts281554_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp287128))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp287127))))
                     (declare (not safe))
                     (cons '"-obj" __tmp287126))))
              (declare (not safe))
              (gxc#invoke __tmp287131 __tmp287125 'stdout-redirection: '#t))
            (let ((__tmp287137 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp287132
                   (let ((__tmp287133
                          (let ((__tmp287134
                                 (let ((__tmp287135
                                        (let ((__tmp287136
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o281550_
                                                       _gcc-ld-opts281556_))))
                                          (declare (not safe))
                                          (cons _path-o281544_ __tmp287136))))
                                   (declare (not safe))
                                   (cons _link-path281546_ __tmp287135))))
                            (declare (not safe))
                            (cons '"-o" __tmp287134))))
                     (declare (not safe))
                     (cons '"-shared" __tmp287133))))
              (declare (not safe))
              (gxc#invoke __tmp287137 __tmp287132))
            (for-each
             delete-file
             (let ((__tmp287138
                    (let ((__tmp287139
                           (let ((__tmp287140
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o281550_ '()))))
                             (declare (not safe))
                             (cons _link-path-c281548_ __tmp287140))))
                      (declare (not safe))
                      (cons _path-o281544_ __tmp287139))))
               (declare (not safe))
               (cons _path-c281542_ __tmp287138)))))))
    (define gxc#compile-output-file
      (lambda (_ctx281506_ _n281507_ _ext281508_)
        (letrec ((_module-relative-path281510_
                  (lambda (_ctx281533_)
                    (path-strip-directory
                     (let ((__tmp287141
                            (##structure-ref
                             _ctx281533_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp287141)))))
                 (_module-source-directory281511_
                  (lambda (_ctx281529_)
                    (path-directory
                     (let ((_mpath281531_
                            (##structure-ref
                             _ctx281529_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath281531_))
                           _mpath281531_
                           (let ()
                             (declare (not safe))
                             (last _mpath281531_)))))))
                 (_section-string281512_
                  (lambda (_n281527_)
                    (if (let () (declare (not safe)) (number? _n281527_))
                        (number->string _n281527_)
                        (if (let () (declare (not safe)) (symbol? _n281527_))
                            (symbol->string _n281527_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n281527_))
                                _n281527_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n281527_)))))))
                 (_file-name281513_
                  (lambda (_path281525_)
                    (if _n281507_
                        (string-append
                         _path281525_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string281512_ _n281507_))
                         _ext281508_)
                        (string-append _path281525_ _ext281508_))))
                 (_file-path281514_
                  (lambda ()
                    (let ((_$e281520_ (gxc#current-compile-output-dir)))
                      (if _$e281520_
                          ((lambda (_outdir281523_)
                             (path-expand
                              (let ((__tmp287142
                                     (let ((__tmp287143
                                            (##structure-ref
                                             _ctx281506_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp287143))))
                                (declare (not safe))
                                (_file-name281513_ __tmp287142))
                              _outdir281523_))
                           _$e281520_)
                          (path-expand
                           (let ((__tmp287144
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path281510_
                                     _ctx281506_))))
                             (declare (not safe))
                             (_file-name281513_ __tmp287144))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory281511_
                              _ctx281506_))))))))
          (let ((_path281516_
                 (let () (declare (not safe)) (_file-path281514_))))
            (let ((__tmp287145
                   (lambda ()
                     (let ((__tmp287146 (path-directory _path281516_)))
                       (declare (not safe))
                       (create-directory* __tmp287146)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp287145))
            _path281516_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx281488_)
        (letrec ((_file-name281490_
                  (lambda (_id281504_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id281504_))
                     '".scm")))
                 (_file-path281491_
                  (lambda ()
                    (let* ((_file281497_
                            (let ((__tmp287147
                                   (##structure-ref
                                    _ctx281488_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name281490_ __tmp287147)))
                           (_$e281499_ (gxc#current-compile-output-dir)))
                      (if _$e281499_
                          ((lambda (_outdir281502_)
                             (path-expand
                              _file281497_
                              (path-expand '"static" _outdir281502_)))
                           _$e281499_)
                          (path-expand _file281497_ '"static"))))))
          (let ((_path281493_
                 (let () (declare (not safe)) (_file-path281491_))))
            (let ((__tmp287148
                   (lambda ()
                     (let ((__tmp287149 (path-directory _path281493_)))
                       (declare (not safe))
                       (create-directory* __tmp287149)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp287148))
            _path281493_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx281482_ _opts281483_)
        (let ((_$e281485_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts281483_))))
          (if _$e281485_
              (values _$e281485_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx281482_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr281475_)
        (if (let () (declare (not safe)) (string? _idstr281475_))
            (let* ((_str281477_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr281475_)))
                   (_strs281479_
                    (let ()
                      (declare (not safe))
                      (string-split _str281477_ '#\/))))
              (let () (declare (not safe)) (string-join _strs281479_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr281475_))
                (let ((__tmp287150 (symbol->string _idstr281475_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp287150))
                (error '"Bad module id" _idstr281475_)))))
    (define gxc#invoke__%
      (lambda (_g287151_
               _stdout-redirection281436281440_
               _stderr-redirection281437281442_
               _program281444_
               _args281445_)
        (let* ((_stdout-redirection281447_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection281436281440_ absent-value))
                    '#f
                    _stdout-redirection281436281440_))
               (_stderr-redirection281449_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection281437281442_ absent-value))
                    '#f
                    _stderr-redirection281437281442_)))
          (let ((__tmp287152
                 (let ()
                   (declare (not safe))
                   (cons _program281444_ _args281445_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp287152))
          (let* ((_proc281451_
                  (open-process
                   (let ((__tmp287153
                          (let ((__tmp287154
                                 (let ((__tmp287155
                                        (let ((__tmp287156
                                               (let ((__tmp287157
                                                      (let ((__tmp287158
                                                             (let ((__tmp287159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection281449_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp287159))))
                (declare (not safe))
                (cons _stdout-redirection281447_ __tmp287158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp287157))))
                                          (declare (not safe))
                                          (cons _args281445_ __tmp287156))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp287155))))
                            (declare (not safe))
                            (cons _program281444_ __tmp287154))))
                     (declare (not safe))
                     (cons 'path: __tmp287153))))
                 (_output281456_
                  (if (or _stdout-redirection281447_
                          _stderr-redirection281449_)
                      (read-line _proc281451_ '#f)
                      '#f)))
            (let ((_status281459_ (process-status _proc281451_)))
              (close-port _proc281451_)
              (if (let () (declare (not safe)) (zero? _status281459_))
                  '#!void
                  (begin
                    (display _output281456_)
                    (let ((__tmp287160
                           (let ()
                             (declare (not safe))
                             (cons _program281444_ _args281445_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp287160
                       _status281459_)))))))))
    (define gxc#invoke__@
      (lambda (_keys281435281464_ . _args281466_)
        (apply gxc#invoke__%
               _keys281435281464_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys281435281464_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys281435281464_
                  'stderr-redirection:
                  absent-value))
               _args281466_)))
    (define gxc#invoke
      (lambda _args281438281472_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args281438281472_)))
    (define gxc#join!
      (lambda (_thread281429_)
        (let ((__tmp287162
               (lambda (_exn281431_)
                 (if (uncaught-exception? _exn281431_)
                     (raise (uncaught-exception-reason _exn281431_))
                     (raise _exn281431_))))
              (__tmp287161 (lambda () (thread-join! _thread281429_))))
          (declare (not safe))
          (with-catch __tmp287162 __tmp287161))))))
