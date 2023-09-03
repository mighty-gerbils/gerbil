(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1693679906)
  (begin
    (define gxc#default-gerbil-home '#f)
    (define gxc#default-gerbil-gsc '"gsc")
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
      (lambda (_path65180_ _fun65181_)
        (with-output-to-file
         (cons 'path: (cons _path65180_ gxc#scheme-file-settings))
         _fun65181_)))
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
    (define gxc#gsc-runtime-args (cons '"-:i8,f8,-8,t8" '()))
    (define gxc#delete-directory*
      (lambda (_dir65175_) (delete-file-or-directory _dir65175_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath65149_ _opts65150_)
        (if (string? _srcpath65149_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath65149_))
        (let ((_outdir65152_ (pgetq 'output-dir: _opts65150_))
              (_invoke-gsc?65153_ (pgetq 'invoke-gsc: _opts65150_))
              (_gsc-options65154_ (pgetq 'gsc-options: _opts65150_))
              (_keep-scm?65155_ (pgetq 'keep-scm: _opts65150_))
              (_verbosity65156_ (pgetq 'verbose: _opts65150_))
              (_optimize65157_ (pgetq 'optimize: _opts65150_))
              (_debug65158_ (pgetq 'debug: _opts65150_))
              (_gen-ssxi65159_ (pgetq 'generate-ssxi: _opts65150_)))
          (if _outdir65152_
              (gerbil/gambit/threads#with-lock
               gxc#+driver-mutex+
               (lambda () (create-directory* _outdir65152_)))
              '#!void)
          (if _optimize65157_
              (gerbil/gambit/threads#with-lock
               gxc#+driver-mutex+
               (lambda () (gxc#optimizer-info-init!)))
              '#!void)
          (call-with-parameters
           (lambda ()
             (gxc#verbose '"compile " _srcpath65149_)
             (gxc#compile-top-module
              (gerbil/gambit/threads#with-lock
               gxc#+driver-mutex+
               (lambda () (gx#import-module__0 _srcpath65149_)))))
           gxc#current-compile-output-dir
           _outdir65152_
           gxc#current-compile-invoke-gsc
           _invoke-gsc?65153_
           gxc#current-compile-gsc-options
           _gsc-options65154_
           gxc#current-compile-keep-scm
           _keep-scm?65155_
           gxc#current-compile-verbose
           _verbosity65156_
           gxc#current-compile-optimize
           _optimize65157_
           gxc#current-compile-debug
           _debug65158_
           gxc#current-compile-generate-ssxi
           _gen-ssxi65159_
           gxc#current-compile-timestamp
           (gxc#compile-timestamp)
           gx#current-expander-compiling?
           '#t))))
    (define gxc#compile-module__0
      (lambda (_srcpath65168_)
        (let ((_opts65170_ '()))
          (gxc#compile-module__% _srcpath65168_ _opts65170_))))
    (define gxc#compile-module
      (lambda _g65255_
        (let ((_g65254_ (let () (declare (not safe)) (##length _g65255_))))
          (cond ((let () (declare (not safe)) (##fx= _g65254_ 1))
                 (apply gxc#compile-module__0 _g65255_))
                ((let () (declare (not safe)) (##fx= _g65254_ 2))
                 (apply gxc#compile-module__% _g65255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g65255_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath65126_ _opts65127_)
        (if (string? _srcpath65126_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath65126_))
        (let ((_outdir65129_ (pgetq 'output-dir: _opts65127_))
              (_invoke-gsc?65130_ (pgetq 'invoke-gsc: _opts65127_))
              (_gsc-options65131_ (pgetq 'gsc-options: _opts65127_))
              (_keep-scm?65132_ (pgetq 'keep-scm: _opts65127_))
              (_verbosity65133_ (pgetq 'verbose: _opts65127_)))
          (if _outdir65129_
              (gerbil/gambit/threads#with-lock
               gxc#+driver-mutex+
               (lambda () (create-directory* _outdir65129_)))
              '#!void)
          (call-with-parameters
           (lambda ()
             (gxc#verbose '"compile exe " _srcpath65126_)
             (gxc#compile-executable-module
              (gerbil/gambit/threads#with-lock
               gxc#+driver-mutex+
               (lambda () (gx#import-module__0 _srcpath65126_)))
              _opts65127_))
           gxc#current-compile-output-dir
           _outdir65129_
           gxc#current-compile-invoke-gsc
           _invoke-gsc?65130_
           gxc#current-compile-gsc-options
           _gsc-options65131_
           gxc#current-compile-keep-scm
           _keep-scm?65132_
           gxc#current-compile-verbose
           _verbosity65133_
           gxc#current-compile-timestamp
           (gxc#compile-timestamp)
           gx#current-expander-compiling?
           '#t))))
    (define gxc#compile-exe__0
      (lambda (_srcpath65141_)
        (let ((_opts65143_ '()))
          (gxc#compile-exe__% _srcpath65141_ _opts65143_))))
    (define gxc#compile-exe
      (lambda _g65257_
        (let ((_g65256_ (let () (declare (not safe)) (##length _g65257_))))
          (cond ((let () (declare (not safe)) (##fx= _g65256_ 1))
                 (apply gxc#compile-exe__0 _g65257_))
                ((let () (declare (not safe)) (##fx= _g65256_ 2))
                 (apply gxc#compile-exe__% _g65257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g65257_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx65122_ _opts65123_)
        (if (pgetq 'full-program-optimization: _opts65123_)
            (gxc#compile-executable-module/full-program-optimization
             _ctx65122_
             _opts65123_)
            (gxc#compile-executable-module/separate _ctx65122_ _opts65123_))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx64767_ _opts64768_)
        (letrec ((_generate-stub64770_
                  (lambda (_builtin-modules65118_)
                    (let ((_mod-main65120_
                           (gxc#find-runtime-symbol _ctx64767_ 'main)))
                      (write (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _builtin-modules65118_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (write (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons 'builtin-modules
                                                           '()))
                                               (cons (cons 'apply
                                                           (cons _mod-main65120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-gsc-link-opts64771_
                  (lambda ()
                    (let ((_opts65028_ (pgetq 'gsc-options: _opts64768_)))
                      (let _lp65030_ ((_rest65032_ _opts65028_)
                                      (_opts65033_ '()))
                        (let* ((_rest6503465054_ _rest65032_)
                               (_else6503865062_
                                (lambda () (reverse _opts65033_))))
                          (let ((_K6504865105_
                                 (lambda (_rest65103_)
                                   (_lp65030_ _rest65103_ _opts65033_)))
                                (_K6504365087_
                                 (lambda (_rest65085_)
                                   (_lp65030_ _rest65085_ _opts65033_)))
                                (_K6504065069_
                                 (lambda (_rest65066_ _hd65067_)
                                   (_lp65030_
                                    _rest65066_
                                    (cons _hd65067_ _opts65033_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6503465054_))
                                (let ((_tl6505065110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6503465054_)))
                                      (_hd6504965108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6503465054_))))
                                  (if (equal? _hd6504965108_ '"-cc-options")
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6505065110_))
                                          (let* ((_tl6505265113_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _tl6505065110_)))
                                                 (_rest65116_ _tl6505265113_))
                                            (_K6504865105_ _rest65116_))
                                          (let ((_hd65077_ _hd6504965108_)
                                                (_rest65079_ _tl6505065110_))
                                            (_K6504065069_
                                             _rest65079_
                                             _hd65077_)))
                                      (if (equal? _hd6504965108_
                                                  '"-ld-options")
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl6505065110_))
                                              (let* ((_tl6504765095_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _tl6505065110_)))
                                                     (_rest65098_
                                                      _tl6504765095_))
                                                (_K6504365087_ _rest65098_))
                                              (let ((_hd65077_ _hd6504965108_)
                                                    (_rest65079_
                                                     _tl6505065110_))
                                                (_K6504065069_
                                                 _rest65079_
                                                 _hd65077_)))
                                          (let ((_hd65077_ _hd6504965108_)
                                                (_rest65079_ _tl6505065110_))
                                            (_K6504065069_
                                             _rest65079_
                                             _hd65077_)))))
                                (_else6503865062_))))))))
                 (_get-gsc-cc-opts64772_
                  (lambda (_gerbil-staticdir64959_)
                    (let* ((_opts64961_ (pgetq 'gsc-options: _opts64768_))
                           (_base64963_
                            (string-append '"-I " _gerbil-staticdir64959_))
                           (_user-static-dir64965_
                            (path-expand
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil"))))
                           (_base64967_
                            (string-append
                             _base64963_
                             '" -I "
                             _user-static-dir64965_)))
                      (let _lp64970_ ((_rest64972_ _opts64961_))
                        (let* ((_rest6497364987_ _rest64972_)
                               (_else6497664995_
                                (lambda ()
                                  (cons '"-cc-options"
                                        (cons _base64967_ '())))))
                          (let ((_K6498165014_
                                 (lambda (_opts65012_)
                                   (cons '"-cc-options"
                                         (cons (string-append
                                                _base64967_
                                                '" "
                                                _opts65012_)
                                               '()))))
                                (_K6497865001_
                                 (lambda (_rest64999_)
                                   (_lp64970_ _rest64999_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6497364987_))
                                (let ((_tl6498365019_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6497364987_)))
                                      (_hd6498265017_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6497364987_))))
                                  (if (equal? _hd6498265017_ '"-cc-options")
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6498365019_))
                                          (let* ((_hd6498465022_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _tl6498365019_)))
                                                 (_opts65025_ _hd6498465022_))
                                            (_K6498165014_ _opts65025_))
                                          (let ((_rest65007_ _tl6498365019_))
                                            (_lp64970_ _rest65007_)))
                                      (let ((_rest65007_ _tl6498365019_))
                                        (_lp64970_ _rest65007_))))
                                (_else6497664995_))))))))
                 (_get-output-ld-opts64773_
                  (lambda ()
                    (let ((_opts64900_ (pgetq 'gsc-options: _opts64768_)))
                      (let _lp64902_ ((_rest64904_ _opts64900_))
                        (let* ((_rest6490564919_ _rest64904_)
                               (_else6490864927_ (lambda () '())))
                          (let ((_K6491364946_
                                 (lambda (_opts64944_)
                                   (filter _not-string-empty?64779_
                                           (string-split
                                            _opts64944_
                                            '#\space))))
                                (_K6491064933_
                                 (lambda (_rest64931_)
                                   (_lp64902_ _rest64931_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6490564919_))
                                (let ((_tl6491564951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6490564919_)))
                                      (_hd6491464949_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6490564919_))))
                                  (if (equal? _hd6491464949_ '"-ld-options")
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6491564951_))
                                          (let* ((_hd6491664954_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _tl6491564951_)))
                                                 (_opts64957_ _hd6491664954_))
                                            (_K6491364946_ _opts64957_))
                                          (let ((_rest64939_ _tl6491564951_))
                                            (_lp64902_ _rest64939_)))
                                      (let ((_rest64939_ _tl6491564951_))
                                        (_lp64902_ _rest64939_))))
                                (_else6490864927_))))))))
                 (_get-libgerbil.a-ld-opts64774_
                  (lambda (_libgerbil.a64887_)
                    (let* ((_proc64889_
                            (open-input-process
                             (cons 'path:
                                   (cons (gxc#gerbil-ar)
                                         (cons 'arguments:
                                               (cons (cons '"p"
                                                           (cons _libgerbil.a64887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '"__.LIBDEP" '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'stderr-redirection:
                                                           (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (_output64891_ (read-line _proc64889_ '#f)))
                      (if (zero? (process-status _proc64889_))
                          '#!void
                          (gxc#raise-compile-error
                           '"Compilation error; process exit with nonzero status"
                           '"ar"))
                      (let* ((_line64894_
                              (substring
                               _output64891_
                               '0
                               (- (string-length _output64891_) '1)))
                             (_parts64896_
                              (string-split _line64894_ '#\space)))
                        (filter _not-string-empty?64779_ _parts64896_)))))
                 (_get-libgerbil.so-ld-opts64775_
                  (lambda (_libgerbil.so64885_)
                    (call-with-input-file
                     (string-append _libgerbil.so64885_ '".ldd")
                     read)))
                 (_replace-extension64776_
                  (lambda (_path64882_ _ext64883_)
                    (string-append
                     (path-strip-extension _path64882_)
                     _ext64883_)))
                 (_not-exclude-module?64777_
                  (lambda (_ctx64878_)
                    (let ((_id-str64880_
                           (symbol->string
                            (##structure-ref
                             _ctx64878_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (string-prefix? '"gerbil/" _id-str64880_))
                          (not (string-prefix? '"std/" _id-str64880_))
                          '#f))))
                 (_not-file-empty?64778_
                  (lambda (_path64876_) (not (gxc#file-empty? _path64876_))))
                 (_not-string-empty?64779_
                  (lambda (_str64874_) (not (string-empty? _str64874_))))
                 (_compile-stub64780_
                  (lambda (_output-scm64787_ _output-bin64788_)
                    (let* ((_gambit-libdir64790_ (path-expand '"~~lib"))
                           (_gerbil-home64792_
                            (getenv '"GERBIL_HOME" gxc#default-gerbil-home))
                           (_gerbil-libdir64794_
                            (path-expand '"lib" _gerbil-home64792_))
                           (_gerbil-staticdir64796_
                            (path-expand '"static" _gerbil-libdir64794_))
                           (_gxlink64798_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir64794_))
                           (_tmp64800_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string (gxc#compile-timestamp-nanos)))
                             '"/tmp"))
                           (_tmp-path64804_
                            (lambda (_f64802_)
                              (path-expand
                               (path-strip-directory _f64802_)
                               _tmp64800_)))
                           (_deps64806_
                            (gxc#find-runtime-module-deps _ctx64767_))
                           (_deps64808_
                            (filter _not-exclude-module?64777_ _deps64806_))
                           (_src-deps-scm64810_
                            (map gxc#find-static-module-file _deps64808_))
                           (_src-deps-scm64812_
                            (filter _not-file-empty?64778_
                                    _src-deps-scm64810_))
                           (_src-deps-scm64814_
                            (map path-expand _src-deps-scm64812_))
                           (_deps-scm64816_
                            (map _tmp-path64804_ _src-deps-scm64814_))
                           (_deps-c64822_
                            (map (lambda (_g6481764819_)
                                   (_replace-extension64776_
                                    _g6481764819_
                                    '".c"))
                                 _deps-scm64816_))
                           (_deps-o64828_
                            (map (lambda (_g6482364825_)
                                   (_replace-extension64776_
                                    _g6482364825_
                                    '".o"))
                                 _deps-scm64816_))
                           (_src-bin-scm64830_
                            (gxc#find-static-module-file _ctx64767_))
                           (_src-bin-scm64832_
                            (path-expand _src-bin-scm64830_))
                           (_bin-scm64834_
                            (_tmp-path64804_ _src-bin-scm64832_))
                           (_bin-c64836_
                            (_replace-extension64776_ _bin-scm64834_ '".c"))
                           (_bin-o64838_
                            (_replace-extension64776_ _bin-scm64834_ '".o"))
                           (_output-bin64840_ (path-expand _output-bin64788_))
                           (_output-scm64842_ (path-expand _output-scm64787_))
                           (_output-c64844_
                            (_replace-extension64776_ _output-scm64842_ '".c"))
                           (_output-o64846_
                            (_replace-extension64776_ _output-scm64842_ '".o"))
                           (_output_64848_
                            (string-append
                             (path-strip-extension _output-scm64842_)
                             '"_"))
                           (_output_-c64850_
                            (string-append _output_64848_ '".c"))
                           (_output_-o64852_
                            (string-append _output_64848_ '".o"))
                           (_gsc-opts64854_ (_get-gsc-link-opts64771_))
                           (_gsc-cc-opts64856_
                            (_get-gsc-cc-opts64772_ _gerbil-staticdir64796_))
                           (_output-ld-opts64858_ (_get-output-ld-opts64773_))
                           (_libgerbil.a64860_
                            (path-expand '"libgerbil.a" _gerbil-libdir64794_))
                           (_libgerbil.so64862_
                            (path-expand '"libgerbil.so" _gerbil-libdir64794_))
                           (_libgerbil-ld-opts64864_
                            (if (file-exists? _libgerbil.so64862_)
                                (_get-libgerbil.so-ld-opts64775_
                                 _libgerbil.so64862_)
                                (if (file-exists? _libgerbil.a64860_)
                                    (_get-libgerbil.a-ld-opts64774_
                                     _libgerbil.a64860_)
                                    (gxc#raise-compile-error
                                     '"libgerbil does not exist"
                                     _libgerbil.a64860_
                                     _libgerbil.so64862_))))
                           (_gerbil-rpath64866_
                            (if (file-exists? _libgerbil.so64862_)
                                (string-append
                                 '"-Wl,-rpath="
                                 _gerbil-libdir64794_
                                 '":"
                                 _gambit-libdir64790_)
                                (string-append
                                 '"-Wl,-rpath="
                                 _gambit-libdir64790_)))
                           (_builtin-modules64870_
                            (map (lambda (_mod64868_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod64868_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (cons _ctx64767_ _deps64808_))))
                      (gxc#with-output-to-scheme-file
                       _output-scm64842_
                       (lambda ()
                         (_generate-stub64770_ _builtin-modules64870_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (create-directory _tmp64800_)
                            (for-each
                             copy-file
                             _src-deps-scm64814_
                             _deps-scm64816_)
                            (copy-file _src-bin-scm64832_ _bin-scm64834_)
                            (gxc#invoke
                             (gxc#gerbil-gsc)
                             (foldr1 cons
                                     (cons '"-link"
                                           (cons '"-l"
                                                 (cons _gxlink64798_
                                                       (foldr1 cons
                                                               (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr1 cons
                                       (cons _bin-scm64834_
                                             (cons _output-scm64842_ '()))
                                       _deps-scm64816_)
                               _gsc-opts64854_)
                       (gxc#gsc-debug-options__0)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     gxc#gsc-runtime-args))
                            (gxc#invoke
                             (gxc#gerbil-gsc)
                             (cons '"-obj"
                                   (foldr1 cons
                                           (foldr1 cons
                                                   (cons _bin-c64836_
                                                         (cons _output-c64844_
                                                               (cons _output_-c64850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _deps-c64822_)
                                           _gsc-cc-opts64856_)))
                            (gxc#invoke
                             (gxc#gerbil-gcc)
                             (cons '"-o"
                                   (cons _output-bin64840_
                                         (foldr1 cons
                                                 (cons _bin-o64838_
                                                       (cons _output-o64846_
                                                             (cons _output_-o64852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr1 cons
                                   (cons _gerbil-rpath64866_
                                         (cons '"-L"
                                               (cons _gerbil-libdir64794_
                                                     (cons '"-lgerbil"
                                                           (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _gambit-libdir64790_
                               (cons '"-lgambit"
                                     _libgerbil-ld-opts64864_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _output-ld-opts64858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _deps-o64828_))))
                            (for-each
                             delete-file
                             (cons _output-c64844_
                                   (cons _output_-c64850_
                                         (cons _output-o64846_
                                               (cons _output_-o64852_ '())))))
                            (gxc#delete-directory* _tmp64800_))
                          '#!void)))))
          (let* ((_output-bin64782_
                  (gxc#compile-exe-output-file _ctx64767_ _opts64768_))
                 (_output-scm64784_
                  (string-append _output-bin64782_ '".scmx")))
            (_compile-stub64780_ _output-scm64784_ _output-bin64782_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm64784_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx64594_ _opts64595_)
        (letrec ((_reset-declare64597_
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
                 (_generate-stub64598_
                  (lambda (_deps64758_)
                    (let ((_mod-main64760_
                           (gxc#find-runtime-symbol _ctx64594_ 'main))
                          (_reset-decl64761_ (_reset-declare64597_))
                          (_user-decl64762_ (_user-declare64600_)))
                      (for-each
                       (lambda (_dep64764_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl64761_)
                         (newline)
                         (if _user-decl64762_
                             (begin (write _user-decl64762_) (newline))
                             '#!void)
                         (write (cons 'include (cons _dep64764_ '())))
                         (newline))
                       _deps64758_)
                      (write (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _mod-main64760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                      (write '(gerbil-main))
                      (newline))))
                 (_static-include64599_
                  (lambda (_gsc-opts64741_ _home64742_)
                    (letrec* ((_static-dir64744_
                               (path-expand '"lib/static" _home64742_))
                              (_user-static-dir64745_
                               (path-expand
                                (path-expand
                                 '"lib/static"
                                 (getenv '"GERBIL_PATH" '"~/.gerbil"))))
                              (_cppflags64746_
                               (string-append
                                '"-I "
                                _static-dir64744_
                                '" -I "
                                _user-static-dir64745_)))
                      (let ((_$e64748_
                             (member '"-cc-options" _gsc-opts64741_)))
                        (if _$e64748_
                            ((lambda (_rest64751_)
                               (let* ((_cell64753_ (cdr _rest64751_))
                                      (_opt64755_ (car _cell64753_)))
                                 (set-car!
                                  _cell64753_
                                  (string-append
                                   _opt64755_
                                   '" "
                                   _cppflags64746_))
                                 _gsc-opts64741_))
                             _$e64748_)
                            (cons '"-cc-options"
                                  (cons _cppflags64746_ _gsc-opts64741_)))))))
                 (_user-declare64600_
                  (lambda ()
                    (let* ((_gsc-opts64646_ (pgetq 'gsc-options: _opts64595_))
                           (_gsc-prelude64648_
                            (if _gsc-opts64646_
                                (member '"-prelude" _gsc-opts64646_)
                                '#f))
                           (_gsc-prelude64650_
                            (if _gsc-prelude64648_
                                (read (open-input-string
                                       (cadr _gsc-prelude64648_)))
                                '#f)))
                      (let _lp64653_ ((_rest64655_
                                       (cons _gsc-prelude64650_ '()))
                                      (_user-decls64656_ '()))
                        (let* ((_rest6465764665_ _rest64655_)
                               (_else6465964673_
                                (lambda ()
                                  (if (null? _user-decls64656_)
                                      '#f
                                      (cons 'declare
                                            (reverse _user-decls64656_)))))
                               (_K6466164729_
                                (lambda (_rest64676_ _expr64677_)
                                  (let* ((_expr6467864690_ _expr64677_)
                                         (_else6468164698_
                                          (lambda ()
                                            (_lp64653_
                                             _rest64676_
                                             _user-decls64656_))))
                                    (let ((_K6468664719_
                                           (lambda (_decls64717_)
                                             (_lp64653_
                                              _rest64676_
                                              (foldl1 cons
                                                      _user-decls64656_
                                                      _decls64717_))))
                                          (_K6468364704_
                                           (lambda (_exprs64702_)
                                             (_lp64653_
                                              (append _exprs64702_ _rest64676_)
                                              _user-decls64656_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr6467864690_))
                                          (let ((_tl6468864724_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr6467864690_)))
                                                (_hd6468764722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr6467864690_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd6468764722_
                                                         'declare))
                                                (let ((_decls64727_
                                                       _tl6468864724_))
                                                  (_K6468664719_ _decls64727_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd6468764722_
                                                             'begin))
                                                    (let ((_exprs64712_
                                                           _tl6468864724_))
                                                      (_K6468364704_
                                                       _exprs64712_))
                                                    (_else6468164698_))))
                                          (_else6468164698_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6465764665_))
                              (let ((_hd6466264732_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6465764665_)))
                                    (_tl6466364734_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6465764665_))))
                                (let* ((_expr64737_ _hd6466264732_)
                                       (_rest64739_ _tl6466364734_))
                                  (_K6466164729_ _rest64739_ _expr64737_)))
                              (_else6465964673_)))))))
                 (_compile-stub64601_
                  (lambda (_output-scm64608_ _output-bin64609_)
                    (let* ((_gerbil-home64611_
                            (getenv '"GERBIL_HOME" gxc#default-gerbil-home))
                           (_gx-gambc64615_
                            (map (lambda (_mod64613_)
                                   (path-expand
                                    (string-append _mod64613_ '".scm")
                                    (path-expand
                                     '"lib/static"
                                     _gerbil-home64611_)))
                                 '("gx-gambc0"
                                   "gx-gambc1"
                                   "gx-gambc2"
                                   "gx-gambc")))
                           (_gx-gambc-macros64617_
                            (path-expand
                             '"lib/static/gx-gambc#.scm"
                             _gerbil-home64611_))
                           (_include-gx-gambc-macros64619_
                            (string-append
                             '"(include \""
                             _gx-gambc-macros64617_
                             '"\")"))
                           (_bin-scm64621_
                            (gxc#find-static-module-file _ctx64594_))
                           (_deps64623_
                            (gxc#find-runtime-module-deps _ctx64594_))
                           (_deps64625_
                            (map gxc#find-static-module-file _deps64623_))
                           (_deps64630_
                            (filter (lambda (_$obj64627_)
                                      (not (gxc#file-empty? _$obj64627_)))
                                    _deps64625_))
                           (_gsc-opts64635_
                            (let ((_$e64632_
                                   (pgetq 'gsc-options: _opts64595_)))
                              (if _$e64632_ _$e64632_ '())))
                           (_gsc-opts64637_
                            (_static-include64599_
                             _gsc-opts64635_
                             _gerbil-home64611_))
                           (_gsc-gx-macros64639_
                            (if (gerbil-runtime-smp?)
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _include-gx-gambc-macros64619_
                                                        '()))))
                                (cons '"-e"
                                      (cons _include-gx-gambc-macros64619_
                                            '()))))
                           (_gsc-args64641_
                            (foldr1 cons
                                    (cons '"-exe"
                                          (cons '"-o"
                                                (cons _output-bin64609_
                                                      (foldr1 cons
                                                              (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr1 cons
                                      (cons _output-scm64608_ '())
                                      _gsc-gx-macros64639_)
                              _gsc-opts64637_)
                      (gxc#gsc-debug-options__0)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    gxc#gsc-runtime-args)))
                      (gxc#with-output-to-scheme-file
                       _output-scm64608_
                       (lambda ()
                         (_generate-stub64598_
                          (foldr1 cons
                                  (foldr1 cons
                                          (cons _bin-scm64621_ '())
                                          _deps64630_)
                                  _gx-gambc64615_))))
                      (if (gxc#current-compile-invoke-gsc)
                          (gxc#invoke (gxc#gerbil-gsc) _gsc-args64641_)
                          '#!void)))))
          (let* ((_output-bin64603_
                  (gxc#compile-exe-output-file _ctx64594_ _opts64595_))
                 (_output-scm64605_
                  (string-append _output-bin64603_ '".scmx")))
            (_compile-stub64601_ _output-scm64605_ _output-bin64603_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm64605_))))))
    (define gxc#find-export-binding
      (lambda (_ctx64544_ _id64545_)
        (let ((_$e64591_
               (find (lambda (_e6454664548_)
                       (let* ((_g6455064560_ _e6454664548_)
                              (_else6455264568_ (lambda () '#f))
                              (_K6455464572_ (lambda () '#t)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                _g6455064560_
                                'gx#module-export::t))
                             (let* ((_e6455564575_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g6455064560_ '1)))
                                    (_e6455664578_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g6455064560_ '2)))
                                    (_e6455764581_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g6455064560_ '3))))
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _e6455764581_ '0))
                                   (let ((_e6455864584_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g6455064560_ '4))))
                                     (if ((lambda (_g6458664588_)
                                            (eq? _g6458664588_ _id64545_))
                                          _e6455864584_)
                                         (_K6455464572_)
                                         (_else6455264568_)))
                                   (_else6455264568_)))
                             (_else6455264568_))))
                     (##structure-ref
                      _ctx64544_
                      '9
                      gx#module-context::t
                      '#f))))
          (if _$e64591_ (gx#core-resolve-module-export _$e64591_) '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx64536_ _id64537_)
        (let ((_$e64539_ (gxc#find-export-binding _ctx64536_ _id64537_)))
          (if _$e64539_
              ((lambda (_bind64542_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind64542_
                        'gx#runtime-binding::t))
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id64537_))
                 (##structure-ref _bind64542_ '1 gx#binding::t '#f))
               _$e64539_)
              (gxc#raise-compile-error
               '"module does not export symbol"
               (##structure-ref _ctx64536_ '1 gx#expander-context::t '#f)
               _id64537_)))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx64423_)
        (letrec* ((_ht64425_ (make-table 'test: eq?))
                  (_import-set-template64426_
                   (lambda (_in64488_ _phi64489_)
                     (let ((_iphi64491_
                            (fx+ _phi64489_
                                 (##direct-structure-ref
                                  _in64488_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports64492_
                            (##structure-ref
                             (##direct-structure-ref
                              _in64488_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp64494_ ((_rest64496_ _imports64492_)
                                       (_r64497_ '()))
                         (let* ((_rest6449864506_ _rest64496_)
                                (_else6450064514_ (lambda () _r64497_))
                                (_K6450264524_
                                 (lambda (_rest64517_ _in64518_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in64518_
                                          'gx#module-context::t))
                                       (if (fxzero? _iphi64491_)
                                           (_lp64494_
                                            _rest64517_
                                            (cons _in64518_ _r64497_))
                                           (_lp64494_ _rest64517_ _r64497_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in64518_
                                              'gx#module-import::t))
                                           (let ((_iphi64520_
                                                  (fx+ _phi64489_
                                                       (##direct-structure-ref
                                                        _in64518_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (fxzero? _iphi64520_)
                                                 (_lp64494_
                                                  _rest64517_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _in64518_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _r64497_))
                                                 (_lp64494_
                                                  _rest64517_
                                                  _r64497_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in64518_
                                                  'gx#import-set::t))
                                               (let ((_xphi64522_
                                                      (fx+ _iphi64491_
                                                           (##direct-structure-ref
                                                            _in64518_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (fxzero? _xphi64522_)
                                                     (_lp64494_
                                                      _rest64517_
                                                      (cons (##direct-structure-ref
                                                             _in64518_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _r64497_))
                                                     (if (fxpositive?
                                                          _xphi64522_)
                                                         (_lp64494_
                                                          _rest64517_
                                                          (foldl1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r64497_
                          (_import-set-template64426_ _in64518_ _iphi64491_)))
                 (_lp64494_ _rest64517_ _r64497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp64494_
                                                _rest64517_
                                                _r64497_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest6449864506_))
                               (let ((_hd6450364527_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest6449864506_)))
                                     (_tl6450464529_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest6449864506_))))
                                 (let* ((_in64532_ _hd6450364527_)
                                        (_rest64534_ _tl6450464529_))
                                   (_K6450264524_ _rest64534_ _in64532_)))
                               (_else6450064514_)))))))
                  (_find-deps64427_
                   (lambda (_rest64434_ _deps64435_)
                     (let* ((_rest6443664444_ _rest64434_)
                            (_else6443864452_ (lambda () _deps64435_))
                            (_K6444064476_
                             (lambda (_rest64455_ _hd64456_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd64456_
                                      'gx#module-context::t))
                                   (let ((_id64458_
                                          (##structure-ref
                                           _hd64456_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports64459_
                                          (##structure-ref
                                           _hd64456_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (table-ref _ht64425_ _id64458_ '#f)
                                         (_find-deps64427_
                                          _rest64455_
                                          _deps64435_)
                                         (let ((_$e64461_
                                                (gx#core-context-prelude__%
                                                 _hd64456_)))
                                           (if _$e64461_
                                               ((lambda (_pre64464_)
                                                  (let ((_xdeps64466_
                                                         (_find-deps64427_
                                                          (cons _pre64464_
                                                                _imports64459_)
                                                          _deps64435_)))
                                                    (table-set!
                                                     _ht64425_
                                                     _id64458_
                                                     _hd64456_)
                                                    (_find-deps64427_
                                                     _rest64455_
                                                     (cons _hd64456_
                                                           _xdeps64466_))))
                                                _$e64461_)
                                               (let ((_xdeps64468_
                                                      (_find-deps64427_
                                                       _imports64459_
                                                       _deps64435_)))
                                                 (table-set!
                                                  _ht64425_
                                                  _id64458_
                                                  _hd64456_)
                                                 (_find-deps64427_
                                                  _rest64455_
                                                  (cons _hd64456_
                                                        _xdeps64468_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd64456_
                                          'gx#prelude-context::t))
                                       (let ((_id64470_
                                              (##structure-ref
                                               _hd64456_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (table-ref
                                              _ht64425_
                                              _id64470_
                                              '#f)
                                             (_find-deps64427_
                                              _rest64455_
                                              _deps64435_)
                                             (let ((_xdeps64472_
                                                    (_find-deps64427_
                                                     (##structure-ref
                                                      _hd64456_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _deps64435_)))
                                               (if (table-ref
                                                    _ht64425_
                                                    _id64470_
                                                    '#f)
                                                   (_find-deps64427_
                                                    _rest64455_
                                                    _xdeps64472_)
                                                   (begin
                                                     (table-set!
                                                      _ht64425_
                                                      _id64470_
                                                      _hd64456_)
                                                     (_find-deps64427_
                                                      _rest64455_
                                                      (cons _hd64456_
                                                            _xdeps64472_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd64456_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _hd64456_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_find-deps64427_
                                                (cons (##direct-structure-ref
                                                       _hd64456_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _rest64455_)
                                                _deps64435_)
                                               (_find-deps64427_
                                                _rest64455_
                                                _deps64435_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd64456_
                                                  'gx#module-export::t))
                                               (_find-deps64427_
                                                (cons (##direct-structure-ref
                                                       _hd64456_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _rest64455_)
                                                _deps64435_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd64456_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd64456_
                         '2
                         gx#import-set::t
                         '#f))
               (_find-deps64427_
                (cons (##direct-structure-ref
                       _hd64456_
                       '1
                       gx#import-set::t
                       '#f)
                      _rest64455_)
                _deps64435_)
               (if (fxpositive?
                    (##direct-structure-ref _hd64456_ '2 gx#import-set::t '#f))
                   (let ((_xdeps64474_
                          (_import-set-template64426_ _hd64456_ '0)))
                     (_find-deps64427_
                      (foldl1 cons _rest64455_ _xdeps64474_)
                      _deps64435_))
                   (_find-deps64427_ _rest64455_ _deps64435_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd64456_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest6443664444_))
                           (let ((_hd6444164479_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest6443664444_)))
                                 (_tl6444264481_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest6443664444_))))
                             (let* ((_hd64484_ _hd6444164479_)
                                    (_rest64486_ _tl6444264481_))
                               (_K6444064476_ _rest64486_ _hd64484_)))
                           (_else6443864452_))))))
          (reverse (filter gx#expander-context-id
                           (_find-deps64427_
                            (let ((_$e64429_
                                   (gx#core-context-prelude__% _ctx64423_)))
                              (if _$e64429_
                                  ((lambda (_pre64432_)
                                     (cons _pre64432_
                                           (##structure-ref
                                            _ctx64423_
                                            '8
                                            gx#module-context::t
                                            '#f)))
                                   _$e64429_)
                                  (##structure-ref
                                   _ctx64423_
                                   '8
                                   gx#module-context::t
                                   '#f)))
                            '()))))))
    (define gxc#find-static-module-file
      (lambda (_ctx64362_)
        (let* ((_scm64364_
                (string-append
                 (gxc#static-module-name
                  (##structure-ref _ctx64362_ '1 gx#expander-context::t '#f))
                 '".scm"))
               (_dirs64366_ (gx#current-expander-module-library-path))
               (_dirs64375_
                (let ((_$e64368_ (gxc#current-compile-output-dir)))
                  (if _$e64368_
                      ((lambda (_g6437064372_)
                         (cons _g6437064372_ _dirs64366_))
                       _$e64368_)
                      _dirs64366_)))
               (_dirs64381_
                (map (lambda (_g6437664378_)
                       (path-expand '"static" _g6437664378_))
                     _dirs64375_)))
          (let _lp64384_ ((_rest64386_ _dirs64381_))
            (let* ((_rest6438764395_ _rest64386_)
                   (_else6438964403_
                    (lambda ()
                      (gxc#raise-compile-error
                       '"cannot find static module"
                       (##structure-ref
                        _ctx64362_
                        '1
                        gx#expander-context::t
                        '#f)
                       _scm64364_)))
                   (_K6439164411_
                    (lambda (_rest64406_ _dir64407_)
                      (let ((_path64409_ (path-expand _scm64364_ _dir64407_)))
                        (if (file-exists? _path64409_)
                            _path64409_
                            (_lp64384_ _rest64406_))))))
              (if (let () (declare (not safe)) (##pair? _rest6438764395_))
                  (let ((_hd6439264414_
                         (let ()
                           (declare (not safe))
                           (##car _rest6438764395_)))
                        (_tl6439364416_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6438764395_))))
                    (let* ((_dir64419_ _hd6439264414_)
                           (_rest64421_ _tl6439364416_))
                      (_K6439164411_ _rest64421_ _dir64419_)))
                  (_else6438964403_)))))))
    (define gxc#file-empty?
      (lambda (_path64360_)
        (zero? (file-info-size (file-info _path64360_ '#t)))))
    (define gxc#compile-top-module
      (lambda (_ctx64356_)
        (call-with-parameters
         (lambda ()
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx64356_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gerbil/gambit/threads#with-lock
                gxc#+driver-mutex+
                (lambda () (gxc#optimize! _ctx64356_)))
               '#!void)
           (gxc#collect-bindings _ctx64356_)
           (gxc#compile-runtime-code _ctx64356_)
           (gxc#compile-meta-code _ctx64356_)
           (if (and (gxc#current-compile-optimize)
                    (gxc#current-compile-generate-ssxi))
               (gxc#compile-ssxi-code _ctx64356_)
               '#!void))
         gx#current-expander-context
         _ctx64356_
         gx#current-expander-phi
         '0
         gx#current-expander-marks
         '()
         gxc#current-compile-symbol-table
         (let ((__obj65252 (make-object gxc#symbol-table::t '2)))
           (gxc#symbol-table:::init! __obj65252)
           __obj65252)
         gxc#current-compile-runtime-sections
         (make-table 'test: eq?)
         gxc#current-compile-runtime-names
         (make-table))))
    (define gxc#collect-bindings
      (lambda (_ctx64354_)
        (gxc#apply-collect-bindings
         (##structure-ref _ctx64354_ '11 gx#module-context::t '#f))))
    (define gxc#compile-runtime-code
      (lambda (_ctx64300_)
        (letrec ((_compile164302_
                  (lambda (_ctx64343_)
                    (let* ((_code64345_
                            (##structure-ref
                             _ctx64343_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt64349_
                            (if (gxc#apply-find-runtime-code _code64345_)
                                (let ((_idstr64347_
                                       (gxc#module-id->path-string
                                        (##structure-ref
                                         _ctx64343_
                                         '1
                                         gx#expander-context::t
                                         '#f))))
                                  (string-append _idstr64347_ '"__0"))
                                '#f)))
                      (if _rt64349_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx64343_
                             _rt64349_)
                            (_generate-runtime-code64304_
                             _ctx64343_
                             _code64345_))
                          (let ((_path64352_
                                 (gxc#compile-static-output-file _ctx64343_)))
                            (gxc#with-output-to-scheme-file _path64352_ void)))
                      (_generate-loader-code64305_
                       _ctx64343_
                       _code64345_
                       _rt64349_))))
                 (_context-timestamp64303_
                  (lambda (_ctx64341_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx64341_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code64304_
                  (lambda (_ctx64323_ _code64324_)
                    (let* ((_lifts64326_ (box '()))
                           (_runtime-code64329_
                            (call-with-parameters
                             (lambda ()
                               (gxc#apply-generate-runtime _code64324_))
                             gx#current-expander-context
                             _ctx64323_
                             gx#current-expander-phi
                             '0
                             gxc#current-compile-lift
                             _lifts64326_
                             gxc#current-compile-marks
                             (make-table 'test: eq?)
                             gxc#current-compile-identifiers
                             (gxc#make-bound-identifier-table)))
                           (_runtime-code64331_
                            (if (null? (unbox _lifts64326_))
                                _runtime-code64329_
                                (cons 'begin
                                      (foldr1 cons
                                              (cons _runtime-code64329_ '())
                                              (reverse (unbox _lifts64326_))))))
                           (_runtime-code64333_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (_context-timestamp64303_
                                                     _ctx64323_)
                                                    (cons (gxc#current-compile-timestamp)
                                                          '())))
                                        (cons _runtime-code64331_ '()))))
                           (_scm064335_
                            (gxc#compile-output-file _ctx64323_ '0 '".scm")))
                      (let ((_scms64338_
                             (gxc#compile-static-output-file _ctx64323_)))
                        (call-with-parameters
                         (lambda ()
                           (gxc#compile-scm-file__0
                            _scm064335_
                            _runtime-code64333_))
                         gxc#current-compile-keep-scm
                         '#t)
                        (if (file-exists? _scms64338_)
                            (delete-file _scms64338_)
                            '#!void)
                        (gxc#verbose
                         '"copy static module "
                         _scm064335_
                         '" => "
                         _scms64338_)
                        (copy-file _scm064335_ _scms64338_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm064335_))))))
                 (_generate-loader-code64305_
                  (lambda (_ctx64312_ _code64313_ _rt64314_)
                    (let* ((_loader-code64317_
                            (call-with-parameters
                             (lambda ()
                               (gxc#apply-generate-loader _code64313_))
                             gx#current-expander-context
                             _ctx64312_))
                           (_loader-code64319_
                            (if _rt64314_
                                (cons 'begin
                                      (cons _loader-code64317_
                                            (cons (cons 'load-module
                                                        (cons _rt64314_ '()))
                                                  '())))
                                _loader-code64317_)))
                      (call-with-parameters
                       (lambda ()
                         (gxc#compile-scm-file__0
                          (gxc#compile-output-file _ctx64312_ 'rt '".scm")
                          _loader-code64319_))
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let ((_all-modules64307_
                 (cons _ctx64300_ (gxc#lift-nested-modules _ctx64300_))))
            (for-each
             (lambda (_ctx64309_)
               (call-with-parameters
                (lambda () (_compile164302_ _ctx64309_))
                gxc#current-compile-decls
                '()))
             _all-modules64307_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx64202_)
        (letrec ((_compile-ssi64204_
                  (lambda (_code64270_)
                    (let* ((_path64272_
                            (gxc#compile-output-file _ctx64202_ '#f '".ssi"))
                           (_prelude64283_
                            (let* ((_super64274_
                                    (##structure-ref
                                     _ctx64202_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e64276_
                                    (##structure-ref
                                     _super64274_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e64276_
                                  ((lambda (_g6427864280_)
                                     (make-symbol '":" _g6427864280_))
                                   _$e64276_)
                                  ':<root>)))
                           (_ns64285_
                            (##structure-ref
                             _ctx64202_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr64287_
                            (symbol->string
                             (##structure-ref
                              _ctx64202_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg64294_
                            (let ((_$e64289_
                                   (string-rindex _idstr64287_ '#\/)))
                              (if _$e64289_
                                  ((lambda (_x64292_)
                                     (string->symbol
                                      (substring _idstr64287_ '0 _x64292_)))
                                   _$e64289_)
                                  '#f)))
                           (_rt64296_
                            (table-ref
                             (gxc#current-compile-runtime-sections)
                             _ctx64202_
                             '#f)))
                      (gxc#verbose '"compile " _path64272_)
                      (gxc#with-output-to-scheme-file
                       _path64272_
                       (lambda ()
                         (displayln '"prelude:" '" " _prelude64283_)
                         (if _pkg64294_
                             (displayln '"package:" '" " _pkg64294_)
                             '#!void)
                         (displayln '"namespace:" '" " _ns64285_)
                         (newline)
                         (pretty-print _code64270_)
                         (if _rt64296_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons '_gx#load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _rt64296_ '()))
                                                '()))))
                             '#!void))))))
                 (_compile-phi64205_
                  (lambda (_part64210_)
                    (let* ((_part6421164224_ _part64210_)
                           (_E6421364228_
                            (lambda ()
                              (error '"No clause matching" _part6421164224_)))
                           (_K6421464239_
                            (lambda (_code64231_
                                     _n64232_
                                     _phi64233_
                                     _phi-ctx64234_)
                              (let ((_code64237_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code64231_))
                                      gx#current-expander-context
                                      _phi-ctx64234_
                                      gx#current-expander-phi
                                      _phi64233_)))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _ctx64202_
                                  _n64232_
                                  '".scm")
                                 _code64237_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part6421164224_))
                          (let ((_hd6421564242_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part6421164224_)))
                                (_tl6421664244_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part6421164224_))))
                            (let ((_phi-ctx64247_ _hd6421564242_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl6421664244_))
                                  (let ((_hd6421764249_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl6421664244_)))
                                        (_tl6421864251_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl6421664244_))))
                                    (let ((_phi64254_ _hd6421764249_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6421864251_))
                                          (let ((_hd6421964256_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6421864251_)))
                                                (_tl6422064258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6421864251_))))
                                            (let ((_n64261_ _hd6421964256_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl6422064258_))
                                                  (let ((_hd6422164263_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl6422064258_)))
                                                        (_tl6422264265_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl6422064258_))))
                                                    (let ((_code64268_
                                                           _hd6422164263_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl6422264265_))
                                                          (_K6421464239_
                                                           _code64268_
                                                           _n64261_
                                                           _phi64254_
                                                           _phi-ctx64247_)
                                                          (_E6421364228_))))
                                                  (_E6421364228_))))
                                          (_E6421364228_))))
                                  (_E6421364228_))))
                          (_E6421364228_))))))
          (let ((_g65258_ (gxc#generate-meta-code _ctx64202_)))
            (begin
              (let ((_g65259_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g65258_)
                           (##vector-length _g65258_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g65259_ 2)))
                    (error "Context expects 2 values" _g65259_)))
              (let ((_ssi-code64207_
                     (let () (declare (not safe)) (##vector-ref _g65258_ 0)))
                    (_phi-code64208_
                     (let () (declare (not safe)) (##vector-ref _g65258_ 1))))
                (begin
                  (_compile-ssi64204_ _ssi-code64207_)
                  (for-each _compile-phi64205_ _phi-code64208_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx64185_)
        (let* ((_path64187_
                (gxc#compile-output-file _ctx64185_ '#f '".ssxi.ss"))
               (_code64189_
                (gxc#apply-generate-ssxi
                 (##structure-ref _ctx64185_ '11 gx#module-context::t '#f)))
               (_idstr64191_
                (symbol->string
                 (##structure-ref _ctx64185_ '1 gx#expander-context::t '#f)))
               (_pkg64198_
                (let ((_$e64193_ (string-rindex _idstr64191_ '#\/)))
                  (if _$e64193_
                      ((lambda (_x64196_)
                         (string->symbol (substring _idstr64191_ '0 _x64196_)))
                       _$e64193_)
                      '#f))))
          (gxc#verbose '"compile " _path64187_)
          (gxc#with-output-to-scheme-file
           _path64187_
           (lambda ()
             (displayln '"prelude: :gerbil/compiler/ssxi")
             (if _pkg64198_ (displayln '"package: " _pkg64198_) '#!void)
             (newline)
             (pretty-print _code64189_))))))
    (define gxc#generate-meta-code
      (lambda (_ctx64178_)
        (let* ((_state64180_
                (let ((__obj65253 (make-object gxc#meta-state::t '4)))
                  (gxc#meta-state:::init! __obj65253 _ctx64178_)
                  __obj65253))
               (_ssi-code64182_
                (gxc#apply-generate-meta
                 (##structure-ref _ctx64178_ '11 gx#module-context::t '#f)
                 _state64180_)))
          (values _ssi-code64182_ (gxc#meta-state-end! _state64180_)))))
    (define gxc#generate-runtime-phi
      (lambda (_stx64171_)
        (let ((_lifts64173_ (box '())))
          (call-with-parameters
           (lambda ()
             (let ((_code64176_ (gxc#apply-generate-runtime-phi _stx64171_)))
               (if (null? (unbox _lifts64173_))
                   _code64176_
                   (cons 'begin
                         (foldr1 cons
                                 (cons _code64176_ '())
                                 (reverse (unbox _lifts64173_)))))))
           gxc#current-compile-lift
           _lifts64173_
           gxc#current-compile-marks
           (make-table 'test: eq?)
           gxc#current-compile-identifiers
           (gxc#make-bound-identifier-table)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx64167_)
        (let ((_modules64169_ (box '())))
          (gxc#apply-lift-modules
           (##structure-ref _ctx64167_ '11 gx#module-context::t '#f)
           _modules64169_)
          (reverse (unbox _modules64169_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path64150_ _code64151_ _phi?64152_)
        (gxc#verbose '"compile " _path64150_)
        (gxc#with-output-to-scheme-file
         _path64150_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (foldr1 cons
                                            '()
                                            (if _phi?64152_
                                                '((inlining-limit 200))
                                                '())))))))
           (pretty-print _code64151_)))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path64150_ _phi?64152_)
            '#!void)
        (if (gxc#current-compile-keep-scm) '#!void (delete-file _path64150_))))
    (define gxc#compile-scm-file__0
      (lambda (_path64158_ _code64159_)
        (let ((_phi?64161_ '#f))
          (gxc#compile-scm-file__% _path64158_ _code64159_ _phi?64161_))))
    (define gxc#compile-scm-file
      (lambda _g65261_
        (let ((_g65260_ (let () (declare (not safe)) (##length _g65261_))))
          (cond ((let () (declare (not safe)) (##fx= _g65260_ 2))
                 (apply gxc#compile-scm-file__0 _g65261_))
                ((let () (declare (not safe)) (##fx= _g65260_ 3))
                 (apply gxc#compile-scm-file__% _g65261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g65261_))))))
    (define gxc#gsc-debug-options__%
      (lambda (_phi?64059_)
        (let ((_$e64130_ (gxc#current-compile-debug)))
          (if _$e64130_
              ((lambda (_debug64133_)
                 (let ((_$e64135_ _debug64133_))
                   (if (eq? 'env _$e64135_)
                       (if _phi?64059_ '() (cons '"-debug-environments" '()))
                       (if (eq? 'env/phi _$e64135_)
                           (cons '"-debug-environments" '())
                           (if (eq? 'src _$e64135_)
                               (if _phi?64059_
                                   '()
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '())))
                               (if (eq? 'src/phi _$e64135_)
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '()))
                                   (if (eq? 'all _$e64135_)
                                       (if _phi?64059_
                                           '()
                                           (cons '"-debug" '()))
                                       (if (or (eq? 'all/phi _$e64135_)
                                               (eq? '#t _$e64135_))
                                           (cons '"-debug" '())
                                           (gxc#raise-compile-error
                                            '"unknown debug option"
                                            _debug64133_)))))))))
               _$e64130_)
              '()))))
    (define gxc#gsc-debug-options__0
      (lambda ()
        (let ((_phi?64145_ '#f)) (gxc#gsc-debug-options__% _phi?64145_))))
    (define gxc#gsc-debug-options
      (lambda _g65263_
        (let ((_g65262_ (let () (declare (not safe)) (##length _g65263_))))
          (cond ((let () (declare (not safe)) (##fx= _g65262_ 0))
                 (apply gxc#gsc-debug-options__0 _g65263_))
                ((let () (declare (not safe)) (##fx= _g65262_ 1))
                 (apply gxc#gsc-debug-options__% _g65263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-debug-options
                  _g65263_))))))
    (define gxc#gsc-compile-file
      (lambda (_path64045_ _phi?64046_)
        (let* ((_gsc-args64053_
                (let ((_$e64048_ (gxc#current-compile-gsc-options)))
                  (if _$e64048_
                      ((lambda (_opts64051_)
                         (foldr1 cons (cons _path64045_ '()) _opts64051_))
                       _$e64048_)
                      (cons _path64045_ '()))))
               (_gsc-args64055_
                (foldr1 cons
                        (foldr1 cons
                                _gsc-args64053_
                                (gxc#gsc-debug-options__% _phi?64046_))
                        gxc#gsc-runtime-args)))
          (gxc#invoke (gxc#gerbil-gsc) _gsc-args64055_))))
    (define gxc#compile-output-file
      (lambda (_ctx64017_ _n64018_ _ext64019_)
        (letrec ((_module-relative-path64021_
                  (lambda (_ctx64043_)
                    (path-strip-directory
                     (gxc#module-id->path-string
                      (##structure-ref
                       _ctx64043_
                       '1
                       gx#expander-context::t
                       '#f)))))
                 (_module-source-directory64022_
                  (lambda (_ctx64039_)
                    (path-directory
                     (let ((_mpath64041_
                            (##structure-ref
                             _ctx64039_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _mpath64041_)
                           _mpath64041_
                           (last _mpath64041_))))))
                 (_section-string64023_
                  (lambda (_n64037_)
                    (if (number? _n64037_)
                        (number->string _n64037_)
                        (if (symbol? _n64037_)
                            (symbol->string _n64037_)
                            (if (string? _n64037_)
                                _n64037_
                                (gxc#raise-compile-error
                                 '"Unexpected section"
                                 _n64037_))))))
                 (_file-name64024_
                  (lambda (_path64035_)
                    (if _n64018_
                        (string-append
                         _path64035_
                         '"__"
                         (_section-string64023_ _n64018_)
                         _ext64019_)
                        (string-append _path64035_ _ext64019_))))
                 (_file-path64025_
                  (lambda ()
                    (let ((_$e64030_ (gxc#current-compile-output-dir)))
                      (if _$e64030_
                          ((lambda (_outdir64033_)
                             (path-expand
                              (_file-name64024_
                               (gxc#module-id->path-string
                                (##structure-ref
                                 _ctx64017_
                                 '1
                                 gx#expander-context::t
                                 '#f)))
                              _outdir64033_))
                           _$e64030_)
                          (path-expand
                           (_file-name64024_
                            (_module-relative-path64021_ _ctx64017_))
                           (_module-source-directory64022_ _ctx64017_)))))))
          (let ((_path64027_ (_file-path64025_)))
            (create-directory* (path-directory _path64027_))
            _path64027_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx64000_)
        (letrec ((_file-name64002_
                  (lambda (_id64015_)
                    (string-append
                     (gxc#static-module-name _id64015_)
                     '".scm")))
                 (_file-path64003_
                  (lambda ()
                    (let* ((_file64008_
                            (_file-name64002_
                             (##structure-ref
                              _ctx64000_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_$e64010_ (gxc#current-compile-output-dir)))
                      (if _$e64010_
                          ((lambda (_outdir64013_)
                             (path-expand
                              _file64008_
                              (path-expand '"static" _outdir64013_)))
                           _$e64010_)
                          (path-expand _file64008_ '"static"))))))
          (let ((_path64005_ (_file-path64003_)))
            (create-directory* (path-directory _path64005_))
            _path64005_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx63987_ _opts63988_)
        (let ((_$e63990_ (pgetq 'output-file: _opts63988_)))
          (if _$e63990_
              (values _$e63990_)
              (let* ((_mod-str63993_
                      (symbol->string
                       (##structure-ref
                        _ctx63987_
                        '1
                        gx#expander-context::t
                        '#f)))
                     (_$e63995_ (string-rindex _mod-str63993_ '#\/)))
                (if _$e63995_
                    ((lambda (_ix63998_)
                       (substring
                        _mod-str63993_
                        (fx+ _ix63998_ '1)
                        (string-length _mod-str63993_)))
                     _$e63995_)
                    _mod-str63993_))))))
    (define gxc#static-module-name
      (lambda (_idstr63980_)
        (if (string? _idstr63980_)
            (let* ((_str63982_ (gxc#module-id->path-string _idstr63980_))
                   (_strs63984_ (string-split _str63982_ '#\/)))
              (string-join _strs63984_ '"__"))
            (if (symbol? _idstr63980_)
                (gxc#static-module-name (symbol->string _idstr63980_))
                (error '"Bad module id" _idstr63980_)))))
    (define gxc#invoke
      (lambda (_program63972_ _args63973_)
        (gxc#verbose '"invoke " (cons _program63972_ _args63973_))
        (let* ((_proc63975_
                (open-process
                 (cons 'path:
                       (cons _program63972_
                             (cons 'arguments:
                                   (cons _args63973_
                                         (cons 'stdout-redirection:
                                               (cons '#f
                                                     (cons 'stderr-redirection:
                                                           (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_status63977_ (process-status _proc63975_)))
          (close-port _proc63975_)
          (if (zero? _status63977_)
              '#!void
              (gxc#raise-compile-error
               '"Compilation error; process exit with nonzero status"
               _program63972_)))))))
