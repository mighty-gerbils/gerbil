(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (begin)
  (define gxc#current-compile-symbol-table (make-parameter '#f))
  (define gxc#current-compile-runtime-sections (make-parameter '#f))
  (define gxc#current-compile-output-dir (make-parameter '#f))
  (define gxc#current-compile-invoke-gsc (make-parameter '#f))
  (define gxc#current-compile-gsc-options (make-parameter '#f))
  (define gxc#current-compile-keep-scm (make-parameter '#f))
  (define gxc#current-compile-verbose (make-parameter '#f))
  (define gxc#symbol-table::t
    (make-struct-type 'gxc#symbol-table::t '#f '2 'symbol-table '() ':init!))
  (define gxc#symbol-table? (make-struct-predicate gxc#symbol-table::t))
  (define gxc#make-symbol-table
    (lambda _$args46514_
      (apply make-struct-instance gxc#symbol-table::t _$args46514_)))
  (define gxc#symbol-table-gensyms
    (make-struct-field-accessor gxc#symbol-table::t '0))
  (define gxc#symbol-table-bindings
    (make-struct-field-accessor gxc#symbol-table::t '1))
  (define gxc#symbol-table-gensyms-set!
    (make-struct-field-mutator gxc#symbol-table::t '0))
  (define gxc#symbol-table-bindings-set!
    (make-struct-field-mutator gxc#symbol-table::t '1))
  (begin)
  (define gxc#symbol-table:::init!
    (lambda (_self46512_)
      (direct-struct-instance-init!
       _self46512_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f)
  (define gxc#raise-compile-error
    (lambda (_message46508_ _stx46509_ . _details46510_)
      (apply gx#raise-syntax-error
             'compile
             _message46508_
             _stx46509_
             _details46510_)))
  (define gxc#verbose
    (lambda _args46506_
      (if (gxc#current-compile-verbose)
          (apply displayln _args46506_)
          '#!void)))
  (define gxc#compile-file
    (let ((_opt-lambda4648446496_
           (lambda (_srcpath46486_ _opts46487_)
             (begin
               (if (string? _srcpath46486_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath46486_))
               (let ((_outdir46489_ (pgetq 'output-dir: _opts46487_))
                     (_invoke-gsc?46490_ (pgetq 'invoke-gsc: _opts46487_))
                     (_gsc-options46491_ (pgetq 'gsc-options: _opts46487_))
                     (_keep-scm?46492_ (pgetq 'keep-scm: _opts46487_))
                     (_verbosity46493_ (pgetq 'verbose: _opts46487_)))
                 (begin
                   (if _outdir46489_ (create-directory* _outdir46489_) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile " _srcpath46486_)
                        (gxc#compile-top-module
                         (gx#import-module _srcpath46486_))))
                    gxc#current-compile-output-dir
                    _outdir46489_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?46490_
                    gxc#current-compile-gsc-options
                    _gsc-options46491_
                    gxc#current-compile-keep-scm
                    _keep-scm?46492_
                    gxc#current-compile-verbose
                    _verbosity46493_)))))))
      (lambda _g46517_
        (let ((_g46516_ (length _g46517_)))
          (cond ((fx= _g46516_ 1)
                 (apply (lambda (_srcpath46499_)
                          (let ((_opts46501_ '()))
                            (_opt-lambda4648446496_
                             _srcpath46499_
                             _opts46501_)))
                        _g46517_))
                ((fx= _g46516_ 2)
                 (apply (lambda (_srcpath46503_ _opts46504_)
                          (_opt-lambda4648446496_ _srcpath46503_ _opts46504_))
                        _g46517_))
                (else (error "No clause matching arguments" _g46517_)))))))
  (define gxc#compile-top-module
    (lambda (_ctx46482_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose '"compile " (gx#expander-context-id _ctx46482_))
           (gxc#collect-bindings _ctx46482_)
           (gxc#compile-runtime-code _ctx46482_)
           (gxc#compile-meta-code _ctx46482_)))
       gx#current-expander-context
       _ctx46482_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (gxc#make-symbol-table)
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx46480_)
      (gxc#apply-collect-bindings (gx#module-context-code _ctx46480_))))
  (define gxc#compile-runtime-code
    (lambda (_ctx46447_)
      (let ((_generate-runtime-code46450_
             (lambda (_ctx46465_ _code46466_)
               (let ((_runtime-code46469_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code46466_))
                       gx#current-expander-context
                       _ctx46465_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx46465_ '0 '".scm")
                  _runtime-code46469_)))))
        (let ((_generate-loader-code46451_
               (lambda (_ctx46455_ _code46456_ _rt46457_)
                 (let ((_loader-code46460_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code46456_))
                         gx#current-expander-context
                         _ctx46455_)))
                   (let ((_loader-code46462_
                          (if _rt46457_
                              (cons 'begin
                                    (cons _loader-code46460_
                                          (cons (cons 'load-module
                                                      (cons _rt46457_ '()))
                                                '())))
                              _loader-code46460_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx46455_ 'rt '".scm")
                        _loader-code46462_)))))))
          (let ((_compile146449_
                 (lambda (_ctx46471_)
                   (let ((_code46473_ (gx#module-context-code _ctx46471_)))
                     (let ((_rt46477_
                            (if (gxc#apply-find-runtime-code _code46473_)
                                (let ((_idstr46475_
                                       (symbol->string
                                        (gx#expander-context-id _ctx46471_))))
                                  (string-append _idstr46475_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt46477_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx46471_
                                  _rt46477_)
                                 (_generate-runtime-code46450_
                                  _ctx46471_
                                  _code46473_))
                               '#!void)
                           (_generate-loader-code46451_
                            _ctx46471_
                            _code46473_
                            _rt46477_))))))))
            (let ((_all-modules46453_
                   (cons _ctx46447_ (gxc#lift-nested-modules _ctx46447_))))
              (for-each _compile146449_ _all-modules46453_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx46349_)
      (let ((_compile-ssi46351_
             (lambda (_code46417_)
               (let ((_path46419_
                      (gxc#compile-output-file _ctx46349_ '#f '".ssi")))
                 (let ((_prelude46430_
                        (let ((_super46421_ (gx#phi-context-super _ctx46349_)))
                          (let ((_$e46423_
                                 (gx#expander-context-id _super46421_)))
                            (if _$e46423_
                                ((lambda (_g4642546427_)
                                   (make-symbol '":" _g4642546427_))
                                 _$e46423_)
                                ':<root>)))))
                   (let ((_ns46432_ (gx#module-context-ns _ctx46349_)))
                     (let ((_idstr46434_
                            (symbol->string
                             (gx#expander-context-id _ctx46349_))))
                       (let ((_pkg46441_
                              (let ((_$e46436_
                                     (string-rindex _idstr46434_ '#\/)))
                                (if _$e46436_
                                    ((lambda (_x46439_)
                                       (string->symbol
                                        (substring _idstr46434_ '0 _x46439_)))
                                     _$e46436_)
                                    '#f))))
                         (let ((_rt46443_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx46349_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path46419_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path46419_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude46430_)
                                    (if _pkg46441_
                                        (displayln '"package:" '" " _pkg46441_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns46432_)
                                    (newline)
                                    (pretty-print _code46417_)
                                    (if _rt46443_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt46443_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi46352_
               (lambda (_part46357_)
                 (let ((_part4635846371_ _part46357_))
                   (let ((_E4636046375_
                          (lambda ()
                            (error '"No clause matching" _part4635846371_))))
                     (let ((_K4636146386_
                            (lambda (_code46378_
                                     _n46379_
                                     _phi46380_
                                     _phi-ctx46381_)
                              (let ((_code46384_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code46378_))
                                      gx#current-expander-context
                                      _phi-ctx46381_
                                      gx#current-expander-phi
                                      _phi46380_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx46349_
                                  _n46379_
                                  '".scm")
                                 _code46384_)))))
                       (if (##pair? _part4635846371_)
                           (let ((_hd4636246389_ (##car _part4635846371_))
                                 (_tl4636346391_ (##cdr _part4635846371_)))
                             (let ((_phi-ctx46394_ _hd4636246389_))
                               (if (##pair? _tl4636346391_)
                                   (let ((_hd4636446396_
                                          (##car _tl4636346391_))
                                         (_tl4636546398_
                                          (##cdr _tl4636346391_)))
                                     (let ((_phi46401_ _hd4636446396_))
                                       (if (##pair? _tl4636546398_)
                                           (let ((_hd4636646403_
                                                  (##car _tl4636546398_))
                                                 (_tl4636746405_
                                                  (##cdr _tl4636546398_)))
                                             (let ((_n46408_ _hd4636646403_))
                                               (if (##pair? _tl4636746405_)
                                                   (let ((_hd4636846410_
                                                          (##car _tl4636746405_))
                                                         (_tl4636946412_
                                                          (##cdr _tl4636746405_)))
                                                     (let ((_code46415_
                                                            _hd4636846410_))
                                                       (if (##null? _tl4636946412_)
                                                           (_K4636146386_
                                                            _code46415_
                                                            _n46408_
                                                            _phi46401_
                                                            _phi-ctx46394_)
                                                           (_E4636046375_))))
                                                   (_E4636046375_))))
                                           (_E4636046375_))))
                                   (_E4636046375_))))
                           (_E4636046375_))))))))
          (let ((_g46518_ (gxc#generate-meta-code _ctx46349_)))
            (begin
              (let ((_g46519_ (values-count _g46518_)))
                (if (not (fx= _g46519_ 2))
                    (error "Context expects 2 values" _g46519_)))
              (let ((_ssi-code46354_ (values-ref _g46518_ 0))
                    (_phi-code46355_ (values-ref _g46518_ 1)))
                (begin
                  (_compile-ssi46351_ _ssi-code46354_)
                  (for-each _compile-phi46352_ _phi-code46355_)))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx46342_)
      (let ((_state46344_ (gxc#make-meta-state _ctx46342_)))
        (let ((_ssi-code46346_
               (gxc#apply-generate-meta
                (gx#module-context-code _ctx46342_)
                _state46344_)))
          (let ()
            (values _ssi-code46346_ (gxc#meta-state-end! _state46344_)))))))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#generate-runtime-phi
    (lambda (_stx46335_)
      (let ((_lifts46337_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code46340_ (gxc#apply-generate-runtime-phi _stx46335_)))
             (if (null? (unbox _lifts46337_))
                 _code46340_
                 (cons 'begin
                       (foldr cons
                              (cons _code46340_ '())
                              (reverse (unbox _lifts46337_)))))))
         gxc#current-compile-lift
         _lifts46337_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx46331_)
      (let ((_modules46333_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (gx#module-context-code _ctx46331_)
           _modules46333_)
          (reverse (unbox _modules46333_))))))
  (define gxc#compile-scm-file
    (lambda (_path46327_ _code46328_)
      (begin
        (gxc#verbose '"compile " _path46327_)
        (with-output-to-file
         (cons 'path: (cons _path46327_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code46328_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path46327_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path46327_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path46313_)
      (let ((_gsc-args46320_
             (let ((_$e46315_ (gxc#current-compile-gsc-options)))
               (if _$e46315_
                   ((lambda (_opts46318_)
                      (foldr cons (cons _path46313_ '()) _opts46318_))
                    _$e46315_)
                   (cons _path46313_ '())))))
        (let ((_proc46322_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args46320_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status46324_ (process-status _proc46322_)))
            (let ()
              (if (zero? _status46324_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path46313_
                   _status46324_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx46285_ _n46286_ _ext46287_)
      (let ((_module-relative-path46289_
             (lambda (_ctx46311_)
               (path-strip-directory
                (symbol->string (gx#expander-context-id _ctx46311_))))))
        (let ((_module-source-directory46290_
               (lambda (_ctx46307_)
                 (path-directory
                  (let ((_mpath46309_ (gx#module-context-path _ctx46307_)))
                    (if (string? _mpath46309_)
                        _mpath46309_
                        (last _mpath46309_)))))))
          (let ((_section-string46291_
                 (lambda (_n46305_)
                   (if (number? _n46305_)
                       (number->string _n46305_)
                       (if (symbol? _n46305_)
                           (symbol->string _n46305_)
                           (if (string? _n46305_)
                               _n46305_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n46305_)))))))
            (let ((_file-name46292_
                   (lambda (_path46303_)
                     (if _n46286_
                         (string-append
                          _path46303_
                          '"__"
                          (_section-string46291_ _n46286_)
                          _ext46287_)
                         (string-append _path46303_ _ext46287_)))))
              (let ((_file-path46293_
                     (lambda ()
                       (let ((_$e46298_ (gxc#current-compile-output-dir)))
                         (if _$e46298_
                             ((lambda (_outdir46301_)
                                (path-expand
                                 (_file-name46292_
                                  (symbol->string
                                   (gx#expander-context-id _ctx46285_)))
                                 _outdir46301_))
                              _$e46298_)
                             (path-expand
                              (_file-name46292_
                               (_module-relative-path46289_ _ctx46285_))
                              (_module-source-directory46290_ _ctx46285_)))))))
                (let ((_path46295_ (_file-path46293_)))
                  (begin
                    (create-directory* (path-directory _path46295_))
                    _path46295_)))))))))
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx46241_ . _args46242_)
      (let ((_g4624446254_
             (lambda (_g4624546251_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4624546251_))))
        (let ((_g4624346282_
               (lambda (_g4624546257_)
                 (if (gx#stx-pair? _g4624546257_)
                     (let ((_e4624746259_ (gx#stx-e _g4624546257_)))
                       (let ((_hd4624846262_ (##car _e4624746259_))
                             (_tl4624946264_ (##cdr _e4624746259_)))
                         ((lambda (_L46267_)
                            (let ((_$e46277_
                                   (hash-get
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L46267_))))
                              (if _$e46277_
                                  ((lambda (_method46280_)
                                     (apply _method46280_
                                            _stx46241_
                                            _args46242_))
                                   _$e46277_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx46241_
                                   _L46267_))))
                          _hd4624846262_)))
                     (_g4624446254_ _g4624546257_)))))
          (_g4624346282_ _stx46241_)))))
  (begin)
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl46238_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl46238_ '%#lambda void)
           (hash-put! _tbl46238_ '%#case-lambda void)
           (hash-put! _tbl46238_ '%#let-values void)
           (hash-put! _tbl46238_ '%#letrec-values void)
           (hash-put! _tbl46238_ '%#letrec*-values void)
           (hash-put! _tbl46238_ '%#quote void)
           (hash-put! _tbl46238_ '%#quote-syntax void)
           (hash-put! _tbl46238_ '%#call void)
           (hash-put! _tbl46238_ '%#if void)
           (hash-put! _tbl46238_ '%#ref void)
           (hash-put! _tbl46238_ '%#set! void)
           _tbl46238_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl46234_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl46234_ '%#begin void)
           (hash-put! _tbl46234_ '%#begin-syntax void)
           (hash-put! _tbl46234_ '%#begin-foreign void)
           (hash-put! _tbl46234_ '%#module void)
           (hash-put! _tbl46234_ '%#import void)
           (hash-put! _tbl46234_ '%#export void)
           (hash-put! _tbl46234_ '%#provide void)
           (hash-put! _tbl46234_ '%#extern void)
           (hash-put! _tbl46234_ '%#define-values void)
           (hash-put! _tbl46234_ '%#define-syntax void)
           (hash-put! _tbl46234_ '%#define-alias void)
           (hash-put! _tbl46234_ '%#declare void)
           _tbl46234_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl46230_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl46230_ (force gxc#&void-special-form))
           (hash-copy! _tbl46230_ (force gxc#&void-expression))
           _tbl46230_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl46226_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl46226_ (force gxc#&void-expression))
           (hash-copy! _tbl46226_ (force gxc#&void-special-form))
           (hash-put! _tbl46226_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl46226_ '%#begin-syntax gxc#collect-begin-syntax%)
           (hash-put! _tbl46226_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl46226_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (hash-put!
            _tbl46226_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl46226_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx46219_ . _args46221_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46219_ _args46221_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl46216_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl46216_ (force gxc#&void))
           (hash-put! _tbl46216_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl46216_ '%#module gxc#lift-modules-module%)
           _tbl46216_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx46209_ . _args46211_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46209_ _args46211_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl46206_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl46206_ '%#begin gxc#find-runtime-begin%)
           (hash-put! _tbl46206_ '%#begin-syntax false)
           (hash-put! _tbl46206_ '%#begin-foreign true)
           (hash-put! _tbl46206_ '%#module false)
           (hash-put! _tbl46206_ '%#import false)
           (hash-put! _tbl46206_ '%#export false)
           (hash-put! _tbl46206_ '%#provide false)
           (hash-put! _tbl46206_ '%#extern false)
           (hash-put! _tbl46206_ '%#define-values true)
           (hash-put! _tbl46206_ '%#define-syntax false)
           (hash-put! _tbl46206_ '%#define-alias false)
           (hash-put! _tbl46206_ '%#declare false)
           (hash-put! _tbl46206_ '%#lambda true)
           (hash-put! _tbl46206_ '%#case-lambda true)
           (hash-put! _tbl46206_ '%#let-values true)
           (hash-put! _tbl46206_ '%#letrec-values true)
           (hash-put! _tbl46206_ '%#letrec*-values true)
           (hash-put! _tbl46206_ '%#quote true)
           (hash-put! _tbl46206_ '%#call true)
           (hash-put! _tbl46206_ '%#if true)
           (hash-put! _tbl46206_ '%#ref true)
           (hash-put! _tbl46206_ '%#set! true)
           _tbl46206_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx46199_ . _args46201_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46199_ _args46201_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl46196_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl46196_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl46196_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#begin-foreign gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#import gxc#generate-runtime-loader-import%)
           (hash-put! _tbl46196_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#extern gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#define-values gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#declare gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#lambda gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#case-lambda gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#let-values gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#letrec-values gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#letrec*-values gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#quote gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#call gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#if gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#ref gxc#generate-runtime-empty)
           (hash-put! _tbl46196_ '%#set! gxc#generate-runtime-empty)
           _tbl46196_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx46189_ . _args46191_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46189_ _args46191_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl46186_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl46186_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl46186_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put!
            _tbl46186_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (hash-put! _tbl46186_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl46186_ '%#import gxc#generate-runtime-empty)
           (hash-put! _tbl46186_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl46186_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl46186_ '%#extern gxc#generate-runtime-empty)
           (hash-put!
            _tbl46186_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (hash-put! _tbl46186_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl46186_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl46186_ '%#declare gxc#generate-runtime-declare%)
           (hash-put! _tbl46186_ '%#lambda gxc#generate-runtime-lambda%)
           (hash-put!
            _tbl46186_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (hash-put!
            _tbl46186_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (hash-put!
            _tbl46186_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (hash-put!
            _tbl46186_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (hash-put! _tbl46186_ '%#quote gxc#generate-runtime-quote%)
           (hash-put! _tbl46186_ '%#call gxc#generate-runtime-call%)
           (hash-put! _tbl46186_ '%#if gxc#generate-runtime-if%)
           (hash-put! _tbl46186_ '%#ref gxc#generate-runtime-ref%)
           (hash-put! _tbl46186_ '%#set! gxc#generate-runtime-setq%)
           _tbl46186_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx46179_ . _args46181_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46179_ _args46181_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl46176_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl46176_ (force gxc#&generate-runtime))
           (hash-put!
            _tbl46176_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (hash-put!
            _tbl46176_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl46176_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx46169_ . _args46171_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46169_ _args46171_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl46166_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl46166_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl46166_ '%#lambda gxc#collect-refs-lambda%)
           (hash-put! _tbl46166_ '%#case-lambda gxc#collect-refs-case-lambda%)
           (hash-put! _tbl46166_ '%#let-values gxc#collect-refs-let-values%)
           (hash-put! _tbl46166_ '%#letrec-values gxc#collect-refs-let-values%)
           (hash-put!
            _tbl46166_
            '%#letrec*-values
            gxc#collect-refs-let-values%)
           (hash-put! _tbl46166_ '%#quote void)
           (hash-put! _tbl46166_ '%#quote-syntax void)
           (hash-put! _tbl46166_ '%#call gxc#collect-begin%)
           (hash-put! _tbl46166_ '%#if gxc#collect-begin%)
           (hash-put! _tbl46166_ '%#ref gxc#collect-refs-ref%)
           (hash-put! _tbl46166_ '%#set! gxc#collect-refs-setq%)
           _tbl46166_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx46159_ . _args46161_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46159_ _args46161_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl46156_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl46156_ (force gxc#&void-expression))
           (hash-put! _tbl46156_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl46156_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put! _tbl46156_ '%#module gxc#generate-meta-module%)
           (hash-put! _tbl46156_ '%#import gxc#generate-meta-import%)
           (hash-put! _tbl46156_ '%#export gxc#generate-meta-export%)
           (hash-put! _tbl46156_ '%#provide gxc#generate-meta-provide%)
           (hash-put! _tbl46156_ '%#extern gxc#generate-meta-extern%)
           (hash-put!
            _tbl46156_
            '%#define-values
            gxc#generate-meta-define-values%)
           (hash-put!
            _tbl46156_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl46156_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put! _tbl46156_ '%#begin-foreign void)
           (hash-put! _tbl46156_ '%#declare void)
           _tbl46156_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx46149_ . _args46151_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46149_ _args46151_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl46146_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl46146_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl46146_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put!
            _tbl46146_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl46146_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put!
            _tbl46146_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (hash-put! _tbl46146_ '%#lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl46146_ '%#case-lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl46146_ '%#let-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl46146_ '%#letrec-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl46146_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl46146_ '%#quote gxc#generate-meta-phi-expr)
           (hash-put! _tbl46146_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (hash-put! _tbl46146_ '%#call gxc#generate-meta-phi-expr)
           (hash-put! _tbl46146_ '%#if gxc#generate-meta-phi-expr)
           (hash-put! _tbl46146_ '%#ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl46146_ '%#set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl46146_ '%#declare void)
           _tbl46146_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx46139_ . _args46141_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx46139_ _args46141_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx46096_ . _args46097_)
      (let ((_g4609946109_
             (lambda (_g4610046106_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4610046106_))))
        (let ((_g4609846136_
               (lambda (_g4610046112_)
                 (if (gx#stx-pair? _g4610046112_)
                     (let ((_e4610246114_ (gx#stx-e _g4610046112_)))
                       (let ((_hd4610346117_ (##car _e4610246114_))
                             (_tl4610446119_ (##cdr _e4610246114_)))
                         ((lambda (_L46122_)
                            (for-each
                             (lambda (_g4613146133_)
                               (apply gxc#compile-e _g4613146133_ _args46097_))
                             (gx#stx-e _L46122_)))
                          _tl4610446119_)))
                     (_g4609946109_ _g4610046112_)))))
          (_g4609846136_ _stx46096_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx46052_ . _args46053_)
      (let ((_g4605546065_
             (lambda (_g4605646062_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4605646062_))))
        (let ((_g4605446093_
               (lambda (_g4605646068_)
                 (if (gx#stx-pair? _g4605646068_)
                     (let ((_e4605846070_ (gx#stx-e _g4605646068_)))
                       (let ((_hd4605946073_ (##car _e4605846070_))
                             (_tl4606046075_ (##cdr _e4605846070_)))
                         ((lambda (_L46078_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g4608846090_)
                                  (apply gxc#compile-e
                                         _g4608846090_
                                         _args46053_))
                                (gx#stx-e _L46078_)))
                             gx#current-expander-phi
                             (fx1+ (gx#current-expander-phi))))
                          _tl4606046075_)))
                     (_g4605546065_ _g4605646068_)))))
          (_g4605446093_ _stx46052_)))))
  (define gxc#collect-module%
    (lambda (_stx45994_ . _args45995_)
      (let ((_g4599746011_
             (lambda (_g4599846008_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4599846008_))))
        (let ((_g4599646049_
               (lambda (_g4599846014_)
                 (if (gx#stx-pair? _g4599846014_)
                     (let ((_e4600146016_ (gx#stx-e _g4599846014_)))
                       (let ((_hd4600246019_ (##car _e4600146016_))
                             (_tl4600346021_ (##cdr _e4600146016_)))
                         (if (gx#stx-pair? _tl4600346021_)
                             (let ((_e4600446024_ (gx#stx-e _tl4600346021_)))
                               (let ((_hd4600546027_ (##car _e4600446024_))
                                     (_tl4600646029_ (##cdr _e4600446024_)))
                                 ((lambda (_L46032_ _L46033_)
                                    (let ((_ctx46046_
                                           (gx#syntax-local-e _L46033_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (gx#module-context-code
                                                 _ctx46046_)
                                                _args45995_))
                                       gx#current-expander-context
                                       _ctx46046_)))
                                  _tl4600646029_
                                  _hd4600546027_)))
                             (_g4599746011_ _g4599846014_))))
                     (_g4599746011_ _g4599846014_)))))
          (_g4599646049_ _stx45994_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx45925_)
      (let ((_g4592745944_
             (lambda (_g4592845941_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4592845941_))))
        (let ((_g4592645991_
               (lambda (_g4592845947_)
                 (if (gx#stx-pair? _g4592845947_)
                     (let ((_e4593145949_ (gx#stx-e _g4592845947_)))
                       (let ((_hd4593245952_ (##car _e4593145949_))
                             (_tl4593345954_ (##cdr _e4593145949_)))
                         (if (gx#stx-pair? _tl4593345954_)
                             (let ((_e4593445957_ (gx#stx-e _tl4593345954_)))
                               (let ((_hd4593545960_ (##car _e4593445957_))
                                     (_tl4593645962_ (##cdr _e4593445957_)))
                                 (if (gx#stx-pair? _tl4593645962_)
                                     (let ((_e4593745965_
                                            (gx#stx-e _tl4593645962_)))
                                       (let ((_hd4593845968_
                                              (##car _e4593745965_))
                                             (_tl4593945970_
                                              (##cdr _e4593745965_)))
                                         (if (gx#stx-null? _tl4593945970_)
                                             ((lambda (_L45973_ _L45974_)
                                                (gx#stx-for-each
                                                 (lambda (_bind45989_)
                                                   (if (gx#identifier?
                                                        _bind45989_)
                                                       (gxc#add-module-binding!
                                                        _bind45989_
                                                        '#f)
                                                       '#!void))
                                                 _L45974_))
                                              _hd4593845968_
                                              _hd4593545960_)
                                             (_g4592745944_ _g4592845947_))))
                                     (_g4592745944_ _g4592845947_))))
                             (_g4592745944_ _g4592845947_))))
                     (_g4592745944_ _g4592845947_)))))
          (_g4592645991_ _stx45925_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx45858_)
      (let ((_g4586045877_
             (lambda (_g4586145874_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4586145874_))))
        (let ((_g4585945922_
               (lambda (_g4586145880_)
                 (if (gx#stx-pair? _g4586145880_)
                     (let ((_e4586445882_ (gx#stx-e _g4586145880_)))
                       (let ((_hd4586545885_ (##car _e4586445882_))
                             (_tl4586645887_ (##cdr _e4586445882_)))
                         (if (gx#stx-pair? _tl4586645887_)
                             (let ((_e4586745890_ (gx#stx-e _tl4586645887_)))
                               (let ((_hd4586845893_ (##car _e4586745890_))
                                     (_tl4586945895_ (##cdr _e4586745890_)))
                                 (if (gx#stx-pair? _tl4586945895_)
                                     (let ((_e4587045898_
                                            (gx#stx-e _tl4586945895_)))
                                       (let ((_hd4587145901_
                                              (##car _e4587045898_))
                                             (_tl4587245903_
                                              (##cdr _e4587045898_)))
                                         (if (gx#stx-null? _tl4587245903_)
                                             ((lambda (_L45906_ _L45907_)
                                                (gxc#add-module-binding!
                                                 _L45907_
                                                 '#t))
                                              _hd4587145901_
                                              _hd4586845893_)
                                             (_g4586045877_ _g4586145880_))))
                                     (_g4586045877_ _g4586145880_))))
                             (_g4586045877_ _g4586145880_))))
                     (_g4586045877_ _g4586145880_)))))
          (_g4585945922_ _stx45858_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx45800_ _modules45801_)
      (let ((_g4580345817_
             (lambda (_g4580445814_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4580445814_))))
        (let ((_g4580245855_
               (lambda (_g4580445820_)
                 (if (gx#stx-pair? _g4580445820_)
                     (let ((_e4580745822_ (gx#stx-e _g4580445820_)))
                       (let ((_hd4580845825_ (##car _e4580745822_))
                             (_tl4580945827_ (##cdr _e4580745822_)))
                         (if (gx#stx-pair? _tl4580945827_)
                             (let ((_e4581045830_ (gx#stx-e _tl4580945827_)))
                               (let ((_hd4581145833_ (##car _e4581045830_))
                                     (_tl4581245835_ (##cdr _e4581045830_)))
                                 ((lambda (_L45838_ _L45839_)
                                    (let ((_ctx45852_
                                           (gx#syntax-local-e _L45839_)))
                                      (begin
                                        (set-box!
                                         _modules45801_
                                         (cons _ctx45852_
                                               (unbox _modules45801_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (gx#module-context-code _ctx45852_)
                                            _modules45801_))
                                         gx#current-expander-context
                                         _ctx45852_))))
                                  _tl4581245835_
                                  _hd4581145833_)))
                             (_g4580345817_ _g4580445820_))))
                     (_g4580345817_ _g4580445820_)))))
          (_g4580245855_ _stx45800_)))))
  (define gxc#add-module-binding!
    (lambda (_id45794_ _syntax?45795_)
      (let ((_eid45797_ (gx#binding-id (gx#resolve-identifier _id45794_)))
            (_ht45798_
             (gxc#symbol-table-bindings (gxc#current-compile-symbol-table))))
        (if (interned-symbol? _eid45797_)
            '#!void
            (hash-put!
             _ht45798_
             _eid45797_
             (gx#make-binding-id
              (gxc#generate-runtime-gensym-reference _eid45797_)
              _syntax?45795_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id45782_)
      (let ((_bind45784_ (gx#resolve-identifier _id45782_)))
        (if _bind45784_
            (let ((_eid45786_ (gx#binding-id _bind45784_))
                  (_ht45787_
                   (gxc#symbol-table-bindings
                    (gxc#current-compile-symbol-table))))
              (if (interned-symbol? _eid45786_)
                  _eid45786_
                  (let ((_$e45789_ (hash-get _ht45787_ _eid45786_)))
                    (if _$e45789_
                        (values _$e45789_)
                        (if (gx#local-binding? _bind45784_)
                            (let ((_gid45792_
                                   (gxc#generate-runtime-gensym-reference
                                    _eid45786_)))
                              (begin
                                (hash-put! _ht45787_ _eid45786_ _gid45792_)
                                _gid45792_))
                            (gxc#raise-compile-error
                             '"Cannot compile reference to uninterned binding"
                             _id45782_
                             _eid45786_
                             _bind45784_))))))
            (if (interned-symbol? (gx#stx-e _id45782_))
                (gx#stx-e _id45782_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id45782_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id45780_)
      (if (gx#identifier? _id45780_)
          (gxc#generate-runtime-binding-id _id45780_)
          (gxc#generate-runtime-temporary))))
  (define gxc#generate-runtime-gensym-reference
    (lambda (_sym45771_)
      (let ((_ht45773_
             (gxc#symbol-table-gensyms (gxc#current-compile-symbol-table))))
        (let ((_$e45775_ (hash-get _ht45773_ _sym45771_)))
          (if _$e45775_
              (values _$e45775_)
              (let ((_g45778_ (make-symbol '"_" _sym45771_ '"_")))
                (begin
                  (hash-put! _ht45773_ _sym45771_ _g45778_)
                  _g45778_)))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id45769_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id45769_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key45731_)
      (if (interned-symbol? _key45731_)
          _key45731_
          (if (uninterned-symbol? _key45731_)
              (gxc#generate-runtime-gensym-reference _key45731_)
              (let ((_key4573245739_ _key45731_))
                (let ((_E4573445743_
                       (lambda ()
                         (error '"No clause matching" _key4573245739_))))
                  (let ((_K4573545757_
                         (lambda (_mark45746_ _eid45747_)
                           (let ((_$e45749_
                                  (gx#expander-mark-subst _mark45746_)))
                             (if _$e45749_
                                 ((lambda (_ht45752_)
                                    (let ((_$e45754_
                                           (hash-get _ht45752_ _eid45747_)))
                                      (if _$e45754_
                                          (values _$e45754_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid45747_))))
                                  _$e45749_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid45747_))))))
                    (if (##pair? _key4573245739_)
                        (let ((_hd4573645760_ (##car _key4573245739_))
                              (_tl4573745762_ (##cdr _key4573245739_)))
                          (let ((_eid45765_ _hd4573645760_))
                            (let ((_mark45767_ _tl4573745762_))
                              (_K4573545757_ _mark45767_ _eid45765_))))
                        (_E4573445743_)))))))))
  (define gxc#generate-runtime-temporary
    (let ((_opt-lambda4571645723_
           (lambda (_top45718_)
             (if _top45718_
                 (let ((_ns45720_
                        (gx#module-context-ns (gx#current-expander-context)))
                       (_phi45721_ (gx#current-expander-phi)))
                   (if (fxpositive? _phi45721_)
                       (make-symbol
                        _ns45720_
                        '"["
                        (number->string _phi45721_)
                        '"]#_"
                        (gensym)
                        '"_")
                       (make-symbol _ns45720_ '"#_" (gensym) '"_")))
                 (make-symbol '"_" (gensym) '"_")))))
      (lambda _g46521_
        (let ((_g46520_ (length _g46521_)))
          (cond ((fx= _g46520_ 0)
                 (apply (lambda ()
                          (let ((_top45727_ '#f))
                            (_opt-lambda4571645723_ _top45727_)))
                        _g46521_))
                ((fx= _g46520_ 1)
                 (apply (lambda (_top45729_)
                          (_opt-lambda4571645723_ _top45729_))
                        _g46521_))
                (else (error "No clause matching arguments" _g46521_)))))))
  (define gxc#generate-runtime-empty (lambda (_stx45715_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx45677_)
      (let ((_g4567945689_
             (lambda (_g4568045686_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4568045686_))))
        (let ((_g4567845712_
               (lambda (_g4568045692_)
                 (if (gx#stx-pair? _g4568045692_)
                     (let ((_e4568245694_ (gx#stx-e _g4568045692_)))
                       (let ((_hd4568345697_ (##car _e4568245694_))
                             (_tl4568445699_ (##cdr _e4568245694_)))
                         ((lambda (_L45702_)
                            (cons 'begin
                                  (map gxc#compile-e (gx#stx-e _L45702_))))
                          _tl4568445699_)))
                     (_g4567945689_ _g4568045692_)))))
          (_g4567845712_ _stx45677_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx45639_)
      (let ((_g4564145651_
             (lambda (_g4564245648_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4564245648_))))
        (let ((_g4564045674_
               (lambda (_g4564245654_)
                 (if (gx#stx-pair? _g4564245654_)
                     (let ((_e4564445656_ (gx#stx-e _g4564245654_)))
                       (let ((_hd4564545659_ (##car _e4564445656_))
                             (_tl4564645661_ (##cdr _e4564445656_)))
                         ((lambda (_L45664_)
                            (cons 'begin (gx#syntax->datum _L45664_)))
                          _tl4564645661_)))
                     (_g4564145651_ _g4564245654_)))))
          (_g4564045674_ _stx45639_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx45601_)
      (let ((_g4560345613_
             (lambda (_g4560445610_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4560445610_))))
        (let ((_g4560245636_
               (lambda (_g4560445616_)
                 (if (gx#stx-pair? _g4560445616_)
                     (let ((_e4560645618_ (gx#stx-e _g4560445616_)))
                       (let ((_hd4560745621_ (##car _e4560645618_))
                             (_tl4560845623_ (##cdr _e4560645618_)))
                         ((lambda (_L45626_)
                            (cons 'declare (map gx#syntax->datum _L45626_)))
                          _tl4560845623_)))
                     (_g4560345613_ _g4560445616_)))))
          (_g4560245636_ _stx45601_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx45365_)
      (let ((_g4536745384_
             (lambda (_g4536845381_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4536845381_))))
        (let ((_g4536645598_
               (lambda (_g4536845387_)
                 (if (gx#stx-pair? _g4536845387_)
                     (let ((_e4537145389_ (gx#stx-e _g4536845387_)))
                       (let ((_hd4537245392_ (##car _e4537145389_))
                             (_tl4537345394_ (##cdr _e4537145389_)))
                         (if (gx#stx-pair? _tl4537345394_)
                             (let ((_e4537445397_ (gx#stx-e _tl4537345394_)))
                               (let ((_hd4537545400_ (##car _e4537445397_))
                                     (_tl4537645402_ (##cdr _e4537445397_)))
                                 (if (gx#stx-pair? _tl4537645402_)
                                     (let ((_e4537745405_
                                            (gx#stx-e _tl4537645402_)))
                                       (let ((_hd4537845408_
                                              (##car _e4537745405_))
                                             (_tl4537945410_
                                              (##cdr _e4537745405_)))
                                         (if (gx#stx-null? _tl4537945410_)
                                             ((lambda (_L45413_ _L45414_)
                                                (let ((_g4543145444_
                                                       (lambda (_g4543245441_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g4543245441_))))
                                                  (let ((_g4543045558_
                                                         (lambda (_g4543245447_)
                                                           ((lambda ()
                                                              (let ((_tmp45451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary '#t)))
                        (let ((_body45555_
                               ((letrec ((_lp45453_
                                          (lambda (_rest45455_
                                                   _k45456_
                                                   _r45457_)
                                            (let ((_g4546245478_
                                                   (lambda (_g4546345475_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4546345475_))))
                                              (let ((_g4546145485_
                                                     (lambda (_g4546345481_)
                                                       ((lambda ()
                                                          (reverse _r45457_))))))
                                                (let ((_g4546045506_
                                                       (lambda (_g4546345488_)
                                                         ((lambda (_L45490_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L45490_)
                        (foldl cons
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L45490_)
                                                 (cons (cons 'values->list
                                                             (cons _tmp45451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k45456_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _r45457_)
                        (_g4546145485_ _g4546345488_)))
                  _g4546345488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g4545945530_
                                                         (lambda (_g4546345509_)
                                                           (if (gx#stx-pair?
                                                                _g4546345509_)
                                                               (let ((_e4547045511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g4546345509_)))
                         (let ((_hd4547145514_ (##car _e4547045511_))
                               (_tl4547245516_ (##cdr _e4547045511_)))
                           ((lambda (_L45519_ _L45520_)
                              (_lp45453_
                               _L45519_
                               (fx1+ _k45456_)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L45520_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp45451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k45456_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r45457_)))
                            _tl4547245516_
                            _hd4547145514_)))
                       (_g4546045506_ _g4546345509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g4545845552_
                                                           (lambda (_g4546345533_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4546345533_)
                         (let ((_e4546545535_ (gx#stx-e _g4546345533_)))
                           (let ((_hd4546645538_ (##car _e4546545535_))
                                 (_tl4546745540_ (##cdr _e4546545535_)))
                             (if (gx#stx-datum? _hd4546645538_)
                                 (if (equal? (gx#stx-e _hd4546645538_) '#f)
                                     ((lambda (_L45543_)
                                        (_lp45453_
                                         _L45543_
                                         (fx1+ _k45456_)
                                         _r45457_))
                                      _tl4546745540_)
                                     (_g4545945530_ _g4546345533_))
                                 (_g4545945530_ _g4546345533_))))
                         (_g4545945530_ _g4546345533_)))))
              (_g4545845552_ _rest45455_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp45453_)
                                _L45414_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp45451_
                                                    (cons (gxc#compile-e
                                                           _L45413_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp45451_
                                               _L45414_)
                                              _body45555_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g4542945580_
                                                           (lambda (_g4543245561_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4543245561_)
                         (let ((_e4543745563_ (gx#stx-e _g4543245561_)))
                           (let ((_hd4543845566_ (##car _e4543745563_))
                                 (_tl4543945568_ (##cdr _e4543745563_)))
                             (if (gx#stx-null? _tl4543945568_)
                                 ((lambda (_L45571_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L45571_)
                                                (cons (gxc#compile-e _L45413_)
                                                      '()))))
                                  _hd4543845566_)
                                 (_g4543045558_ _g4543245561_))))
                         (_g4543045558_ _g4543245561_)))))
              (let ((_g4542845595_
                     (lambda (_g4543245583_)
                       (if (gx#stx-pair? _g4543245583_)
                           (let ((_e4543345585_ (gx#stx-e _g4543245583_)))
                             (let ((_hd4543445588_ (##car _e4543345585_))
                                   (_tl4543545590_ (##cdr _e4543345585_)))
                               (if (gx#stx-datum? _hd4543445588_)
                                   (if (equal? (gx#stx-e _hd4543445588_) '#f)
                                       (if (gx#stx-null? _tl4543545590_)
                                           ((lambda ()
                                              (gxc#compile-e _L45413_)))
                                           (_g4542945580_ _g4543245583_))
                                       (_g4542945580_ _g4543245583_))
                                   (_g4542945580_ _g4543245583_))))
                           (_g4542945580_ _g4543245583_)))))
                (_g4542845595_ _L45414_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd4537845408_
                                              _hd4537545400_)
                                             (_g4536745384_ _g4536845387_))))
                                     (_g4536745384_ _g4536845387_))))
                             (_g4536745384_ _g4536845387_))))
                     (_g4536745384_ _g4536845387_)))))
          (_g4536645598_ _stx45365_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals45353_ _hd45354_)
      (let ((_len45356_ (gx#stx-length _hd45354_)))
        (let ((_cmp45358_ (if (gx#stx-list? _hd45354_) 'fx= 'fx>=)))
          (let ((_errmsg45360_
                 (string-append
                  (if (gx#stx-list? _hd45354_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len45356_)
                  '" values")))
            (let ((_count45362_ (gxc#generate-runtime-temporary)))
              (let ()
                (if (if (not (gx#stx-list? _hd45354_)) (fx= _len45356_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count45362_
                                            (cons (cons 'values-count
                                                        (cons _vals45353_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp45358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count45362_ (cons _len45356_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg45360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count45362_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx45286_)
      (let ((_g4528845305_
             (lambda (_g4528945302_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4528945302_))))
        (let ((_g4528745350_
               (lambda (_g4528945308_)
                 (if (gx#stx-pair? _g4528945308_)
                     (let ((_e4529245310_ (gx#stx-e _g4528945308_)))
                       (let ((_hd4529345313_ (##car _e4529245310_))
                             (_tl4529445315_ (##cdr _e4529245310_)))
                         (if (gx#stx-pair? _tl4529445315_)
                             (let ((_e4529545318_ (gx#stx-e _tl4529445315_)))
                               (let ((_hd4529645321_ (##car _e4529545318_))
                                     (_tl4529745323_ (##cdr _e4529545318_)))
                                 (if (gx#stx-pair? _tl4529745323_)
                                     (let ((_e4529845326_
                                            (gx#stx-e _tl4529745323_)))
                                       (let ((_hd4529945329_
                                              (##car _e4529845326_))
                                             (_tl4530045331_
                                              (##cdr _e4529845326_)))
                                         (if (gx#stx-null? _tl4530045331_)
                                             ((lambda (_L45334_ _L45335_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L45335_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L45334_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd4529945329_
                                              _hd4529645321_)
                                             (_g4528845305_ _g4528945308_))))
                                     (_g4528845305_ _g4528945308_))))
                             (_g4528845305_ _g4528945308_))))
                     (_g4528845305_ _g4528945308_)))))
          (_g4528745350_ _stx45286_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd45284_)
      (gx#stx-map gxc#generate-runtime-binding-id* _hd45284_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx45141_)
      (let ((_generate145143_
             (lambda (_args45274_ _arglen45275_ _hd45276_ _body45277_)
               (let ((_len45279_ (gx#stx-length _hd45276_)))
                 (let ((_condition45281_
                        (if (gx#stx-list? _hd45276_)
                            (cons 'fx=
                                  (cons _arglen45275_ (cons _len45279_ '())))
                            (if (> _len45279_ '0)
                                (cons 'fx>=
                                      (cons _arglen45275_
                                            (cons _len45279_ '())))
                                '#t))))
                   (let ()
                     (cons _condition45281_
                           (cons (cons 'apply
                                       (cons (cons 'lambda
                                                   (cons (gxc#generate-runtime-lambda-head
                                                          _hd45276_)
                                                         (cons (gxc#compile-e
                                                                _body45277_)
                                                               '())))
                                             (cons _args45274_ '())))
                                 '()))))))))
        (let ((_g4514545173_
               (lambda (_g4514645170_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4514645170_))))
          (let ((_g4514445271_
                 (lambda (_g4514645176_)
                   (if (gx#stx-pair? _g4514645176_)
                       (let ((_e4514945178_ (gx#stx-e _g4514645176_)))
                         (let ((_hd4515045181_ (##car _e4514945178_))
                               (_tl4515145183_ (##cdr _e4514945178_)))
                           (if (gx#stx-pair/null? _tl4515145183_)
                               (if (fx>= (gx#stx-length _tl4515145183_) '0)
                                   (let ((_g46522_
                                          (gx#syntax-split-splice
                                           _tl4515145183_
                                           '0)))
                                     (begin
                                       (let ((_g46523_
                                              (values-count _g46522_)))
                                         (if (not (fx= _g46523_ 2))
                                             (error "Context expects 2 values"
                                                    _g46523_)))
                                       (let ((_target4515245186_
                                              (values-ref _g46522_ 0))
                                             (_tl4515445188_
                                              (values-ref _g46522_ 1)))
                                         (if (gx#stx-null? _tl4515445188_)
                                             (letrec ((_loop4515545191_
                                                       (lambda (_hd4515345194_
                                                                _body4515945196_
                                                                _hd4516045198_)
                                                         (if (gx#stx-pair?
                                                              _hd4515345194_)
                                                             (let ((_e4515645201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd4515345194_)))
                       (let ((_lp-hd4515745204_ (##car _e4515645201_))
                             (_lp-tl4515845206_ (##cdr _e4515645201_)))
                         (if (gx#stx-pair? _lp-hd4515745204_)
                             (let ((_e4516345209_
                                    (gx#stx-e _lp-hd4515745204_)))
                               (let ((_hd4516445212_ (##car _e4516345209_))
                                     (_tl4516545214_ (##cdr _e4516345209_)))
                                 (if (gx#stx-pair? _tl4516545214_)
                                     (let ((_e4516645217_
                                            (gx#stx-e _tl4516545214_)))
                                       (let ((_hd4516745220_
                                              (##car _e4516645217_))
                                             (_tl4516845222_
                                              (##cdr _e4516645217_)))
                                         (if (gx#stx-null? _tl4516845222_)
                                             (_loop4515545191_
                                              _lp-tl4515845206_
                                              (cons _hd4516745220_
                                                    _body4515945196_)
                                              (cons _hd4516445212_
                                                    _hd4516045198_))
                                             (_g4514545173_ _g4514645176_))))
                                     (_g4514545173_ _g4514645176_))))
                             (_g4514545173_ _g4514645176_))))
                     (let ((_body4516145225_ (reverse _body4515945196_))
                           (_hd4516245227_ (reverse _hd4516045198_)))
                       ((lambda (_L45230_ _L45231_)
                          (let ((_args45247_ (gxc#generate-runtime-temporary))
                                (_arglen45248_
                                 (gxc#generate-runtime-temporary)))
                            (cons 'lambda
                                  (cons _args45247_
                                        (cons (cons 'let
                                                    (cons (cons (cons _arglen45248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'length (cons _args45247_ '())) '()))
                        '())
                  (cons (cons 'cond
                              (foldr cons
                                     (cons (cons 'else
                                                 (cons (cons 'error
                                                             (cons '"No clause matching arguments"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args45247_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g4524945252_ _g4525045254_)
                                            (_generate145143_
                                             _args45247_
                                             _arglen45248_
                                             _g4524945252_
                                             _g4525045254_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g4525645259_
                                                            _g4525745261_)
                                                     (cons _g4525645259_
                                                           _g4525745261_))
                                                   '()
                                                   _L45231_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g4526345266_
                                                            _g4526445268_)
                                                     (cons _g4526345266_
                                                           _g4526445268_))
                                                   '()
                                                   _L45230_)))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _body4516145225_
                        _hd4516245227_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop4515545191_
                                                _target4515245186_
                                                '()
                                                '()))
                                             (_g4514545173_ _g4514645176_)))))
                                   (_g4514545173_ _g4514645176_))
                               (_g4514545173_ _g4514645176_))))
                       (_g4514545173_ _g4514645176_)))))
            (_g4514445271_ _stx45141_))))))
  (define gxc#generate-runtime-let-values%
    (let ((_opt-lambda4482145131_
           (lambda (_stx44823_ _compiled-body?44824_)
             (let ((_generate-simple44826_
                    (lambda (_hd45128_ _body45129_)
                      (gxc#generate-runtime-simple-let
                       'let
                       _hd45128_
                       _body45129_
                       _compiled-body?44824_))))
               (let ((_generate-values-post44828_
                      (lambda (_post44900_ _body44901_)
                        ((letrec ((_lp44903_
                                   (lambda (_rest44905_ _body44906_)
                                     (let ((_rest4490744915_ _rest44905_))
                                       (let ((_E4491044919_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _rest4490744915_))))
                                         (let ((_else4490944923_
                                                (lambda () _body44906_)))
                                           (let ((_K4491144929_
                                                  (lambda (_rest44926_
                                                           _bind44927_)
                                                    (_lp44903_
                                                     _rest44926_
                                                     (cons 'let
                                                           (cons _bind44927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body44906_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _rest4490744915_)
                                                 (let ((_hd4491244932_
                                                        (##car _rest4490744915_))
                                                       (_tl4491344934_
                                                        (##cdr _rest4490744915_)))
                                                   (let ((_bind44937_
                                                          _hd4491244932_))
                                                     (let ((_rest44939_
                                                            _tl4491344934_))
                                                       (_K4491144929_
                                                        _rest44939_
                                                        _bind44937_))))
                                                 (_else4490944923_)))))))))
                           _lp44903_)
                         _post44900_
                         _body44901_))))
                 (let ((_generate-values-check44829_
                        (lambda (_check44897_ _body44898_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body44898_ '())
                                       (reverse _check44897_))))))
                   (let ((_generate-values44827_
                          (lambda (_hd44941_ _body44942_)
                            ((letrec ((_lp44944_
                                       (lambda (_rest44946_
                                                _bind44947_
                                                _check44948_
                                                _post44949_)
                                         (let ((_g4495244963_
                                                (lambda (_g4495344960_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g4495344960_))))
                                           (let ((_g4495144977_
                                                  (lambda (_g4495344966_)
                                                    ((lambda ()
                                                       (let ((_body44970_
                                                              (if _compiled-body?44824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body44942_
                          (gxc#compile-e _body44942_))))
                 (let ((_body44972_
                        (_generate-values-post44828_ _post44949_ _body44970_)))
                   (let ((_body44974_
                          (_generate-values-check44829_
                           _check44948_
                           _body44972_)))
                     (let ()
                       (cons 'let
                             (cons (reverse _bind44947_)
                                   (cons _body44974_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g4495045125_
                                                    (lambda (_g4495344980_)
                                                      (if (gx#stx-pair?
                                                           _g4495344980_)
                                                          (let ((_e4495644982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g4495344980_)))
                    (let ((_hd4495744985_ (##car _e4495644982_))
                          (_tl4495844987_ (##cdr _e4495644982_)))
                      ((lambda (_L44990_ _L44991_)
                         (let ((_g4500645031_
                                (lambda (_g4500745028_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g4500745028_))))
                           (let ((_g4500545075_
                                  (lambda (_g4500745034_)
                                    (if (gx#stx-pair? _g4500745034_)
                                        (let ((_e4502145036_
                                               (gx#stx-e _g4500745034_)))
                                          (let ((_hd4502245039_
                                                 (##car _e4502145036_))
                                                (_tl4502345041_
                                                 (##cdr _e4502145036_)))
                                            (if (gx#stx-pair? _tl4502345041_)
                                                (let ((_e4502445044_
                                                       (gx#stx-e
                                                        _tl4502345041_)))
                                                  (let ((_hd4502545047_
                                                         (##car _e4502445044_))
                                                        (_tl4502645049_
                                                         (##cdr _e4502445044_)))
                                                    (if (gx#stx-null?
                                                         _tl4502645049_)
                                                        ((lambda (_L45052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L45053_)
                   (let ((_vals45066_ (gxc#generate-runtime-temporary)))
                     (let ((_expr45068_ (gxc#compile-e _L45052_)))
                       (let ((_check-values45070_
                              (gxc#generate-runtime-check-values
                               _vals45066_
                               _L45053_)))
                         (let ((_refs45072_
                                (gxc#generate-runtime-let-values-bind
                                 _vals45066_
                                 _L45053_)))
                           (let ()
                             (_lp44944_
                              _L44990_
                              (cons (cons _vals45066_ (cons _expr45068_ '()))
                                    _bind44947_)
                              (cons _check-values45070_ _check44948_)
                              (cons _refs45072_ _post44949_))))))))
                 _hd4502545047_
                 _hd4502245039_)
                (_g4500645031_ _g4500745034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4500645031_
                                                 _g4500745034_))))
                                        (_g4500645031_ _g4500745034_)))))
                             (let ((_g4500445122_
                                    (lambda (_g4500745078_)
                                      (if (gx#stx-pair? _g4500745078_)
                                          (let ((_e4501045080_
                                                 (gx#stx-e _g4500745078_)))
                                            (let ((_hd4501145083_
                                                   (##car _e4501045080_))
                                                  (_tl4501245085_
                                                   (##cdr _e4501045080_)))
                                              (if (gx#stx-pair? _hd4501145083_)
                                                  (let ((_e4501345088_
                                                         (gx#stx-e
                                                          _hd4501145083_)))
                                                    (let ((_hd4501445091_
                                                           (##car _e4501345088_))
                                                          (_tl4501545093_
                                                           (##cdr _e4501345088_)))
                                                      (if (gx#stx-null?
                                                           _tl4501545093_)
                                                          (if (gx#stx-pair?
                                                               _tl4501245085_)
                                                              (let ((_e4501645096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl4501245085_)))
                        (let ((_hd4501745099_ (##car _e4501645096_))
                              (_tl4501845101_ (##cdr _e4501645096_)))
                          (if (gx#stx-null? _tl4501845101_)
                              ((lambda (_L45104_ _L45105_)
                                 (let ((_eid45119_
                                        (gxc#generate-runtime-binding-id*
                                         _L45105_))
                                       (_expr45120_ (gxc#compile-e _L45104_)))
                                   (_lp44944_
                                    _L44990_
                                    (cons (cons _eid45119_
                                                (cons _expr45120_ '()))
                                          _bind44947_)
                                    _check44948_
                                    _post44949_)))
                               _hd4501745099_
                               _hd4501445091_)
                              (_g4500545075_ _g4500745078_))))
                      (_g4500545075_ _g4500745078_))
                  (_g4500545075_ _g4500745078_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4500545075_
                                                   _g4500745078_))))
                                          (_g4500545075_ _g4500745078_)))))
                               (_g4500445122_ _L44991_)))))
                       _tl4495844987_
                       _hd4495744985_)))
                  (_g4495144977_ _g4495344980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4495045125_
                                                _rest44946_)))))))
                               _lp44944_)
                             _hd44941_
                             '()
                             '()
                             '()))))
                     (let ((_g4483144848_
                            (lambda (_g4483244845_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4483244845_))))
                       (let ((_g4483044894_
                              (lambda (_g4483244851_)
                                (if (gx#stx-pair? _g4483244851_)
                                    (let ((_e4483544853_
                                           (gx#stx-e _g4483244851_)))
                                      (let ((_hd4483644856_
                                             (##car _e4483544853_))
                                            (_tl4483744858_
                                             (##cdr _e4483544853_)))
                                        (if (gx#stx-pair? _tl4483744858_)
                                            (let ((_e4483844861_
                                                   (gx#stx-e _tl4483744858_)))
                                              (let ((_hd4483944864_
                                                     (##car _e4483844861_))
                                                    (_tl4484044866_
                                                     (##cdr _e4483844861_)))
                                                (if (gx#stx-pair?
                                                     _tl4484044866_)
                                                    (let ((_e4484144869_
                                                           (gx#stx-e
                                                            _tl4484044866_)))
                                                      (let ((_hd4484244872_
                                                             (##car _e4484144869_))
                                                            (_tl4484344874_
                                                             (##cdr _e4484144869_)))
                                                        (if (gx#stx-null?
                                                             _tl4484344874_)
                                                            ((lambda (_L44877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L44878_)
                       (if (gxc#generate-runtime-simple-let? _L44878_)
                           (_generate-simple44826_ _L44878_ _L44877_)
                           (_generate-values44827_ _L44878_ _L44877_)))
                     _hd4484244872_
                     _hd4483944864_)
                    (_g4483144848_ _g4483244851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4483144848_
                                                     _g4483244851_))))
                                            (_g4483144848_ _g4483244851_))))
                                    (_g4483144848_ _g4483244851_)))))
                         (_g4483044894_ _stx44823_))))))))))
      (lambda _g46525_
        (let ((_g46524_ (length _g46525_)))
          (cond ((fx= _g46524_ 1)
                 (apply (lambda (_stx45134_)
                          (let ((_compiled-body?45136_ '#f))
                            (_opt-lambda4482145131_
                             _stx45134_
                             _compiled-body?45136_)))
                        _g46525_))
                ((fx= _g46524_ 2)
                 (apply (lambda (_stx45138_ _compiled-body?45139_)
                          (_opt-lambda4482145131_
                           _stx45138_
                           _compiled-body?45139_))
                        _g46525_))
                (else (error "No clause matching arguments" _g46525_)))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals44722_ _hd44723_)
      ((letrec ((_lp44725_
                 (lambda (_rest44727_ _k44728_ _r44729_)
                   (let ((_g4473444750_
                          (lambda (_g4473544747_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4473544747_))))
                     (let ((_g4473344757_
                            (lambda (_g4473544753_)
                              ((lambda () (reverse _r44729_))))))
                       (let ((_g4473244773_
                              (lambda (_g4473544760_)
                                ((lambda (_L44762_)
                                   (if (gx#identifier? _L44762_)
                                       (foldl cons
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L44762_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals44722_ (cons _k44728_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              _r44729_)
                                       (_g4473344757_ _g4473544760_)))
                                 _g4473544760_))))
                         (let ((_g4473144797_
                                (lambda (_g4473544776_)
                                  (if (gx#stx-pair? _g4473544776_)
                                      (let ((_e4474244778_
                                             (gx#stx-e _g4473544776_)))
                                        (let ((_hd4474344781_
                                               (##car _e4474244778_))
                                              (_tl4474444783_
                                               (##cdr _e4474244778_)))
                                          ((lambda (_L44786_ _L44787_)
                                             (_lp44725_
                                              _L44786_
                                              (fx1+ _k44728_)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L44787_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals44722_ (cons _k44728_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r44729_)))
                                           _tl4474444783_
                                           _hd4474344781_)))
                                      (_g4473244773_ _g4473544776_)))))
                           (let ((_g4473044819_
                                  (lambda (_g4473544800_)
                                    (if (gx#stx-pair? _g4473544800_)
                                        (let ((_e4473744802_
                                               (gx#stx-e _g4473544800_)))
                                          (let ((_hd4473844805_
                                                 (##car _e4473744802_))
                                                (_tl4473944807_
                                                 (##cdr _e4473744802_)))
                                            (if (gx#stx-datum? _hd4473844805_)
                                                (if (equal? (gx#stx-e
                                                             _hd4473844805_)
                                                            '#f)
                                                    ((lambda (_L44810_)
                                                       (_lp44725_
                                                        _L44810_
                                                        (fx1+ _k44728_)
                                                        _r44729_))
                                                     _tl4473944807_)
                                                    (_g4473144797_
                                                     _g4473544800_))
                                                (_g4473144797_
                                                 _g4473544800_))))
                                        (_g4473144797_ _g4473544800_)))))
                             (_g4473044819_ _rest44727_)))))))))
         _lp44725_)
       _hd44723_
       '0
       '())))
  (define gxc#generate-runtime-letrec-values%
    (let ((_opt-lambda4440044712_
           (lambda (_stx44402_ _compiled-body?44403_)
             (let ((_generate-simple44405_
                    (lambda (_hd44709_ _body44710_)
                      (gxc#generate-runtime-simple-let
                       'letrec
                       _hd44709_
                       _body44710_
                       _compiled-body?44403_))))
               (let ((_generate-values-check44407_
                      (lambda (_check44483_ _body44484_)
                        (cons 'begin
                              (foldr cons
                                     (cons _body44484_ '())
                                     (reverse _check44483_))))))
                 (let ((_generate-values-post44408_
                        (lambda (_post44476_ _body44477_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body44477_ '())
                                       (map (lambda (_g4447844480_)
                                              (cons 'set! _g4447844480_))
                                            (reverse _post44476_)))))))
                   (let ((_generate-values44406_
                          (lambda (_hd44486_ _body44487_)
                            ((letrec ((_lp44489_
                                       (lambda (_rest44491_
                                                _bind44492_
                                                _check44493_
                                                _post44494_)
                                         (let ((_g4449744508_
                                                (lambda (_g4449844505_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g4449844505_))))
                                           (let ((_g4449644522_
                                                  (lambda (_g4449844511_)
                                                    ((lambda ()
                                                       (let ((_body44515_
                                                              (if _compiled-body?44403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body44487_
                          (gxc#compile-e _body44487_))))
                 (let ((_body44517_
                        (_generate-values-post44408_ _post44494_ _body44515_)))
                   (let ((_body44519_
                          (_generate-values-check44407_
                           _check44493_
                           _body44517_)))
                     (let ()
                       (cons 'letrec
                             (cons (reverse _bind44492_)
                                   (cons _body44519_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g4449544706_
                                                    (lambda (_g4449844525_)
                                                      (if (gx#stx-pair?
                                                           _g4449844525_)
                                                          (let ((_e4450144527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g4449844525_)))
                    (let ((_hd4450244530_ (##car _e4450144527_))
                          (_tl4450344532_ (##cdr _e4450144527_)))
                      ((lambda (_L44535_ _L44536_)
                         (let ((_g4455144576_
                                (lambda (_g4455244573_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g4455244573_))))
                           (let ((_g4455044656_
                                  (lambda (_g4455244579_)
                                    (if (gx#stx-pair? _g4455244579_)
                                        (let ((_e4456644581_
                                               (gx#stx-e _g4455244579_)))
                                          (let ((_hd4456744584_
                                                 (##car _e4456644581_))
                                                (_tl4456844586_
                                                 (##cdr _e4456644581_)))
                                            (if (gx#stx-pair? _tl4456844586_)
                                                (let ((_e4456944589_
                                                       (gx#stx-e
                                                        _tl4456844586_)))
                                                  (let ((_hd4457044592_
                                                         (##car _e4456944589_))
                                                        (_tl4457144594_
                                                         (##cdr _e4456944589_)))
                                                    (if (gx#stx-null?
                                                         _tl4457144594_)
                                                        ((lambda (_L44597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L44598_)
                   (let ((_vals44611_ (gxc#generate-runtime-temporary)))
                     (let ((_expr44613_ (gxc#compile-e _L44597_)))
                       (let ((_check-values44615_
                              (gxc#generate-runtime-check-values
                               _vals44611_
                               _L44598_)))
                         (let ((_refs44617_
                                (gxc#generate-runtime-let-values-bind
                                 _vals44611_
                                 _L44598_)))
                           (let ()
                             (_lp44489_
                              _L44535_
                              (foldl cons
                                     (cons (cons _vals44611_
                                                 (cons _expr44613_ '()))
                                           _bind44492_)
                                     (map (lambda (_e4461944621_)
                                            (let ((_g4462344632_
                                                   _e4461944621_))
                                              (let ((_E4462544636_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _g4462344632_))))
                                                (let ((_K4462644641_
                                                       (lambda (_eid44639_)
                                                         (cons _eid44639_
                                                               (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _g4462344632_)
                                                      (let ((_hd4462744644_
                                                             (##car _g4462344632_))
                                                            (_tl4462844646_
                                                             (##cdr _g4462344632_)))
                                                        (let ((_eid44649_
                                                               _hd4462744644_))
                                                          (if (##pair? _tl4462844646_)
                                                              (let ((_hd4462944651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl4462844646_))
                            (_tl4463044653_ (##cdr _tl4462844646_)))
                        (if (##null? _tl4463044653_)
                            (_K4462644641_ _eid44649_)
                            (_E4462544636_)))
                      (_E4462544636_))))
              (_E4462544636_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _refs44617_))
                              (cons _check-values44615_ _check44493_)
                              (foldl cons _refs44617_ _post44494_))))))))
                 _hd4457044592_
                 _hd4456744584_)
                (_g4455144576_ _g4455244579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4455144576_
                                                 _g4455244579_))))
                                        (_g4455144576_ _g4455244579_)))))
                             (let ((_g4454944703_
                                    (lambda (_g4455244659_)
                                      (if (gx#stx-pair? _g4455244659_)
                                          (let ((_e4455544661_
                                                 (gx#stx-e _g4455244659_)))
                                            (let ((_hd4455644664_
                                                   (##car _e4455544661_))
                                                  (_tl4455744666_
                                                   (##cdr _e4455544661_)))
                                              (if (gx#stx-pair? _hd4455644664_)
                                                  (let ((_e4455844669_
                                                         (gx#stx-e
                                                          _hd4455644664_)))
                                                    (let ((_hd4455944672_
                                                           (##car _e4455844669_))
                                                          (_tl4456044674_
                                                           (##cdr _e4455844669_)))
                                                      (if (gx#stx-null?
                                                           _tl4456044674_)
                                                          (if (gx#stx-pair?
                                                               _tl4455744666_)
                                                              (let ((_e4456144677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl4455744666_)))
                        (let ((_hd4456244680_ (##car _e4456144677_))
                              (_tl4456344682_ (##cdr _e4456144677_)))
                          (if (gx#stx-null? _tl4456344682_)
                              ((lambda (_L44685_ _L44686_)
                                 (let ((_eid44700_
                                        (gxc#generate-runtime-binding-id*
                                         _L44686_))
                                       (_expr44701_ (gxc#compile-e _L44685_)))
                                   (_lp44489_
                                    _L44535_
                                    (cons (cons _eid44700_
                                                (cons _expr44701_ '()))
                                          _bind44492_)
                                    _check44493_
                                    _post44494_)))
                               _hd4456244680_
                               _hd4455944672_)
                              (_g4455044656_ _g4455244659_))))
                      (_g4455044656_ _g4455244659_))
                  (_g4455044656_ _g4455244659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4455044656_
                                                   _g4455244659_))))
                                          (_g4455044656_ _g4455244659_)))))
                               (_g4454944703_ _L44536_)))))
                       _tl4450344532_
                       _hd4450244530_)))
                  (_g4449644522_ _g4449844525_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4449544706_
                                                _rest44491_)))))))
                               _lp44489_)
                             _hd44486_
                             '()
                             '()
                             '()))))
                     (let ((_g4441044427_
                            (lambda (_g4441144424_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4441144424_))))
                       (let ((_g4440944473_
                              (lambda (_g4441144430_)
                                (if (gx#stx-pair? _g4441144430_)
                                    (let ((_e4441444432_
                                           (gx#stx-e _g4441144430_)))
                                      (let ((_hd4441544435_
                                             (##car _e4441444432_))
                                            (_tl4441644437_
                                             (##cdr _e4441444432_)))
                                        (if (gx#stx-pair? _tl4441644437_)
                                            (let ((_e4441744440_
                                                   (gx#stx-e _tl4441644437_)))
                                              (let ((_hd4441844443_
                                                     (##car _e4441744440_))
                                                    (_tl4441944445_
                                                     (##cdr _e4441744440_)))
                                                (if (gx#stx-pair?
                                                     _tl4441944445_)
                                                    (let ((_e4442044448_
                                                           (gx#stx-e
                                                            _tl4441944445_)))
                                                      (let ((_hd4442144451_
                                                             (##car _e4442044448_))
                                                            (_tl4442244453_
                                                             (##cdr _e4442044448_)))
                                                        (if (gx#stx-null?
                                                             _tl4442244453_)
                                                            ((lambda (_L44456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L44457_)
                       (if (gxc#generate-runtime-simple-let? _L44457_)
                           (_generate-simple44405_ _L44457_ _L44456_)
                           (_generate-values44406_ _L44457_ _L44456_)))
                     _hd4442144451_
                     _hd4441844443_)
                    (_g4441044427_ _g4441144430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4441044427_
                                                     _g4441144430_))))
                                            (_g4441044427_ _g4441144430_))))
                                    (_g4441044427_ _g4441144430_)))))
                         (_g4440944473_ _stx44402_))))))))))
      (lambda _g46527_
        (let ((_g46526_ (length _g46527_)))
          (cond ((fx= _g46526_ 1)
                 (apply (lambda (_stx44715_)
                          (let ((_compiled-body?44717_ '#f))
                            (_opt-lambda4440044712_
                             _stx44715_
                             _compiled-body?44717_)))
                        _g46527_))
                ((fx= _g46526_ 2)
                 (apply (lambda (_stx44719_ _compiled-body?44720_)
                          (_opt-lambda4440044712_
                           _stx44719_
                           _compiled-body?44720_))
                        _g46527_))
                (else (error "No clause matching arguments" _g46527_)))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx43521_)
      (let ((_collect-closures43524_
             (lambda (_forms44342_)
               (map (lambda (_e4434344345_)
                      (let ((_g4434744356_ _e4434344345_))
                        (let ((_E4434944360_
                               (lambda ()
                                 (error '"No clause matching" _g4434744356_))))
                          (let ((_K4435044365_
                                 (lambda (_expr44363_)
                                   (gxc#collect-expression-refs _expr44363_))))
                            (if (##pair? _g4434744356_)
                                (let ((_hd4435144368_ (##car _g4434744356_))
                                      (_tl4435244370_ (##cdr _g4434744356_)))
                                  (if (##pair? _tl4435244370_)
                                      (let ((_hd4435344373_
                                             (##car _tl4435244370_))
                                            (_tl4435444375_
                                             (##cdr _tl4435244370_)))
                                        (let ((_expr44378_ _hd4435344373_))
                                          (if (##null? _tl4435444375_)
                                              (_K4435044365_ _expr44378_)
                                              (_E4434944360_))))
                                      (_E4434944360_)))
                                (_E4434944360_))))))
                    _forms44342_))))
        (let ((_collect-bindings43525_
               (lambda (_forms44266_)
                 (map (lambda (_e4426744269_)
                        (let ((_g4427144280_ _e4426744269_))
                          (let ((_E4427344284_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _g4427144280_))))
                            (let ((_K4427444327_
                                   (lambda (_bind44287_)
                                     ((letrec ((_lp44289_
                                                (lambda (_rest44291_ _r44292_)
                                                  (let ((_rest4429344301_
                                                         _rest44291_))
                                                    (let ((_E4429644305_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest4429344301_))))
              (let ((_else4429544309_
                     (lambda ()
                       (if (gx#identifier? _rest44291_)
                           (cons _rest44291_ _r44292_)
                           _r44292_))))
                (let ((_K4429744315_
                       (lambda (_rest44312_ _id44313_)
                         (if (gx#identifier? _id44313_)
                             (_lp44289_
                              _rest44312_
                              (cons (gx#binding-id
                                     (gx#resolve-identifier _id44313_))
                                    _r44292_))
                             (_lp44289_ _rest44312_ _r44292_)))))
                  (if (##pair? _rest4429344301_)
                      (let ((_hd4429844318_ (##car _rest4429344301_))
                            (_tl4429944320_ (##cdr _rest4429344301_)))
                        (let ((_id44323_ _hd4429844318_))
                          (let ((_rest44325_ _tl4429944320_))
                            (_K4429744315_ _rest44325_ _id44323_))))
                      (_else4429544309_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp44289_)
                                      _bind44287_
                                      '()))))
                              (if (##pair? _g4427144280_)
                                  (let ((_hd4427544330_ (##car _g4427144280_))
                                        (_tl4427644332_ (##cdr _g4427144280_)))
                                    (let ((_bind44335_ _hd4427544330_))
                                      (if (##pair? _tl4427644332_)
                                          (let ((_hd4427744337_
                                                 (##car _tl4427644332_))
                                                (_tl4427844339_
                                                 (##cdr _tl4427644332_)))
                                            (if (##null? _tl4427844339_)
                                                (_K4427444327_ _bind44335_)
                                                (_E4427344284_)))
                                          (_E4427344284_))))
                                  (_E4427344284_))))))
                      _forms44266_))))
          (let ((_closure-reference?43529_
                 (lambda (_closure43818_ _bindings43819_)
                   (ormap (lambda (_g4382043822_)
                            (hash-get _closure43818_ _g4382043822_))
                          _bindings43819_))))
            (let ((_is-effect-expr?43531_
                   (lambda (_expr43729_)
                     (let ((_g4373143741_
                            (lambda (_g4373243738_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4373243738_))))
                       (let ((_g4373043764_
                              (lambda (_g4373243744_)
                                (if (gx#stx-pair? _g4373243744_)
                                    (let ((_e4373443746_
                                           (gx#stx-e _g4373243744_)))
                                      (let ((_hd4373543749_
                                             (##car _e4373443746_))
                                            (_tl4373643751_
                                             (##cdr _e4373443746_)))
                                        ((lambda (_L43754_)
                                           (not (memq (gx#stx-e _L43754_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd4373543749_)))
                                    (_g4373143741_ _g4373243744_)))))
                         (_g4373043764_ _expr43729_))))))
              (let ((_is-lambda-expr?43532_
                     (lambda (_expr43691_)
                       (let ((_g4369343703_
                              (lambda (_g4369443700_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4369443700_))))
                         (let ((_g4369243726_
                                (lambda (_g4369443706_)
                                  (if (gx#stx-pair? _g4369443706_)
                                      (let ((_e4369643708_
                                             (gx#stx-e _g4369443706_)))
                                        (let ((_hd4369743711_
                                               (##car _e4369643708_))
                                              (_tl4369843713_
                                               (##cdr _e4369643708_)))
                                          ((lambda (_L43716_)
                                             (memq (gx#stx-e _L43716_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd4369743711_)))
                                      (_g4369343703_ _g4369443706_)))))
                           (_g4369243726_ _expr43691_))))))
                (let ((_lift-rec43528_
                       (lambda (_forms43825_)
                         ((letrec ((_lp43827_
                                    (lambda (_rest43829_
                                             _pre43830_
                                             _bind43831_
                                             _init43832_)
                                      (let ((_rest4383343841_ _rest43829_))
                                        (let ((_E4383643845_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest4383343841_))))
                                          (let ((_else4383543849_
                                                 (lambda ()
                                                   (values (reverse _pre43830_)
                                                           (reverse _bind43831_)
                                                           (reverse _init43832_)))))
                                            (let ((_K4383744040_
                                                   (lambda (_rest43852_
                                                            _bind-hd43853_)
                                                     (let ((_g4385743892_
                                                            (lambda (_g4385843889_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g4385843889_))))
                                                       (let ((_g4385643949_
                                                              (lambda (_g4385843895_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g4385843895_)
                            (let ((_e4388243897_ (gx#stx-e _g4385843895_)))
                              (let ((_hd4388343900_ (##car _e4388243897_))
                                    (_tl4388443902_ (##cdr _e4388243897_)))
                                (if (gx#stx-pair? _tl4388443902_)
                                    (let ((_e4388543905_
                                           (gx#stx-e _tl4388443902_)))
                                      (let ((_hd4388643908_
                                             (##car _e4388543905_))
                                            (_tl4388743910_
                                             (##cdr _e4388543905_)))
                                        (if (gx#stx-null? _tl4388743910_)
                                            ((lambda (_L43913_ _L43914_)
                                               (let ((_vals43933_
                                                      (gxc#generate-runtime-temporary)))
                                                 (let ((_expr43935_
                                                        (gxc#compile-e
                                                         _L43913_)))
                                                   (let ((_check-values43937_
                                                          (gxc#generate-runtime-check-values
                                                           _vals43933_
                                                           _L43914_)))
                                                     (let ((_refs43939_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals43933_
                                                             _L43914_)))
                                                       (let ()
                                                         (_lp43827_
                                                          _rest43852_
                                                          (foldl (lambda (_ref43942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _r43943_)
                           (cons (cons (car _ref43942_) (cons '#!void '()))
                                 _r43943_))
                         _pre43830_
                         _refs43939_)
                  _bind43831_
                  (cons (cons 'let
                              (cons (cons (cons _vals43933_
                                                (cons _expr43935_ '()))
                                          '())
                                    (cons _check-values43937_
                                          (cons (map (lambda (_g4394443946_)
                                                       (cons 'set!
                                                             _g4394443946_))
                                                     _refs43939_)
                                                '()))))
                        _init43832_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd4388643908_
                                             _hd4388343900_)
                                            (_g4385743892_ _g4385843895_))))
                                    (_g4385743892_ _g4385843895_))))
                            (_g4385743892_ _g4385843895_)))))
                 (let ((_g4385543995_
                        (lambda (_g4385843952_)
                          (if (gx#stx-pair? _g4385843952_)
                              (let ((_e4387143954_ (gx#stx-e _g4385843952_)))
                                (let ((_hd4387243957_ (##car _e4387143954_))
                                      (_tl4387343959_ (##cdr _e4387143954_)))
                                  (if (gx#stx-pair? _hd4387243957_)
                                      (let ((_e4387443962_
                                             (gx#stx-e _hd4387243957_)))
                                        (let ((_hd4387543965_
                                               (##car _e4387443962_))
                                              (_tl4387643967_
                                               (##cdr _e4387443962_)))
                                          (if (gx#stx-null? _tl4387643967_)
                                              (if (gx#stx-pair? _tl4387343959_)
                                                  (let ((_e4387743970_
                                                         (gx#stx-e
                                                          _tl4387343959_)))
                                                    (let ((_hd4387843973_
                                                           (##car _e4387743970_))
                                                          (_tl4387943975_
                                                           (##cdr _e4387743970_)))
                                                      (if (gx#stx-null?
                                                           _tl4387943975_)
                                                          ((lambda (_L43978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L43979_)
                     (let ((_eid43993_
                            (gxc#generate-runtime-binding-id _L43979_)))
                       (if (_is-lambda-expr?43532_ _L43978_)
                           (_lp43827_
                            _rest43852_
                            _pre43830_
                            (cons (cons _eid43993_
                                        (cons (gxc#compile-e _L43978_) '()))
                                  _bind43831_)
                            _init43832_)
                           (_lp43827_
                            _rest43852_
                            (cons (cons _eid43993_ (cons '#!void '()))
                                  _pre43830_)
                            _bind43831_
                            (cons (cons 'set!
                                        (cons _eid43993_
                                              (cons (gxc#compile-e _L43978_)
                                                    '())))
                                  _init43832_)))))
                   _hd4387843973_
                   _hd4387543965_)
                  (_g4385643949_ _g4385843952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4385643949_
                                                   _g4385843952_))
                                              (_g4385643949_ _g4385843952_))))
                                      (_g4385643949_ _g4385843952_))))
                              (_g4385643949_ _g4385843952_)))))
                   (let ((_g4385444037_
                          (lambda (_g4385843998_)
                            (if (gx#stx-pair? _g4385843998_)
                                (let ((_e4386044000_ (gx#stx-e _g4385843998_)))
                                  (let ((_hd4386144003_ (##car _e4386044000_))
                                        (_tl4386244005_ (##cdr _e4386044000_)))
                                    (if (gx#stx-pair? _hd4386144003_)
                                        (let ((_e4386344008_
                                               (gx#stx-e _hd4386144003_)))
                                          (let ((_hd4386444011_
                                                 (##car _e4386344008_))
                                                (_tl4386544013_
                                                 (##cdr _e4386344008_)))
                                            (if (gx#stx-datum? _hd4386444011_)
                                                (if (equal? (gx#stx-e
                                                             _hd4386444011_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl4386544013_)
                                                        (if (gx#stx-pair?
                                                             _tl4386244005_)
                                                            (let ((_e4386644016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4386244005_)))
                      (let ((_hd4386744019_ (##car _e4386644016_))
                            (_tl4386844021_ (##cdr _e4386644016_)))
                        (if (gx#stx-null? _tl4386844021_)
                            ((lambda (_L44024_)
                               (_lp43827_
                                _rest43852_
                                _pre43830_
                                _bind43831_
                                (cons (gxc#compile-e _L44024_) _init43832_)))
                             _hd4386744019_)
                            (_g4385543995_ _g4385843998_))))
                    (_g4385543995_ _g4385843998_))
                (_g4385543995_ _g4385843998_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4385543995_
                                                     _g4385843998_))
                                                (_g4385543995_
                                                 _g4385843998_))))
                                        (_g4385543995_ _g4385843998_))))
                                (_g4385543995_ _g4385843998_)))))
                     (_g4385444037_ _bind-hd43853_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest4383343841_)
                                                  (let ((_hd4383844043_
                                                         (##car _rest4383343841_))
                                                        (_tl4383944045_
                                                         (##cdr _rest4383343841_)))
                                                    (let ((_bind-hd44048_
                                                           _hd4383844043_))
                                                      (let ((_rest44050_
                                                             _tl4383944045_))
                                                        (_K4383744040_
                                                         _rest44050_
                                                         _bind-hd44048_))))
                                                  (_else4383543849_)))))))))
                            _lp43827_)
                          _forms43825_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?43530_
                         (lambda (_hd-bind43767_)
                           (let ((_g4376943782_
                                  (lambda (_g4377043779_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g4377043779_))))
                             (let ((_g4376843815_
                                    (lambda (_g4377043785_)
                                      (if (gx#stx-pair? _g4377043785_)
                                          (let ((_e4377243787_
                                                 (gx#stx-e _g4377043785_)))
                                            (let ((_hd4377343790_
                                                   (##car _e4377243787_))
                                                  (_tl4377443792_
                                                   (##cdr _e4377243787_)))
                                              (if (gx#stx-pair? _tl4377443792_)
                                                  (let ((_e4377543795_
                                                         (gx#stx-e
                                                          _tl4377443792_)))
                                                    (let ((_hd4377643798_
                                                           (##car _e4377543795_))
                                                          (_tl4377743800_
                                                           (##cdr _e4377543795_)))
                                                      (if (gx#stx-null?
                                                           _tl4377743800_)
                                                          ((lambda (_L43803_)
                                                             (_is-effect-expr?43531_
                                                              _L43803_))
                                                           _hd4377643798_)
                                                          (_g4376943782_
                                                           _g4377043785_))))
                                                  (_g4376943782_
                                                   _g4377043785_))))
                                          (_g4376943782_ _g4377043785_)))))
                               (_g4376843815_ _hd-bind43767_))))))
                    (let ((_lift-pre43526_
                           (lambda (_hd44159_ _bindings44160_ _closures44161_)
                             ((letrec ((_lp44163_
                                        (lambda (_rest-forms44165_
                                                 _rest-bindings44166_
                                                 _rest-closures44167_
                                                 _post-forms44168_
                                                 _post-bindings44169_
                                                 _post-closures44170_
                                                 _pre-forms44171_
                                                 _lifted?44172_)
                                          (let ((_rest-forms4417344189_
                                                 _rest-forms44165_)
                                                (_rest-bindings4417444191_
                                                 _rest-bindings44166_)
                                                (_rest-closures4417544193_
                                                 _rest-closures44167_))
                                            (let ((_E4417844197_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms4417344189_
                                                            _rest-bindings4417444191_
                                                            _rest-closures4417544193_))))
                                              (let ((_else4417744201_
                                                     (lambda ()
                                                       (if _lifted?44172_
                                                           (_lp44163_
                                                            (reverse _post-forms44168_)
                                                            (reverse _post-bindings44169_)
                                                            (reverse _post-closures44170_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms44171_
                                                            '#f)
                                                           (values (reverse _pre-forms44171_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms44168_)
                           (reverse _post-bindings44169_)
                           (reverse _post-closures44170_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K4417944254_
                                                       (lambda (_rest-forms44204_
                                                                _form44205_)
                                                         (let ((_K4418044242_
                                                                (lambda (_rest-bindings44207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings44208_)
                          (let ((_K4418144230_
                                 (lambda (_rest-closures44210_ _closure44211_)
                                   (if (let ((_$e44213_
                                              (_closure-reference?43529_
                                               _closure44211_
                                               _bindings44208_)))
                                         (if _$e44213_
                                             _$e44213_
                                             (let ((_$e44220_
                                                    (ormap (lambda (_g4421544217_)
                                                             (_closure-reference?43529_
                                                              _closure44211_
                                                              _g4421544217_))
                                                           _rest-bindings44207_)))
                                               (if _$e44220_
                                                   _$e44220_
                                                   (let ((_$e44227_
                                                          (ormap (lambda (_g4422244224_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_closure-reference?43529_
                            _closure44211_
                            _g4422244224_))
                         _post-bindings44169_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e44227_
                                                         _$e44227_
                                                         (if (_is-effect-bind?43530_
                                                              _form44205_)
                                                             (find _is-effect-bind?43530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms44168_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp44163_
                                        _rest-forms44204_
                                        _rest-bindings44207_
                                        _rest-closures44210_
                                        (cons _form44205_ _post-forms44168_)
                                        (cons _bindings44208_
                                              _post-bindings44169_)
                                        (cons _closure44211_
                                              _post-closures44170_)
                                        _pre-forms44171_
                                        _lifted?44172_)
                                       (_lp44163_
                                        _rest-forms44204_
                                        _rest-bindings44207_
                                        _rest-closures44210_
                                        _post-forms44168_
                                        _post-bindings44169_
                                        _post-closures44170_
                                        (cons _form44205_ _pre-forms44171_)
                                        '#t)))))
                            (if (##pair? _rest-closures4417544193_)
                                (let ((_hd4418244233_
                                       (##car _rest-closures4417544193_))
                                      (_tl4418344235_
                                       (##cdr _rest-closures4417544193_)))
                                  (let ((_closure44238_ _hd4418244233_))
                                    (let ((_rest-closures44240_
                                           _tl4418344235_))
                                      (_K4418144230_
                                       _rest-closures44240_
                                       _closure44238_))))
                                (_else4417744201_))))))
                   (if (##pair? _rest-bindings4417444191_)
                       (let ((_hd4418444245_ (##car _rest-bindings4417444191_))
                             (_tl4418544247_
                              (##cdr _rest-bindings4417444191_)))
                         (let ((_bindings44250_ _hd4418444245_))
                           (let ((_rest-bindings44252_ _tl4418544247_))
                             (_K4418044242_
                              _rest-bindings44252_
                              _bindings44250_))))
                       (_else4417744201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms4417344189_)
                                                      (let ((_hd4418644257_
                                                             (##car _rest-forms4417344189_))
                                                            (_tl4418744259_
                                                             (##cdr _rest-forms4417344189_)))
                                                        (let ((_form44262_
                                                               _hd4418644257_))
                                                          (let ((_rest-forms44264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4418744259_))
                    (_K4417944254_ _rest-forms44264_ _form44262_))))
              (_else4417744201_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp44163_)
                              _hd44159_
                              _bindings44160_
                              _closures44161_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post43527_
                             (lambda (_hd44052_
                                      _bindings44053_
                                      _closures44054_)
                               ((letrec ((_lp44056_
                                          (lambda (_rest-forms44058_
                                                   _rest-bindings44059_
                                                   _rest-closures44060_
                                                   _pre-forms44061_
                                                   _pre-bindings44062_
                                                   _pre-closures44063_
                                                   _post-forms44064_
                                                   _lifted?44065_)
                                            (let ((_rest-forms4406644082_
                                                   _rest-forms44058_)
                                                  (_rest-bindings4406744084_
                                                   _rest-bindings44059_)
                                                  (_rest-closures4406844086_
                                                   _rest-closures44060_))
                                              (let ((_E4407144090_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms4406644082_
                                                              _rest-bindings4406744084_
                                                              _rest-closures4406844086_))))
                                                (let ((_else4407044094_
                                                       (lambda ()
                                                         (if _lifted?44065_
                                                             (_lp44056_
                                                              (reverse _pre-forms44061_)
                                                              (reverse _pre-bindings44062_)
                                                              (reverse _pre-closures44063_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms44064_
                                                              '#f)
                                                             (values _post-forms44064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms44061_
                             _pre-bindings44062_
                             _pre-closures44063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K4407244147_
                                                         (lambda (_rest-forms44097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form44098_)
                   (let ((_K4407344135_
                          (lambda (_rest-bindings44100_ _bindings44101_)
                            (let ((_K4407444123_
                                   (lambda (_rest-closures44103_
                                            _closure44104_)
                                     (if (let ((_$e44106_
                                                (_closure-reference?43529_
                                                 _closure44104_
                                                 _bindings44101_)))
                                           (if _$e44106_
                                               _$e44106_
                                               (let ((_$e44113_
                                                      (ormap (lambda (_g4410844110_)
                                                               (_closure-reference?43529_
                                                                _g4410844110_
                                                                _bindings44101_))
                                                             _rest-closures44103_)))
                                                 (if _$e44113_
                                                     _$e44113_
                                                     (let ((_$e44120_
                                                            (ormap (lambda (_g4411544117_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_closure-reference?43529_
                              _g4411544117_
                              _bindings44101_))
                           _pre-closures44063_)))
               (if _$e44120_
                   _$e44120_
                   (if (_is-effect-bind?43530_ _form44098_)
                       (find _is-effect-bind?43530_ _pre-forms44061_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp44056_
                                          _rest-forms44097_
                                          _rest-bindings44100_
                                          _rest-closures44103_
                                          (cons _form44098_ _pre-forms44061_)
                                          (cons _bindings44101_
                                                _pre-bindings44062_)
                                          (cons _closure44104_
                                                _pre-closures44063_)
                                          _post-forms44064_
                                          _lifted?44065_)
                                         (_lp44056_
                                          _rest-forms44097_
                                          _rest-bindings44100_
                                          _rest-closures44103_
                                          _pre-forms44061_
                                          _pre-bindings44062_
                                          _pre-closures44063_
                                          (cons _form44098_ _post-forms44064_)
                                          '#t)))))
                              (if (##pair? _rest-closures4406844086_)
                                  (let ((_hd4407544126_
                                         (##car _rest-closures4406844086_))
                                        (_tl4407644128_
                                         (##cdr _rest-closures4406844086_)))
                                    (let ((_closure44131_ _hd4407544126_))
                                      (let ((_rest-closures44133_
                                             _tl4407644128_))
                                        (_K4407444123_
                                         _rest-closures44133_
                                         _closure44131_))))
                                  (_else4407044094_))))))
                     (if (##pair? _rest-bindings4406744084_)
                         (let ((_hd4407744138_
                                (##car _rest-bindings4406744084_))
                               (_tl4407844140_
                                (##cdr _rest-bindings4406744084_)))
                           (let ((_bindings44143_ _hd4407744138_))
                             (let ((_rest-bindings44145_ _tl4407844140_))
                               (_K4407344135_
                                _rest-bindings44145_
                                _bindings44143_))))
                         (_else4407044094_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms4406644082_)
                                                        (let ((_hd4407944150_
                                                               (##car _rest-forms4406644082_))
                                                              (_tl4408044152_
                                                               (##cdr _rest-forms4406644082_)))
                                                          (let ((_form44155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4407944150_))
                    (let ((_rest-forms44157_ _tl4408044152_))
                      (_K4407244147_ _rest-forms44157_ _form44155_))))
                (_else4407044094_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp44056_)
                                (reverse _hd44052_)
                                (reverse _bindings44053_)
                                (reverse _closures44054_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize43523_
                               (lambda (_forms44380_)
                                 (let ((_closures44382_
                                        (_collect-closures43524_
                                         _forms44380_)))
                                   (let ((_bindings44384_
                                          (_collect-bindings43525_
                                           _forms44380_)))
                                     (let ((_g46530_
                                            (_lift-pre43526_
                                             _forms44380_
                                             _bindings44384_
                                             _closures44382_)))
                                       (begin
                                         (let ((_g46531_
                                                (values-count _g46530_)))
                                           (if (not (fx= _g46531_ 4))
                                               (error "Context expects 4 values"
                                                      _g46531_)))
                                         (let ((_pre-bind44386_
                                                (values-ref _g46530_ 0))
                                               (_forms44387_
                                                (values-ref _g46530_ 1))
                                               (_bindings44388_
                                                (values-ref _g46530_ 2))
                                               (_closures44389_
                                                (values-ref _g46530_ 3)))
                                           (let ((_g46532_
                                                  (_lift-post43527_
                                                   _forms44387_
                                                   _bindings44388_
                                                   _closures44389_)))
                                             (begin
                                               (let ((_g46533_
                                                      (values-count _g46532_)))
                                                 (if (not (fx= _g46533_ 4))
                                                     (error "Context expects 4 values"
                                                            _g46533_)))
                                               (let ((_post-bind44391_
                                                      (values-ref _g46532_ 0))
                                                     (_forms44392_
                                                      (values-ref _g46532_ 1))
                                                     (_bindings44393_
                                                      (values-ref _g46532_ 2))
                                                     (_closures44394_
                                                      (values-ref _g46532_ 3)))
                                                 (let ((_g46534_
                                                        (_lift-rec43528_
                                                         _forms44392_)))
                                                   (begin
                                                     (let ((_g46535_
                                                            (values-count
                                                             _g46534_)))
                                                       (if (not (fx= _g46535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g46535_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre44396_
                                                            (values-ref
                                                             _g46534_
                                                             0))
                                                           (_rec-bind44397_
                                                            (values-ref
                                                             _g46534_
                                                             1))
                                                           (_rec-init44398_
                                                            (values-ref
                                                             _g46534_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind44386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre44396_
                         _rec-bind44397_
                         _rec-init44398_
                         _post-bind44391_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*43533_
                                    (lambda (_hd43620_ _body43621_)
                                      (let ((_hd4362243630_ _hd43620_))
                                        (let ((_E4362543634_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd4362243630_))))
                                          (let ((_else4362443638_
                                                 (lambda () _body43621_)))
                                            (let ((_K4362643679_
                                                   (lambda (_rest43641_
                                                            _bind43642_)
                                                     (let ((_bind4364343652_
                                                            _bind43642_))
                                                       (let ((_E4364543656_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind4364343652_))))
                 (let ((_K4364643662_
                        (lambda (_expr43659_ _hd43660_)
                          (if (gx#stx-ormap gx#identifier? _hd43660_)
                              (gxc#generate-runtime-let-values%
                               (cons '%#let-values
                                     (cons (cons _bind43642_ '())
                                           (cons (_generate-let*43533_
                                                  _rest43641_
                                                  _body43621_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr43659_)
                                          (cons (_generate-let*43533_
                                                 _rest43641_
                                                 _body43621_)
                                                '())))))))
                   (if (##pair? _bind4364343652_)
                       (let ((_hd4364743665_ (##car _bind4364343652_))
                             (_tl4364843667_ (##cdr _bind4364343652_)))
                         (let ((_hd43670_ _hd4364743665_))
                           (if (##pair? _tl4364843667_)
                               (let ((_hd4364943672_ (##car _tl4364843667_))
                                     (_tl4365043674_ (##cdr _tl4364843667_)))
                                 (let ((_expr43677_ _hd4364943672_))
                                   (if (##null? _tl4365043674_)
                                       (_K4364643662_ _expr43677_ _hd43670_)
                                       (_E4364543656_))))
                               (_E4364543656_))))
                       (_E4364543656_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd4362243630_)
                                                  (let ((_hd4362743682_
                                                         (##car _hd4362243630_))
                                                        (_tl4362843684_
                                                         (##cdr _hd4362243630_)))
                                                    (let ((_bind43687_
                                                           _hd4362743682_))
                                                      (let ((_rest43689_
                                                             _tl4362843684_))
                                                        (_K4362643679_
                                                         _rest43689_
                                                         _bind43687_))))
                                                  (_else4362443638_)))))))))
                            (let ((_g4353543552_
                                   (lambda (_g4353643549_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g4353643549_))))
                              (let ((_g4353443617_
                                     (lambda (_g4353643555_)
                                       (if (gx#stx-pair? _g4353643555_)
                                           (let ((_e4353943557_
                                                  (gx#stx-e _g4353643555_)))
                                             (let ((_hd4354043560_
                                                    (##car _e4353943557_))
                                                   (_tl4354143562_
                                                    (##cdr _e4353943557_)))
                                               (if (gx#stx-pair?
                                                    _tl4354143562_)
                                                   (let ((_e4354243565_
                                                          (gx#stx-e
                                                           _tl4354143562_)))
                                                     (let ((_hd4354343568_
                                                            (##car _e4354243565_))
                                                           (_tl4354443570_
                                                            (##cdr _e4354243565_)))
                                                       (if (gx#stx-pair?
                                                            _tl4354443570_)
                                                           (let ((_e4354543573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl4354443570_)))
                     (let ((_hd4354643576_ (##car _e4354543573_))
                           (_tl4354743578_ (##cdr _e4354543573_)))
                       (if (gx#stx-null? _tl4354743578_)
                           ((lambda (_L43581_ _L43582_)
                              (let ((_g46528_ (_linearize43523_ _L43582_)))
                                (begin
                                  (let ((_g46529_ (values-count _g46528_)))
                                    (if (not (fx= _g46529_ 5))
                                        (error "Context expects 5 values"
                                               _g46529_)))
                                  (let ((_pre43598_ (values-ref _g46528_ 0))
                                        (_rec-pre43599_
                                         (values-ref _g46528_ 1))
                                        (_rec-bind43600_
                                         (values-ref _g46528_ 2))
                                        (_rec-init43601_
                                         (values-ref _g46528_ 3))
                                        (_post43602_ (values-ref _g46528_ 4)))
                                    (let ((_body43604_
                                           (gxc#compile-e _L43581_)))
                                      (let ((_body43606_
                                             (if (null? _post43602_)
                                                 _body43604_
                                                 (_generate-let*43533_
                                                  _post43602_
                                                  _body43604_))))
                                        (let ((_body43608_
                                               (if (null? _rec-init43601_)
                                                   _body43606_
                                                   (cons 'begin
                                                         (foldr cons
                                                                (cons _body43606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        _rec-init43601_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body43610_
                                                 (if (null? _rec-bind43600_)
                                                     _body43608_
                                                     (cons 'letrec
                                                           (cons _rec-bind43600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body43608_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body43612_
                                                   (if (null? _rec-pre43599_)
                                                       _body43610_
                                                       (cons 'let
                                                             (cons _rec-pre43599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body43610_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body43614_
                                                     (if (null? _pre43598_)
                                                         _body43612_
                                                         (_generate-let*43533_
                                                          _pre43598_
                                                          _body43612_))))
                                                (let () _body43614_)))))))))))
                            _hd4354643576_
                            _hd4354343568_)
                           (_g4353543552_ _g4353643555_))))
                   (_g4353543552_ _g4353643555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4353543552_
                                                    _g4353643555_))))
                                           (_g4353543552_ _g4353643555_)))))
                                (_g4353443617_ _stx43521_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd43414_)
      ((letrec ((_lp43416_
                 (lambda (_rest43418_)
                   (let ((_g4342243443_
                          (lambda (_g4342343440_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4342343440_))))
                     (let ((_g4342143450_
                            (lambda (_g4342343446_) ((lambda () '#f)))))
                       (let ((_g4342043457_
                              (lambda (_g4342343453_)
                                (if (gx#stx-null? _g4342343453_)
                                    ((lambda () '#t))
                                    (_g4342143450_ _g4342343453_)))))
                         (let ((_g4341943518_
                                (lambda (_g4342343460_)
                                  (if (gx#stx-pair? _g4342343460_)
                                      (let ((_e4342743462_
                                             (gx#stx-e _g4342343460_)))
                                        (let ((_hd4342843465_
                                               (##car _e4342743462_))
                                              (_tl4342943467_
                                               (##cdr _e4342743462_)))
                                          (if (gx#stx-pair? _hd4342843465_)
                                              (let ((_e4343043470_
                                                     (gx#stx-e
                                                      _hd4342843465_)))
                                                (let ((_hd4343143473_
                                                       (##car _e4343043470_))
                                                      (_tl4343243475_
                                                       (##cdr _e4343043470_)))
                                                  (if (gx#stx-pair?
                                                       _hd4343143473_)
                                                      (let ((_e4343343478_
                                                             (gx#stx-e
                                                              _hd4343143473_)))
                                                        (let ((_hd4343443481_
                                                               (##car _e4343343478_))
                                                              (_tl4343543483_
                                                               (##cdr _e4343343478_)))
                                                          (if (gx#stx-null?
                                                               _tl4343543483_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4343243475_)
                          (let ((_e4343643486_ (gx#stx-e _tl4343243475_)))
                            (let ((_hd4343743489_ (##car _e4343643486_))
                                  (_tl4343843491_ (##cdr _e4343643486_)))
                              (if (gx#stx-null? _tl4343843491_)
                                  ((lambda (_L43494_ _L43495_ _L43496_)
                                     (_lp43416_ _L43494_))
                                   _tl4342943467_
                                   _hd4343743489_
                                   _hd4343443481_)
                                  (_g4342043457_ _g4342343460_))))
                          (_g4342043457_ _g4342343460_))
                      (_g4342043457_ _g4342343460_))))
              (_g4342043457_ _g4342343460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4342043457_ _g4342343460_))))
                                      (_g4342043457_ _g4342343460_)))))
                           (_g4341943518_ _rest43418_))))))))
         _lp43416_)
       _hd43414_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form43338_ _hd43339_ _body43340_ _compiled-body?43341_)
      (let ((_generate143343_
             (lambda (_bind43345_)
               (let ((_g4334743364_
                      (lambda (_g4334843361_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g4334843361_))))
                 (let ((_g4334643411_
                        (lambda (_g4334843367_)
                          (if (gx#stx-pair? _g4334843367_)
                              (let ((_e4335143369_ (gx#stx-e _g4334843367_)))
                                (let ((_hd4335243372_ (##car _e4335143369_))
                                      (_tl4335343374_ (##cdr _e4335143369_)))
                                  (if (gx#stx-pair? _hd4335243372_)
                                      (let ((_e4335443377_
                                             (gx#stx-e _hd4335243372_)))
                                        (let ((_hd4335543380_
                                               (##car _e4335443377_))
                                              (_tl4335643382_
                                               (##cdr _e4335443377_)))
                                          (if (gx#stx-null? _tl4335643382_)
                                              (if (gx#stx-pair? _tl4335343374_)
                                                  (let ((_e4335743385_
                                                         (gx#stx-e
                                                          _tl4335343374_)))
                                                    (let ((_hd4335843388_
                                                           (##car _e4335743385_))
                                                          (_tl4335943390_
                                                           (##cdr _e4335743385_)))
                                                      (if (gx#stx-null?
                                                           _tl4335943390_)
                                                          ((lambda (_L43393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L43394_)
                     (cons (gxc#generate-runtime-binding-id* _L43394_)
                           (cons (gxc#compile-e _L43393_) '())))
                   _hd4335843388_
                   _hd4335543380_)
                  (_g4334743364_ _g4334843367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4334743364_
                                                   _g4334843367_))
                                              (_g4334743364_ _g4334843367_))))
                                      (_g4334743364_ _g4334843367_))))
                              (_g4334743364_ _g4334843367_)))))
                   (_g4334643411_ _bind43345_))))))
        (cons _form43338_
              (cons (map _generate143343_ _hd43339_)
                    (cons (if _compiled-body?43341_
                              _body43340_
                              (gxc#compile-e _body43340_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx43249_)
      (letrec ((_generate143251_
                (lambda (_datum43303_)
                  (if (let ((_$e43305_ (null? _datum43303_)))
                        (if _$e43305_
                            _$e43305_
                            (let ((_$e43308_ (symbol? _datum43303_)))
                              (if _$e43308_
                                  _$e43308_
                                  (gx#self-quoting? _datum43303_)))))
                      _datum43303_
                      (if (uninterned-symbol? _datum43303_)
                          (gxc#generate-runtime-gensym-reference _datum43303_)
                          (if (pair? _datum43303_)
                              (cons (_generate143251_ (car _datum43303_))
                                    (_generate143251_ (cdr _datum43303_)))
                              (if (box? _datum43303_)
                                  (box (_generate143251_ (unbox _datum43303_)))
                                  (if (vector? _datum43303_)
                                      (vector-map
                                       _generate143251_
                                       _datum43303_)
                                      (if (let ((_$e43311_
                                                 (s8vector? _datum43303_)))
                                            (if _$e43311_
                                                _$e43311_
                                                (let ((_$e43314_
                                                       (u8vector?
                                                        _datum43303_)))
                                                  (if _$e43314_
                                                      _$e43314_
                                                      (let ((_$e43317_
                                                             (s16vector?
                                                              _datum43303_)))
                                                        (if _$e43317_
                                                            _$e43317_
                                                            (let ((_$e43320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum43303_)))
                      (if _$e43320_
                          _$e43320_
                          (let ((_$e43323_ (s32vector? _datum43303_)))
                            (if _$e43323_
                                _$e43323_
                                (let ((_$e43326_ (u32vector? _datum43303_)))
                                  (if _$e43326_
                                      _$e43326_
                                      (let ((_$e43329_
                                             (s64vector? _datum43303_)))
                                        (if _$e43329_
                                            _$e43329_
                                            (let ((_$e43332_
                                                   (u64vector? _datum43303_)))
                                              (if _$e43332_
                                                  _$e43332_
                                                  (let ((_$e43335_
                                                         (f32vector?
                                                          _datum43303_)))
                                                    (if _$e43335_
                                                        _$e43335_
                                                        (f64vector?
                                                         _datum43303_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum43303_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx43249_))))))))))
        (let ((_g4325343266_
               (lambda (_g4325443263_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4325443263_))))
          (let ((_g4325243300_
                 (lambda (_g4325443269_)
                   (if (gx#stx-pair? _g4325443269_)
                       (let ((_e4325643271_ (gx#stx-e _g4325443269_)))
                         (let ((_hd4325743274_ (##car _e4325643271_))
                               (_tl4325843276_ (##cdr _e4325643271_)))
                           (if (gx#stx-pair? _tl4325843276_)
                               (let ((_e4325943279_ (gx#stx-e _tl4325843276_)))
                                 (let ((_hd4326043282_ (##car _e4325943279_))
                                       (_tl4326143284_ (##cdr _e4325943279_)))
                                   (if (gx#stx-null? _tl4326143284_)
                                       ((lambda (_L43287_)
                                          (cons 'quote
                                                (cons (_generate143251_
                                                       (gx#stx-e _L43287_))
                                                      '())))
                                        _hd4326043282_)
                                       (_g4325343266_ _g4325443269_))))
                               (_g4325343266_ _g4325443269_))))
                       (_g4325343266_ _g4325443269_)))))
            (_g4325243300_ _stx43249_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx43211_)
      (let ((_g4321343223_
             (lambda (_g4321443220_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4321443220_))))
        (let ((_g4321243246_
               (lambda (_g4321443226_)
                 (if (gx#stx-pair? _g4321443226_)
                     (let ((_e4321643228_ (gx#stx-e _g4321443226_)))
                       (let ((_hd4321743231_ (##car _e4321643228_))
                             (_tl4321843233_ (##cdr _e4321643228_)))
                         ((lambda (_L43236_) (map gxc#compile-e _L43236_))
                          _tl4321843233_)))
                     (_g4321343223_ _g4321443226_)))))
          (_g4321243246_ _stx43211_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx43173_)
      (let ((_g4317543185_
             (lambda (_g4317643182_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4317643182_))))
        (let ((_g4317443208_
               (lambda (_g4317643188_)
                 (if (gx#stx-pair? _g4317643188_)
                     (let ((_e4317843190_ (gx#stx-e _g4317643188_)))
                       (let ((_hd4317943193_ (##car _e4317843190_))
                             (_tl4318043195_ (##cdr _e4317843190_)))
                         ((lambda (_L43198_)
                            (cons 'if (map gxc#compile-e _L43198_)))
                          _tl4318043195_)))
                     (_g4317543185_ _g4317643188_)))))
          (_g4317443208_ _stx43173_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx43122_)
      (let ((_g4312443137_
             (lambda (_g4312543134_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4312543134_))))
        (let ((_g4312343170_
               (lambda (_g4312543140_)
                 (if (gx#stx-pair? _g4312543140_)
                     (let ((_e4312743142_ (gx#stx-e _g4312543140_)))
                       (let ((_hd4312843145_ (##car _e4312743142_))
                             (_tl4312943147_ (##cdr _e4312743142_)))
                         (if (gx#stx-pair? _tl4312943147_)
                             (let ((_e4313043150_ (gx#stx-e _tl4312943147_)))
                               (let ((_hd4313143153_ (##car _e4313043150_))
                                     (_tl4313243155_ (##cdr _e4313043150_)))
                                 (if (gx#stx-null? _tl4313243155_)
                                     ((lambda (_L43158_)
                                        (gxc#generate-runtime-binding-id
                                         _L43158_))
                                      _hd4313143153_)
                                     (_g4312443137_ _g4312543140_))))
                             (_g4312443137_ _g4312543140_))))
                     (_g4312443137_ _g4312543140_)))))
          (_g4312343170_ _stx43122_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx43055_)
      (let ((_g4305743074_
             (lambda (_g4305843071_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4305843071_))))
        (let ((_g4305643119_
               (lambda (_g4305843077_)
                 (if (gx#stx-pair? _g4305843077_)
                     (let ((_e4306143079_ (gx#stx-e _g4305843077_)))
                       (let ((_hd4306243082_ (##car _e4306143079_))
                             (_tl4306343084_ (##cdr _e4306143079_)))
                         (if (gx#stx-pair? _tl4306343084_)
                             (let ((_e4306443087_ (gx#stx-e _tl4306343084_)))
                               (let ((_hd4306543090_ (##car _e4306443087_))
                                     (_tl4306643092_ (##cdr _e4306443087_)))
                                 (if (gx#stx-pair? _tl4306643092_)
                                     (let ((_e4306743095_
                                            (gx#stx-e _tl4306643092_)))
                                       (let ((_hd4306843098_
                                              (##car _e4306743095_))
                                             (_tl4306943100_
                                              (##cdr _e4306743095_)))
                                         (if (gx#stx-null? _tl4306943100_)
                                             ((lambda (_L43103_ _L43104_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L43104_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L43103_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd4306843098_
                                              _hd4306543090_)
                                             (_g4305743074_ _g4305843077_))))
                                     (_g4305743074_ _g4305843077_))))
                             (_g4305743074_ _g4305843077_))))
                     (_g4305743074_ _g4305843077_)))))
          (_g4305643119_ _stx43055_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx42964_)
      (let ((_g4296642976_
             (lambda (_g4296742973_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4296742973_))))
        (let ((_g4296543052_
               (lambda (_g4296742979_)
                 (if (gx#stx-pair? _g4296742979_)
                     (let ((_e4296942981_ (gx#stx-e _g4296742979_)))
                       (let ((_hd4297042984_ (##car _e4296942981_))
                             (_tl4297142986_ (##cdr _e4296942981_)))
                         ((lambda (_L42989_)
                            (let ((_ht42999_ (make-hash-table-eq)))
                              ((letrec ((_lp43001_
                                         (lambda (_rest43003_ _loads43004_)
                                           (let ((_K43006_
                                                  (lambda (_ctx43045_
                                                           _rest43046_)
                                                    (let ((_id43048_
                                                           (gx#expander-context-id
                                                            _ctx43045_)))
                                                      (if (hash-get
                                                           _ht42999_
                                                           _id43048_)
                                                          (_lp43001_
                                                           _rest43046_
                                                           _loads43004_)
                                                          (let ((_rt43050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (string-append (symbol->string _id43048_) '"__rt")))
                    (begin
                      (hash-put! _ht42999_ _id43048_ _rt43050_)
                      (_lp43001_
                       _rest43046_
                       (cons _rt43050_ _loads43004_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest4300743015_
                                                    _rest43003_))
                                               (let ((_E4301043019_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest4300743015_))))
                                                 (let ((_else4300943027_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g4302243024_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g4302243024_))
                             (reverse _loads43004_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K4301143033_
                                                          (lambda (_rest43030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in43031_)
                    (if (gx#module-context? _in43031_)
                        (_K43006_ _in43031_ _rest43030_)
                        (if (gx#module-import? _in43031_)
                            (if (fxpositive? (gx#module-import-phi _in43031_))
                                (_lp43001_ _rest43030_ _loads43004_)
                                (_K43006_
                                 (gx#module-export-context
                                  (gx#module-import-source _in43031_))
                                 _rest43030_))
                            (if (gx#import-set? _in43031_)
                                (if (fxpositive? (gx#import-set-phi _in43031_))
                                    (_lp43001_ _rest43030_ _loads43004_)
                                    (_K43006_
                                     (gx#import-set-source _in43031_)
                                     _rest43030_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx42964_
                                 _in43031_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest4300743015_)
                                                         (let ((_hd4301243036_
                                                                (##car _rest4300743015_))
                                                               (_tl4301343038_
                                                                (##cdr _rest4300743015_)))
                                                           (let ((_in43041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd4301243036_))
                     (let ((_rest43043_ _tl4301343038_))
                       (_K4301143033_ _rest43043_ _in43041_))))
                 (_else4300943027_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp43001_)
                               _L42989_
                               '())))
                          _tl4297142986_)))
                     (_g4296642976_ _g4296742979_)))))
          (_g4296543052_ _stx42964_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx42905_)
      (let ((_generate-quote42907_
             (lambda (_q42962_)
               (if (gx#identifier? _q42962_)
                   (gxc#generate-runtime-identifier _q42962_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx42905_
                    _q42962_)))))
        (let ((_g4290942922_
               (lambda (_g4291042919_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4291042919_))))
          (let ((_g4290842959_
                 (lambda (_g4291042925_)
                   (if (gx#stx-pair? _g4291042925_)
                       (let ((_e4291242927_ (gx#stx-e _g4291042925_)))
                         (let ((_hd4291342930_ (##car _e4291242927_))
                               (_tl4291442932_ (##cdr _e4291242927_)))
                           (if (gx#stx-pair? _tl4291442932_)
                               (let ((_e4291542935_ (gx#stx-e _tl4291442932_)))
                                 (let ((_hd4291642938_ (##car _e4291542935_))
                                       (_tl4291742940_ (##cdr _e4291542935_)))
                                   (if (gx#stx-null? _tl4291742940_)
                                       ((lambda (_L42943_)
                                          (let ((_gid42956_
                                                 (gxc#generate-runtime-temporary
                                                  '#t))
                                                (_quote-e42957_
                                                 (_generate-quote42907_
                                                  _L42943_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid42956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e42957_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid42956_)))
                                        _hd4291642938_)
                                       (_g4290942922_ _g4291042925_))))
                               (_g4290942922_ _g4291042925_))))
                       (_g4290942922_ _g4291042925_)))))
            (_g4290842959_ _stx42905_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx42838_)
      (let ((_g4284042857_
             (lambda (_g4284142854_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4284142854_))))
        (let ((_g4283942902_
               (lambda (_g4284142860_)
                 (if (gx#stx-pair? _g4284142860_)
                     (let ((_e4284442862_ (gx#stx-e _g4284142860_)))
                       (let ((_hd4284542865_ (##car _e4284442862_))
                             (_tl4284642867_ (##cdr _e4284442862_)))
                         (if (gx#stx-pair? _tl4284642867_)
                             (let ((_e4284742870_ (gx#stx-e _tl4284642867_)))
                               (let ((_hd4284842873_ (##car _e4284742870_))
                                     (_tl4284942875_ (##cdr _e4284742870_)))
                                 (if (gx#stx-pair? _tl4284942875_)
                                     (let ((_e4285042878_
                                            (gx#stx-e _tl4284942875_)))
                                       (let ((_hd4285142881_
                                              (##car _e4285042878_))
                                             (_tl4285242883_
                                              (##cdr _e4285042878_)))
                                         (if (gx#stx-null? _tl4285242883_)
                                             ((lambda (_L42886_ _L42887_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L42887_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L42886_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd4285142881_
                                              _hd4284842873_)
                                             (_g4284042857_ _g4284142860_))))
                                     (_g4284042857_ _g4284142860_))))
                             (_g4284042857_ _g4284142860_))))
                     (_g4284042857_ _g4284142860_)))))
          (_g4283942902_ _stx42838_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx42787_ _state42788_)
      (let ((_g4279042800_
             (lambda (_g4279142797_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4279142797_))))
        (let ((_g4278942835_
               (lambda (_g4279142803_)
                 (if (gx#stx-pair? _g4279142803_)
                     (let ((_e4279342805_ (gx#stx-e _g4279142803_)))
                       (let ((_hd4279442808_ (##car _e4279342805_))
                             (_tl4279542810_ (##cdr _e4279342805_)))
                         ((lambda (_L42813_)
                            (let ((_c-body42827_
                                   (map (lambda (_g4282242824_)
                                          (gxc#compile-e
                                           _g4282242824_
                                           _state42788_))
                                        _L42813_)))
                              (let ((_c-body42832_
                                     (filter (lambda (_$obj42829_)
                                               (not (void? _$obj42829_)))
                                             _c-body42827_)))
                                (let () (cons '%#begin _c-body42832_)))))
                          _tl4279542810_)))
                     (_g4279042800_ _g4279142803_)))))
          (_g4278942835_ _stx42787_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx42695_ _state42696_)
      (let ((_g4269842708_
             (lambda (_g4269942705_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4269942705_))))
        (let ((_g4269742784_
               (lambda (_g4269942711_)
                 (if (gx#stx-pair? _g4269942711_)
                     (let ((_e4270142713_ (gx#stx-e _g4269942711_)))
                       (let ((_hd4270242716_ (##car _e4270142713_))
                             (_tl4270342718_ (##cdr _e4270142713_)))
                         ((lambda (_L42721_)
                            (let ((_phi42731_
                                   (fx1+ (gx#current-expander-phi))))
                              (let ((_block42733_
                                     (gxc#meta-state-begin-phi!
                                      _state42696_
                                      _phi42731_)))
                                (let ((_compiled42736_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  '%#begin)
                                                 _L42721_)
                                           _state42696_))
                                        gx#current-expander-phi
                                        _phi42731_)))
                                  (let ()
                                    (let ((_g4273942749_
                                           (lambda (_g4274042746_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g4274042746_))))
                                      (let ((_g4273842781_
                                             (lambda (_g4274042752_)
                                               (if (gx#stx-pair? _g4274042752_)
                                                   (let ((_e4274242754_
                                                          (gx#stx-e
                                                           _g4274042752_)))
                                                     (let ((_hd4274342757_
                                                            (##car _e4274242754_))
                                                           (_tl4274442759_
                                                            (##cdr _e4274242754_)))
                                                       (if (gx#identifier?
                                                            _hd4274342757_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd4274342757_)
                                                               ((lambda (_L42762_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body42779_
                                 (filter (lambda (_$obj42776_)
                                           (not (void? _$obj42776_)))
                                         _L42762_)))
                            (if _block42733_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block42733_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body42779_))
                                (if (null? _c-body42779_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body42779_)))))
                        _tl4274442759_)
                       (_g4273942749_ _g4274042752_))
                   (_g4273942749_ _g4274042752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4273942749_
                                                    _g4274042752_)))))
                                        (_g4273842781_ _compiled42736_))))))))
                          _tl4270342718_)))
                     (_g4269842708_ _g4269942711_)))))
          (_g4269742784_ _stx42695_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx42626_ _state42627_)
      (begin
        (gxc#meta-state-end-phi! _state42627_)
        (let ((_g4262942643_
               (lambda (_g4263042640_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4263042640_))))
          (let ((_g4262842692_
                 (lambda (_g4263042646_)
                   (if (gx#stx-pair? _g4263042646_)
                       (let ((_e4263342648_ (gx#stx-e _g4263042646_)))
                         (let ((_hd4263442651_ (##car _e4263342648_))
                               (_tl4263542653_ (##cdr _e4263342648_)))
                           (if (gx#stx-pair? _tl4263542653_)
                               (let ((_e4263642656_ (gx#stx-e _tl4263542653_)))
                                 (let ((_hd4263742659_ (##car _e4263642656_))
                                       (_tl4263842661_ (##cdr _e4263642656_)))
                                   ((lambda (_L42664_ _L42665_)
                                      (let ((_key42678_
                                             (gx#core-identifier-key
                                              _L42665_)))
                                        (begin
                                          (if (interned-symbol? _key42678_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx42626_
                                               _L42665_
                                               _key42678_))
                                          (let ((_ctx42680_
                                                 (gx#syntax-local-e _L42665_)))
                                            (let ((_code42683_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (gx#module-context-code
                                                        _ctx42680_)
                                                       _state42627_))
                                                    gx#current-expander-context
                                                    _ctx42680_)))
                                              (let ((_rt42685_
                                                     (hash-get
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx42680_)))
                                                (let ((_loader42687_
                                                       (if _rt42685_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt42685_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid42689_
                                                         (gx#stx-e _L42665_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state42627_)
                                                        (cons '%#module
                                                              (cons _modid42689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code42683_ _loader42687_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl4263842661_
                                    _hd4263742659_)))
                               (_g4262942643_ _g4263042646_))))
                       (_g4262942643_ _g4263042646_)))))
            (_g4262842692_ _stx42626_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx42616_ _context-chain42617_)
      ((letrec ((_lp42619_
                 (lambda (_ctx42621_ _path42622_)
                   (let ((_super42624_ (gx#phi-context-super _ctx42621_)))
                     (if (memq _super42624_ _context-chain42617_)
                         (cons* '#f
                                (car (gx#module-context-path _ctx42621_))
                                _path42622_)
                         (if (gx#module-context? _super42624_)
                             (_lp42619_
                              _super42624_
                              (cons (car (gx#module-context-path _ctx42621_))
                                    _path42622_))
                             (cons (make-symbol
                                    '":"
                                    (gx#expander-context-id _ctx42621_))
                                   _path42622_)))))))
         _lp42619_)
       _ctx42616_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp42611_
                 (lambda (_ctx42613_ _r42614_)
                   (if (gx#module-context? _ctx42613_)
                       (_lp42611_
                        (gx#phi-context-super _ctx42613_)
                        (cons _ctx42613_ _r42614_))
                       _r42614_))))
         _lp42611_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx42380_ _state42381_)
      (let ((_context-chain42383_ (gxc#current-context-chain)))
        (let ((_make-import-spec42384_
               (lambda (_in42547_)
                 (let ((_in4254842560_ _in42547_))
                   (let ((_E4255042564_
                          (lambda ()
                            (error '"No clause matching" _in4254842560_))))
                     (let ((_K4255142574_
                            (lambda (_phi42567_
                                     _name42568_
                                     _src-name42569_
                                     _src-phi42570_
                                     _src-key42571_
                                     _src-ctx42572_)
                              (cons _phi42567_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name42568_)
                                          (cons _src-phi42570_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name42569_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in4254842560_)
                           (let ((_e4255242577_
                                  (##vector-ref _in4254842560_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e4255242577_)
                                 (let ((_e4255542580_
                                        (##vector-ref _e4255242577_ '1)))
                                   (let ((_src-ctx42583_ _e4255542580_))
                                     (let ((_e4255642585_
                                            (##vector-ref _e4255242577_ '2)))
                                       (let ((_src-key42588_ _e4255642585_))
                                         (let ((_e4255742590_
                                                (##vector-ref
                                                 _e4255242577_
                                                 '3)))
                                           (let ((_src-phi42593_
                                                  _e4255742590_))
                                             (let ((_e4255842595_
                                                    (##vector-ref
                                                     _e4255242577_
                                                     '4)))
                                               (let ((_src-name42598_
                                                      _e4255842595_))
                                                 (let ((_e4255342600_
                                                        (##vector-ref
                                                         _in4254842560_
                                                         '2)))
                                                   (let ((_name42603_
                                                          _e4255342600_))
                                                     (let ((_e4255442605_
                                                            (##vector-ref
                                                             _in4254842560_
                                                             '3)))
                                                       (let ((_phi42608_
                                                              _e4255442605_))
                                                         (_K4255142574_
                                                          _phi42608_
                                                          _name42603_
                                                          _src-name42598_
                                                          _src-phi42593_
                                                          _src-key42588_
                                                          _src-ctx42583_)))))))))))))
                                 (_E4255042564_)))
                           (_E4255042564_))))))))
          (let ((_make-import-path42385_
                 (lambda (_ctx42545_)
                   (gxc#generate-meta-import-path
                    _ctx42545_
                    _context-chain42383_))))
            (let ((_make-import-spec-in42386_
                   (lambda (_ctx42542_ _in42543_)
                     (cons 'spec:
                           (cons (_make-import-path42385_ _ctx42542_)
                                 (reverse _in42543_))))))
              (begin
                (gxc#meta-state-end-phi! _state42381_)
                (let ((_g4238842398_
                       (lambda (_g4238942395_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g4238942395_))))
                  (let ((_g4238742539_
                         (lambda (_g4238942401_)
                           (if (gx#stx-pair? _g4238942401_)
                               (let ((_e4239142403_ (gx#stx-e _g4238942401_)))
                                 (let ((_hd4239242406_ (##car _e4239142403_))
                                       (_tl4239342408_ (##cdr _e4239142403_)))
                                   ((lambda (_L42411_)
                                      ((letrec ((_lp42422_
                                                 (lambda (_rest42424_
                                                          _current-src42425_
                                                          _current-in42426_
                                                          _r42427_)
                                                   (let ((_rest4242842436_
                                                          _rest42424_))
                                                     (let ((_E4243142440_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest4242842436_))))
               (let ((_else4243042446_
                      (lambda ()
                        (let ((_r42444_
                               (if _current-src42425_
                                   (cons (_make-import-spec-in42386_
                                          _current-src42425_
                                          _current-in42426_)
                                         _r42427_)
                                   _r42427_)))
                          (cons '%#import (reverse _r42444_))))))
                 (let ((_K4243242527_
                        (lambda (_rest42449_ _in42450_)
                          (if (gx#module-import? _in42450_)
                              (let ((_in4245142458_ _in42450_))
                                (let ((_E4245342462_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in4245142458_))))
                                  (let ((_K4245442467_
                                         (lambda (_src-ctx42465_)
                                           (if (eq? _current-src42425_
                                                    _src-ctx42465_)
                                               (_lp42422_
                                                _rest42449_
                                                _current-src42425_
                                                (cons (_make-import-spec42384_
                                                       _in42450_)
                                                      _current-in42426_)
                                                _r42427_)
                                               (if _current-src42425_
                                                   (_lp42422_
                                                    _rest42449_
                                                    _src-ctx42465_
                                                    (cons (_make-import-spec42384_
                                                           _in42450_)
                                                          '())
                                                    (cons (_make-import-spec-in42386_
                                                           _current-src42425_
                                                           _current-in42426_)
                                                          _r42427_))
                                                   (_lp42422_
                                                    _rest42449_
                                                    _src-ctx42465_
                                                    (cons (_make-import-spec42384_
                                                           _in42450_)
                                                          '())
                                                    _r42427_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in4245142458_)
                                        (let ((_e4245542470_
                                               (##vector-ref
                                                _in4245142458_
                                                '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e4245542470_)
                                              (let ((_e4245642473_
                                                     (##vector-ref
                                                      _e4245542470_
                                                      '1)))
                                                (let ((_src-ctx42476_
                                                       _e4245642473_))
                                                  (_K4245442467_
                                                   _src-ctx42476_)))
                                              (_E4245342462_)))
                                        (_E4245342462_)))))
                              (if (gx#import-set? _in42450_)
                                  (let ((_phi42478_
                                         (gx#import-set-phi _in42450_)))
                                    (let ((_src42480_
                                           (gx#import-set-source _in42450_)))
                                      (let ((_src-in42520_
                                             (let ((_g4248142490_
                                                    (_make-import-path42385_
                                                     _src42480_)))
                                               (let ((_E4248442494_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g4248142490_))))
                                                 (let ((_try-match4248342505_
                                                        (lambda ()
                                                          (let ((_K4248542500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path42498_) (cons 'in: _path42498_))))
                    (let ((_path42503_ _g4248142490_))
                      (_K4248542500_ _path42503_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K4248642510_
                                                          (lambda (_path42508_)
                                                            _path42508_)))
                                                     (if (##pair? _g4248142490_)
                                                         (let ((_hd4248742513_
                                                                (##car _g4248142490_))
                                                               (_tl4248842515_
                                                                (##cdr _g4248142490_)))
                                                           (let ((_path42518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd4248742513_))
                     (if (##null? _tl4248842515_)
                         (_K4248642510_ _path42518_)
                         (_try-match4248342505_))))
                 (_try-match4248342505_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r42522_
                                               (if _current-src42425_
                                                   (cons (_make-import-spec-in42386_
                                                          _current-src42425_
                                                          _current-in42426_)
                                                         _r42427_)
                                                   _r42427_)))
                                          (let ()
                                            (_lp42422_
                                             _rest42449_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi42478_)
                                                       _src-in42520_
                                                       (cons 'phi:
                                                             (cons _phi42478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in42520_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r42522_)))))))
                                  (if (gx#module-context? _in42450_)
                                      (let ((_r42525_
                                             (if _current-src42425_
                                                 (cons (_make-import-spec-in42386_
                                                        _current-src42425_
                                                        _current-in42426_)
                                                       _r42427_)
                                                 _r42427_)))
                                        (_lp42422_
                                         _rest42449_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path42385_
                                                      _in42450_))
                                               _r42525_)))
                                      '#!void))))))
                   (if (##pair? _rest4242842436_)
                       (let ((_hd4243342530_ (##car _rest4242842436_))
                             (_tl4243442532_ (##cdr _rest4242842436_)))
                         (let ((_in42535_ _hd4243342530_))
                           (let ((_rest42537_ _tl4243442532_))
                             (_K4243242527_ _rest42537_ _in42535_))))
                       (_else4243042446_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp42422_)
                                       _L42411_
                                       '#f
                                       '()
                                       '()))
                                    _tl4239342408_)))
                               (_g4238842398_ _g4238942401_)))))
                    (_g4238742539_ _stx42380_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx42190_ _state42191_)
      (let ((_context-chain42193_ (gxc#current-context-chain)))
        (let ((_make-import-path42194_
               (lambda (_ctx42378_)
                 (gxc#generate-meta-import-path
                  _ctx42378_
                  _context-chain42193_))))
          (let ((_g4219642206_
                 (lambda (_g4219742203_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g4219742203_))))
            (let ((_g4219542375_
                   (lambda (_g4219742209_)
                     (if (gx#stx-pair? _g4219742209_)
                         (let ((_e4219942211_ (gx#stx-e _g4219742209_)))
                           (let ((_hd4220042214_ (##car _e4219942211_))
                                 (_tl4220142216_ (##cdr _e4219942211_)))
                             ((lambda (_L42219_)
                                ((letrec ((_lp42230_
                                           (lambda (_rest42232_ _r42233_)
                                             (let ((_rest4223442242_
                                                    _rest42232_))
                                               (let ((_E4223742246_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest4223442242_))))
                                                 (let ((_else4223642250_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r42233_)))))
                                                   (let ((_K4223842363_
                                                          (lambda (_rest42253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out42254_)
                    (let ((_out4225542268_ _out42254_))
                      (let ((_E4225842272_
                             (lambda ()
                               (error '"No clause matching" _out4225542268_))))
                        (let ((_try-match4225742335_
                               (lambda ()
                                 (let ((_K4225942322_
                                        (lambda (_phi42276_ _src42277_)
                                          (let ((_out42317_
                                                 (if _src42277_
                                                     (cons 'import:
                                                           (cons (let ((_g4227842287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path42194_ _src42277_)))
                           (let ((_E4228142291_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g4227842287_))))
                             (let ((_try-match4228042302_
                                    (lambda ()
                                      (let ((_K4228242297_
                                             (lambda (_path42295_)
                                               (cons 'in: _path42295_))))
                                        (let ((_path42300_ _g4227842287_))
                                          (_K4228242297_ _path42300_))))))
                               (let ((_K4228342307_
                                      (lambda (_path42305_) _path42305_)))
                                 (if (##pair? _g4227842287_)
                                     (let ((_hd4228442310_
                                            (##car _g4227842287_))
                                           (_tl4228542312_
                                            (##cdr _g4227842287_)))
                                       (let ((_path42315_ _hd4228442310_))
                                         (if (##null? _tl4228542312_)
                                             (_K4228342307_ _path42315_)
                                             (_try-match4228042302_))))
                                     (_try-match4228042302_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out42319_
                                                   (if (fxzero? _phi42276_)
                                                       _out42317_
                                                       (cons 'phi:
                                                             (cons _phi42276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out42317_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp42230_
                                                 _rest42253_
                                                 (cons _out42319_
                                                       _r42233_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out4225542268_)
                                       (let ((_e4226042325_
                                              (##vector-ref
                                               _out4225542268_
                                               '1)))
                                         (let ((_src42328_ _e4226042325_))
                                           (let ((_e4226142330_
                                                  (##vector-ref
                                                   _out4225542268_
                                                   '2)))
                                             (let ((_phi42333_ _e4226142330_))
                                               (_K4225942322_
                                                _phi42333_
                                                _src42328_)))))
                                       (_E4225842272_))))))
                          (let ((_K4226242342_
                                 (lambda (_name42338_ _phi42339_ _key42340_)
                                   (_lp42230_
                                    _rest42253_
                                    (cons (cons 'spec:
                                                (cons _phi42339_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key42340_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name42338_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r42233_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out4225542268_)
                                (let ((_e4226342345_
                                       (##vector-ref _out4225542268_ '1)))
                                  (let ((_e4226442348_
                                         (##vector-ref _out4225542268_ '2)))
                                    (let ((_key42351_ _e4226442348_))
                                      (let ((_e4226542353_
                                             (##vector-ref
                                              _out4225542268_
                                              '3)))
                                        (let ((_phi42356_ _e4226542353_))
                                          (let ((_e4226642358_
                                                 (##vector-ref
                                                  _out4225542268_
                                                  '4)))
                                            (let ((_name42361_ _e4226642358_))
                                              (_K4226242342_
                                               _name42361_
                                               _phi42356_
                                               _key42351_))))))))
                                (_try-match4225742335_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest4223442242_)
                                                         (let ((_hd4223942366_
                                                                (##car _rest4223442242_))
                                                               (_tl4224042368_
                                                                (##cdr _rest4223442242_)))
                                                           (let ((_out42371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd4223942366_))
                     (let ((_rest42373_ _tl4224042368_))
                       (_K4223842363_ _rest42373_ _out42371_))))
                 (_else4223642250_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp42230_)
                                 _L42219_
                                 '()))
                              _tl4220142216_)))
                         (_g4219642206_ _g4219742209_)))))
              (_g4219542375_ _stx42190_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx42151_ _state42152_)
      (begin
        (gxc#meta-state-end-phi! _state42152_)
        (let ((_g4215442164_
               (lambda (_g4215542161_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4215542161_))))
          (let ((_g4215342187_
                 (lambda (_g4215542167_)
                   (if (gx#stx-pair? _g4215542167_)
                       (let ((_e4215742169_ (gx#stx-e _g4215542167_)))
                         (let ((_hd4215842172_ (##car _e4215742169_))
                               (_tl4215942174_ (##cdr _e4215742169_)))
                           ((lambda (_L42177_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L42177_)))
                            _tl4215942174_)))
                       (_g4215442164_ _g4215542167_)))))
            (_g4215342187_ _stx42151_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx42022_ _state42023_)
      (let ((_generate142025_
             (lambda (_id42146_ _eid42147_)
               (let ((_eid42149_ (gx#stx-e _eid42147_)))
                 (begin
                   (if (interned-symbol? _eid42149_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx42022_
                        _eid42149_))
                   (cons (gxc#generate-runtime-identifier _id42146_)
                         (cons _eid42149_ '())))))))
        (let ((_g4202742055_
               (lambda (_g4202842052_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g4202842052_))))
          (let ((_g4202642143_
                 (lambda (_g4202842058_)
                   (if (gx#stx-pair? _g4202842058_)
                       (let ((_e4203142060_ (gx#stx-e _g4202842058_)))
                         (let ((_hd4203242063_ (##car _e4203142060_))
                               (_tl4203342065_ (##cdr _e4203142060_)))
                           (if (gx#stx-pair/null? _tl4203342065_)
                               (if (fx>= (gx#stx-length _tl4203342065_) '0)
                                   (let ((_g46536_
                                          (gx#syntax-split-splice
                                           _tl4203342065_
                                           '0)))
                                     (begin
                                       (let ((_g46537_
                                              (values-count _g46536_)))
                                         (if (not (fx= _g46537_ 2))
                                             (error "Context expects 2 values"
                                                    _g46537_)))
                                       (let ((_target4203442068_
                                              (values-ref _g46536_ 0))
                                             (_tl4203642070_
                                              (values-ref _g46536_ 1)))
                                         (if (gx#stx-null? _tl4203642070_)
                                             (letrec ((_loop4203742073_
                                                       (lambda (_hd4203542076_
                                                                _eid4204142078_
                                                                _id4204242080_)
                                                         (if (gx#stx-pair?
                                                              _hd4203542076_)
                                                             (let ((_e4203842083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd4203542076_)))
                       (let ((_lp-hd4203942086_ (##car _e4203842083_))
                             (_lp-tl4204042088_ (##cdr _e4203842083_)))
                         (if (gx#stx-pair? _lp-hd4203942086_)
                             (let ((_e4204542091_
                                    (gx#stx-e _lp-hd4203942086_)))
                               (let ((_hd4204642094_ (##car _e4204542091_))
                                     (_tl4204742096_ (##cdr _e4204542091_)))
                                 (if (gx#stx-pair? _tl4204742096_)
                                     (let ((_e4204842099_
                                            (gx#stx-e _tl4204742096_)))
                                       (let ((_hd4204942102_
                                              (##car _e4204842099_))
                                             (_tl4205042104_
                                              (##cdr _e4204842099_)))
                                         (if (gx#stx-null? _tl4205042104_)
                                             (_loop4203742073_
                                              _lp-tl4204042088_
                                              (cons _hd4204942102_
                                                    _eid4204142078_)
                                              (cons _hd4204642094_
                                                    _id4204242080_))
                                             (_g4202742055_ _g4202842058_))))
                                     (_g4202742055_ _g4202842058_))))
                             (_g4202742055_ _g4202842058_))))
                     (let ((_eid4204342107_ (reverse _eid4204142078_))
                           (_id4204442109_ (reverse _id4204242080_)))
                       ((lambda (_L42112_ _L42113_)
                          (cons '%#extern
                                (map _generate142025_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g4212842131_
                                                       _g4212942133_)
                                                (cons _g4212842131_
                                                      _g4212942133_))
                                              '()
                                              _L42113_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g4213542138_
                                                       _g4213642140_)
                                                (cons _g4213542138_
                                                      _g4213642140_))
                                              '()
                                              _L42112_)))))
                        _eid4204342107_
                        _id4204442109_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop4203742073_
                                                _target4203442068_
                                                '()
                                                '()))
                                             (_g4202742055_ _g4202842058_)))))
                                   (_g4202742055_ _g4202842058_))
                               (_g4202742055_ _g4202842058_))))
                       (_g4202742055_ _g4202842058_)))))
            (_g4202642143_ _stx42022_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx41817_ _state41818_)
      (let ((_generate141820_
             (lambda (_id42017_)
               (let ((_eid42019_ (gxc#generate-runtime-binding-id _id42017_))
                     (_ident42020_
                      (gxc#generate-runtime-identifier _id42017_)))
                 (cons '%#define-runtime
                       (cons _ident42020_ (cons _eid42019_ '())))))))
        (let ((_generate*41821_
               (lambda (_all41985_)
                 (let ((_all4198641994_ _all41985_))
                   (let ((_E4198941998_
                          (lambda ()
                            (error '"No clause matching" _all4198641994_))))
                     (let ((_else4198842002_
                            (lambda () (cons '%#begin _all41985_))))
                       (let ((_K4199042007_ (lambda (_one42005_) _one42005_)))
                         (if (##pair? _all4198641994_)
                             (let ((_hd4199142010_ (##car _all4198641994_))
                                   (_tl4199242012_ (##cdr _all4198641994_)))
                               (let ((_one42015_ _hd4199142010_))
                                 (if (##null? _tl4199242012_)
                                     (_K4199042007_ _one42015_)
                                     (_else4198842002_))))
                             (_else4198842002_)))))))))
          (let ((_g4182341840_
                 (lambda (_g4182441837_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g4182441837_))))
            (let ((_g4182241982_
                   (lambda (_g4182441843_)
                     (if (gx#stx-pair? _g4182441843_)
                         (let ((_e4182741845_ (gx#stx-e _g4182441843_)))
                           (let ((_hd4182841848_ (##car _e4182741845_))
                                 (_tl4182941850_ (##cdr _e4182741845_)))
                             (if (gx#stx-pair? _tl4182941850_)
                                 (let ((_e4183041853_
                                        (gx#stx-e _tl4182941850_)))
                                   (let ((_hd4183141856_ (##car _e4183041853_))
                                         (_tl4183241858_
                                          (##cdr _e4183041853_)))
                                     (if (gx#stx-pair? _tl4183241858_)
                                         (let ((_e4183341861_
                                                (gx#stx-e _tl4183241858_)))
                                           (let ((_hd4183441864_
                                                  (##car _e4183341861_))
                                                 (_tl4183541866_
                                                  (##cdr _e4183341861_)))
                                             (if (gx#stx-null? _tl4183541866_)
                                                 ((lambda (_L41869_ _L41870_)
                                                    ((letrec ((_lp41886_
                                                               (lambda (_rest41888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r41889_)
                         (let ((_g4189441910_
                                (lambda (_g4189541907_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g4189541907_))))
                           (let ((_g4189341917_
                                  (lambda (_g4189541913_)
                                    ((lambda ()
                                       (_generate*41821_
                                        (reverse _r41889_)))))))
                             (let ((_g4189241933_
                                    (lambda (_g4189541920_)
                                      ((lambda (_L41922_)
                                         (if (gx#identifier? _L41922_)
                                             (_generate*41821_
                                              (foldl cons
                                                     (cons (_generate141820_
                                                            _L41922_)
                                                           '())
                                                     _r41889_))
                                             (_g4189341917_ _g4189541920_)))
                                       _g4189541920_))))
                               (let ((_g4189141957_
                                      (lambda (_g4189541936_)
                                        (if (gx#stx-pair? _g4189541936_)
                                            (let ((_e4190241938_
                                                   (gx#stx-e _g4189541936_)))
                                              (let ((_hd4190341941_
                                                     (##car _e4190241938_))
                                                    (_tl4190441943_
                                                     (##cdr _e4190241938_)))
                                                ((lambda (_L41946_ _L41947_)
                                                   (_lp41886_
                                                    _L41946_
                                                    (cons (_generate141820_
                                                           _L41947_)
                                                          _r41889_)))
                                                 _tl4190441943_
                                                 _hd4190341941_)))
                                            (_g4189241933_ _g4189541936_)))))
                                 (let ((_g4189041979_
                                        (lambda (_g4189541960_)
                                          (if (gx#stx-pair? _g4189541960_)
                                              (let ((_e4189741962_
                                                     (gx#stx-e _g4189541960_)))
                                                (let ((_hd4189841965_
                                                       (##car _e4189741962_))
                                                      (_tl4189941967_
                                                       (##cdr _e4189741962_)))
                                                  (if (gx#stx-datum?
                                                       _hd4189841965_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd4189841965_)
                          '#f)
                  ((lambda (_L41970_) (_lp41886_ _L41970_ _r41889_))
                   _tl4189941967_)
                  (_g4189141957_ _g4189541960_))
              (_g4189141957_ _g4189541960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4189141957_ _g4189541960_)))))
                                   (_g4189041979_ _rest41888_)))))))))
               _lp41886_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L41870_
                                                     '()))
                                                  _hd4183441864_
                                                  _hd4183141856_)
                                                 (_g4182341840_
                                                  _g4182441843_))))
                                         (_g4182341840_ _g4182441843_))))
                                 (_g4182341840_ _g4182441843_))))
                         (_g4182341840_ _g4182441843_)))))
              (_g4182241982_ _stx41817_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx41714_ _state41715_)
      (let ((_g4171741734_
             (lambda (_g4171841731_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4171841731_))))
        (let ((_g4171641814_
               (lambda (_g4171841737_)
                 (if (gx#stx-pair? _g4171841737_)
                     (let ((_e4172141739_ (gx#stx-e _g4171841737_)))
                       (let ((_hd4172241742_ (##car _e4172141739_))
                             (_tl4172341744_ (##cdr _e4172141739_)))
                         (if (gx#stx-pair? _tl4172341744_)
                             (let ((_e4172441747_ (gx#stx-e _tl4172341744_)))
                               (let ((_hd4172541750_ (##car _e4172441747_))
                                     (_tl4172641752_ (##cdr _e4172441747_)))
                                 (if (gx#stx-pair? _tl4172641752_)
                                     (let ((_e4172741755_
                                            (gx#stx-e _tl4172641752_)))
                                       (let ((_hd4172841758_
                                              (##car _e4172741755_))
                                             (_tl4172941760_
                                              (##cdr _e4172741755_)))
                                         (if (gx#stx-null? _tl4172941760_)
                                             ((lambda (_L41763_ _L41764_)
                                                (let ((_eid41779_
                                                       (gxc#generate-runtime-binding-id
                                                        _L41764_)))
                                                  (let ((_phi41781_
                                                         (fx1+ (gx#current-expander-phi))))
                                                    (let ((_block41783_
                                                           (gxc#meta-state-begin-phi!
                                                            _state41715_
                                                            _phi41781_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g4178641793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g4178741790_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g4178741790_))))
                    (let ((_g4178541811_
                           (lambda (_g4178741796_)
                             ((lambda (_L41798_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state41715_
                                   _phi41781_
                                   (cons (gx#datum->syntax
                                          '#f
                                          '%#define-runtime)
                                         (cons _L41798_
                                               (cons _L41763_ '()))))))
                              _g4178741796_))))
                      (_g4178541811_ _eid41779_)))
                  (if _block41783_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block41783_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L41764_)
                                                    (cons _eid41779_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L41764_)
                                  (cons _eid41779_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd4172841758_
                                              _hd4172541750_)
                                             (_g4171741734_ _g4171841737_))))
                                     (_g4171741734_ _g4171841737_))))
                             (_g4171741734_ _g4171841737_))))
                     (_g4171741734_ _g4171841737_)))))
          (_g4171641814_ _stx41714_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx41646_ _state41647_)
      (let ((_g4164941666_
             (lambda (_g4165041663_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4165041663_))))
        (let ((_g4164841711_
               (lambda (_g4165041669_)
                 (if (gx#stx-pair? _g4165041669_)
                     (let ((_e4165341671_ (gx#stx-e _g4165041669_)))
                       (let ((_hd4165441674_ (##car _e4165341671_))
                             (_tl4165541676_ (##cdr _e4165341671_)))
                         (if (gx#stx-pair? _tl4165541676_)
                             (let ((_e4165641679_ (gx#stx-e _tl4165541676_)))
                               (let ((_hd4165741682_ (##car _e4165641679_))
                                     (_tl4165841684_ (##cdr _e4165641679_)))
                                 (if (gx#stx-pair? _tl4165841684_)
                                     (let ((_e4165941687_
                                            (gx#stx-e _tl4165841684_)))
                                       (let ((_hd4166041690_
                                              (##car _e4165941687_))
                                             (_tl4166141692_
                                              (##cdr _e4165941687_)))
                                         (if (gx#stx-null? _tl4166141692_)
                                             ((lambda (_L41695_ _L41696_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L41696_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L41695_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd4166041690_
                                              _hd4165741682_)
                                             (_g4164941666_ _g4165041669_))))
                                     (_g4164941666_ _g4165041669_))))
                             (_g4164941666_ _g4165041669_))))
                     (_g4164941666_ _g4165041669_)))))
          (_g4164841711_ _stx41646_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx41643_ _state41644_)
      (begin
        (gxc#meta-state-add-phi!
         _state41644_
         (gx#current-expander-phi)
         _stx41643_)
        (gxc#generate-meta-define-values% _stx41643_ _state41644_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx41640_ _state41641_)
      (begin
        (gxc#meta-state-add-phi!
         _state41641_
         (gx#current-expander-phi)
         _stx41640_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args41637_
      (apply make-struct-instance gxc#meta-state::t _$args41637_)))
  (define gxc#meta-state-src (make-struct-field-accessor gxc#meta-state::t '0))
  (define gxc#meta-state-n (make-struct-field-accessor gxc#meta-state::t '1))
  (define gxc#meta-state-open
    (make-struct-field-accessor gxc#meta-state::t '2))
  (define gxc#meta-state-blocks
    (make-struct-field-accessor gxc#meta-state::t '3))
  (define gxc#meta-state-src-set!
    (make-struct-field-mutator gxc#meta-state::t '0))
  (define gxc#meta-state-n-set!
    (make-struct-field-mutator gxc#meta-state::t '1))
  (define gxc#meta-state-open-set!
    (make-struct-field-mutator gxc#meta-state::t '2))
  (define gxc#meta-state-blocks-set!
    (make-struct-field-mutator gxc#meta-state::t '3))
  (begin)
  (define gxc#meta-state:::init!
    (lambda (_self41634_ _ctx41635_)
      (direct-struct-instance-init!
       _self41634_
       (symbol->string (gx#expander-context-id _ctx41635_))
       '1
       (make-hash-table-eq)
       '())))
  (bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f)
  (define gxc#meta-state-block::t
    (make-struct-type
     'gxc#meta-state-block::t
     '#f
     '4
     'meta-state-block
     '()
     '#f))
  (define gxc#meta-state-block?
    (make-struct-predicate gxc#meta-state-block::t))
  (define gxc#make-meta-state-block
    (lambda _$args41631_
      (apply make-struct-instance gxc#meta-state-block::t _$args41631_)))
  (define gxc#meta-state-block-ctx
    (make-struct-field-accessor gxc#meta-state-block::t '0))
  (define gxc#meta-state-block-phi
    (make-struct-field-accessor gxc#meta-state-block::t '1))
  (define gxc#meta-state-block-n
    (make-struct-field-accessor gxc#meta-state-block::t '2))
  (define gxc#meta-state-block-code
    (make-struct-field-accessor gxc#meta-state-block::t '3))
  (define gxc#meta-state-block-ctx-set!
    (make-struct-field-mutator gxc#meta-state-block::t '0))
  (define gxc#meta-state-block-phi-set!
    (make-struct-field-mutator gxc#meta-state-block::t '1))
  (define gxc#meta-state-block-n-set!
    (make-struct-field-mutator gxc#meta-state-block::t '2))
  (define gxc#meta-state-block-code-set!
    (make-struct-field-mutator gxc#meta-state-block::t '3))
  (begin)
  (define gxc#meta-state-begin-phi!
    (lambda (_state41590_ _phi41591_)
      (let ((_state4159241600_ _state41590_))
        (let ((_E4159441604_
               (lambda () (error '"No clause matching" _state4159241600_))))
          (let ((_K4159541613_
                 (lambda (_open41607_ _n41608_ _src41609_)
                   (if (hash-get _open41607_ _phi41591_)
                       '#f
                       (let ((_block-ref41611_
                              (string-append
                               _src41609_
                               '"__"
                               (number->string _n41608_))))
                         (begin
                           (gxc#meta-state-n-set! _state41590_ (fx1+ _n41608_))
                           (hash-put!
                            _open41607_
                            _phi41591_
                            (gxc#make-meta-state-block
                             (gx#current-expander-context)
                             _phi41591_
                             _n41608_
                             '()))
                           _block-ref41611_))))))
            (if (struct-instance? gxc#meta-state::t _state4159241600_)
                (let ((_e4159641616_ (##vector-ref _state4159241600_ '1)))
                  (let ((_src41619_ _e4159641616_))
                    (let ((_e4159741621_ (##vector-ref _state4159241600_ '2)))
                      (let ((_n41624_ _e4159741621_))
                        (let ((_e4159841626_
                               (##vector-ref _state4159241600_ '3)))
                          (let ((_open41629_ _e4159841626_))
                            (_K4159541613_
                             _open41629_
                             _n41624_
                             _src41619_)))))))
                (_E4159441604_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state41584_ _phi41585_ _stx41586_)
      (let ((_block41588_
             (hash-get (gxc#meta-state-open _state41584_) _phi41585_)))
        (gxc#meta-state-block-code-set!
         _block41588_
         (cons _stx41586_ (gxc#meta-state-block-code _block41588_))))))
  (define gxc#meta-state-end-phi!
    (lambda (_state41579_)
      (begin
        (gxc#meta-state-blocks-set!
         _state41579_
         (hash-fold
          (lambda (_g46538_ _block41581_ _r41582_)
            (cons _block41581_ _r41582_))
          (gxc#meta-state-blocks _state41579_)
          (gxc#meta-state-open _state41579_)))
        (gxc#meta-state-open-set! _state41579_ (make-hash-table-eq)))))
  (define gxc#meta-state-end!
    (lambda (_state41531_)
      (begin
        (gxc#meta-state-end-phi! _state41531_)
        (foldl (lambda (_block41533_ _r41534_)
                 (let ((_block4153541544_ _block41533_))
                   (let ((_E4153741548_
                          (lambda ()
                            (error '"No clause matching" _block4153541544_))))
                     (let ((_K4153841556_
                            (lambda (_code41551_
                                     _n41552_
                                     _phi41553_
                                     _ctx41554_)
                              (if (null? _code41551_)
                                  _r41534_
                                  (cons (cons _ctx41554_
                                              (cons _phi41553_
                                                    (cons _n41552_
                                                          (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _code41551_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _r41534_)))))
                       (if (struct-instance?
                            gxc#meta-state-block::t
                            _block4153541544_)
                           (let ((_e4153941559_
                                  (##vector-ref _block4153541544_ '1)))
                             (let ((_ctx41562_ _e4153941559_))
                               (let ((_e4154041564_
                                      (##vector-ref _block4153541544_ '2)))
                                 (let ((_phi41567_ _e4154041564_))
                                   (let ((_e4154141569_
                                          (##vector-ref _block4153541544_ '3)))
                                     (let ((_n41572_ _e4154141569_))
                                       (let ((_e4154241574_
                                              (##vector-ref
                                               _block4153541544_
                                               '4)))
                                         (let ((_code41577_ _e4154241574_))
                                           (_K4153841556_
                                            _code41577_
                                            _n41572_
                                            _phi41567_
                                            _ctx41562_)))))))))
                           (_E4153741548_))))))
               '()
               (gxc#meta-state-blocks _state41531_)))))
  (define gxc#collect-expression-refs
    (lambda (_stx41527_)
      (let ((_ht41529_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx41527_ _ht41529_)
          _ht41529_))))
  (define gxc#collect-refs-lambda%
    (lambda (_stx41459_ _ht41460_)
      (let ((_g4146241479_
             (lambda (_g4146341476_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4146341476_))))
        (let ((_g4146141524_
               (lambda (_g4146341482_)
                 (if (gx#stx-pair? _g4146341482_)
                     (let ((_e4146641484_ (gx#stx-e _g4146341482_)))
                       (let ((_hd4146741487_ (##car _e4146641484_))
                             (_tl4146841489_ (##cdr _e4146641484_)))
                         (if (gx#stx-pair? _tl4146841489_)
                             (let ((_e4146941492_ (gx#stx-e _tl4146841489_)))
                               (let ((_hd4147041495_ (##car _e4146941492_))
                                     (_tl4147141497_ (##cdr _e4146941492_)))
                                 (if (gx#stx-pair? _tl4147141497_)
                                     (let ((_e4147241500_
                                            (gx#stx-e _tl4147141497_)))
                                       (let ((_hd4147341503_
                                              (##car _e4147241500_))
                                             (_tl4147441505_
                                              (##cdr _e4147241500_)))
                                         (if (gx#stx-null? _tl4147441505_)
                                             ((lambda (_L41508_ _L41509_)
                                                (gxc#compile-e
                                                 _L41508_
                                                 _ht41460_))
                                              _hd4147341503_
                                              _hd4147041495_)
                                             (_g4146241479_ _g4146341482_))))
                                     (_g4146241479_ _g4146341482_))))
                             (_g4146241479_ _g4146341482_))))
                     (_g4146241479_ _g4146341482_)))))
          (_g4146141524_ _stx41459_)))))
  (define gxc#collect-refs-case-lambda%
    (lambda (_stx41341_ _ht41342_)
      (let ((_g4134441372_
             (lambda (_g4134541369_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4134541369_))))
        (let ((_g4134341456_
               (lambda (_g4134541375_)
                 (if (gx#stx-pair? _g4134541375_)
                     (let ((_e4134841377_ (gx#stx-e _g4134541375_)))
                       (let ((_hd4134941380_ (##car _e4134841377_))
                             (_tl4135041382_ (##cdr _e4134841377_)))
                         (if (gx#stx-pair/null? _tl4135041382_)
                             (if (fx>= (gx#stx-length _tl4135041382_) '0)
                                 (let ((_g46539_
                                        (gx#syntax-split-splice
                                         _tl4135041382_
                                         '0)))
                                   (begin
                                     (let ((_g46540_ (values-count _g46539_)))
                                       (if (not (fx= _g46540_ 2))
                                           (error "Context expects 2 values"
                                                  _g46540_)))
                                     (let ((_target4135141385_
                                            (values-ref _g46539_ 0))
                                           (_tl4135341387_
                                            (values-ref _g46539_ 1)))
                                       (if (gx#stx-null? _tl4135341387_)
                                           (letrec ((_loop4135441390_
                                                     (lambda (_hd4135241393_
                                                              _body4135841395_
                                                              _hd4135941397_)
                                                       (if (gx#stx-pair?
                                                            _hd4135241393_)
                                                           (let ((_e4135541400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd4135241393_)))
                     (let ((_lp-hd4135641403_ (##car _e4135541400_))
                           (_lp-tl4135741405_ (##cdr _e4135541400_)))
                       (if (gx#stx-pair? _lp-hd4135641403_)
                           (let ((_e4136241408_ (gx#stx-e _lp-hd4135641403_)))
                             (let ((_hd4136341411_ (##car _e4136241408_))
                                   (_tl4136441413_ (##cdr _e4136241408_)))
                               (if (gx#stx-pair? _tl4136441413_)
                                   (let ((_e4136541416_
                                          (gx#stx-e _tl4136441413_)))
                                     (let ((_hd4136641419_
                                            (##car _e4136541416_))
                                           (_tl4136741421_
                                            (##cdr _e4136541416_)))
                                       (if (gx#stx-null? _tl4136741421_)
                                           (_loop4135441390_
                                            _lp-tl4135741405_
                                            (cons _hd4136641419_
                                                  _body4135841395_)
                                            (cons _hd4136341411_
                                                  _hd4135941397_))
                                           (_g4134441372_ _g4134541375_))))
                                   (_g4134441372_ _g4134541375_))))
                           (_g4134441372_ _g4134541375_))))
                   (let ((_body4136041424_ (reverse _body4135841395_))
                         (_hd4136141426_ (reverse _hd4135941397_)))
                     ((lambda (_L41429_ _L41430_)
                        (for-each
                         (lambda (_g4144441446_)
                           (gxc#compile-e _g4144441446_ _ht41342_))
                         (begin
                           '#!void
                           (foldr (lambda (_g4144841451_ _g4144941453_)
                                    (cons _g4144841451_ _g4144941453_))
                                  '()
                                  _L41429_))))
                      _body4136041424_
                      _hd4136141426_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop4135441390_
                                              _target4135141385_
                                              '()
                                              '()))
                                           (_g4134441372_ _g4134541375_)))))
                                 (_g4134441372_ _g4134541375_))
                             (_g4134441372_ _g4134541375_))))
                     (_g4134441372_ _g4134541375_)))))
          (_g4134341456_ _stx41341_)))))
  (define gxc#collect-refs-let-values%
    (lambda (_stx41194_ _ht41195_)
      (let ((_g4119741232_
             (lambda (_g4119841229_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4119841229_))))
        (let ((_g4119641338_
               (lambda (_g4119841235_)
                 (if (gx#stx-pair? _g4119841235_)
                     (let ((_e4120241237_ (gx#stx-e _g4119841235_)))
                       (let ((_hd4120341240_ (##car _e4120241237_))
                             (_tl4120441242_ (##cdr _e4120241237_)))
                         (if (gx#stx-pair? _tl4120441242_)
                             (let ((_e4120541245_ (gx#stx-e _tl4120441242_)))
                               (let ((_hd4120641248_ (##car _e4120541245_))
                                     (_tl4120741250_ (##cdr _e4120541245_)))
                                 (if (gx#stx-pair/null? _hd4120641248_)
                                     (if (fx>= (gx#stx-length _hd4120641248_)
                                               '0)
                                         (let ((_g46541_
                                                (gx#syntax-split-splice
                                                 _hd4120641248_
                                                 '0)))
                                           (begin
                                             (let ((_g46542_
                                                    (values-count _g46541_)))
                                               (if (not (fx= _g46542_ 2))
                                                   (error "Context expects 2 values"
                                                          _g46542_)))
                                             (let ((_target4120841253_
                                                    (values-ref _g46541_ 0))
                                                   (_tl4121041255_
                                                    (values-ref _g46541_ 1)))
                                               (if (gx#stx-null?
                                                    _tl4121041255_)
                                                   (letrec ((_loop4121141258_
                                                             (lambda (_hd4120941261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr4121541263_
                              _hd4121641265_)
                       (if (gx#stx-pair? _hd4120941261_)
                           (let ((_e4121241268_ (gx#stx-e _hd4120941261_)))
                             (let ((_lp-hd4121341271_ (##car _e4121241268_))
                                   (_lp-tl4121441273_ (##cdr _e4121241268_)))
                               (if (gx#stx-pair? _lp-hd4121341271_)
                                   (let ((_e4121941276_
                                          (gx#stx-e _lp-hd4121341271_)))
                                     (let ((_hd4122041279_
                                            (##car _e4121941276_))
                                           (_tl4122141281_
                                            (##cdr _e4121941276_)))
                                       (if (gx#stx-pair? _tl4122141281_)
                                           (let ((_e4122241284_
                                                  (gx#stx-e _tl4122141281_)))
                                             (let ((_hd4122341287_
                                                    (##car _e4122241284_))
                                                   (_tl4122441289_
                                                    (##cdr _e4122241284_)))
                                               (if (gx#stx-null?
                                                    _tl4122441289_)
                                                   (_loop4121141258_
                                                    _lp-tl4121441273_
                                                    (cons _hd4122341287_
                                                          _expr4121541263_)
                                                    (cons _hd4122041279_
                                                          _hd4121641265_))
                                                   (_g4119741232_
                                                    _g4119841235_))))
                                           (_g4119741232_ _g4119841235_))))
                                   (_g4119741232_ _g4119841235_))))
                           (let ((_expr4121741292_ (reverse _expr4121541263_))
                                 (_hd4121841294_ (reverse _hd4121641265_)))
                             (if (gx#stx-pair? _tl4120741250_)
                                 (let ((_e4122541297_
                                        (gx#stx-e _tl4120741250_)))
                                   (let ((_hd4122641300_ (##car _e4122541297_))
                                         (_tl4122741302_
                                          (##cdr _e4122541297_)))
                                     (if (gx#stx-null? _tl4122741302_)
                                         ((lambda (_L41305_ _L41306_ _L41307_)
                                            (if (for-each
                                                 (lambda (_g4132641328_)
                                                   (gxc#compile-e
                                                    _g4132641328_
                                                    _ht41195_))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g4133041333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g4133141335_)
                    (cons _g4133041333_ _g4133141335_))
                  '()
                  _L41306_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e
                                                 _L41305_
                                                 _ht41195_)
                                                (_g4119741232_ _g4119841235_)))
                                          _hd4122641300_
                                          _expr4121741292_
                                          _hd4121841294_)
                                         (_g4119741232_ _g4119841235_))))
                                 (_g4119741232_ _g4119841235_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop4121141258_
                                                      _target4120841253_
                                                      '()
                                                      '()))
                                                   (_g4119741232_
                                                    _g4119841235_)))))
                                         (_g4119741232_ _g4119841235_))
                                     (_g4119741232_ _g4119841235_))))
                             (_g4119741232_ _g4119841235_))))
                     (_g4119741232_ _g4119841235_)))))
          (_g4119641338_ _stx41194_)))))
  (define gxc#collect-refs-ref%
    (lambda (_stx41137_ _ht41138_)
      (let ((_g4114041153_
             (lambda (_g4114141150_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4114141150_))))
        (let ((_g4113941191_
               (lambda (_g4114141156_)
                 (if (gx#stx-pair? _g4114141156_)
                     (let ((_e4114341158_ (gx#stx-e _g4114141156_)))
                       (let ((_hd4114441161_ (##car _e4114341158_))
                             (_tl4114541163_ (##cdr _e4114341158_)))
                         (if (gx#stx-pair? _tl4114541163_)
                             (let ((_e4114641166_ (gx#stx-e _tl4114541163_)))
                               (let ((_hd4114741169_ (##car _e4114641166_))
                                     (_tl4114841171_ (##cdr _e4114641166_)))
                                 (if (gx#stx-null? _tl4114841171_)
                                     ((lambda (_L41174_)
                                        (let ((_bind41186_
                                               (gx#resolve-identifier
                                                _L41174_)))
                                          (let ((_eid41188_
                                                 (if _bind41186_
                                                     (gx#binding-id
                                                      _bind41186_)
                                                     (gx#stx-e _L41174_))))
                                            (let ()
                                              (hash-put!
                                               _ht41138_
                                               _eid41188_
                                               _eid41188_)))))
                                      _hd4114741169_)
                                     (_g4114041153_ _g4114141156_))))
                             (_g4114041153_ _g4114141156_))))
                     (_g4114041153_ _g4114141156_)))))
          (_g4113941191_ _stx41137_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx41064_ _ht41065_)
      (let ((_g4106741084_
             (lambda (_g4106841081_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4106841081_))))
        (let ((_g4106641134_
               (lambda (_g4106841087_)
                 (if (gx#stx-pair? _g4106841087_)
                     (let ((_e4107141089_ (gx#stx-e _g4106841087_)))
                       (let ((_hd4107241092_ (##car _e4107141089_))
                             (_tl4107341094_ (##cdr _e4107141089_)))
                         (if (gx#stx-pair? _tl4107341094_)
                             (let ((_e4107441097_ (gx#stx-e _tl4107341094_)))
                               (let ((_hd4107541100_ (##car _e4107441097_))
                                     (_tl4107641102_ (##cdr _e4107441097_)))
                                 (if (gx#stx-pair? _tl4107641102_)
                                     (let ((_e4107741105_
                                            (gx#stx-e _tl4107641102_)))
                                       (let ((_hd4107841108_
                                              (##car _e4107741105_))
                                             (_tl4107941110_
                                              (##cdr _e4107741105_)))
                                         (if (gx#stx-null? _tl4107941110_)
                                             ((lambda (_L41113_ _L41114_)
                                                (let ((_bind41129_
                                                       (gx#resolve-identifier
                                                        _L41114_)))
                                                  (let ((_eid41131_
                                                         (if _bind41129_
                                                             (gx#binding-id
                                                              _bind41129_)
                                                             (gx#stx-e
                                                              _L41114_))))
                                                    (let ()
                                                      (begin
                                                        (hash-put!
                                                         _ht41065_
                                                         _eid41131_
                                                         _eid41131_)
                                                        (gxc#compile-e
                                                         _L41113_
                                                         _ht41065_))))))
                                              _hd4107841108_
                                              _hd4107541100_)
                                             (_g4106741084_ _g4106841087_))))
                                     (_g4106741084_ _g4106841087_))))
                             (_g4106741084_ _g4106841087_))))
                     (_g4106741084_ _g4106841087_)))))
          (_g4106641134_ _stx41064_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx41026_)
      (let ((_g4102841038_
             (lambda (_g4102941035_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4102941035_))))
        (let ((_g4102741061_
               (lambda (_g4102941041_)
                 (if (gx#stx-pair? _g4102941041_)
                     (let ((_e4103141043_ (gx#stx-e _g4102941041_)))
                       (let ((_hd4103241046_ (##car _e4103141043_))
                             (_tl4103341048_ (##cdr _e4103141043_)))
                         ((lambda (_L41051_) (ormap gxc#compile-e _L41051_))
                          _tl4103341048_)))
                     (_g4102841038_ _g4102941041_)))))
          (_g4102741061_ _stx41026_))))))
