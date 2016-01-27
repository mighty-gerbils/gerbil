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
    (lambda _$args18645_
      (apply make-struct-instance gxc#symbol-table::t _$args18645_)))
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
    (let ((_@super18641_
           (let ((_$super18635_
                  (make-promise
                   (lambda ()
                     (let ((_$e18632_
                            (struct-find-next-method
                             gxc#symbol-table::t
                             ':init!)))
                       (if _$e18632_
                           _$e18632_
                           (error '"Cannot find super method"
                                  gxc#symbol-table::t
                                  ':init!)))))))
             (lambda _$args18638_
               (apply (force _$super18635_) _$args18638_)))))
      (lambda (_self18643_)
        (direct-struct-instance-init!
         _self18643_
         (make-hash-table-eq)
         (make-hash-table-eq)))))
  (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f)
  (define gxc#raise-compile-error
    (lambda (_message18627_ _stx18628_ . _details18629_)
      (apply gx#raise-syntax-error
             'compile
             _message18627_
             _stx18628_
             _details18629_)))
  (define gxc#verbose
    (lambda _args18625_
      (if (gxc#current-compile-verbose)
          (apply displayln _args18625_)
          '#!void)))
  (define gxc#compile-file
    (let ((_opt-lambda1860318615_
           (lambda (_srcpath18605_ _opts18606_)
             (begin
               (if (string? _srcpath18605_)
                   '#!void
                   (gxc#raise-compile-error
                    '"Invalid module source path"
                    _srcpath18605_))
               (let ((_outdir18608_ (pgetq 'output-dir: _opts18606_))
                     (_invoke-gsc?18609_ (pgetq 'invoke-gsc: _opts18606_))
                     (_gsc-options18610_ (pgetq 'gsc-options: _opts18606_))
                     (_keep-scm?18611_ (pgetq 'keep-scm: _opts18606_))
                     (_verbosity18612_ (pgetq 'verbose: _opts18606_)))
                 (begin
                   (if _outdir18608_ (create-directory* _outdir18608_) '#!void)
                   (call-with-parameters
                    (lambda ()
                      (begin
                        (gxc#verbose '"compile " _srcpath18605_)
                        (gxc#compile-top-module
                         (gx#import-module _srcpath18605_))))
                    gxc#current-compile-output-dir
                    _outdir18608_
                    gxc#current-compile-invoke-gsc
                    _invoke-gsc?18609_
                    gxc#current-compile-gsc-options
                    _gsc-options18610_
                    gxc#current-compile-keep-scm
                    _keep-scm?18611_
                    gxc#current-compile-verbose
                    _verbosity18612_)))))))
      (lambda _g18648_
        (let ((_g18647_ (length _g18648_)))
          (cond ((fx= _g18647_ 1)
                 (apply (lambda (_srcpath18618_)
                          (let ((_opts18620_ '()))
                            (_opt-lambda1860318615_
                             _srcpath18618_
                             _opts18620_)))
                        _g18648_))
                ((fx= _g18647_ 2)
                 (apply (lambda (_srcpath18622_ _opts18623_)
                          (_opt-lambda1860318615_ _srcpath18622_ _opts18623_))
                        _g18648_))
                (else (error "No clause matching arguments" _g18648_)))))))
  (define gxc#compile-top-module
    (lambda (_ctx18601_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose '"compile " (gx#expander-context-id _ctx18601_))
           (gxc#collect-bindings _ctx18601_)
           (gxc#compile-runtime-code _ctx18601_)
           (gxc#compile-meta-code _ctx18601_)))
       gx#current-expander-context
       _ctx18601_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (gxc#make-symbol-table)
       gxc#current-compile-runtime-sections
       (make-hash-table-eq))))
  (define gxc#collect-bindings
    (lambda (_ctx18599_)
      (gxc#apply-collect-bindings (gx#module-context-code _ctx18599_))))
  (define gxc#compile-runtime-code
    (lambda (_ctx18566_)
      (let ((_generate-runtime-code18569_
             (lambda (_ctx18584_ _code18585_)
               (let ((_runtime-code18588_
                      (call-with-parameters
                       (lambda () (gxc#apply-generate-runtime _code18585_))
                       gx#current-expander-context
                       _ctx18584_)))
                 (gxc#compile-scm-file
                  (gxc#compile-output-file _ctx18584_ '0 '".scm")
                  _runtime-code18588_)))))
        (let ((_generate-loader-code18570_
               (lambda (_ctx18574_ _code18575_ _rt18576_)
                 (let ((_loader-code18579_
                        (call-with-parameters
                         (lambda () (gxc#apply-generate-loader _code18575_))
                         gx#current-expander-context
                         _ctx18574_)))
                   (let ((_loader-code18581_
                          (if _rt18576_
                              (cons 'begin
                                    (cons _loader-code18579_
                                          (cons (cons 'load-module
                                                      (cons _rt18576_ '()))
                                                '())))
                              _loader-code18579_)))
                     (let ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx18574_ 'rt '".scm")
                        _loader-code18581_)))))))
          (let ((_compile118568_
                 (lambda (_ctx18590_)
                   (let ((_code18592_ (gx#module-context-code _ctx18590_)))
                     (let ((_rt18596_
                            (if (gxc#apply-find-runtime-code _code18592_)
                                (let ((_idstr18594_
                                       (symbol->string
                                        (gx#expander-context-id _ctx18590_))))
                                  (string-append _idstr18594_ '"__0"))
                                '#f)))
                       (let ()
                         (begin
                           (if _rt18596_
                               (begin
                                 (hash-put!
                                  (gxc#current-compile-runtime-sections)
                                  _ctx18590_
                                  _rt18596_)
                                 (_generate-runtime-code18569_
                                  _ctx18590_
                                  _code18592_))
                               '#!void)
                           (_generate-loader-code18570_
                            _ctx18590_
                            _code18592_
                            _rt18596_))))))))
            (let ((_all-modules18572_
                   (cons _ctx18566_ (gxc#lift-nested-modules _ctx18566_))))
              (for-each _compile118568_ _all-modules18572_)))))))
  (define gxc#compile-meta-code
    (lambda (_ctx18468_)
      (let ((_compile-ssi18470_
             (lambda (_code18536_)
               (let ((_path18538_
                      (gxc#compile-output-file _ctx18468_ '#f '".ssi")))
                 (let ((_prelude18549_
                        (let ((_super18540_ (gx#phi-context-super _ctx18468_)))
                          (let ((_$e18542_
                                 (gx#expander-context-id _super18540_)))
                            (if _$e18542_
                                ((lambda (_g1854418546_)
                                   (make-symbol '":" _g1854418546_))
                                 _$e18542_)
                                ':<root>)))))
                   (let ((_ns18551_ (gx#module-context-ns _ctx18468_)))
                     (let ((_idstr18553_
                            (symbol->string
                             (gx#expander-context-id _ctx18468_))))
                       (let ((_pkg18560_
                              (let ((_$e18555_
                                     (string-rindex _idstr18553_ '#\/)))
                                (if _$e18555_
                                    ((lambda (_x18558_)
                                       (string->symbol
                                        (substring _idstr18553_ '0 _x18558_)))
                                     _$e18555_)
                                    '#f))))
                         (let ((_rt18562_
                                (hash-get
                                 (gxc#current-compile-runtime-sections)
                                 _ctx18468_)))
                           (let ()
                             (begin
                               (gxc#verbose '"compile " _path18538_)
                               (with-output-to-file
                                (cons 'path:
                                      (cons _path18538_
                                            (cons 'permissions:
                                                  (cons '420 '()))))
                                (lambda ()
                                  (begin
                                    (displayln '"prelude:" '" " _prelude18549_)
                                    (if _pkg18560_
                                        (displayln '"package:" '" " _pkg18560_)
                                        '#!void)
                                    (displayln '"namespace:" '" " _ns18551_)
                                    (newline)
                                    (pretty-print _code18536_)
                                    (if _rt18562_
                                        (pretty-print
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _rt18562_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '#!void)))))))))))))))
        (let ((_compile-phi18471_
               (lambda (_part18476_)
                 (let ((_part1847718490_ _part18476_))
                   (let ((_E1847918494_
                          (lambda ()
                            (error '"No clause matching" _part1847718490_))))
                     (let ((_K1848018505_
                            (lambda (_code18497_
                                     _n18498_
                                     _phi18499_
                                     _phi-ctx18500_)
                              (let ((_code18503_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#generate-runtime-phi _code18497_))
                                      gx#current-expander-context
                                      _phi-ctx18500_
                                      gx#current-expander-phi
                                      _phi18499_)))
                                (gxc#compile-scm-file
                                 (gxc#compile-output-file
                                  _ctx18468_
                                  _n18498_
                                  '".scm")
                                 _code18503_)))))
                       (if (##pair? _part1847718490_)
                           (let ((_hd1848118508_ (##car _part1847718490_))
                                 (_tl1848218510_ (##cdr _part1847718490_)))
                             (let ((_phi-ctx18513_ _hd1848118508_))
                               (if (##pair? _tl1848218510_)
                                   (let ((_hd1848318515_
                                          (##car _tl1848218510_))
                                         (_tl1848418517_
                                          (##cdr _tl1848218510_)))
                                     (let ((_phi18520_ _hd1848318515_))
                                       (if (##pair? _tl1848418517_)
                                           (let ((_hd1848518522_
                                                  (##car _tl1848418517_))
                                                 (_tl1848618524_
                                                  (##cdr _tl1848418517_)))
                                             (let ((_n18527_ _hd1848518522_))
                                               (if (##pair? _tl1848618524_)
                                                   (let ((_hd1848718529_
                                                          (##car _tl1848618524_))
                                                         (_tl1848818531_
                                                          (##cdr _tl1848618524_)))
                                                     (let ((_code18534_
                                                            _hd1848718529_))
                                                       (if (##null? _tl1848818531_)
                                                           (_K1848018505_
                                                            _code18534_
                                                            _n18527_
                                                            _phi18520_
                                                            _phi-ctx18513_)
                                                           (_E1847918494_))))
                                                   (_E1847918494_))))
                                           (_E1847918494_))))
                                   (_E1847918494_))))
                           (_E1847918494_))))))))
          (let ((_g18649_ (gxc#generate-meta-code _ctx18468_)))
            (begin
              (let ((_g18650_ (values-count _g18649_)))
                (if (not (fx= _g18650_ 2))
                    (error "Context expects 2 values" _g18650_)))
              (let ((_ssi-code18473_ (values-ref _g18649_ 0))
                    (_phi-code18474_ (values-ref _g18649_ 1)))
                (begin
                  (_compile-ssi18470_ _ssi-code18473_)
                  (for-each _compile-phi18471_ _phi-code18474_)))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx18461_)
      (let ((_state18463_ (gxc#make-meta-state _ctx18461_)))
        (let ((_ssi-code18465_
               (gxc#apply-generate-meta
                (gx#module-context-code _ctx18461_)
                _state18463_)))
          (let ()
            (values _ssi-code18465_ (gxc#meta-state-end! _state18463_)))))))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#generate-runtime-phi
    (lambda (_stx18454_)
      (let ((_lifts18456_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code18459_ (gxc#apply-generate-runtime-phi _stx18454_)))
             (if (null? (unbox _lifts18456_))
                 _code18459_
                 (cons 'begin
                       (foldr cons
                              (cons _code18459_ '())
                              (reverse (unbox _lifts18456_)))))))
         gxc#current-compile-lift
         _lifts18456_))))
  (define gxc#lift-nested-modules
    (lambda (_ctx18450_)
      (let ((_modules18452_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (gx#module-context-code _ctx18450_)
           _modules18452_)
          (reverse (unbox _modules18452_))))))
  (define gxc#compile-scm-file
    (lambda (_path18446_ _code18447_)
      (begin
        (gxc#verbose '"compile " _path18446_)
        (with-output-to-file
         (cons 'path: (cons _path18446_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code18447_))))
        (if (gxc#current-compile-invoke-gsc)
            (begin
              (gxc#gsc-compile-file _path18446_)
              (if (gxc#current-compile-keep-scm)
                  '#!void
                  (delete-file _path18446_)))
            '#!void))))
  (define gxc#gsc-compile-file
    (lambda (_path18432_)
      (let ((_gsc-args18439_
             (let ((_$e18434_ (gxc#current-compile-gsc-options)))
               (if _$e18434_
                   ((lambda (_opts18437_)
                      (foldr cons (cons _path18432_ '()) _opts18437_))
                    _$e18434_)
                   (cons _path18432_ '())))))
        (let ((_proc18441_
               (open-process
                (cons 'path:
                      (cons '"gsc"
                            (cons 'arguments:
                                  (cons _gsc-args18439_
                                        (cons 'stdout-redirection:
                                              (cons '#f '())))))))))
          (let ((_status18443_ (process-status _proc18441_)))
            (let ()
              (if (zero? _status18443_)
                  '#!void
                  (gxc#raise-compile-error
                   '"Compilation error; gsc exit with nonzero status"
                   _path18432_
                   _status18443_))))))))
  (define gxc#compile-output-file
    (lambda (_ctx18404_ _n18405_ _ext18406_)
      (let ((_module-relative-path18408_
             (lambda (_ctx18430_)
               (path-strip-directory
                (symbol->string (gx#expander-context-id _ctx18430_))))))
        (let ((_module-source-directory18409_
               (lambda (_ctx18426_)
                 (path-directory
                  (let ((_mpath18428_ (gx#module-context-path _ctx18426_)))
                    (if (string? _mpath18428_)
                        _mpath18428_
                        (last _mpath18428_)))))))
          (let ((_section-string18410_
                 (lambda (_n18424_)
                   (if (number? _n18424_)
                       (number->string _n18424_)
                       (if (symbol? _n18424_)
                           (symbol->string _n18424_)
                           (if (string? _n18424_)
                               _n18424_
                               (gxc#raise-compile-error
                                '"Unexpected section"
                                _n18424_)))))))
            (let ((_file-name18411_
                   (lambda (_path18422_)
                     (if _n18405_
                         (string-append
                          _path18422_
                          '"__"
                          (_section-string18410_ _n18405_)
                          _ext18406_)
                         (string-append _path18422_ _ext18406_)))))
              (let ((_file-path18412_
                     (lambda ()
                       (let ((_$e18417_ (gxc#current-compile-output-dir)))
                         (if _$e18417_
                             ((lambda (_outdir18420_)
                                (path-expand
                                 (_file-name18411_
                                  (symbol->string
                                   (gx#expander-context-id _ctx18404_)))
                                 _outdir18420_))
                              _$e18417_)
                             (path-expand
                              (_file-name18411_
                               (_module-relative-path18408_ _ctx18404_))
                              (_module-source-directory18409_ _ctx18404_)))))))
                (let ((_path18414_ (_file-path18412_)))
                  (begin
                    (create-directory* (path-directory _path18414_))
                    _path18414_)))))))))
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx18360_ . _args18361_)
      (let ((_g1836318373_
             (lambda (_g1836418370_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1836418370_))))
        (let ((_g1836218401_
               (lambda (_g1836418376_)
                 (if (gx#stx-pair? _g1836418376_)
                     (let ((_e1836618378_ (gx#stx-e _g1836418376_)))
                       (let ((_hd1836718381_ (##car _e1836618378_))
                             (_tl1836818383_ (##cdr _e1836618378_)))
                         ((lambda (_L18386_)
                            (let ((_$e18396_
                                   (hash-get
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L18386_))))
                              (if _$e18396_
                                  ((lambda (_method18399_)
                                     (apply _method18399_
                                            _stx18360_
                                            _args18361_))
                                   _$e18396_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx18360_
                                   _L18386_))))
                          _hd1836718381_)))
                     (_g1836318373_ _g1836418376_)))))
          (_g1836218401_ _stx18360_)))))
  (begin)
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl18357_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl18357_ '%#lambda void)
           (hash-put! _tbl18357_ '%#case-lambda void)
           (hash-put! _tbl18357_ '%#let-values void)
           (hash-put! _tbl18357_ '%#letrec-values void)
           (hash-put! _tbl18357_ '%#letrec*-values void)
           (hash-put! _tbl18357_ '%#quote void)
           (hash-put! _tbl18357_ '%#quote-syntax void)
           (hash-put! _tbl18357_ '%#call void)
           (hash-put! _tbl18357_ '%#if void)
           (hash-put! _tbl18357_ '%#ref void)
           (hash-put! _tbl18357_ '%#set! void)
           _tbl18357_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18353_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl18353_ '%#begin void)
           (hash-put! _tbl18353_ '%#begin-syntax void)
           (hash-put! _tbl18353_ '%#begin-foreign void)
           (hash-put! _tbl18353_ '%#module void)
           (hash-put! _tbl18353_ '%#import void)
           (hash-put! _tbl18353_ '%#export void)
           (hash-put! _tbl18353_ '%#provide void)
           (hash-put! _tbl18353_ '%#extern void)
           (hash-put! _tbl18353_ '%#define-values void)
           (hash-put! _tbl18353_ '%#define-syntax void)
           (hash-put! _tbl18353_ '%#define-alias void)
           (hash-put! _tbl18353_ '%#declare void)
           _tbl18353_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl18349_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18349_ (force gxc#&void-special-form))
           (hash-copy! _tbl18349_ (force gxc#&void-expression))
           _tbl18349_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl18345_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18345_ (force gxc#&void-expression))
           (hash-copy! _tbl18345_ (force gxc#&void-special-form))
           (hash-put! _tbl18345_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl18345_ '%#begin-syntax gxc#collect-begin-syntax%)
           (hash-put! _tbl18345_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl18345_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (hash-put!
            _tbl18345_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl18345_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx18338_ . _args18340_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18338_ _args18340_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl18335_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18335_ (force gxc#&void))
           (hash-put! _tbl18335_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl18335_ '%#module gxc#lift-modules-module%)
           _tbl18335_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx18328_ . _args18330_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18328_ _args18330_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl18325_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl18325_ '%#begin gxc#find-runtime-begin%)
           (hash-put! _tbl18325_ '%#begin-syntax false)
           (hash-put! _tbl18325_ '%#begin-foreign true)
           (hash-put! _tbl18325_ '%#module false)
           (hash-put! _tbl18325_ '%#import false)
           (hash-put! _tbl18325_ '%#export false)
           (hash-put! _tbl18325_ '%#provide false)
           (hash-put! _tbl18325_ '%#extern false)
           (hash-put! _tbl18325_ '%#define-values true)
           (hash-put! _tbl18325_ '%#define-syntax false)
           (hash-put! _tbl18325_ '%#define-alias false)
           (hash-put! _tbl18325_ '%#declare false)
           (hash-put! _tbl18325_ '%#lambda true)
           (hash-put! _tbl18325_ '%#case-lambda true)
           (hash-put! _tbl18325_ '%#let-values true)
           (hash-put! _tbl18325_ '%#letrec-values true)
           (hash-put! _tbl18325_ '%#letrec*-values true)
           (hash-put! _tbl18325_ '%#quote true)
           (hash-put! _tbl18325_ '%#call true)
           (hash-put! _tbl18325_ '%#if true)
           (hash-put! _tbl18325_ '%#ref true)
           (hash-put! _tbl18325_ '%#set! true)
           _tbl18325_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx18318_ . _args18320_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18318_ _args18320_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl18315_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl18315_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl18315_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#begin-foreign gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#import gxc#generate-runtime-loader-import%)
           (hash-put! _tbl18315_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#extern gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#define-values gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#declare gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#lambda gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#case-lambda gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#let-values gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#letrec-values gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#letrec*-values gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#quote gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#call gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#if gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#ref gxc#generate-runtime-empty)
           (hash-put! _tbl18315_ '%#set! gxc#generate-runtime-empty)
           _tbl18315_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx18308_ . _args18310_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18308_ _args18310_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl18305_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl18305_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl18305_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put!
            _tbl18305_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (hash-put! _tbl18305_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl18305_ '%#import gxc#generate-runtime-empty)
           (hash-put! _tbl18305_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl18305_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl18305_ '%#extern gxc#generate-runtime-empty)
           (hash-put!
            _tbl18305_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (hash-put! _tbl18305_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl18305_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl18305_ '%#declare gxc#generate-runtime-declare%)
           (hash-put! _tbl18305_ '%#lambda gxc#generate-runtime-lambda%)
           (hash-put!
            _tbl18305_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (hash-put!
            _tbl18305_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (hash-put!
            _tbl18305_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (hash-put!
            _tbl18305_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (hash-put! _tbl18305_ '%#quote gxc#generate-runtime-quote%)
           (hash-put! _tbl18305_ '%#call gxc#generate-runtime-call%)
           (hash-put! _tbl18305_ '%#if gxc#generate-runtime-if%)
           (hash-put! _tbl18305_ '%#ref gxc#generate-runtime-ref%)
           (hash-put! _tbl18305_ '%#set! gxc#generate-runtime-setq%)
           _tbl18305_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx18298_ . _args18300_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18298_ _args18300_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl18295_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18295_ (force gxc#&generate-runtime))
           (hash-put!
            _tbl18295_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (hash-put!
            _tbl18295_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl18295_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx18288_ . _args18290_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18288_ _args18290_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl18285_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl18285_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl18285_ '%#lambda gxc#collect-refs-lambda%)
           (hash-put! _tbl18285_ '%#case-lambda gxc#collect-refs-case-lambda%)
           (hash-put! _tbl18285_ '%#let-values gxc#collect-refs-let-values%)
           (hash-put! _tbl18285_ '%#letrec-values gxc#collect-refs-let-values%)
           (hash-put!
            _tbl18285_
            '%#letrec*-values
            gxc#collect-refs-let-values%)
           (hash-put! _tbl18285_ '%#quote void)
           (hash-put! _tbl18285_ '%#quote-syntax void)
           (hash-put! _tbl18285_ '%#call gxc#collect-begin%)
           (hash-put! _tbl18285_ '%#if gxc#collect-begin%)
           (hash-put! _tbl18285_ '%#ref gxc#collect-refs-ref%)
           (hash-put! _tbl18285_ '%#set! gxc#collect-refs-setq%)
           _tbl18285_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx18278_ . _args18280_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18278_ _args18280_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl18275_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18275_ (force gxc#&void-expression))
           (hash-put! _tbl18275_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl18275_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put! _tbl18275_ '%#module gxc#generate-meta-module%)
           (hash-put! _tbl18275_ '%#import gxc#generate-meta-import%)
           (hash-put! _tbl18275_ '%#export gxc#generate-meta-export%)
           (hash-put! _tbl18275_ '%#provide gxc#generate-meta-provide%)
           (hash-put! _tbl18275_ '%#extern gxc#generate-meta-extern%)
           (hash-put!
            _tbl18275_
            '%#define-values
            gxc#generate-meta-define-values%)
           (hash-put!
            _tbl18275_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl18275_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put! _tbl18275_ '%#begin-foreign void)
           (hash-put! _tbl18275_ '%#declare void)
           _tbl18275_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx18268_ . _args18270_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18268_ _args18270_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl18265_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl18265_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl18265_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put!
            _tbl18265_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl18265_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put!
            _tbl18265_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (hash-put! _tbl18265_ '%#lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl18265_ '%#case-lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl18265_ '%#let-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl18265_ '%#letrec-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl18265_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl18265_ '%#quote gxc#generate-meta-phi-expr)
           (hash-put! _tbl18265_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (hash-put! _tbl18265_ '%#call gxc#generate-meta-phi-expr)
           (hash-put! _tbl18265_ '%#if gxc#generate-meta-phi-expr)
           (hash-put! _tbl18265_ '%#ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl18265_ '%#set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl18265_ '%#declare void)
           _tbl18265_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx18258_ . _args18260_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18258_ _args18260_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx18215_ . _args18216_)
      (let ((_g1821818228_
             (lambda (_g1821918225_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1821918225_))))
        (let ((_g1821718255_
               (lambda (_g1821918231_)
                 (if (gx#stx-pair? _g1821918231_)
                     (let ((_e1822118233_ (gx#stx-e _g1821918231_)))
                       (let ((_hd1822218236_ (##car _e1822118233_))
                             (_tl1822318238_ (##cdr _e1822118233_)))
                         ((lambda (_L18241_)
                            (for-each
                             (lambda (_g1825018252_)
                               (apply gxc#compile-e _g1825018252_ _args18216_))
                             (gx#stx-e _L18241_)))
                          _tl1822318238_)))
                     (_g1821818228_ _g1821918231_)))))
          (_g1821718255_ _stx18215_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx18171_ . _args18172_)
      (let ((_g1817418184_
             (lambda (_g1817518181_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1817518181_))))
        (let ((_g1817318212_
               (lambda (_g1817518187_)
                 (if (gx#stx-pair? _g1817518187_)
                     (let ((_e1817718189_ (gx#stx-e _g1817518187_)))
                       (let ((_hd1817818192_ (##car _e1817718189_))
                             (_tl1817918194_ (##cdr _e1817718189_)))
                         ((lambda (_L18197_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g1820718209_)
                                  (apply gxc#compile-e
                                         _g1820718209_
                                         _args18172_))
                                (gx#stx-e _L18197_)))
                             gx#current-expander-phi
                             (fx1+ (gx#current-expander-phi))))
                          _tl1817918194_)))
                     (_g1817418184_ _g1817518187_)))))
          (_g1817318212_ _stx18171_)))))
  (define gxc#collect-module%
    (lambda (_stx18113_ . _args18114_)
      (let ((_g1811618130_
             (lambda (_g1811718127_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1811718127_))))
        (let ((_g1811518168_
               (lambda (_g1811718133_)
                 (if (gx#stx-pair? _g1811718133_)
                     (let ((_e1812018135_ (gx#stx-e _g1811718133_)))
                       (let ((_hd1812118138_ (##car _e1812018135_))
                             (_tl1812218140_ (##cdr _e1812018135_)))
                         (if (gx#stx-pair? _tl1812218140_)
                             (let ((_e1812318143_ (gx#stx-e _tl1812218140_)))
                               (let ((_hd1812418146_ (##car _e1812318143_))
                                     (_tl1812518148_ (##cdr _e1812318143_)))
                                 ((lambda (_L18151_ _L18152_)
                                    (let ((_ctx18165_
                                           (gx#syntax-local-e _L18152_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (gx#module-context-code
                                                 _ctx18165_)
                                                _args18114_))
                                       gx#current-expander-context
                                       _ctx18165_)))
                                  _tl1812518148_
                                  _hd1812418146_)))
                             (_g1811618130_ _g1811718133_))))
                     (_g1811618130_ _g1811718133_)))))
          (_g1811518168_ _stx18113_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx18044_)
      (let ((_g1804618063_
             (lambda (_g1804718060_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1804718060_))))
        (let ((_g1804518110_
               (lambda (_g1804718066_)
                 (if (gx#stx-pair? _g1804718066_)
                     (let ((_e1805018068_ (gx#stx-e _g1804718066_)))
                       (let ((_hd1805118071_ (##car _e1805018068_))
                             (_tl1805218073_ (##cdr _e1805018068_)))
                         (if (gx#stx-pair? _tl1805218073_)
                             (let ((_e1805318076_ (gx#stx-e _tl1805218073_)))
                               (let ((_hd1805418079_ (##car _e1805318076_))
                                     (_tl1805518081_ (##cdr _e1805318076_)))
                                 (if (gx#stx-pair? _tl1805518081_)
                                     (let ((_e1805618084_
                                            (gx#stx-e _tl1805518081_)))
                                       (let ((_hd1805718087_
                                              (##car _e1805618084_))
                                             (_tl1805818089_
                                              (##cdr _e1805618084_)))
                                         (if (gx#stx-null? _tl1805818089_)
                                             ((lambda (_L18092_ _L18093_)
                                                (gx#stx-for-each
                                                 (lambda (_bind18108_)
                                                   (if (gx#identifier?
                                                        _bind18108_)
                                                       (gxc#add-module-binding!
                                                        _bind18108_
                                                        '#f)
                                                       '#!void))
                                                 _L18093_))
                                              _hd1805718087_
                                              _hd1805418079_)
                                             (_g1804618063_ _g1804718066_))))
                                     (_g1804618063_ _g1804718066_))))
                             (_g1804618063_ _g1804718066_))))
                     (_g1804618063_ _g1804718066_)))))
          (_g1804518110_ _stx18044_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx17977_)
      (let ((_g1797917996_
             (lambda (_g1798017993_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1798017993_))))
        (let ((_g1797818041_
               (lambda (_g1798017999_)
                 (if (gx#stx-pair? _g1798017999_)
                     (let ((_e1798318001_ (gx#stx-e _g1798017999_)))
                       (let ((_hd1798418004_ (##car _e1798318001_))
                             (_tl1798518006_ (##cdr _e1798318001_)))
                         (if (gx#stx-pair? _tl1798518006_)
                             (let ((_e1798618009_ (gx#stx-e _tl1798518006_)))
                               (let ((_hd1798718012_ (##car _e1798618009_))
                                     (_tl1798818014_ (##cdr _e1798618009_)))
                                 (if (gx#stx-pair? _tl1798818014_)
                                     (let ((_e1798918017_
                                            (gx#stx-e _tl1798818014_)))
                                       (let ((_hd1799018020_
                                              (##car _e1798918017_))
                                             (_tl1799118022_
                                              (##cdr _e1798918017_)))
                                         (if (gx#stx-null? _tl1799118022_)
                                             ((lambda (_L18025_ _L18026_)
                                                (gxc#add-module-binding!
                                                 _L18026_
                                                 '#t))
                                              _hd1799018020_
                                              _hd1798718012_)
                                             (_g1797917996_ _g1798017999_))))
                                     (_g1797917996_ _g1798017999_))))
                             (_g1797917996_ _g1798017999_))))
                     (_g1797917996_ _g1798017999_)))))
          (_g1797818041_ _stx17977_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx17919_ _modules17920_)
      (let ((_g1792217936_
             (lambda (_g1792317933_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1792317933_))))
        (let ((_g1792117974_
               (lambda (_g1792317939_)
                 (if (gx#stx-pair? _g1792317939_)
                     (let ((_e1792617941_ (gx#stx-e _g1792317939_)))
                       (let ((_hd1792717944_ (##car _e1792617941_))
                             (_tl1792817946_ (##cdr _e1792617941_)))
                         (if (gx#stx-pair? _tl1792817946_)
                             (let ((_e1792917949_ (gx#stx-e _tl1792817946_)))
                               (let ((_hd1793017952_ (##car _e1792917949_))
                                     (_tl1793117954_ (##cdr _e1792917949_)))
                                 ((lambda (_L17957_ _L17958_)
                                    (let ((_ctx17971_
                                           (gx#syntax-local-e _L17958_)))
                                      (begin
                                        (set-box!
                                         _modules17920_
                                         (cons _ctx17971_
                                               (unbox _modules17920_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (gx#module-context-code _ctx17971_)
                                            _modules17920_))
                                         gx#current-expander-context
                                         _ctx17971_))))
                                  _tl1793117954_
                                  _hd1793017952_)))
                             (_g1792217936_ _g1792317939_))))
                     (_g1792217936_ _g1792317939_)))))
          (_g1792117974_ _stx17919_)))))
  (define gxc#add-module-binding!
    (lambda (_id17913_ _syntax?17914_)
      (let ((_eid17916_ (gx#binding-id (gx#resolve-identifier _id17913_)))
            (_ht17917_
             (gxc#symbol-table-bindings (gxc#current-compile-symbol-table))))
        (if (interned-symbol? _eid17916_)
            '#!void
            (hash-put!
             _ht17917_
             _eid17916_
             (gx#make-binding-id
              (gxc#generate-runtime-gensym-reference _eid17916_)
              _syntax?17914_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id17901_)
      (let ((_bind17903_ (gx#resolve-identifier _id17901_)))
        (if _bind17903_
            (let ((_eid17905_ (gx#binding-id _bind17903_))
                  (_ht17906_
                   (gxc#symbol-table-bindings
                    (gxc#current-compile-symbol-table))))
              (if (interned-symbol? _eid17905_)
                  _eid17905_
                  (let ((_$e17908_ (hash-get _ht17906_ _eid17905_)))
                    (if _$e17908_
                        (values _$e17908_)
                        (if (gx#local-binding? _bind17903_)
                            (let ((_gid17911_
                                   (gxc#generate-runtime-gensym-reference
                                    _eid17905_)))
                              (begin
                                (hash-put! _ht17906_ _eid17905_ _gid17911_)
                                _gid17911_))
                            (gxc#raise-compile-error
                             '"Cannot compile reference to uninterned binding"
                             _id17901_
                             _eid17905_
                             _bind17903_))))))
            (if (interned-symbol? (gx#stx-e _id17901_))
                (gx#stx-e _id17901_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id17901_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id17899_)
      (if (gx#identifier? _id17899_)
          (gxc#generate-runtime-binding-id _id17899_)
          (gxc#generate-runtime-temporary))))
  (define gxc#generate-runtime-gensym-reference
    (lambda (_sym17890_)
      (let ((_ht17892_
             (gxc#symbol-table-gensyms (gxc#current-compile-symbol-table))))
        (let ((_$e17894_ (hash-get _ht17892_ _sym17890_)))
          (if _$e17894_
              (values _$e17894_)
              (let ((_g17897_ (make-symbol '"_" _sym17890_ '"_")))
                (begin
                  (hash-put! _ht17892_ _sym17890_ _g17897_)
                  _g17897_)))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id17888_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id17888_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key17850_)
      (if (interned-symbol? _key17850_)
          _key17850_
          (if (uninterned-symbol? _key17850_)
              (gxc#generate-runtime-gensym-reference _key17850_)
              (let ((_key1785117858_ _key17850_))
                (let ((_E1785317862_
                       (lambda ()
                         (error '"No clause matching" _key1785117858_))))
                  (let ((_K1785417876_
                         (lambda (_mark17865_ _eid17866_)
                           (let ((_$e17868_
                                  (gx#expander-mark-subst _mark17865_)))
                             (if _$e17868_
                                 ((lambda (_ht17871_)
                                    (let ((_$e17873_
                                           (hash-get _ht17871_ _eid17866_)))
                                      (if _$e17873_
                                          (values _$e17873_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid17866_))))
                                  _$e17868_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid17866_))))))
                    (if (##pair? _key1785117858_)
                        (let ((_hd1785517879_ (##car _key1785117858_))
                              (_tl1785617881_ (##cdr _key1785117858_)))
                          (let ((_eid17884_ _hd1785517879_))
                            (let ((_mark17886_ _tl1785617881_))
                              (_K1785417876_ _mark17886_ _eid17884_))))
                        (_E1785317862_)))))))))
  (define gxc#generate-runtime-temporary
    (let ((_opt-lambda1783517842_
           (lambda (_top17837_)
             (if _top17837_
                 (let ((_ns17839_
                        (gx#module-context-ns (gx#current-expander-context)))
                       (_phi17840_ (gx#current-expander-phi)))
                   (if (fxpositive? _phi17840_)
                       (make-symbol
                        _ns17839_
                        '"["
                        (number->string _phi17840_)
                        '"]#_"
                        (gensym)
                        '"_")
                       (make-symbol _ns17839_ '"#_" (gensym) '"_")))
                 (make-symbol '"_" (gensym) '"_")))))
      (lambda _g18652_
        (let ((_g18651_ (length _g18652_)))
          (cond ((fx= _g18651_ 0)
                 (apply (lambda ()
                          (let ((_top17846_ '#f))
                            (_opt-lambda1783517842_ _top17846_)))
                        _g18652_))
                ((fx= _g18651_ 1)
                 (apply (lambda (_top17848_)
                          (_opt-lambda1783517842_ _top17848_))
                        _g18652_))
                (else (error "No clause matching arguments" _g18652_)))))))
  (define gxc#generate-runtime-empty (lambda (_stx17834_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx17796_)
      (let ((_g1779817808_
             (lambda (_g1779917805_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1779917805_))))
        (let ((_g1779717831_
               (lambda (_g1779917811_)
                 (if (gx#stx-pair? _g1779917811_)
                     (let ((_e1780117813_ (gx#stx-e _g1779917811_)))
                       (let ((_hd1780217816_ (##car _e1780117813_))
                             (_tl1780317818_ (##cdr _e1780117813_)))
                         ((lambda (_L17821_)
                            (cons 'begin
                                  (map gxc#compile-e (gx#stx-e _L17821_))))
                          _tl1780317818_)))
                     (_g1779817808_ _g1779917811_)))))
          (_g1779717831_ _stx17796_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx17758_)
      (let ((_g1776017770_
             (lambda (_g1776117767_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1776117767_))))
        (let ((_g1775917793_
               (lambda (_g1776117773_)
                 (if (gx#stx-pair? _g1776117773_)
                     (let ((_e1776317775_ (gx#stx-e _g1776117773_)))
                       (let ((_hd1776417778_ (##car _e1776317775_))
                             (_tl1776517780_ (##cdr _e1776317775_)))
                         ((lambda (_L17783_)
                            (cons 'begin (gx#syntax->datum _L17783_)))
                          _tl1776517780_)))
                     (_g1776017770_ _g1776117773_)))))
          (_g1775917793_ _stx17758_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx17720_)
      (let ((_g1772217732_
             (lambda (_g1772317729_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1772317729_))))
        (let ((_g1772117755_
               (lambda (_g1772317735_)
                 (if (gx#stx-pair? _g1772317735_)
                     (let ((_e1772517737_ (gx#stx-e _g1772317735_)))
                       (let ((_hd1772617740_ (##car _e1772517737_))
                             (_tl1772717742_ (##cdr _e1772517737_)))
                         ((lambda (_L17745_)
                            (cons 'declare (map gx#syntax->datum _L17745_)))
                          _tl1772717742_)))
                     (_g1772217732_ _g1772317735_)))))
          (_g1772117755_ _stx17720_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx17484_)
      (let ((_g1748617503_
             (lambda (_g1748717500_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1748717500_))))
        (let ((_g1748517717_
               (lambda (_g1748717506_)
                 (if (gx#stx-pair? _g1748717506_)
                     (let ((_e1749017508_ (gx#stx-e _g1748717506_)))
                       (let ((_hd1749117511_ (##car _e1749017508_))
                             (_tl1749217513_ (##cdr _e1749017508_)))
                         (if (gx#stx-pair? _tl1749217513_)
                             (let ((_e1749317516_ (gx#stx-e _tl1749217513_)))
                               (let ((_hd1749417519_ (##car _e1749317516_))
                                     (_tl1749517521_ (##cdr _e1749317516_)))
                                 (if (gx#stx-pair? _tl1749517521_)
                                     (let ((_e1749617524_
                                            (gx#stx-e _tl1749517521_)))
                                       (let ((_hd1749717527_
                                              (##car _e1749617524_))
                                             (_tl1749817529_
                                              (##cdr _e1749617524_)))
                                         (if (gx#stx-null? _tl1749817529_)
                                             ((lambda (_L17532_ _L17533_)
                                                (let ((_g1755017563_
                                                       (lambda (_g1755117560_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1755117560_))))
                                                  (let ((_g1754917677_
                                                         (lambda (_g1755117566_)
                                                           ((lambda ()
                                                              (let ((_tmp17570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary '#t)))
                        (let ((_body17674_
                               ((letrec ((_lp17572_
                                          (lambda (_rest17574_
                                                   _k17575_
                                                   _r17576_)
                                            (let ((_g1758117597_
                                                   (lambda (_g1758217594_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1758217594_))))
                                              (let ((_g1758017604_
                                                     (lambda (_g1758217600_)
                                                       ((lambda ()
                                                          (reverse _r17576_))))))
                                                (let ((_g1757917625_
                                                       (lambda (_g1758217607_)
                                                         ((lambda (_L17609_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L17609_)
                        (foldl cons
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L17609_)
                                                 (cons (cons 'values->list
                                                             (cons _tmp17570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k17575_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _r17576_)
                        (_g1758017604_ _g1758217607_)))
                  _g1758217607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1757817649_
                                                         (lambda (_g1758217628_)
                                                           (if (gx#stx-pair?
                                                                _g1758217628_)
                                                               (let ((_e1758917630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g1758217628_)))
                         (let ((_hd1759017633_ (##car _e1758917630_))
                               (_tl1759117635_ (##cdr _e1758917630_)))
                           ((lambda (_L17638_ _L17639_)
                              (_lp17572_
                               _L17638_
                               (fx1+ _k17575_)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L17639_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp17570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k17575_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r17576_)))
                            _tl1759117635_
                            _hd1759017633_)))
                       (_g1757917625_ _g1758217628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1757717671_
                                                           (lambda (_g1758217652_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1758217652_)
                         (let ((_e1758417654_ (gx#stx-e _g1758217652_)))
                           (let ((_hd1758517657_ (##car _e1758417654_))
                                 (_tl1758617659_ (##cdr _e1758417654_)))
                             (if (gx#stx-datum? _hd1758517657_)
                                 (if (equal? (gx#stx-e _hd1758517657_) '#f)
                                     ((lambda (_L17662_)
                                        (_lp17572_
                                         _L17662_
                                         (fx1+ _k17575_)
                                         _r17576_))
                                      _tl1758617659_)
                                     (_g1757817649_ _g1758217652_))
                                 (_g1757817649_ _g1758217652_))))
                         (_g1757817649_ _g1758217652_)))))
              (_g1757717671_ _rest17574_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp17572_)
                                _L17533_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp17570_
                                                    (cons (gxc#compile-e
                                                           _L17532_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp17570_
                                               _L17533_)
                                              _body17674_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1754817699_
                                                           (lambda (_g1755117680_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1755117680_)
                         (let ((_e1755617682_ (gx#stx-e _g1755117680_)))
                           (let ((_hd1755717685_ (##car _e1755617682_))
                                 (_tl1755817687_ (##cdr _e1755617682_)))
                             (if (gx#stx-null? _tl1755817687_)
                                 ((lambda (_L17690_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L17690_)
                                                (cons (gxc#compile-e _L17532_)
                                                      '()))))
                                  _hd1755717685_)
                                 (_g1754917677_ _g1755117680_))))
                         (_g1754917677_ _g1755117680_)))))
              (let ((_g1754717714_
                     (lambda (_g1755117702_)
                       (if (gx#stx-pair? _g1755117702_)
                           (let ((_e1755217704_ (gx#stx-e _g1755117702_)))
                             (let ((_hd1755317707_ (##car _e1755217704_))
                                   (_tl1755417709_ (##cdr _e1755217704_)))
                               (if (gx#stx-datum? _hd1755317707_)
                                   (if (equal? (gx#stx-e _hd1755317707_) '#f)
                                       (if (gx#stx-null? _tl1755417709_)
                                           ((lambda ()
                                              (gxc#compile-e _L17532_)))
                                           (_g1754817699_ _g1755117702_))
                                       (_g1754817699_ _g1755117702_))
                                   (_g1754817699_ _g1755117702_))))
                           (_g1754817699_ _g1755117702_)))))
                (_g1754717714_ _L17533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1749717527_
                                              _hd1749417519_)
                                             (_g1748617503_ _g1748717506_))))
                                     (_g1748617503_ _g1748717506_))))
                             (_g1748617503_ _g1748717506_))))
                     (_g1748617503_ _g1748717506_)))))
          (_g1748517717_ _stx17484_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals17472_ _hd17473_)
      (let ((_len17475_ (gx#stx-length _hd17473_)))
        (let ((_cmp17477_ (if (gx#stx-list? _hd17473_) 'fx= 'fx>=)))
          (let ((_errmsg17479_
                 (string-append
                  (if (gx#stx-list? _hd17473_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len17475_)
                  '" values")))
            (let ((_count17481_ (gxc#generate-runtime-temporary)))
              (let ()
                (if (if (not (gx#stx-list? _hd17473_)) (fx= _len17475_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count17481_
                                            (cons (cons 'values-count
                                                        (cons _vals17472_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp17477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count17481_ (cons _len17475_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg17479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count17481_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx17405_)
      (let ((_g1740717424_
             (lambda (_g1740817421_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1740817421_))))
        (let ((_g1740617469_
               (lambda (_g1740817427_)
                 (if (gx#stx-pair? _g1740817427_)
                     (let ((_e1741117429_ (gx#stx-e _g1740817427_)))
                       (let ((_hd1741217432_ (##car _e1741117429_))
                             (_tl1741317434_ (##cdr _e1741117429_)))
                         (if (gx#stx-pair? _tl1741317434_)
                             (let ((_e1741417437_ (gx#stx-e _tl1741317434_)))
                               (let ((_hd1741517440_ (##car _e1741417437_))
                                     (_tl1741617442_ (##cdr _e1741417437_)))
                                 (if (gx#stx-pair? _tl1741617442_)
                                     (let ((_e1741717445_
                                            (gx#stx-e _tl1741617442_)))
                                       (let ((_hd1741817448_
                                              (##car _e1741717445_))
                                             (_tl1741917450_
                                              (##cdr _e1741717445_)))
                                         (if (gx#stx-null? _tl1741917450_)
                                             ((lambda (_L17453_ _L17454_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L17454_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17453_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1741817448_
                                              _hd1741517440_)
                                             (_g1740717424_ _g1740817427_))))
                                     (_g1740717424_ _g1740817427_))))
                             (_g1740717424_ _g1740817427_))))
                     (_g1740717424_ _g1740817427_)))))
          (_g1740617469_ _stx17405_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd17403_)
      (gx#stx-map gxc#generate-runtime-binding-id* _hd17403_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx17260_)
      (let ((_generate117262_
             (lambda (_args17393_ _arglen17394_ _hd17395_ _body17396_)
               (let ((_len17398_ (gx#stx-length _hd17395_)))
                 (let ((_condition17400_
                        (if (gx#stx-list? _hd17395_)
                            (cons 'fx=
                                  (cons _arglen17394_ (cons _len17398_ '())))
                            (if (> _len17398_ '0)
                                (cons 'fx>=
                                      (cons _arglen17394_
                                            (cons _len17398_ '())))
                                '#t))))
                   (let ()
                     (cons _condition17400_
                           (cons (cons 'apply
                                       (cons (cons 'lambda
                                                   (cons (gxc#generate-runtime-lambda-head
                                                          _hd17395_)
                                                         (cons (gxc#compile-e
                                                                _body17396_)
                                                               '())))
                                             (cons _args17393_ '())))
                                 '()))))))))
        (let ((_g1726417292_
               (lambda (_g1726517289_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1726517289_))))
          (let ((_g1726317390_
                 (lambda (_g1726517295_)
                   (if (gx#stx-pair? _g1726517295_)
                       (let ((_e1726817297_ (gx#stx-e _g1726517295_)))
                         (let ((_hd1726917300_ (##car _e1726817297_))
                               (_tl1727017302_ (##cdr _e1726817297_)))
                           (if (gx#stx-pair/null? _tl1727017302_)
                               (if (fx>= (gx#stx-length _tl1727017302_) '0)
                                   (let ((_g18653_
                                          (gx#syntax-split-splice
                                           _tl1727017302_
                                           '0)))
                                     (begin
                                       (let ((_g18654_
                                              (values-count _g18653_)))
                                         (if (not (fx= _g18654_ 2))
                                             (error "Context expects 2 values"
                                                    _g18654_)))
                                       (let ((_target1727117305_
                                              (values-ref _g18653_ 0))
                                             (_tl1727317307_
                                              (values-ref _g18653_ 1)))
                                         (if (gx#stx-null? _tl1727317307_)
                                             (letrec ((_loop1727417310_
                                                       (lambda (_hd1727217313_
                                                                _body1727817315_
                                                                _hd1727917317_)
                                                         (if (gx#stx-pair?
                                                              _hd1727217313_)
                                                             (let ((_e1727517320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1727217313_)))
                       (let ((_lp-hd1727617323_ (##car _e1727517320_))
                             (_lp-tl1727717325_ (##cdr _e1727517320_)))
                         (if (gx#stx-pair? _lp-hd1727617323_)
                             (let ((_e1728217328_
                                    (gx#stx-e _lp-hd1727617323_)))
                               (let ((_hd1728317331_ (##car _e1728217328_))
                                     (_tl1728417333_ (##cdr _e1728217328_)))
                                 (if (gx#stx-pair? _tl1728417333_)
                                     (let ((_e1728517336_
                                            (gx#stx-e _tl1728417333_)))
                                       (let ((_hd1728617339_
                                              (##car _e1728517336_))
                                             (_tl1728717341_
                                              (##cdr _e1728517336_)))
                                         (if (gx#stx-null? _tl1728717341_)
                                             (_loop1727417310_
                                              _lp-tl1727717325_
                                              (cons _hd1728617339_
                                                    _body1727817315_)
                                              (cons _hd1728317331_
                                                    _hd1727917317_))
                                             (_g1726417292_ _g1726517295_))))
                                     (_g1726417292_ _g1726517295_))))
                             (_g1726417292_ _g1726517295_))))
                     (let ((_body1728017344_ (reverse _body1727817315_))
                           (_hd1728117346_ (reverse _hd1727917317_)))
                       ((lambda (_L17349_ _L17350_)
                          (let ((_args17366_ (gxc#generate-runtime-temporary))
                                (_arglen17367_
                                 (gxc#generate-runtime-temporary)))
                            (cons 'lambda
                                  (cons _args17366_
                                        (cons (cons 'let
                                                    (cons (cons (cons _arglen17367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'length (cons _args17366_ '())) '()))
                        '())
                  (cons (cons 'cond
                              (foldr cons
                                     (cons (cons 'else
                                                 (cons (cons 'error
                                                             (cons '"No clause matching arguments"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args17366_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g1736817371_ _g1736917373_)
                                            (_generate117262_
                                             _args17366_
                                             _arglen17367_
                                             _g1736817371_
                                             _g1736917373_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g1737517378_
                                                            _g1737617380_)
                                                     (cons _g1737517378_
                                                           _g1737617380_))
                                                   '()
                                                   _L17350_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g1738217385_
                                                            _g1738317387_)
                                                     (cons _g1738217385_
                                                           _g1738317387_))
                                                   '()
                                                   _L17349_)))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _body1728017344_
                        _hd1728117346_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1727417310_
                                                _target1727117305_
                                                '()
                                                '()))
                                             (_g1726417292_ _g1726517295_)))))
                                   (_g1726417292_ _g1726517295_))
                               (_g1726417292_ _g1726517295_))))
                       (_g1726417292_ _g1726517295_)))))
            (_g1726317390_ _stx17260_))))))
  (define gxc#generate-runtime-let-values%
    (let ((_opt-lambda1694017250_
           (lambda (_stx16942_ _compiled-body?16943_)
             (let ((_generate-simple16945_
                    (lambda (_hd17247_ _body17248_)
                      (gxc#generate-runtime-simple-let
                       'let
                       _hd17247_
                       _body17248_
                       _compiled-body?16943_))))
               (let ((_generate-values-post16947_
                      (lambda (_post17019_ _body17020_)
                        ((letrec ((_lp17022_
                                   (lambda (_rest17024_ _body17025_)
                                     (let ((_rest1702617034_ _rest17024_))
                                       (let ((_E1702917038_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _rest1702617034_))))
                                         (let ((_else1702817042_
                                                (lambda () _body17025_)))
                                           (let ((_K1703017048_
                                                  (lambda (_rest17045_
                                                           _bind17046_)
                                                    (_lp17022_
                                                     _rest17045_
                                                     (cons 'let
                                                           (cons _bind17046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body17025_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _rest1702617034_)
                                                 (let ((_hd1703117051_
                                                        (##car _rest1702617034_))
                                                       (_tl1703217053_
                                                        (##cdr _rest1702617034_)))
                                                   (let ((_bind17056_
                                                          _hd1703117051_))
                                                     (let ((_rest17058_
                                                            _tl1703217053_))
                                                       (_K1703017048_
                                                        _rest17058_
                                                        _bind17056_))))
                                                 (_else1702817042_)))))))))
                           _lp17022_)
                         _post17019_
                         _body17020_))))
                 (let ((_generate-values-check16948_
                        (lambda (_check17016_ _body17017_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body17017_ '())
                                       (reverse _check17016_))))))
                   (let ((_generate-values16946_
                          (lambda (_hd17060_ _body17061_)
                            ((letrec ((_lp17063_
                                       (lambda (_rest17065_
                                                _bind17066_
                                                _check17067_
                                                _post17068_)
                                         (let ((_g1707117082_
                                                (lambda (_g1707217079_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1707217079_))))
                                           (let ((_g1707017096_
                                                  (lambda (_g1707217085_)
                                                    ((lambda ()
                                                       (let ((_body17089_
                                                              (if _compiled-body?16943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body17061_
                          (gxc#compile-e _body17061_))))
                 (let ((_body17091_
                        (_generate-values-post16947_ _post17068_ _body17089_)))
                   (let ((_body17093_
                          (_generate-values-check16948_
                           _check17067_
                           _body17091_)))
                     (let ()
                       (cons 'let
                             (cons (reverse _bind17066_)
                                   (cons _body17093_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g1706917244_
                                                    (lambda (_g1707217099_)
                                                      (if (gx#stx-pair?
                                                           _g1707217099_)
                                                          (let ((_e1707517101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g1707217099_)))
                    (let ((_hd1707617104_ (##car _e1707517101_))
                          (_tl1707717106_ (##cdr _e1707517101_)))
                      ((lambda (_L17109_ _L17110_)
                         (let ((_g1712517150_
                                (lambda (_g1712617147_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1712617147_))))
                           (let ((_g1712417194_
                                  (lambda (_g1712617153_)
                                    (if (gx#stx-pair? _g1712617153_)
                                        (let ((_e1714017155_
                                               (gx#stx-e _g1712617153_)))
                                          (let ((_hd1714117158_
                                                 (##car _e1714017155_))
                                                (_tl1714217160_
                                                 (##cdr _e1714017155_)))
                                            (if (gx#stx-pair? _tl1714217160_)
                                                (let ((_e1714317163_
                                                       (gx#stx-e
                                                        _tl1714217160_)))
                                                  (let ((_hd1714417166_
                                                         (##car _e1714317163_))
                                                        (_tl1714517168_
                                                         (##cdr _e1714317163_)))
                                                    (if (gx#stx-null?
                                                         _tl1714517168_)
                                                        ((lambda (_L17171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17172_)
                   (let ((_vals17185_ (gxc#generate-runtime-temporary)))
                     (let ((_expr17187_ (gxc#compile-e _L17171_)))
                       (let ((_check-values17189_
                              (gxc#generate-runtime-check-values
                               _vals17185_
                               _L17172_)))
                         (let ((_refs17191_
                                (gxc#generate-runtime-let-values-bind
                                 _vals17185_
                                 _L17172_)))
                           (let ()
                             (_lp17063_
                              _L17109_
                              (cons (cons _vals17185_ (cons _expr17187_ '()))
                                    _bind17066_)
                              (cons _check-values17189_ _check17067_)
                              (cons _refs17191_ _post17068_))))))))
                 _hd1714417166_
                 _hd1714117158_)
                (_g1712517150_ _g1712617153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1712517150_
                                                 _g1712617153_))))
                                        (_g1712517150_ _g1712617153_)))))
                             (let ((_g1712317241_
                                    (lambda (_g1712617197_)
                                      (if (gx#stx-pair? _g1712617197_)
                                          (let ((_e1712917199_
                                                 (gx#stx-e _g1712617197_)))
                                            (let ((_hd1713017202_
                                                   (##car _e1712917199_))
                                                  (_tl1713117204_
                                                   (##cdr _e1712917199_)))
                                              (if (gx#stx-pair? _hd1713017202_)
                                                  (let ((_e1713217207_
                                                         (gx#stx-e
                                                          _hd1713017202_)))
                                                    (let ((_hd1713317210_
                                                           (##car _e1713217207_))
                                                          (_tl1713417212_
                                                           (##cdr _e1713217207_)))
                                                      (if (gx#stx-null?
                                                           _tl1713417212_)
                                                          (if (gx#stx-pair?
                                                               _tl1713117204_)
                                                              (let ((_e1713517215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1713117204_)))
                        (let ((_hd1713617218_ (##car _e1713517215_))
                              (_tl1713717220_ (##cdr _e1713517215_)))
                          (if (gx#stx-null? _tl1713717220_)
                              ((lambda (_L17223_ _L17224_)
                                 (let ((_eid17238_
                                        (gxc#generate-runtime-binding-id*
                                         _L17224_))
                                       (_expr17239_ (gxc#compile-e _L17223_)))
                                   (_lp17063_
                                    _L17109_
                                    (cons (cons _eid17238_
                                                (cons _expr17239_ '()))
                                          _bind17066_)
                                    _check17067_
                                    _post17068_)))
                               _hd1713617218_
                               _hd1713317210_)
                              (_g1712417194_ _g1712617197_))))
                      (_g1712417194_ _g1712617197_))
                  (_g1712417194_ _g1712617197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1712417194_
                                                   _g1712617197_))))
                                          (_g1712417194_ _g1712617197_)))))
                               (_g1712317241_ _L17110_)))))
                       _tl1707717106_
                       _hd1707617104_)))
                  (_g1707017096_ _g1707217099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1706917244_
                                                _rest17065_)))))))
                               _lp17063_)
                             _hd17060_
                             '()
                             '()
                             '()))))
                     (let ((_g1695016967_
                            (lambda (_g1695116964_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1695116964_))))
                       (let ((_g1694917013_
                              (lambda (_g1695116970_)
                                (if (gx#stx-pair? _g1695116970_)
                                    (let ((_e1695416972_
                                           (gx#stx-e _g1695116970_)))
                                      (let ((_hd1695516975_
                                             (##car _e1695416972_))
                                            (_tl1695616977_
                                             (##cdr _e1695416972_)))
                                        (if (gx#stx-pair? _tl1695616977_)
                                            (let ((_e1695716980_
                                                   (gx#stx-e _tl1695616977_)))
                                              (let ((_hd1695816983_
                                                     (##car _e1695716980_))
                                                    (_tl1695916985_
                                                     (##cdr _e1695716980_)))
                                                (if (gx#stx-pair?
                                                     _tl1695916985_)
                                                    (let ((_e1696016988_
                                                           (gx#stx-e
                                                            _tl1695916985_)))
                                                      (let ((_hd1696116991_
                                                             (##car _e1696016988_))
                                                            (_tl1696216993_
                                                             (##cdr _e1696016988_)))
                                                        (if (gx#stx-null?
                                                             _tl1696216993_)
                                                            ((lambda (_L16996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16997_)
                       (if (gxc#generate-runtime-simple-let? _L16997_)
                           (_generate-simple16945_ _L16997_ _L16996_)
                           (_generate-values16946_ _L16997_ _L16996_)))
                     _hd1696116991_
                     _hd1695816983_)
                    (_g1695016967_ _g1695116970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1695016967_
                                                     _g1695116970_))))
                                            (_g1695016967_ _g1695116970_))))
                                    (_g1695016967_ _g1695116970_)))))
                         (_g1694917013_ _stx16942_))))))))))
      (lambda _g18656_
        (let ((_g18655_ (length _g18656_)))
          (cond ((fx= _g18655_ 1)
                 (apply (lambda (_stx17253_)
                          (let ((_compiled-body?17255_ '#f))
                            (_opt-lambda1694017250_
                             _stx17253_
                             _compiled-body?17255_)))
                        _g18656_))
                ((fx= _g18655_ 2)
                 (apply (lambda (_stx17257_ _compiled-body?17258_)
                          (_opt-lambda1694017250_
                           _stx17257_
                           _compiled-body?17258_))
                        _g18656_))
                (else (error "No clause matching arguments" _g18656_)))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals16841_ _hd16842_)
      ((letrec ((_lp16844_
                 (lambda (_rest16846_ _k16847_ _r16848_)
                   (let ((_g1685316869_
                          (lambda (_g1685416866_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1685416866_))))
                     (let ((_g1685216876_
                            (lambda (_g1685416872_)
                              ((lambda () (reverse _r16848_))))))
                       (let ((_g1685116892_
                              (lambda (_g1685416879_)
                                ((lambda (_L16881_)
                                   (if (gx#identifier? _L16881_)
                                       (foldl cons
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L16881_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals16841_ (cons _k16847_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              _r16848_)
                                       (_g1685216876_ _g1685416879_)))
                                 _g1685416879_))))
                         (let ((_g1685016916_
                                (lambda (_g1685416895_)
                                  (if (gx#stx-pair? _g1685416895_)
                                      (let ((_e1686116897_
                                             (gx#stx-e _g1685416895_)))
                                        (let ((_hd1686216900_
                                               (##car _e1686116897_))
                                              (_tl1686316902_
                                               (##cdr _e1686116897_)))
                                          ((lambda (_L16905_ _L16906_)
                                             (_lp16844_
                                              _L16905_
                                              (fx1+ _k16847_)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L16906_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals16841_ (cons _k16847_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r16848_)))
                                           _tl1686316902_
                                           _hd1686216900_)))
                                      (_g1685116892_ _g1685416895_)))))
                           (let ((_g1684916938_
                                  (lambda (_g1685416919_)
                                    (if (gx#stx-pair? _g1685416919_)
                                        (let ((_e1685616921_
                                               (gx#stx-e _g1685416919_)))
                                          (let ((_hd1685716924_
                                                 (##car _e1685616921_))
                                                (_tl1685816926_
                                                 (##cdr _e1685616921_)))
                                            (if (gx#stx-datum? _hd1685716924_)
                                                (if (equal? (gx#stx-e
                                                             _hd1685716924_)
                                                            '#f)
                                                    ((lambda (_L16929_)
                                                       (_lp16844_
                                                        _L16929_
                                                        (fx1+ _k16847_)
                                                        _r16848_))
                                                     _tl1685816926_)
                                                    (_g1685016916_
                                                     _g1685416919_))
                                                (_g1685016916_
                                                 _g1685416919_))))
                                        (_g1685016916_ _g1685416919_)))))
                             (_g1684916938_ _rest16846_)))))))))
         _lp16844_)
       _hd16842_
       '0
       '())))
  (define gxc#generate-runtime-letrec-values%
    (let ((_opt-lambda1651916831_
           (lambda (_stx16521_ _compiled-body?16522_)
             (let ((_generate-simple16524_
                    (lambda (_hd16828_ _body16829_)
                      (gxc#generate-runtime-simple-let
                       'letrec
                       _hd16828_
                       _body16829_
                       _compiled-body?16522_))))
               (let ((_generate-values-check16526_
                      (lambda (_check16602_ _body16603_)
                        (cons 'begin
                              (foldr cons
                                     (cons _body16603_ '())
                                     (reverse _check16602_))))))
                 (let ((_generate-values-post16527_
                        (lambda (_post16595_ _body16596_)
                          (cons 'begin
                                (foldr cons
                                       (cons _body16596_ '())
                                       (map (lambda (_g1659716599_)
                                              (cons 'set! _g1659716599_))
                                            (reverse _post16595_)))))))
                   (let ((_generate-values16525_
                          (lambda (_hd16605_ _body16606_)
                            ((letrec ((_lp16608_
                                       (lambda (_rest16610_
                                                _bind16611_
                                                _check16612_
                                                _post16613_)
                                         (let ((_g1661616627_
                                                (lambda (_g1661716624_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1661716624_))))
                                           (let ((_g1661516641_
                                                  (lambda (_g1661716630_)
                                                    ((lambda ()
                                                       (let ((_body16634_
                                                              (if _compiled-body?16522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body16606_
                          (gxc#compile-e _body16606_))))
                 (let ((_body16636_
                        (_generate-values-post16527_ _post16613_ _body16634_)))
                   (let ((_body16638_
                          (_generate-values-check16526_
                           _check16612_
                           _body16636_)))
                     (let ()
                       (cons 'letrec
                             (cons (reverse _bind16611_)
                                   (cons _body16638_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g1661416825_
                                                    (lambda (_g1661716644_)
                                                      (if (gx#stx-pair?
                                                           _g1661716644_)
                                                          (let ((_e1662016646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _g1661716644_)))
                    (let ((_hd1662116649_ (##car _e1662016646_))
                          (_tl1662216651_ (##cdr _e1662016646_)))
                      ((lambda (_L16654_ _L16655_)
                         (let ((_g1667016695_
                                (lambda (_g1667116692_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1667116692_))))
                           (let ((_g1666916775_
                                  (lambda (_g1667116698_)
                                    (if (gx#stx-pair? _g1667116698_)
                                        (let ((_e1668516700_
                                               (gx#stx-e _g1667116698_)))
                                          (let ((_hd1668616703_
                                                 (##car _e1668516700_))
                                                (_tl1668716705_
                                                 (##cdr _e1668516700_)))
                                            (if (gx#stx-pair? _tl1668716705_)
                                                (let ((_e1668816708_
                                                       (gx#stx-e
                                                        _tl1668716705_)))
                                                  (let ((_hd1668916711_
                                                         (##car _e1668816708_))
                                                        (_tl1669016713_
                                                         (##cdr _e1668816708_)))
                                                    (if (gx#stx-null?
                                                         _tl1669016713_)
                                                        ((lambda (_L16716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16717_)
                   (let ((_vals16730_ (gxc#generate-runtime-temporary)))
                     (let ((_expr16732_ (gxc#compile-e _L16716_)))
                       (let ((_check-values16734_
                              (gxc#generate-runtime-check-values
                               _vals16730_
                               _L16717_)))
                         (let ((_refs16736_
                                (gxc#generate-runtime-let-values-bind
                                 _vals16730_
                                 _L16717_)))
                           (let ()
                             (_lp16608_
                              _L16654_
                              (foldl cons
                                     (cons (cons _vals16730_
                                                 (cons _expr16732_ '()))
                                           _bind16611_)
                                     (map (lambda (_e1673816740_)
                                            (let ((_g1674216751_
                                                   _e1673816740_))
                                              (let ((_E1674416755_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _g1674216751_))))
                                                (let ((_K1674516760_
                                                       (lambda (_eid16758_)
                                                         (cons _eid16758_
                                                               (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _g1674216751_)
                                                      (let ((_hd1674616763_
                                                             (##car _g1674216751_))
                                                            (_tl1674716765_
                                                             (##cdr _g1674216751_)))
                                                        (let ((_eid16768_
                                                               _hd1674616763_))
                                                          (if (##pair? _tl1674716765_)
                                                              (let ((_hd1674816770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl1674716765_))
                            (_tl1674916772_ (##cdr _tl1674716765_)))
                        (if (##null? _tl1674916772_)
                            (_K1674516760_ _eid16768_)
                            (_E1674416755_)))
                      (_E1674416755_))))
              (_E1674416755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _refs16736_))
                              (cons _check-values16734_ _check16612_)
                              (foldl cons _refs16736_ _post16613_))))))))
                 _hd1668916711_
                 _hd1668616703_)
                (_g1667016695_ _g1667116698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1667016695_
                                                 _g1667116698_))))
                                        (_g1667016695_ _g1667116698_)))))
                             (let ((_g1666816822_
                                    (lambda (_g1667116778_)
                                      (if (gx#stx-pair? _g1667116778_)
                                          (let ((_e1667416780_
                                                 (gx#stx-e _g1667116778_)))
                                            (let ((_hd1667516783_
                                                   (##car _e1667416780_))
                                                  (_tl1667616785_
                                                   (##cdr _e1667416780_)))
                                              (if (gx#stx-pair? _hd1667516783_)
                                                  (let ((_e1667716788_
                                                         (gx#stx-e
                                                          _hd1667516783_)))
                                                    (let ((_hd1667816791_
                                                           (##car _e1667716788_))
                                                          (_tl1667916793_
                                                           (##cdr _e1667716788_)))
                                                      (if (gx#stx-null?
                                                           _tl1667916793_)
                                                          (if (gx#stx-pair?
                                                               _tl1667616785_)
                                                              (let ((_e1668016796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1667616785_)))
                        (let ((_hd1668116799_ (##car _e1668016796_))
                              (_tl1668216801_ (##cdr _e1668016796_)))
                          (if (gx#stx-null? _tl1668216801_)
                              ((lambda (_L16804_ _L16805_)
                                 (let ((_eid16819_
                                        (gxc#generate-runtime-binding-id*
                                         _L16805_))
                                       (_expr16820_ (gxc#compile-e _L16804_)))
                                   (_lp16608_
                                    _L16654_
                                    (cons (cons _eid16819_
                                                (cons _expr16820_ '()))
                                          _bind16611_)
                                    _check16612_
                                    _post16613_)))
                               _hd1668116799_
                               _hd1667816791_)
                              (_g1666916775_ _g1667116778_))))
                      (_g1666916775_ _g1667116778_))
                  (_g1666916775_ _g1667116778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1666916775_
                                                   _g1667116778_))))
                                          (_g1666916775_ _g1667116778_)))))
                               (_g1666816822_ _L16655_)))))
                       _tl1662216651_
                       _hd1662116649_)))
                  (_g1661516641_ _g1661716644_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1661416825_
                                                _rest16610_)))))))
                               _lp16608_)
                             _hd16605_
                             '()
                             '()
                             '()))))
                     (let ((_g1652916546_
                            (lambda (_g1653016543_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1653016543_))))
                       (let ((_g1652816592_
                              (lambda (_g1653016549_)
                                (if (gx#stx-pair? _g1653016549_)
                                    (let ((_e1653316551_
                                           (gx#stx-e _g1653016549_)))
                                      (let ((_hd1653416554_
                                             (##car _e1653316551_))
                                            (_tl1653516556_
                                             (##cdr _e1653316551_)))
                                        (if (gx#stx-pair? _tl1653516556_)
                                            (let ((_e1653616559_
                                                   (gx#stx-e _tl1653516556_)))
                                              (let ((_hd1653716562_
                                                     (##car _e1653616559_))
                                                    (_tl1653816564_
                                                     (##cdr _e1653616559_)))
                                                (if (gx#stx-pair?
                                                     _tl1653816564_)
                                                    (let ((_e1653916567_
                                                           (gx#stx-e
                                                            _tl1653816564_)))
                                                      (let ((_hd1654016570_
                                                             (##car _e1653916567_))
                                                            (_tl1654116572_
                                                             (##cdr _e1653916567_)))
                                                        (if (gx#stx-null?
                                                             _tl1654116572_)
                                                            ((lambda (_L16575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16576_)
                       (if (gxc#generate-runtime-simple-let? _L16576_)
                           (_generate-simple16524_ _L16576_ _L16575_)
                           (_generate-values16525_ _L16576_ _L16575_)))
                     _hd1654016570_
                     _hd1653716562_)
                    (_g1652916546_ _g1653016549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1652916546_
                                                     _g1653016549_))))
                                            (_g1652916546_ _g1653016549_))))
                                    (_g1652916546_ _g1653016549_)))))
                         (_g1652816592_ _stx16521_))))))))))
      (lambda _g18658_
        (let ((_g18657_ (length _g18658_)))
          (cond ((fx= _g18657_ 1)
                 (apply (lambda (_stx16834_)
                          (let ((_compiled-body?16836_ '#f))
                            (_opt-lambda1651916831_
                             _stx16834_
                             _compiled-body?16836_)))
                        _g18658_))
                ((fx= _g18657_ 2)
                 (apply (lambda (_stx16838_ _compiled-body?16839_)
                          (_opt-lambda1651916831_
                           _stx16838_
                           _compiled-body?16839_))
                        _g18658_))
                (else (error "No clause matching arguments" _g18658_)))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx15640_)
      (let ((_collect-closures15643_
             (lambda (_forms16461_)
               (map (lambda (_e1646216464_)
                      (let ((_g1646616475_ _e1646216464_))
                        (let ((_E1646816479_
                               (lambda ()
                                 (error '"No clause matching" _g1646616475_))))
                          (let ((_K1646916484_
                                 (lambda (_expr16482_)
                                   (gxc#collect-expression-refs _expr16482_))))
                            (if (##pair? _g1646616475_)
                                (let ((_hd1647016487_ (##car _g1646616475_))
                                      (_tl1647116489_ (##cdr _g1646616475_)))
                                  (if (##pair? _tl1647116489_)
                                      (let ((_hd1647216492_
                                             (##car _tl1647116489_))
                                            (_tl1647316494_
                                             (##cdr _tl1647116489_)))
                                        (let ((_expr16497_ _hd1647216492_))
                                          (if (##null? _tl1647316494_)
                                              (_K1646916484_ _expr16497_)
                                              (_E1646816479_))))
                                      (_E1646816479_)))
                                (_E1646816479_))))))
                    _forms16461_))))
        (let ((_collect-bindings15644_
               (lambda (_forms16385_)
                 (map (lambda (_e1638616388_)
                        (let ((_g1639016399_ _e1638616388_))
                          (let ((_E1639216403_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _g1639016399_))))
                            (let ((_K1639316446_
                                   (lambda (_bind16406_)
                                     ((letrec ((_lp16408_
                                                (lambda (_rest16410_ _r16411_)
                                                  (let ((_rest1641216420_
                                                         _rest16410_))
                                                    (let ((_E1641516424_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest1641216420_))))
              (let ((_else1641416428_
                     (lambda ()
                       (if (gx#identifier? _rest16410_)
                           (cons _rest16410_ _r16411_)
                           _r16411_))))
                (let ((_K1641616434_
                       (lambda (_rest16431_ _id16432_)
                         (if (gx#identifier? _id16432_)
                             (_lp16408_
                              _rest16431_
                              (cons (gx#binding-id
                                     (gx#resolve-identifier _id16432_))
                                    _r16411_))
                             (_lp16408_ _rest16431_ _r16411_)))))
                  (if (##pair? _rest1641216420_)
                      (let ((_hd1641716437_ (##car _rest1641216420_))
                            (_tl1641816439_ (##cdr _rest1641216420_)))
                        (let ((_id16442_ _hd1641716437_))
                          (let ((_rest16444_ _tl1641816439_))
                            (_K1641616434_ _rest16444_ _id16442_))))
                      (_else1641416428_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp16408_)
                                      _bind16406_
                                      '()))))
                              (if (##pair? _g1639016399_)
                                  (let ((_hd1639416449_ (##car _g1639016399_))
                                        (_tl1639516451_ (##cdr _g1639016399_)))
                                    (let ((_bind16454_ _hd1639416449_))
                                      (if (##pair? _tl1639516451_)
                                          (let ((_hd1639616456_
                                                 (##car _tl1639516451_))
                                                (_tl1639716458_
                                                 (##cdr _tl1639516451_)))
                                            (if (##null? _tl1639716458_)
                                                (_K1639316446_ _bind16454_)
                                                (_E1639216403_)))
                                          (_E1639216403_))))
                                  (_E1639216403_))))))
                      _forms16385_))))
          (let ((_closure-reference?15648_
                 (lambda (_closure15937_ _bindings15938_)
                   (ormap (lambda (_g1593915941_)
                            (hash-get _closure15937_ _g1593915941_))
                          _bindings15938_))))
            (let ((_is-effect-expr?15650_
                   (lambda (_expr15848_)
                     (let ((_g1585015860_
                            (lambda (_g1585115857_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1585115857_))))
                       (let ((_g1584915883_
                              (lambda (_g1585115863_)
                                (if (gx#stx-pair? _g1585115863_)
                                    (let ((_e1585315865_
                                           (gx#stx-e _g1585115863_)))
                                      (let ((_hd1585415868_
                                             (##car _e1585315865_))
                                            (_tl1585515870_
                                             (##cdr _e1585315865_)))
                                        ((lambda (_L15873_)
                                           (not (memq (gx#stx-e _L15873_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd1585415868_)))
                                    (_g1585015860_ _g1585115863_)))))
                         (_g1584915883_ _expr15848_))))))
              (let ((_is-lambda-expr?15651_
                     (lambda (_expr15810_)
                       (let ((_g1581215822_
                              (lambda (_g1581315819_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1581315819_))))
                         (let ((_g1581115845_
                                (lambda (_g1581315825_)
                                  (if (gx#stx-pair? _g1581315825_)
                                      (let ((_e1581515827_
                                             (gx#stx-e _g1581315825_)))
                                        (let ((_hd1581615830_
                                               (##car _e1581515827_))
                                              (_tl1581715832_
                                               (##cdr _e1581515827_)))
                                          ((lambda (_L15835_)
                                             (memq (gx#stx-e _L15835_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd1581615830_)))
                                      (_g1581215822_ _g1581315825_)))))
                           (_g1581115845_ _expr15810_))))))
                (let ((_lift-rec15647_
                       (lambda (_forms15944_)
                         ((letrec ((_lp15946_
                                    (lambda (_rest15948_
                                             _pre15949_
                                             _bind15950_
                                             _init15951_)
                                      (let ((_rest1595215960_ _rest15948_))
                                        (let ((_E1595515964_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest1595215960_))))
                                          (let ((_else1595415968_
                                                 (lambda ()
                                                   (values (reverse _pre15949_)
                                                           (reverse _bind15950_)
                                                           (reverse _init15951_)))))
                                            (let ((_K1595616159_
                                                   (lambda (_rest15971_
                                                            _bind-hd15972_)
                                                     (let ((_g1597616011_
                                                            (lambda (_g1597716008_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1597716008_))))
                                                       (let ((_g1597516068_
                                                              (lambda (_g1597716014_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1597716014_)
                            (let ((_e1600116016_ (gx#stx-e _g1597716014_)))
                              (let ((_hd1600216019_ (##car _e1600116016_))
                                    (_tl1600316021_ (##cdr _e1600116016_)))
                                (if (gx#stx-pair? _tl1600316021_)
                                    (let ((_e1600416024_
                                           (gx#stx-e _tl1600316021_)))
                                      (let ((_hd1600516027_
                                             (##car _e1600416024_))
                                            (_tl1600616029_
                                             (##cdr _e1600416024_)))
                                        (if (gx#stx-null? _tl1600616029_)
                                            ((lambda (_L16032_ _L16033_)
                                               (let ((_vals16052_
                                                      (gxc#generate-runtime-temporary)))
                                                 (let ((_expr16054_
                                                        (gxc#compile-e
                                                         _L16032_)))
                                                   (let ((_check-values16056_
                                                          (gxc#generate-runtime-check-values
                                                           _vals16052_
                                                           _L16033_)))
                                                     (let ((_refs16058_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals16052_
                                                             _L16033_)))
                                                       (let ()
                                                         (_lp15946_
                                                          _rest15971_
                                                          (foldl (lambda (_ref16061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _r16062_)
                           (cons (cons (car _ref16061_) (cons '#!void '()))
                                 _r16062_))
                         _pre15949_
                         _refs16058_)
                  _bind15950_
                  (cons (cons 'let
                              (cons (cons (cons _vals16052_
                                                (cons _expr16054_ '()))
                                          '())
                                    (cons _check-values16056_
                                          (cons (map (lambda (_g1606316065_)
                                                       (cons 'set!
                                                             _g1606316065_))
                                                     _refs16058_)
                                                '()))))
                        _init15951_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1600516027_
                                             _hd1600216019_)
                                            (_g1597616011_ _g1597716014_))))
                                    (_g1597616011_ _g1597716014_))))
                            (_g1597616011_ _g1597716014_)))))
                 (let ((_g1597416114_
                        (lambda (_g1597716071_)
                          (if (gx#stx-pair? _g1597716071_)
                              (let ((_e1599016073_ (gx#stx-e _g1597716071_)))
                                (let ((_hd1599116076_ (##car _e1599016073_))
                                      (_tl1599216078_ (##cdr _e1599016073_)))
                                  (if (gx#stx-pair? _hd1599116076_)
                                      (let ((_e1599316081_
                                             (gx#stx-e _hd1599116076_)))
                                        (let ((_hd1599416084_
                                               (##car _e1599316081_))
                                              (_tl1599516086_
                                               (##cdr _e1599316081_)))
                                          (if (gx#stx-null? _tl1599516086_)
                                              (if (gx#stx-pair? _tl1599216078_)
                                                  (let ((_e1599616089_
                                                         (gx#stx-e
                                                          _tl1599216078_)))
                                                    (let ((_hd1599716092_
                                                           (##car _e1599616089_))
                                                          (_tl1599816094_
                                                           (##cdr _e1599616089_)))
                                                      (if (gx#stx-null?
                                                           _tl1599816094_)
                                                          ((lambda (_L16097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L16098_)
                     (let ((_eid16112_
                            (gxc#generate-runtime-binding-id _L16098_)))
                       (if (_is-lambda-expr?15651_ _L16097_)
                           (_lp15946_
                            _rest15971_
                            _pre15949_
                            (cons (cons _eid16112_
                                        (cons (gxc#compile-e _L16097_) '()))
                                  _bind15950_)
                            _init15951_)
                           (_lp15946_
                            _rest15971_
                            (cons (cons _eid16112_ (cons '#!void '()))
                                  _pre15949_)
                            _bind15950_
                            (cons (cons 'set!
                                        (cons _eid16112_
                                              (cons (gxc#compile-e _L16097_)
                                                    '())))
                                  _init15951_)))))
                   _hd1599716092_
                   _hd1599416084_)
                  (_g1597516068_ _g1597716071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1597516068_
                                                   _g1597716071_))
                                              (_g1597516068_ _g1597716071_))))
                                      (_g1597516068_ _g1597716071_))))
                              (_g1597516068_ _g1597716071_)))))
                   (let ((_g1597316156_
                          (lambda (_g1597716117_)
                            (if (gx#stx-pair? _g1597716117_)
                                (let ((_e1597916119_ (gx#stx-e _g1597716117_)))
                                  (let ((_hd1598016122_ (##car _e1597916119_))
                                        (_tl1598116124_ (##cdr _e1597916119_)))
                                    (if (gx#stx-pair? _hd1598016122_)
                                        (let ((_e1598216127_
                                               (gx#stx-e _hd1598016122_)))
                                          (let ((_hd1598316130_
                                                 (##car _e1598216127_))
                                                (_tl1598416132_
                                                 (##cdr _e1598216127_)))
                                            (if (gx#stx-datum? _hd1598316130_)
                                                (if (equal? (gx#stx-e
                                                             _hd1598316130_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1598416132_)
                                                        (if (gx#stx-pair?
                                                             _tl1598116124_)
                                                            (let ((_e1598516135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1598116124_)))
                      (let ((_hd1598616138_ (##car _e1598516135_))
                            (_tl1598716140_ (##cdr _e1598516135_)))
                        (if (gx#stx-null? _tl1598716140_)
                            ((lambda (_L16143_)
                               (_lp15946_
                                _rest15971_
                                _pre15949_
                                _bind15950_
                                (cons (gxc#compile-e _L16143_) _init15951_)))
                             _hd1598616138_)
                            (_g1597416114_ _g1597716117_))))
                    (_g1597416114_ _g1597716117_))
                (_g1597416114_ _g1597716117_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1597416114_
                                                     _g1597716117_))
                                                (_g1597416114_
                                                 _g1597716117_))))
                                        (_g1597416114_ _g1597716117_))))
                                (_g1597416114_ _g1597716117_)))))
                     (_g1597316156_ _bind-hd15972_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest1595215960_)
                                                  (let ((_hd1595716162_
                                                         (##car _rest1595215960_))
                                                        (_tl1595816164_
                                                         (##cdr _rest1595215960_)))
                                                    (let ((_bind-hd16167_
                                                           _hd1595716162_))
                                                      (let ((_rest16169_
                                                             _tl1595816164_))
                                                        (_K1595616159_
                                                         _rest16169_
                                                         _bind-hd16167_))))
                                                  (_else1595415968_)))))))))
                            _lp15946_)
                          _forms15944_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?15649_
                         (lambda (_hd-bind15886_)
                           (let ((_g1588815901_
                                  (lambda (_g1588915898_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1588915898_))))
                             (let ((_g1588715934_
                                    (lambda (_g1588915904_)
                                      (if (gx#stx-pair? _g1588915904_)
                                          (let ((_e1589115906_
                                                 (gx#stx-e _g1588915904_)))
                                            (let ((_hd1589215909_
                                                   (##car _e1589115906_))
                                                  (_tl1589315911_
                                                   (##cdr _e1589115906_)))
                                              (if (gx#stx-pair? _tl1589315911_)
                                                  (let ((_e1589415914_
                                                         (gx#stx-e
                                                          _tl1589315911_)))
                                                    (let ((_hd1589515917_
                                                           (##car _e1589415914_))
                                                          (_tl1589615919_
                                                           (##cdr _e1589415914_)))
                                                      (if (gx#stx-null?
                                                           _tl1589615919_)
                                                          ((lambda (_L15922_)
                                                             (_is-effect-expr?15650_
                                                              _L15922_))
                                                           _hd1589515917_)
                                                          (_g1588815901_
                                                           _g1588915904_))))
                                                  (_g1588815901_
                                                   _g1588915904_))))
                                          (_g1588815901_ _g1588915904_)))))
                               (_g1588715934_ _hd-bind15886_))))))
                    (let ((_lift-pre15645_
                           (lambda (_hd16278_ _bindings16279_ _closures16280_)
                             ((letrec ((_lp16282_
                                        (lambda (_rest-forms16284_
                                                 _rest-bindings16285_
                                                 _rest-closures16286_
                                                 _post-forms16287_
                                                 _post-bindings16288_
                                                 _post-closures16289_
                                                 _pre-forms16290_
                                                 _lifted?16291_)
                                          (let ((_rest-forms1629216308_
                                                 _rest-forms16284_)
                                                (_rest-bindings1629316310_
                                                 _rest-bindings16285_)
                                                (_rest-closures1629416312_
                                                 _rest-closures16286_))
                                            (let ((_E1629716316_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms1629216308_
                                                            _rest-bindings1629316310_
                                                            _rest-closures1629416312_))))
                                              (let ((_else1629616320_
                                                     (lambda ()
                                                       (if _lifted?16291_
                                                           (_lp16282_
                                                            (reverse _post-forms16287_)
                                                            (reverse _post-bindings16288_)
                                                            (reverse _post-closures16289_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms16290_
                                                            '#f)
                                                           (values (reverse _pre-forms16290_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms16287_)
                           (reverse _post-bindings16288_)
                           (reverse _post-closures16289_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K1629816373_
                                                       (lambda (_rest-forms16323_
                                                                _form16324_)
                                                         (let ((_K1629916361_
                                                                (lambda (_rest-bindings16326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings16327_)
                          (let ((_K1630016349_
                                 (lambda (_rest-closures16329_ _closure16330_)
                                   (if (let ((_$e16332_
                                              (_closure-reference?15648_
                                               _closure16330_
                                               _bindings16327_)))
                                         (if _$e16332_
                                             _$e16332_
                                             (let ((_$e16339_
                                                    (ormap (lambda (_g1633416336_)
                                                             (_closure-reference?15648_
                                                              _closure16330_
                                                              _g1633416336_))
                                                           _rest-bindings16326_)))
                                               (if _$e16339_
                                                   _$e16339_
                                                   (let ((_$e16346_
                                                          (ormap (lambda (_g1634116343_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_closure-reference?15648_
                            _closure16330_
                            _g1634116343_))
                         _post-bindings16288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e16346_
                                                         _$e16346_
                                                         (if (_is-effect-bind?15649_
                                                              _form16324_)
                                                             (find _is-effect-bind?15649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms16287_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp16282_
                                        _rest-forms16323_
                                        _rest-bindings16326_
                                        _rest-closures16329_
                                        (cons _form16324_ _post-forms16287_)
                                        (cons _bindings16327_
                                              _post-bindings16288_)
                                        (cons _closure16330_
                                              _post-closures16289_)
                                        _pre-forms16290_
                                        _lifted?16291_)
                                       (_lp16282_
                                        _rest-forms16323_
                                        _rest-bindings16326_
                                        _rest-closures16329_
                                        _post-forms16287_
                                        _post-bindings16288_
                                        _post-closures16289_
                                        (cons _form16324_ _pre-forms16290_)
                                        '#t)))))
                            (if (##pair? _rest-closures1629416312_)
                                (let ((_hd1630116352_
                                       (##car _rest-closures1629416312_))
                                      (_tl1630216354_
                                       (##cdr _rest-closures1629416312_)))
                                  (let ((_closure16357_ _hd1630116352_))
                                    (let ((_rest-closures16359_
                                           _tl1630216354_))
                                      (_K1630016349_
                                       _rest-closures16359_
                                       _closure16357_))))
                                (_else1629616320_))))))
                   (if (##pair? _rest-bindings1629316310_)
                       (let ((_hd1630316364_ (##car _rest-bindings1629316310_))
                             (_tl1630416366_
                              (##cdr _rest-bindings1629316310_)))
                         (let ((_bindings16369_ _hd1630316364_))
                           (let ((_rest-bindings16371_ _tl1630416366_))
                             (_K1629916361_
                              _rest-bindings16371_
                              _bindings16369_))))
                       (_else1629616320_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms1629216308_)
                                                      (let ((_hd1630516376_
                                                             (##car _rest-forms1629216308_))
                                                            (_tl1630616378_
                                                             (##cdr _rest-forms1629216308_)))
                                                        (let ((_form16381_
                                                               _hd1630516376_))
                                                          (let ((_rest-forms16383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1630616378_))
                    (_K1629816373_ _rest-forms16383_ _form16381_))))
              (_else1629616320_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp16282_)
                              _hd16278_
                              _bindings16279_
                              _closures16280_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post15646_
                             (lambda (_hd16171_
                                      _bindings16172_
                                      _closures16173_)
                               ((letrec ((_lp16175_
                                          (lambda (_rest-forms16177_
                                                   _rest-bindings16178_
                                                   _rest-closures16179_
                                                   _pre-forms16180_
                                                   _pre-bindings16181_
                                                   _pre-closures16182_
                                                   _post-forms16183_
                                                   _lifted?16184_)
                                            (let ((_rest-forms1618516201_
                                                   _rest-forms16177_)
                                                  (_rest-bindings1618616203_
                                                   _rest-bindings16178_)
                                                  (_rest-closures1618716205_
                                                   _rest-closures16179_))
                                              (let ((_E1619016209_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms1618516201_
                                                              _rest-bindings1618616203_
                                                              _rest-closures1618716205_))))
                                                (let ((_else1618916213_
                                                       (lambda ()
                                                         (if _lifted?16184_
                                                             (_lp16175_
                                                              (reverse _pre-forms16180_)
                                                              (reverse _pre-bindings16181_)
                                                              (reverse _pre-closures16182_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms16183_
                                                              '#f)
                                                             (values _post-forms16183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms16180_
                             _pre-bindings16181_
                             _pre-closures16182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K1619116266_
                                                         (lambda (_rest-forms16216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form16217_)
                   (let ((_K1619216254_
                          (lambda (_rest-bindings16219_ _bindings16220_)
                            (let ((_K1619316242_
                                   (lambda (_rest-closures16222_
                                            _closure16223_)
                                     (if (let ((_$e16225_
                                                (_closure-reference?15648_
                                                 _closure16223_
                                                 _bindings16220_)))
                                           (if _$e16225_
                                               _$e16225_
                                               (let ((_$e16232_
                                                      (ormap (lambda (_g1622716229_)
                                                               (_closure-reference?15648_
                                                                _g1622716229_
                                                                _bindings16220_))
                                                             _rest-closures16222_)))
                                                 (if _$e16232_
                                                     _$e16232_
                                                     (let ((_$e16239_
                                                            (ormap (lambda (_g1623416236_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_closure-reference?15648_
                              _g1623416236_
                              _bindings16220_))
                           _pre-closures16182_)))
               (if _$e16239_
                   _$e16239_
                   (if (_is-effect-bind?15649_ _form16217_)
                       (find _is-effect-bind?15649_ _pre-forms16180_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp16175_
                                          _rest-forms16216_
                                          _rest-bindings16219_
                                          _rest-closures16222_
                                          (cons _form16217_ _pre-forms16180_)
                                          (cons _bindings16220_
                                                _pre-bindings16181_)
                                          (cons _closure16223_
                                                _pre-closures16182_)
                                          _post-forms16183_
                                          _lifted?16184_)
                                         (_lp16175_
                                          _rest-forms16216_
                                          _rest-bindings16219_
                                          _rest-closures16222_
                                          _pre-forms16180_
                                          _pre-bindings16181_
                                          _pre-closures16182_
                                          (cons _form16217_ _post-forms16183_)
                                          '#t)))))
                              (if (##pair? _rest-closures1618716205_)
                                  (let ((_hd1619416245_
                                         (##car _rest-closures1618716205_))
                                        (_tl1619516247_
                                         (##cdr _rest-closures1618716205_)))
                                    (let ((_closure16250_ _hd1619416245_))
                                      (let ((_rest-closures16252_
                                             _tl1619516247_))
                                        (_K1619316242_
                                         _rest-closures16252_
                                         _closure16250_))))
                                  (_else1618916213_))))))
                     (if (##pair? _rest-bindings1618616203_)
                         (let ((_hd1619616257_
                                (##car _rest-bindings1618616203_))
                               (_tl1619716259_
                                (##cdr _rest-bindings1618616203_)))
                           (let ((_bindings16262_ _hd1619616257_))
                             (let ((_rest-bindings16264_ _tl1619716259_))
                               (_K1619216254_
                                _rest-bindings16264_
                                _bindings16262_))))
                         (_else1618916213_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms1618516201_)
                                                        (let ((_hd1619816269_
                                                               (##car _rest-forms1618516201_))
                                                              (_tl1619916271_
                                                               (##cdr _rest-forms1618516201_)))
                                                          (let ((_form16274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1619816269_))
                    (let ((_rest-forms16276_ _tl1619916271_))
                      (_K1619116266_ _rest-forms16276_ _form16274_))))
                (_else1618916213_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp16175_)
                                (reverse _hd16171_)
                                (reverse _bindings16172_)
                                (reverse _closures16173_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize15642_
                               (lambda (_forms16499_)
                                 (let ((_closures16501_
                                        (_collect-closures15643_
                                         _forms16499_)))
                                   (let ((_bindings16503_
                                          (_collect-bindings15644_
                                           _forms16499_)))
                                     (let ((_g18661_
                                            (_lift-pre15645_
                                             _forms16499_
                                             _bindings16503_
                                             _closures16501_)))
                                       (begin
                                         (let ((_g18662_
                                                (values-count _g18661_)))
                                           (if (not (fx= _g18662_ 4))
                                               (error "Context expects 4 values"
                                                      _g18662_)))
                                         (let ((_pre-bind16505_
                                                (values-ref _g18661_ 0))
                                               (_forms16506_
                                                (values-ref _g18661_ 1))
                                               (_bindings16507_
                                                (values-ref _g18661_ 2))
                                               (_closures16508_
                                                (values-ref _g18661_ 3)))
                                           (let ((_g18663_
                                                  (_lift-post15646_
                                                   _forms16506_
                                                   _bindings16507_
                                                   _closures16508_)))
                                             (begin
                                               (let ((_g18664_
                                                      (values-count _g18663_)))
                                                 (if (not (fx= _g18664_ 4))
                                                     (error "Context expects 4 values"
                                                            _g18664_)))
                                               (let ((_post-bind16510_
                                                      (values-ref _g18663_ 0))
                                                     (_forms16511_
                                                      (values-ref _g18663_ 1))
                                                     (_bindings16512_
                                                      (values-ref _g18663_ 2))
                                                     (_closures16513_
                                                      (values-ref _g18663_ 3)))
                                                 (let ((_g18665_
                                                        (_lift-rec15647_
                                                         _forms16511_)))
                                                   (begin
                                                     (let ((_g18666_
                                                            (values-count
                                                             _g18665_)))
                                                       (if (not (fx= _g18666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g18666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre16515_
                                                            (values-ref
                                                             _g18665_
                                                             0))
                                                           (_rec-bind16516_
                                                            (values-ref
                                                             _g18665_
                                                             1))
                                                           (_rec-init16517_
                                                            (values-ref
                                                             _g18665_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind16505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre16515_
                         _rec-bind16516_
                         _rec-init16517_
                         _post-bind16510_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*15652_
                                    (lambda (_hd15739_ _body15740_)
                                      (let ((_hd1574115749_ _hd15739_))
                                        (let ((_E1574415753_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd1574115749_))))
                                          (let ((_else1574315757_
                                                 (lambda () _body15740_)))
                                            (let ((_K1574515798_
                                                   (lambda (_rest15760_
                                                            _bind15761_)
                                                     (let ((_bind1576215771_
                                                            _bind15761_))
                                                       (let ((_E1576415775_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1576215771_))))
                 (let ((_K1576515781_
                        (lambda (_expr15778_ _hd15779_)
                          (if (gx#stx-ormap gx#identifier? _hd15779_)
                              (gxc#generate-runtime-let-values%
                               (cons '%#let-values
                                     (cons (cons _bind15761_ '())
                                           (cons (_generate-let*15652_
                                                  _rest15760_
                                                  _body15740_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr15778_)
                                          (cons (_generate-let*15652_
                                                 _rest15760_
                                                 _body15740_)
                                                '())))))))
                   (if (##pair? _bind1576215771_)
                       (let ((_hd1576615784_ (##car _bind1576215771_))
                             (_tl1576715786_ (##cdr _bind1576215771_)))
                         (let ((_hd15789_ _hd1576615784_))
                           (if (##pair? _tl1576715786_)
                               (let ((_hd1576815791_ (##car _tl1576715786_))
                                     (_tl1576915793_ (##cdr _tl1576715786_)))
                                 (let ((_expr15796_ _hd1576815791_))
                                   (if (##null? _tl1576915793_)
                                       (_K1576515781_ _expr15796_ _hd15789_)
                                       (_E1576415775_))))
                               (_E1576415775_))))
                       (_E1576415775_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd1574115749_)
                                                  (let ((_hd1574615801_
                                                         (##car _hd1574115749_))
                                                        (_tl1574715803_
                                                         (##cdr _hd1574115749_)))
                                                    (let ((_bind15806_
                                                           _hd1574615801_))
                                                      (let ((_rest15808_
                                                             _tl1574715803_))
                                                        (_K1574515798_
                                                         _rest15808_
                                                         _bind15806_))))
                                                  (_else1574315757_)))))))))
                            (let ((_g1565415671_
                                   (lambda (_g1565515668_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1565515668_))))
                              (let ((_g1565315736_
                                     (lambda (_g1565515674_)
                                       (if (gx#stx-pair? _g1565515674_)
                                           (let ((_e1565815676_
                                                  (gx#stx-e _g1565515674_)))
                                             (let ((_hd1565915679_
                                                    (##car _e1565815676_))
                                                   (_tl1566015681_
                                                    (##cdr _e1565815676_)))
                                               (if (gx#stx-pair?
                                                    _tl1566015681_)
                                                   (let ((_e1566115684_
                                                          (gx#stx-e
                                                           _tl1566015681_)))
                                                     (let ((_hd1566215687_
                                                            (##car _e1566115684_))
                                                           (_tl1566315689_
                                                            (##cdr _e1566115684_)))
                                                       (if (gx#stx-pair?
                                                            _tl1566315689_)
                                                           (let ((_e1566415692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1566315689_)))
                     (let ((_hd1566515695_ (##car _e1566415692_))
                           (_tl1566615697_ (##cdr _e1566415692_)))
                       (if (gx#stx-null? _tl1566615697_)
                           ((lambda (_L15700_ _L15701_)
                              (let ((_g18659_ (_linearize15642_ _L15701_)))
                                (begin
                                  (let ((_g18660_ (values-count _g18659_)))
                                    (if (not (fx= _g18660_ 5))
                                        (error "Context expects 5 values"
                                               _g18660_)))
                                  (let ((_pre15717_ (values-ref _g18659_ 0))
                                        (_rec-pre15718_
                                         (values-ref _g18659_ 1))
                                        (_rec-bind15719_
                                         (values-ref _g18659_ 2))
                                        (_rec-init15720_
                                         (values-ref _g18659_ 3))
                                        (_post15721_ (values-ref _g18659_ 4)))
                                    (let ((_body15723_
                                           (gxc#compile-e _L15700_)))
                                      (let ((_body15725_
                                             (if (null? _post15721_)
                                                 _body15723_
                                                 (_generate-let*15652_
                                                  _post15721_
                                                  _body15723_))))
                                        (let ((_body15727_
                                               (if (null? _rec-init15720_)
                                                   _body15725_
                                                   (cons 'begin
                                                         (foldr cons
                                                                (cons _body15725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        _rec-init15720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body15729_
                                                 (if (null? _rec-bind15719_)
                                                     _body15727_
                                                     (cons 'letrec
                                                           (cons _rec-bind15719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body15727_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body15731_
                                                   (if (null? _rec-pre15718_)
                                                       _body15729_
                                                       (cons 'let
                                                             (cons _rec-pre15718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body15729_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body15733_
                                                     (if (null? _pre15717_)
                                                         _body15731_
                                                         (_generate-let*15652_
                                                          _pre15717_
                                                          _body15731_))))
                                                (let () _body15733_)))))))))))
                            _hd1566515695_
                            _hd1566215687_)
                           (_g1565415671_ _g1565515674_))))
                   (_g1565415671_ _g1565515674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1565415671_
                                                    _g1565515674_))))
                                           (_g1565415671_ _g1565515674_)))))
                                (_g1565315736_ _stx15640_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd15533_)
      ((letrec ((_lp15535_
                 (lambda (_rest15537_)
                   (let ((_g1554115562_
                          (lambda (_g1554215559_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1554215559_))))
                     (let ((_g1554015569_
                            (lambda (_g1554215565_) ((lambda () '#f)))))
                       (let ((_g1553915576_
                              (lambda (_g1554215572_)
                                (if (gx#stx-null? _g1554215572_)
                                    ((lambda () '#t))
                                    (_g1554015569_ _g1554215572_)))))
                         (let ((_g1553815637_
                                (lambda (_g1554215579_)
                                  (if (gx#stx-pair? _g1554215579_)
                                      (let ((_e1554615581_
                                             (gx#stx-e _g1554215579_)))
                                        (let ((_hd1554715584_
                                               (##car _e1554615581_))
                                              (_tl1554815586_
                                               (##cdr _e1554615581_)))
                                          (if (gx#stx-pair? _hd1554715584_)
                                              (let ((_e1554915589_
                                                     (gx#stx-e
                                                      _hd1554715584_)))
                                                (let ((_hd1555015592_
                                                       (##car _e1554915589_))
                                                      (_tl1555115594_
                                                       (##cdr _e1554915589_)))
                                                  (if (gx#stx-pair?
                                                       _hd1555015592_)
                                                      (let ((_e1555215597_
                                                             (gx#stx-e
                                                              _hd1555015592_)))
                                                        (let ((_hd1555315600_
                                                               (##car _e1555215597_))
                                                              (_tl1555415602_
                                                               (##cdr _e1555215597_)))
                                                          (if (gx#stx-null?
                                                               _tl1555415602_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1555115594_)
                          (let ((_e1555515605_ (gx#stx-e _tl1555115594_)))
                            (let ((_hd1555615608_ (##car _e1555515605_))
                                  (_tl1555715610_ (##cdr _e1555515605_)))
                              (if (gx#stx-null? _tl1555715610_)
                                  ((lambda (_L15613_ _L15614_ _L15615_)
                                     (_lp15535_ _L15613_))
                                   _tl1554815586_
                                   _hd1555615608_
                                   _hd1555315600_)
                                  (_g1553915576_ _g1554215579_))))
                          (_g1553915576_ _g1554215579_))
                      (_g1553915576_ _g1554215579_))))
              (_g1553915576_ _g1554215579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1553915576_ _g1554215579_))))
                                      (_g1553915576_ _g1554215579_)))))
                           (_g1553815637_ _rest15537_))))))))
         _lp15535_)
       _hd15533_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form15457_ _hd15458_ _body15459_ _compiled-body?15460_)
      (let ((_generate115462_
             (lambda (_bind15464_)
               (let ((_g1546615483_
                      (lambda (_g1546715480_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1546715480_))))
                 (let ((_g1546515530_
                        (lambda (_g1546715486_)
                          (if (gx#stx-pair? _g1546715486_)
                              (let ((_e1547015488_ (gx#stx-e _g1546715486_)))
                                (let ((_hd1547115491_ (##car _e1547015488_))
                                      (_tl1547215493_ (##cdr _e1547015488_)))
                                  (if (gx#stx-pair? _hd1547115491_)
                                      (let ((_e1547315496_
                                             (gx#stx-e _hd1547115491_)))
                                        (let ((_hd1547415499_
                                               (##car _e1547315496_))
                                              (_tl1547515501_
                                               (##cdr _e1547315496_)))
                                          (if (gx#stx-null? _tl1547515501_)
                                              (if (gx#stx-pair? _tl1547215493_)
                                                  (let ((_e1547615504_
                                                         (gx#stx-e
                                                          _tl1547215493_)))
                                                    (let ((_hd1547715507_
                                                           (##car _e1547615504_))
                                                          (_tl1547815509_
                                                           (##cdr _e1547615504_)))
                                                      (if (gx#stx-null?
                                                           _tl1547815509_)
                                                          ((lambda (_L15512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L15513_)
                     (cons (gxc#generate-runtime-binding-id* _L15513_)
                           (cons (gxc#compile-e _L15512_) '())))
                   _hd1547715507_
                   _hd1547415499_)
                  (_g1546615483_ _g1546715486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1546615483_
                                                   _g1546715486_))
                                              (_g1546615483_ _g1546715486_))))
                                      (_g1546615483_ _g1546715486_))))
                              (_g1546615483_ _g1546715486_)))))
                   (_g1546515530_ _bind15464_))))))
        (cons _form15457_
              (cons (map _generate115462_ _hd15458_)
                    (cons (if _compiled-body?15460_
                              _body15459_
                              (gxc#compile-e _body15459_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx15368_)
      (letrec ((_generate115370_
                (lambda (_datum15422_)
                  (if (let ((_$e15424_ (null? _datum15422_)))
                        (if _$e15424_
                            _$e15424_
                            (let ((_$e15427_ (symbol? _datum15422_)))
                              (if _$e15427_
                                  _$e15427_
                                  (gx#self-quoting? _datum15422_)))))
                      _datum15422_
                      (if (uninterned-symbol? _datum15422_)
                          (gxc#generate-runtime-gensym-reference _datum15422_)
                          (if (pair? _datum15422_)
                              (cons (_generate115370_ (car _datum15422_))
                                    (_generate115370_ (cdr _datum15422_)))
                              (if (box? _datum15422_)
                                  (box (_generate115370_ (unbox _datum15422_)))
                                  (if (vector? _datum15422_)
                                      (vector-map
                                       _generate115370_
                                       _datum15422_)
                                      (if (let ((_$e15430_
                                                 (s8vector? _datum15422_)))
                                            (if _$e15430_
                                                _$e15430_
                                                (let ((_$e15433_
                                                       (u8vector?
                                                        _datum15422_)))
                                                  (if _$e15433_
                                                      _$e15433_
                                                      (let ((_$e15436_
                                                             (s16vector?
                                                              _datum15422_)))
                                                        (if _$e15436_
                                                            _$e15436_
                                                            (let ((_$e15439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum15422_)))
                      (if _$e15439_
                          _$e15439_
                          (let ((_$e15442_ (s32vector? _datum15422_)))
                            (if _$e15442_
                                _$e15442_
                                (let ((_$e15445_ (u32vector? _datum15422_)))
                                  (if _$e15445_
                                      _$e15445_
                                      (let ((_$e15448_
                                             (s64vector? _datum15422_)))
                                        (if _$e15448_
                                            _$e15448_
                                            (let ((_$e15451_
                                                   (u64vector? _datum15422_)))
                                              (if _$e15451_
                                                  _$e15451_
                                                  (let ((_$e15454_
                                                         (f32vector?
                                                          _datum15422_)))
                                                    (if _$e15454_
                                                        _$e15454_
                                                        (f64vector?
                                                         _datum15422_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum15422_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx15368_))))))))))
        (let ((_g1537215385_
               (lambda (_g1537315382_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1537315382_))))
          (let ((_g1537115419_
                 (lambda (_g1537315388_)
                   (if (gx#stx-pair? _g1537315388_)
                       (let ((_e1537515390_ (gx#stx-e _g1537315388_)))
                         (let ((_hd1537615393_ (##car _e1537515390_))
                               (_tl1537715395_ (##cdr _e1537515390_)))
                           (if (gx#stx-pair? _tl1537715395_)
                               (let ((_e1537815398_ (gx#stx-e _tl1537715395_)))
                                 (let ((_hd1537915401_ (##car _e1537815398_))
                                       (_tl1538015403_ (##cdr _e1537815398_)))
                                   (if (gx#stx-null? _tl1538015403_)
                                       ((lambda (_L15406_)
                                          (cons 'quote
                                                (cons (_generate115370_
                                                       (gx#stx-e _L15406_))
                                                      '())))
                                        _hd1537915401_)
                                       (_g1537215385_ _g1537315388_))))
                               (_g1537215385_ _g1537315388_))))
                       (_g1537215385_ _g1537315388_)))))
            (_g1537115419_ _stx15368_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx15330_)
      (let ((_g1533215342_
             (lambda (_g1533315339_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1533315339_))))
        (let ((_g1533115365_
               (lambda (_g1533315345_)
                 (if (gx#stx-pair? _g1533315345_)
                     (let ((_e1533515347_ (gx#stx-e _g1533315345_)))
                       (let ((_hd1533615350_ (##car _e1533515347_))
                             (_tl1533715352_ (##cdr _e1533515347_)))
                         ((lambda (_L15355_) (map gxc#compile-e _L15355_))
                          _tl1533715352_)))
                     (_g1533215342_ _g1533315345_)))))
          (_g1533115365_ _stx15330_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx15292_)
      (let ((_g1529415304_
             (lambda (_g1529515301_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1529515301_))))
        (let ((_g1529315327_
               (lambda (_g1529515307_)
                 (if (gx#stx-pair? _g1529515307_)
                     (let ((_e1529715309_ (gx#stx-e _g1529515307_)))
                       (let ((_hd1529815312_ (##car _e1529715309_))
                             (_tl1529915314_ (##cdr _e1529715309_)))
                         ((lambda (_L15317_)
                            (cons 'if (map gxc#compile-e _L15317_)))
                          _tl1529915314_)))
                     (_g1529415304_ _g1529515307_)))))
          (_g1529315327_ _stx15292_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx15241_)
      (let ((_g1524315256_
             (lambda (_g1524415253_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1524415253_))))
        (let ((_g1524215289_
               (lambda (_g1524415259_)
                 (if (gx#stx-pair? _g1524415259_)
                     (let ((_e1524615261_ (gx#stx-e _g1524415259_)))
                       (let ((_hd1524715264_ (##car _e1524615261_))
                             (_tl1524815266_ (##cdr _e1524615261_)))
                         (if (gx#stx-pair? _tl1524815266_)
                             (let ((_e1524915269_ (gx#stx-e _tl1524815266_)))
                               (let ((_hd1525015272_ (##car _e1524915269_))
                                     (_tl1525115274_ (##cdr _e1524915269_)))
                                 (if (gx#stx-null? _tl1525115274_)
                                     ((lambda (_L15277_)
                                        (gxc#generate-runtime-binding-id
                                         _L15277_))
                                      _hd1525015272_)
                                     (_g1524315256_ _g1524415259_))))
                             (_g1524315256_ _g1524415259_))))
                     (_g1524315256_ _g1524415259_)))))
          (_g1524215289_ _stx15241_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx15174_)
      (let ((_g1517615193_
             (lambda (_g1517715190_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1517715190_))))
        (let ((_g1517515238_
               (lambda (_g1517715196_)
                 (if (gx#stx-pair? _g1517715196_)
                     (let ((_e1518015198_ (gx#stx-e _g1517715196_)))
                       (let ((_hd1518115201_ (##car _e1518015198_))
                             (_tl1518215203_ (##cdr _e1518015198_)))
                         (if (gx#stx-pair? _tl1518215203_)
                             (let ((_e1518315206_ (gx#stx-e _tl1518215203_)))
                               (let ((_hd1518415209_ (##car _e1518315206_))
                                     (_tl1518515211_ (##cdr _e1518315206_)))
                                 (if (gx#stx-pair? _tl1518515211_)
                                     (let ((_e1518615214_
                                            (gx#stx-e _tl1518515211_)))
                                       (let ((_hd1518715217_
                                              (##car _e1518615214_))
                                             (_tl1518815219_
                                              (##cdr _e1518615214_)))
                                         (if (gx#stx-null? _tl1518815219_)
                                             ((lambda (_L15222_ _L15223_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L15223_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L15222_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1518715217_
                                              _hd1518415209_)
                                             (_g1517615193_ _g1517715196_))))
                                     (_g1517615193_ _g1517715196_))))
                             (_g1517615193_ _g1517715196_))))
                     (_g1517615193_ _g1517715196_)))))
          (_g1517515238_ _stx15174_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx15083_)
      (let ((_g1508515095_
             (lambda (_g1508615092_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1508615092_))))
        (let ((_g1508415171_
               (lambda (_g1508615098_)
                 (if (gx#stx-pair? _g1508615098_)
                     (let ((_e1508815100_ (gx#stx-e _g1508615098_)))
                       (let ((_hd1508915103_ (##car _e1508815100_))
                             (_tl1509015105_ (##cdr _e1508815100_)))
                         ((lambda (_L15108_)
                            (let ((_ht15118_ (make-hash-table-eq)))
                              ((letrec ((_lp15120_
                                         (lambda (_rest15122_ _loads15123_)
                                           (let ((_K15125_
                                                  (lambda (_ctx15164_
                                                           _rest15165_)
                                                    (let ((_id15167_
                                                           (gx#expander-context-id
                                                            _ctx15164_)))
                                                      (if (hash-get
                                                           _ht15118_
                                                           _id15167_)
                                                          (_lp15120_
                                                           _rest15165_
                                                           _loads15123_)
                                                          (let ((_rt15169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (string-append (symbol->string _id15167_) '"__rt")))
                    (begin
                      (hash-put! _ht15118_ _id15167_ _rt15169_)
                      (_lp15120_
                       _rest15165_
                       (cons _rt15169_ _loads15123_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest1512615134_
                                                    _rest15122_))
                                               (let ((_E1512915138_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest1512615134_))))
                                                 (let ((_else1512815146_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g1514115143_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g1514115143_))
                             (reverse _loads15123_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K1513015152_
                                                          (lambda (_rest15149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in15150_)
                    (if (gx#module-context? _in15150_)
                        (_K15125_ _in15150_ _rest15149_)
                        (if (gx#module-import? _in15150_)
                            (if (fxpositive? (gx#module-import-phi _in15150_))
                                (_lp15120_ _rest15149_ _loads15123_)
                                (_K15125_
                                 (gx#module-export-context
                                  (gx#module-import-source _in15150_))
                                 _rest15149_))
                            (if (gx#import-set? _in15150_)
                                (if (fxpositive? (gx#import-set-phi _in15150_))
                                    (_lp15120_ _rest15149_ _loads15123_)
                                    (_K15125_
                                     (gx#import-set-source _in15150_)
                                     _rest15149_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx15083_
                                 _in15150_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest1512615134_)
                                                         (let ((_hd1513115155_
                                                                (##car _rest1512615134_))
                                                               (_tl1513215157_
                                                                (##cdr _rest1512615134_)))
                                                           (let ((_in15160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1513115155_))
                     (let ((_rest15162_ _tl1513215157_))
                       (_K1513015152_ _rest15162_ _in15160_))))
                 (_else1512815146_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp15120_)
                               _L15108_
                               '())))
                          _tl1509015105_)))
                     (_g1508515095_ _g1508615098_)))))
          (_g1508415171_ _stx15083_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx15024_)
      (let ((_generate-quote15026_
             (lambda (_q15081_)
               (if (gx#identifier? _q15081_)
                   (gxc#generate-runtime-identifier _q15081_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx15024_
                    _q15081_)))))
        (let ((_g1502815041_
               (lambda (_g1502915038_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1502915038_))))
          (let ((_g1502715078_
                 (lambda (_g1502915044_)
                   (if (gx#stx-pair? _g1502915044_)
                       (let ((_e1503115046_ (gx#stx-e _g1502915044_)))
                         (let ((_hd1503215049_ (##car _e1503115046_))
                               (_tl1503315051_ (##cdr _e1503115046_)))
                           (if (gx#stx-pair? _tl1503315051_)
                               (let ((_e1503415054_ (gx#stx-e _tl1503315051_)))
                                 (let ((_hd1503515057_ (##car _e1503415054_))
                                       (_tl1503615059_ (##cdr _e1503415054_)))
                                   (if (gx#stx-null? _tl1503615059_)
                                       ((lambda (_L15062_)
                                          (let ((_gid15075_
                                                 (gxc#generate-runtime-temporary
                                                  '#t))
                                                (_quote-e15076_
                                                 (_generate-quote15026_
                                                  _L15062_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid15075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e15076_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid15075_)))
                                        _hd1503515057_)
                                       (_g1502815041_ _g1502915044_))))
                               (_g1502815041_ _g1502915044_))))
                       (_g1502815041_ _g1502915044_)))))
            (_g1502715078_ _stx15024_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx14957_)
      (let ((_g1495914976_
             (lambda (_g1496014973_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1496014973_))))
        (let ((_g1495815021_
               (lambda (_g1496014979_)
                 (if (gx#stx-pair? _g1496014979_)
                     (let ((_e1496314981_ (gx#stx-e _g1496014979_)))
                       (let ((_hd1496414984_ (##car _e1496314981_))
                             (_tl1496514986_ (##cdr _e1496314981_)))
                         (if (gx#stx-pair? _tl1496514986_)
                             (let ((_e1496614989_ (gx#stx-e _tl1496514986_)))
                               (let ((_hd1496714992_ (##car _e1496614989_))
                                     (_tl1496814994_ (##cdr _e1496614989_)))
                                 (if (gx#stx-pair? _tl1496814994_)
                                     (let ((_e1496914997_
                                            (gx#stx-e _tl1496814994_)))
                                       (let ((_hd1497015000_
                                              (##car _e1496914997_))
                                             (_tl1497115002_
                                              (##cdr _e1496914997_)))
                                         (if (gx#stx-null? _tl1497115002_)
                                             ((lambda (_L15005_ _L15006_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L15006_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L15005_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1497015000_
                                              _hd1496714992_)
                                             (_g1495914976_ _g1496014979_))))
                                     (_g1495914976_ _g1496014979_))))
                             (_g1495914976_ _g1496014979_))))
                     (_g1495914976_ _g1496014979_)))))
          (_g1495815021_ _stx14957_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx14906_ _state14907_)
      (let ((_g1490914919_
             (lambda (_g1491014916_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1491014916_))))
        (let ((_g1490814954_
               (lambda (_g1491014922_)
                 (if (gx#stx-pair? _g1491014922_)
                     (let ((_e1491214924_ (gx#stx-e _g1491014922_)))
                       (let ((_hd1491314927_ (##car _e1491214924_))
                             (_tl1491414929_ (##cdr _e1491214924_)))
                         ((lambda (_L14932_)
                            (let ((_c-body14946_
                                   (map (lambda (_g1494114943_)
                                          (gxc#compile-e
                                           _g1494114943_
                                           _state14907_))
                                        _L14932_)))
                              (let ((_c-body14951_
                                     (filter (lambda (_$obj14948_)
                                               (not (void? _$obj14948_)))
                                             _c-body14946_)))
                                (let () (cons '%#begin _c-body14951_)))))
                          _tl1491414929_)))
                     (_g1490914919_ _g1491014922_)))))
          (_g1490814954_ _stx14906_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx14814_ _state14815_)
      (let ((_g1481714827_
             (lambda (_g1481814824_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1481814824_))))
        (let ((_g1481614903_
               (lambda (_g1481814830_)
                 (if (gx#stx-pair? _g1481814830_)
                     (let ((_e1482014832_ (gx#stx-e _g1481814830_)))
                       (let ((_hd1482114835_ (##car _e1482014832_))
                             (_tl1482214837_ (##cdr _e1482014832_)))
                         ((lambda (_L14840_)
                            (let ((_phi14850_
                                   (fx1+ (gx#current-expander-phi))))
                              (let ((_block14852_
                                     (gxc#meta-state-begin-phi!
                                      _state14815_
                                      _phi14850_)))
                                (let ((_compiled14855_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  '%#begin)
                                                 _L14840_)
                                           _state14815_))
                                        gx#current-expander-phi
                                        _phi14850_)))
                                  (let ()
                                    (let ((_g1485814868_
                                           (lambda (_g1485914865_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1485914865_))))
                                      (let ((_g1485714900_
                                             (lambda (_g1485914871_)
                                               (if (gx#stx-pair? _g1485914871_)
                                                   (let ((_e1486114873_
                                                          (gx#stx-e
                                                           _g1485914871_)))
                                                     (let ((_hd1486214876_
                                                            (##car _e1486114873_))
                                                           (_tl1486314878_
                                                            (##cdr _e1486114873_)))
                                                       (if (gx#identifier?
                                                            _hd1486214876_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd1486214876_)
                                                               ((lambda (_L14881_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body14898_
                                 (filter (lambda (_$obj14895_)
                                           (not (void? _$obj14895_)))
                                         _L14881_)))
                            (if _block14852_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block14852_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body14898_))
                                (if (null? _c-body14898_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body14898_)))))
                        _tl1486314878_)
                       (_g1485814868_ _g1485914871_))
                   (_g1485814868_ _g1485914871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1485814868_
                                                    _g1485914871_)))))
                                        (_g1485714900_ _compiled14855_))))))))
                          _tl1482214837_)))
                     (_g1481714827_ _g1481814830_)))))
          (_g1481614903_ _stx14814_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx14745_ _state14746_)
      (begin
        (gxc#meta-state-end-phi! _state14746_)
        (let ((_g1474814762_
               (lambda (_g1474914759_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1474914759_))))
          (let ((_g1474714811_
                 (lambda (_g1474914765_)
                   (if (gx#stx-pair? _g1474914765_)
                       (let ((_e1475214767_ (gx#stx-e _g1474914765_)))
                         (let ((_hd1475314770_ (##car _e1475214767_))
                               (_tl1475414772_ (##cdr _e1475214767_)))
                           (if (gx#stx-pair? _tl1475414772_)
                               (let ((_e1475514775_ (gx#stx-e _tl1475414772_)))
                                 (let ((_hd1475614778_ (##car _e1475514775_))
                                       (_tl1475714780_ (##cdr _e1475514775_)))
                                   ((lambda (_L14783_ _L14784_)
                                      (let ((_key14797_
                                             (gx#core-identifier-key
                                              _L14784_)))
                                        (begin
                                          (if (interned-symbol? _key14797_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx14745_
                                               _L14784_
                                               _key14797_))
                                          (let ((_ctx14799_
                                                 (gx#syntax-local-e _L14784_)))
                                            (let ((_code14802_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (gx#module-context-code
                                                        _ctx14799_)
                                                       _state14746_))
                                                    gx#current-expander-context
                                                    _ctx14799_)))
                                              (let ((_rt14804_
                                                     (hash-get
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx14799_)))
                                                (let ((_loader14806_
                                                       (if _rt14804_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt14804_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid14808_
                                                         (gx#stx-e _L14784_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state14746_)
                                                        (cons '%#module
                                                              (cons _modid14808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code14802_ _loader14806_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl1475714780_
                                    _hd1475614778_)))
                               (_g1474814762_ _g1474914765_))))
                       (_g1474814762_ _g1474914765_)))))
            (_g1474714811_ _stx14745_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx14735_ _context-chain14736_)
      ((letrec ((_lp14738_
                 (lambda (_ctx14740_ _path14741_)
                   (let ((_super14743_ (gx#phi-context-super _ctx14740_)))
                     (if (memq _super14743_ _context-chain14736_)
                         (cons* '#f
                                (car (gx#module-context-path _ctx14740_))
                                _path14741_)
                         (if (gx#module-context? _super14743_)
                             (_lp14738_
                              _super14743_
                              (cons (car (gx#module-context-path _ctx14740_))
                                    _path14741_))
                             (cons (make-symbol
                                    '":"
                                    (gx#expander-context-id _ctx14740_))
                                   _path14741_)))))))
         _lp14738_)
       _ctx14735_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp14730_
                 (lambda (_ctx14732_ _r14733_)
                   (if (gx#module-context? _ctx14732_)
                       (_lp14730_
                        (gx#phi-context-super _ctx14732_)
                        (cons _ctx14732_ _r14733_))
                       _r14733_))))
         _lp14730_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx14499_ _state14500_)
      (let ((_context-chain14502_ (gxc#current-context-chain)))
        (let ((_make-import-spec14503_
               (lambda (_in14666_)
                 (let ((_in1466714679_ _in14666_))
                   (let ((_E1466914683_
                          (lambda ()
                            (error '"No clause matching" _in1466714679_))))
                     (let ((_K1467014693_
                            (lambda (_phi14686_
                                     _name14687_
                                     _src-name14688_
                                     _src-phi14689_
                                     _src-key14690_
                                     _src-ctx14691_)
                              (cons _phi14686_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name14687_)
                                          (cons _src-phi14689_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name14688_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in1466714679_)
                           (let ((_e1467114696_
                                  (##vector-ref _in1466714679_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e1467114696_)
                                 (let ((_e1467414699_
                                        (##vector-ref _e1467114696_ '1)))
                                   (let ((_src-ctx14702_ _e1467414699_))
                                     (let ((_e1467514704_
                                            (##vector-ref _e1467114696_ '2)))
                                       (let ((_src-key14707_ _e1467514704_))
                                         (let ((_e1467614709_
                                                (##vector-ref
                                                 _e1467114696_
                                                 '3)))
                                           (let ((_src-phi14712_
                                                  _e1467614709_))
                                             (let ((_e1467714714_
                                                    (##vector-ref
                                                     _e1467114696_
                                                     '4)))
                                               (let ((_src-name14717_
                                                      _e1467714714_))
                                                 (let ((_e1467214719_
                                                        (##vector-ref
                                                         _in1466714679_
                                                         '2)))
                                                   (let ((_name14722_
                                                          _e1467214719_))
                                                     (let ((_e1467314724_
                                                            (##vector-ref
                                                             _in1466714679_
                                                             '3)))
                                                       (let ((_phi14727_
                                                              _e1467314724_))
                                                         (_K1467014693_
                                                          _phi14727_
                                                          _name14722_
                                                          _src-name14717_
                                                          _src-phi14712_
                                                          _src-key14707_
                                                          _src-ctx14702_)))))))))))))
                                 (_E1466914683_)))
                           (_E1466914683_))))))))
          (let ((_make-import-path14504_
                 (lambda (_ctx14664_)
                   (gxc#generate-meta-import-path
                    _ctx14664_
                    _context-chain14502_))))
            (let ((_make-import-spec-in14505_
                   (lambda (_ctx14661_ _in14662_)
                     (cons 'spec:
                           (cons (_make-import-path14504_ _ctx14661_)
                                 (reverse _in14662_))))))
              (begin
                (gxc#meta-state-end-phi! _state14500_)
                (let ((_g1450714517_
                       (lambda (_g1450814514_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1450814514_))))
                  (let ((_g1450614658_
                         (lambda (_g1450814520_)
                           (if (gx#stx-pair? _g1450814520_)
                               (let ((_e1451014522_ (gx#stx-e _g1450814520_)))
                                 (let ((_hd1451114525_ (##car _e1451014522_))
                                       (_tl1451214527_ (##cdr _e1451014522_)))
                                   ((lambda (_L14530_)
                                      ((letrec ((_lp14541_
                                                 (lambda (_rest14543_
                                                          _current-src14544_
                                                          _current-in14545_
                                                          _r14546_)
                                                   (let ((_rest1454714555_
                                                          _rest14543_))
                                                     (let ((_E1455014559_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest1454714555_))))
               (let ((_else1454914565_
                      (lambda ()
                        (let ((_r14563_
                               (if _current-src14544_
                                   (cons (_make-import-spec-in14505_
                                          _current-src14544_
                                          _current-in14545_)
                                         _r14546_)
                                   _r14546_)))
                          (cons '%#import (reverse _r14563_))))))
                 (let ((_K1455114646_
                        (lambda (_rest14568_ _in14569_)
                          (if (gx#module-import? _in14569_)
                              (let ((_in1457014577_ _in14569_))
                                (let ((_E1457214581_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in1457014577_))))
                                  (let ((_K1457314586_
                                         (lambda (_src-ctx14584_)
                                           (if (eq? _current-src14544_
                                                    _src-ctx14584_)
                                               (_lp14541_
                                                _rest14568_
                                                _current-src14544_
                                                (cons (_make-import-spec14503_
                                                       _in14569_)
                                                      _current-in14545_)
                                                _r14546_)
                                               (if _current-src14544_
                                                   (_lp14541_
                                                    _rest14568_
                                                    _src-ctx14584_
                                                    (cons (_make-import-spec14503_
                                                           _in14569_)
                                                          '())
                                                    (cons (_make-import-spec-in14505_
                                                           _current-src14544_
                                                           _current-in14545_)
                                                          _r14546_))
                                                   (_lp14541_
                                                    _rest14568_
                                                    _src-ctx14584_
                                                    (cons (_make-import-spec14503_
                                                           _in14569_)
                                                          '())
                                                    _r14546_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in1457014577_)
                                        (let ((_e1457414589_
                                               (##vector-ref
                                                _in1457014577_
                                                '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e1457414589_)
                                              (let ((_e1457514592_
                                                     (##vector-ref
                                                      _e1457414589_
                                                      '1)))
                                                (let ((_src-ctx14595_
                                                       _e1457514592_))
                                                  (_K1457314586_
                                                   _src-ctx14595_)))
                                              (_E1457214581_)))
                                        (_E1457214581_)))))
                              (if (gx#import-set? _in14569_)
                                  (let ((_phi14597_
                                         (gx#import-set-phi _in14569_)))
                                    (let ((_src14599_
                                           (gx#import-set-source _in14569_)))
                                      (let ((_src-in14639_
                                             (let ((_g1460014609_
                                                    (_make-import-path14504_
                                                     _src14599_)))
                                               (let ((_E1460314613_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g1460014609_))))
                                                 (let ((_try-match1460214624_
                                                        (lambda ()
                                                          (let ((_K1460414619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path14617_) (cons 'in: _path14617_))))
                    (let ((_path14622_ _g1460014609_))
                      (_K1460414619_ _path14622_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K1460514629_
                                                          (lambda (_path14627_)
                                                            _path14627_)))
                                                     (if (##pair? _g1460014609_)
                                                         (let ((_hd1460614632_
                                                                (##car _g1460014609_))
                                                               (_tl1460714634_
                                                                (##cdr _g1460014609_)))
                                                           (let ((_path14637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1460614632_))
                     (if (##null? _tl1460714634_)
                         (_K1460514629_ _path14637_)
                         (_try-match1460214624_))))
                 (_try-match1460214624_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r14641_
                                               (if _current-src14544_
                                                   (cons (_make-import-spec-in14505_
                                                          _current-src14544_
                                                          _current-in14545_)
                                                         _r14546_)
                                                   _r14546_)))
                                          (let ()
                                            (_lp14541_
                                             _rest14568_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi14597_)
                                                       _src-in14639_
                                                       (cons 'phi:
                                                             (cons _phi14597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in14639_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r14641_)))))))
                                  (if (gx#module-context? _in14569_)
                                      (let ((_r14644_
                                             (if _current-src14544_
                                                 (cons (_make-import-spec-in14505_
                                                        _current-src14544_
                                                        _current-in14545_)
                                                       _r14546_)
                                                 _r14546_)))
                                        (_lp14541_
                                         _rest14568_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path14504_
                                                      _in14569_))
                                               _r14644_)))
                                      '#!void))))))
                   (if (##pair? _rest1454714555_)
                       (let ((_hd1455214649_ (##car _rest1454714555_))
                             (_tl1455314651_ (##cdr _rest1454714555_)))
                         (let ((_in14654_ _hd1455214649_))
                           (let ((_rest14656_ _tl1455314651_))
                             (_K1455114646_ _rest14656_ _in14654_))))
                       (_else1454914565_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp14541_)
                                       _L14530_
                                       '#f
                                       '()
                                       '()))
                                    _tl1451214527_)))
                               (_g1450714517_ _g1450814520_)))))
                    (_g1450614658_ _stx14499_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx14309_ _state14310_)
      (let ((_context-chain14312_ (gxc#current-context-chain)))
        (let ((_make-import-path14313_
               (lambda (_ctx14497_)
                 (gxc#generate-meta-import-path
                  _ctx14497_
                  _context-chain14312_))))
          (let ((_g1431514325_
                 (lambda (_g1431614322_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1431614322_))))
            (let ((_g1431414494_
                   (lambda (_g1431614328_)
                     (if (gx#stx-pair? _g1431614328_)
                         (let ((_e1431814330_ (gx#stx-e _g1431614328_)))
                           (let ((_hd1431914333_ (##car _e1431814330_))
                                 (_tl1432014335_ (##cdr _e1431814330_)))
                             ((lambda (_L14338_)
                                ((letrec ((_lp14349_
                                           (lambda (_rest14351_ _r14352_)
                                             (let ((_rest1435314361_
                                                    _rest14351_))
                                               (let ((_E1435614365_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest1435314361_))))
                                                 (let ((_else1435514369_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r14352_)))))
                                                   (let ((_K1435714482_
                                                          (lambda (_rest14372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out14373_)
                    (let ((_out1437414387_ _out14373_))
                      (let ((_E1437714391_
                             (lambda ()
                               (error '"No clause matching" _out1437414387_))))
                        (let ((_try-match1437614454_
                               (lambda ()
                                 (let ((_K1437814441_
                                        (lambda (_phi14395_ _src14396_)
                                          (let ((_out14436_
                                                 (if _src14396_
                                                     (cons 'import:
                                                           (cons (let ((_g1439714406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path14313_ _src14396_)))
                           (let ((_E1440014410_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g1439714406_))))
                             (let ((_try-match1439914421_
                                    (lambda ()
                                      (let ((_K1440114416_
                                             (lambda (_path14414_)
                                               (cons 'in: _path14414_))))
                                        (let ((_path14419_ _g1439714406_))
                                          (_K1440114416_ _path14419_))))))
                               (let ((_K1440214426_
                                      (lambda (_path14424_) _path14424_)))
                                 (if (##pair? _g1439714406_)
                                     (let ((_hd1440314429_
                                            (##car _g1439714406_))
                                           (_tl1440414431_
                                            (##cdr _g1439714406_)))
                                       (let ((_path14434_ _hd1440314429_))
                                         (if (##null? _tl1440414431_)
                                             (_K1440214426_ _path14434_)
                                             (_try-match1439914421_))))
                                     (_try-match1439914421_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out14438_
                                                   (if (fxzero? _phi14395_)
                                                       _out14436_
                                                       (cons 'phi:
                                                             (cons _phi14395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out14436_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp14349_
                                                 _rest14372_
                                                 (cons _out14438_
                                                       _r14352_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out1437414387_)
                                       (let ((_e1437914444_
                                              (##vector-ref
                                               _out1437414387_
                                               '1)))
                                         (let ((_src14447_ _e1437914444_))
                                           (let ((_e1438014449_
                                                  (##vector-ref
                                                   _out1437414387_
                                                   '2)))
                                             (let ((_phi14452_ _e1438014449_))
                                               (_K1437814441_
                                                _phi14452_
                                                _src14447_)))))
                                       (_E1437714391_))))))
                          (let ((_K1438114461_
                                 (lambda (_name14457_ _phi14458_ _key14459_)
                                   (_lp14349_
                                    _rest14372_
                                    (cons (cons 'spec:
                                                (cons _phi14458_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key14459_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name14457_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r14352_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out1437414387_)
                                (let ((_e1438214464_
                                       (##vector-ref _out1437414387_ '1)))
                                  (let ((_e1438314467_
                                         (##vector-ref _out1437414387_ '2)))
                                    (let ((_key14470_ _e1438314467_))
                                      (let ((_e1438414472_
                                             (##vector-ref
                                              _out1437414387_
                                              '3)))
                                        (let ((_phi14475_ _e1438414472_))
                                          (let ((_e1438514477_
                                                 (##vector-ref
                                                  _out1437414387_
                                                  '4)))
                                            (let ((_name14480_ _e1438514477_))
                                              (_K1438114461_
                                               _name14480_
                                               _phi14475_
                                               _key14470_))))))))
                                (_try-match1437614454_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest1435314361_)
                                                         (let ((_hd1435814485_
                                                                (##car _rest1435314361_))
                                                               (_tl1435914487_
                                                                (##cdr _rest1435314361_)))
                                                           (let ((_out14490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1435814485_))
                     (let ((_rest14492_ _tl1435914487_))
                       (_K1435714482_ _rest14492_ _out14490_))))
                 (_else1435514369_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp14349_)
                                 _L14338_
                                 '()))
                              _tl1432014335_)))
                         (_g1431514325_ _g1431614328_)))))
              (_g1431414494_ _stx14309_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx14270_ _state14271_)
      (begin
        (gxc#meta-state-end-phi! _state14271_)
        (let ((_g1427314283_
               (lambda (_g1427414280_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1427414280_))))
          (let ((_g1427214306_
                 (lambda (_g1427414286_)
                   (if (gx#stx-pair? _g1427414286_)
                       (let ((_e1427614288_ (gx#stx-e _g1427414286_)))
                         (let ((_hd1427714291_ (##car _e1427614288_))
                               (_tl1427814293_ (##cdr _e1427614288_)))
                           ((lambda (_L14296_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L14296_)))
                            _tl1427814293_)))
                       (_g1427314283_ _g1427414286_)))))
            (_g1427214306_ _stx14270_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx14141_ _state14142_)
      (let ((_generate114144_
             (lambda (_id14265_ _eid14266_)
               (let ((_eid14268_ (gx#stx-e _eid14266_)))
                 (begin
                   (if (interned-symbol? _eid14268_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx14141_
                        _eid14268_))
                   (cons (gxc#generate-runtime-identifier _id14265_)
                         (cons _eid14268_ '())))))))
        (let ((_g1414614174_
               (lambda (_g1414714171_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1414714171_))))
          (let ((_g1414514262_
                 (lambda (_g1414714177_)
                   (if (gx#stx-pair? _g1414714177_)
                       (let ((_e1415014179_ (gx#stx-e _g1414714177_)))
                         (let ((_hd1415114182_ (##car _e1415014179_))
                               (_tl1415214184_ (##cdr _e1415014179_)))
                           (if (gx#stx-pair/null? _tl1415214184_)
                               (if (fx>= (gx#stx-length _tl1415214184_) '0)
                                   (let ((_g18667_
                                          (gx#syntax-split-splice
                                           _tl1415214184_
                                           '0)))
                                     (begin
                                       (let ((_g18668_
                                              (values-count _g18667_)))
                                         (if (not (fx= _g18668_ 2))
                                             (error "Context expects 2 values"
                                                    _g18668_)))
                                       (let ((_target1415314187_
                                              (values-ref _g18667_ 0))
                                             (_tl1415514189_
                                              (values-ref _g18667_ 1)))
                                         (if (gx#stx-null? _tl1415514189_)
                                             (letrec ((_loop1415614192_
                                                       (lambda (_hd1415414195_
                                                                _eid1416014197_
                                                                _id1416114199_)
                                                         (if (gx#stx-pair?
                                                              _hd1415414195_)
                                                             (let ((_e1415714202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1415414195_)))
                       (let ((_lp-hd1415814205_ (##car _e1415714202_))
                             (_lp-tl1415914207_ (##cdr _e1415714202_)))
                         (if (gx#stx-pair? _lp-hd1415814205_)
                             (let ((_e1416414210_
                                    (gx#stx-e _lp-hd1415814205_)))
                               (let ((_hd1416514213_ (##car _e1416414210_))
                                     (_tl1416614215_ (##cdr _e1416414210_)))
                                 (if (gx#stx-pair? _tl1416614215_)
                                     (let ((_e1416714218_
                                            (gx#stx-e _tl1416614215_)))
                                       (let ((_hd1416814221_
                                              (##car _e1416714218_))
                                             (_tl1416914223_
                                              (##cdr _e1416714218_)))
                                         (if (gx#stx-null? _tl1416914223_)
                                             (_loop1415614192_
                                              _lp-tl1415914207_
                                              (cons _hd1416814221_
                                                    _eid1416014197_)
                                              (cons _hd1416514213_
                                                    _id1416114199_))
                                             (_g1414614174_ _g1414714177_))))
                                     (_g1414614174_ _g1414714177_))))
                             (_g1414614174_ _g1414714177_))))
                     (let ((_eid1416214226_ (reverse _eid1416014197_))
                           (_id1416314228_ (reverse _id1416114199_)))
                       ((lambda (_L14231_ _L14232_)
                          (cons '%#extern
                                (map _generate114144_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1424714250_
                                                       _g1424814252_)
                                                (cons _g1424714250_
                                                      _g1424814252_))
                                              '()
                                              _L14232_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1425414257_
                                                       _g1425514259_)
                                                (cons _g1425414257_
                                                      _g1425514259_))
                                              '()
                                              _L14231_)))))
                        _eid1416214226_
                        _id1416314228_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1415614192_
                                                _target1415314187_
                                                '()
                                                '()))
                                             (_g1414614174_ _g1414714177_)))))
                                   (_g1414614174_ _g1414714177_))
                               (_g1414614174_ _g1414714177_))))
                       (_g1414614174_ _g1414714177_)))))
            (_g1414514262_ _stx14141_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx13936_ _state13937_)
      (let ((_generate113939_
             (lambda (_id14136_)
               (let ((_eid14138_ (gxc#generate-runtime-binding-id _id14136_))
                     (_ident14139_
                      (gxc#generate-runtime-identifier _id14136_)))
                 (cons '%#define-runtime
                       (cons _ident14139_ (cons _eid14138_ '())))))))
        (let ((_generate*13940_
               (lambda (_all14104_)
                 (let ((_all1410514113_ _all14104_))
                   (let ((_E1410814117_
                          (lambda ()
                            (error '"No clause matching" _all1410514113_))))
                     (let ((_else1410714121_
                            (lambda () (cons '%#begin _all14104_))))
                       (let ((_K1410914126_ (lambda (_one14124_) _one14124_)))
                         (if (##pair? _all1410514113_)
                             (let ((_hd1411014129_ (##car _all1410514113_))
                                   (_tl1411114131_ (##cdr _all1410514113_)))
                               (let ((_one14134_ _hd1411014129_))
                                 (if (##null? _tl1411114131_)
                                     (_K1410914126_ _one14134_)
                                     (_else1410714121_))))
                             (_else1410714121_)))))))))
          (let ((_g1394213959_
                 (lambda (_g1394313956_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1394313956_))))
            (let ((_g1394114101_
                   (lambda (_g1394313962_)
                     (if (gx#stx-pair? _g1394313962_)
                         (let ((_e1394613964_ (gx#stx-e _g1394313962_)))
                           (let ((_hd1394713967_ (##car _e1394613964_))
                                 (_tl1394813969_ (##cdr _e1394613964_)))
                             (if (gx#stx-pair? _tl1394813969_)
                                 (let ((_e1394913972_
                                        (gx#stx-e _tl1394813969_)))
                                   (let ((_hd1395013975_ (##car _e1394913972_))
                                         (_tl1395113977_
                                          (##cdr _e1394913972_)))
                                     (if (gx#stx-pair? _tl1395113977_)
                                         (let ((_e1395213980_
                                                (gx#stx-e _tl1395113977_)))
                                           (let ((_hd1395313983_
                                                  (##car _e1395213980_))
                                                 (_tl1395413985_
                                                  (##cdr _e1395213980_)))
                                             (if (gx#stx-null? _tl1395413985_)
                                                 ((lambda (_L13988_ _L13989_)
                                                    ((letrec ((_lp14005_
                                                               (lambda (_rest14007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r14008_)
                         (let ((_g1401314029_
                                (lambda (_g1401414026_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1401414026_))))
                           (let ((_g1401214036_
                                  (lambda (_g1401414032_)
                                    ((lambda ()
                                       (_generate*13940_
                                        (reverse _r14008_)))))))
                             (let ((_g1401114052_
                                    (lambda (_g1401414039_)
                                      ((lambda (_L14041_)
                                         (if (gx#identifier? _L14041_)
                                             (_generate*13940_
                                              (foldl cons
                                                     (cons (_generate113939_
                                                            _L14041_)
                                                           '())
                                                     _r14008_))
                                             (_g1401214036_ _g1401414039_)))
                                       _g1401414039_))))
                               (let ((_g1401014076_
                                      (lambda (_g1401414055_)
                                        (if (gx#stx-pair? _g1401414055_)
                                            (let ((_e1402114057_
                                                   (gx#stx-e _g1401414055_)))
                                              (let ((_hd1402214060_
                                                     (##car _e1402114057_))
                                                    (_tl1402314062_
                                                     (##cdr _e1402114057_)))
                                                ((lambda (_L14065_ _L14066_)
                                                   (_lp14005_
                                                    _L14065_
                                                    (cons (_generate113939_
                                                           _L14066_)
                                                          _r14008_)))
                                                 _tl1402314062_
                                                 _hd1402214060_)))
                                            (_g1401114052_ _g1401414055_)))))
                                 (let ((_g1400914098_
                                        (lambda (_g1401414079_)
                                          (if (gx#stx-pair? _g1401414079_)
                                              (let ((_e1401614081_
                                                     (gx#stx-e _g1401414079_)))
                                                (let ((_hd1401714084_
                                                       (##car _e1401614081_))
                                                      (_tl1401814086_
                                                       (##cdr _e1401614081_)))
                                                  (if (gx#stx-datum?
                                                       _hd1401714084_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1401714084_)
                          '#f)
                  ((lambda (_L14089_) (_lp14005_ _L14089_ _r14008_))
                   _tl1401814086_)
                  (_g1401014076_ _g1401414079_))
              (_g1401014076_ _g1401414079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1401014076_ _g1401414079_)))))
                                   (_g1400914098_ _rest14007_)))))))))
               _lp14005_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L13989_
                                                     '()))
                                                  _hd1395313983_
                                                  _hd1395013975_)
                                                 (_g1394213959_
                                                  _g1394313962_))))
                                         (_g1394213959_ _g1394313962_))))
                                 (_g1394213959_ _g1394313962_))))
                         (_g1394213959_ _g1394313962_)))))
              (_g1394114101_ _stx13936_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx13833_ _state13834_)
      (let ((_g1383613853_
             (lambda (_g1383713850_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1383713850_))))
        (let ((_g1383513933_
               (lambda (_g1383713856_)
                 (if (gx#stx-pair? _g1383713856_)
                     (let ((_e1384013858_ (gx#stx-e _g1383713856_)))
                       (let ((_hd1384113861_ (##car _e1384013858_))
                             (_tl1384213863_ (##cdr _e1384013858_)))
                         (if (gx#stx-pair? _tl1384213863_)
                             (let ((_e1384313866_ (gx#stx-e _tl1384213863_)))
                               (let ((_hd1384413869_ (##car _e1384313866_))
                                     (_tl1384513871_ (##cdr _e1384313866_)))
                                 (if (gx#stx-pair? _tl1384513871_)
                                     (let ((_e1384613874_
                                            (gx#stx-e _tl1384513871_)))
                                       (let ((_hd1384713877_
                                              (##car _e1384613874_))
                                             (_tl1384813879_
                                              (##cdr _e1384613874_)))
                                         (if (gx#stx-null? _tl1384813879_)
                                             ((lambda (_L13882_ _L13883_)
                                                (let ((_eid13898_
                                                       (gxc#generate-runtime-binding-id
                                                        _L13883_)))
                                                  (let ((_phi13900_
                                                         (fx1+ (gx#current-expander-phi))))
                                                    (let ((_block13902_
                                                           (gxc#meta-state-begin-phi!
                                                            _state13834_
                                                            _phi13900_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g1390513912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1390613909_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1390613909_))))
                    (let ((_g1390413930_
                           (lambda (_g1390613915_)
                             ((lambda (_L13917_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state13834_
                                   _phi13900_
                                   (cons (gx#datum->syntax
                                          '#f
                                          '%#define-runtime)
                                         (cons _L13917_
                                               (cons _L13882_ '()))))))
                              _g1390613915_))))
                      (_g1390413930_ _eid13898_)))
                  (if _block13902_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block13902_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L13883_)
                                                    (cons _eid13898_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L13883_)
                                  (cons _eid13898_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1384713877_
                                              _hd1384413869_)
                                             (_g1383613853_ _g1383713856_))))
                                     (_g1383613853_ _g1383713856_))))
                             (_g1383613853_ _g1383713856_))))
                     (_g1383613853_ _g1383713856_)))))
          (_g1383513933_ _stx13833_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx13765_ _state13766_)
      (let ((_g1376813785_
             (lambda (_g1376913782_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1376913782_))))
        (let ((_g1376713830_
               (lambda (_g1376913788_)
                 (if (gx#stx-pair? _g1376913788_)
                     (let ((_e1377213790_ (gx#stx-e _g1376913788_)))
                       (let ((_hd1377313793_ (##car _e1377213790_))
                             (_tl1377413795_ (##cdr _e1377213790_)))
                         (if (gx#stx-pair? _tl1377413795_)
                             (let ((_e1377513798_ (gx#stx-e _tl1377413795_)))
                               (let ((_hd1377613801_ (##car _e1377513798_))
                                     (_tl1377713803_ (##cdr _e1377513798_)))
                                 (if (gx#stx-pair? _tl1377713803_)
                                     (let ((_e1377813806_
                                            (gx#stx-e _tl1377713803_)))
                                       (let ((_hd1377913809_
                                              (##car _e1377813806_))
                                             (_tl1378013811_
                                              (##cdr _e1377813806_)))
                                         (if (gx#stx-null? _tl1378013811_)
                                             ((lambda (_L13814_ _L13815_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L13815_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L13814_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1377913809_
                                              _hd1377613801_)
                                             (_g1376813785_ _g1376913788_))))
                                     (_g1376813785_ _g1376913788_))))
                             (_g1376813785_ _g1376913788_))))
                     (_g1376813785_ _g1376913788_)))))
          (_g1376713830_ _stx13765_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx13762_ _state13763_)
      (begin
        (gxc#meta-state-add-phi!
         _state13763_
         (gx#current-expander-phi)
         _stx13762_)
        (gxc#generate-meta-define-values% _stx13762_ _state13763_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx13759_ _state13760_)
      (begin
        (gxc#meta-state-add-phi!
         _state13760_
         (gx#current-expander-phi)
         _stx13759_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args13756_
      (apply make-struct-instance gxc#meta-state::t _$args13756_)))
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
    (let ((_@super13751_
           (let ((_$super13745_
                  (make-promise
                   (lambda ()
                     (let ((_$e13742_
                            (struct-find-next-method
                             gxc#meta-state::t
                             ':init!)))
                       (if _$e13742_
                           _$e13742_
                           (error '"Cannot find super method"
                                  gxc#meta-state::t
                                  ':init!)))))))
             (lambda _$args13748_
               (apply (force _$super13745_) _$args13748_)))))
      (lambda (_self13753_ _ctx13754_)
        (direct-struct-instance-init!
         _self13753_
         (symbol->string (gx#expander-context-id _ctx13754_))
         '1
         (make-hash-table-eq)
         '()))))
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
    (lambda _$args13738_
      (apply make-struct-instance gxc#meta-state-block::t _$args13738_)))
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
    (lambda (_state13697_ _phi13698_)
      (let ((_state1369913707_ _state13697_))
        (let ((_E1370113711_
               (lambda () (error '"No clause matching" _state1369913707_))))
          (let ((_K1370213720_
                 (lambda (_open13714_ _n13715_ _src13716_)
                   (if (hash-get _open13714_ _phi13698_)
                       '#f
                       (let ((_block-ref13718_
                              (string-append
                               _src13716_
                               '"__"
                               (number->string _n13715_))))
                         (begin
                           (gxc#meta-state-n-set! _state13697_ (fx1+ _n13715_))
                           (hash-put!
                            _open13714_
                            _phi13698_
                            (gxc#make-meta-state-block
                             (gx#current-expander-context)
                             _phi13698_
                             _n13715_
                             '()))
                           _block-ref13718_))))))
            (if (struct-instance? gxc#meta-state::t _state1369913707_)
                (let ((_e1370313723_ (##vector-ref _state1369913707_ '1)))
                  (let ((_src13726_ _e1370313723_))
                    (let ((_e1370413728_ (##vector-ref _state1369913707_ '2)))
                      (let ((_n13731_ _e1370413728_))
                        (let ((_e1370513733_
                               (##vector-ref _state1369913707_ '3)))
                          (let ((_open13736_ _e1370513733_))
                            (_K1370213720_
                             _open13736_
                             _n13731_
                             _src13726_)))))))
                (_E1370113711_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state13691_ _phi13692_ _stx13693_)
      (let ((_block13695_
             (hash-get (gxc#meta-state-open _state13691_) _phi13692_)))
        (gxc#meta-state-block-code-set!
         _block13695_
         (cons _stx13693_ (gxc#meta-state-block-code _block13695_))))))
  (define gxc#meta-state-end-phi!
    (lambda (_state13686_)
      (begin
        (gxc#meta-state-blocks-set!
         _state13686_
         (hash-fold
          (lambda (_g18669_ _block13688_ _r13689_)
            (cons _block13688_ _r13689_))
          (gxc#meta-state-blocks _state13686_)
          (gxc#meta-state-open _state13686_)))
        (gxc#meta-state-open-set! _state13686_ (make-hash-table-eq)))))
  (define gxc#meta-state-end!
    (lambda (_state13638_)
      (begin
        (gxc#meta-state-end-phi! _state13638_)
        (foldl (lambda (_block13640_ _r13641_)
                 (let ((_block1364213651_ _block13640_))
                   (let ((_E1364413655_
                          (lambda ()
                            (error '"No clause matching" _block1364213651_))))
                     (let ((_K1364513663_
                            (lambda (_code13658_
                                     _n13659_
                                     _phi13660_
                                     _ctx13661_)
                              (if (null? _code13658_)
                                  _r13641_
                                  (cons (cons _ctx13661_
                                              (cons _phi13660_
                                                    (cons _n13659_
                                                          (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _code13658_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _r13641_)))))
                       (if (struct-instance?
                            gxc#meta-state-block::t
                            _block1364213651_)
                           (let ((_e1364613666_
                                  (##vector-ref _block1364213651_ '1)))
                             (let ((_ctx13669_ _e1364613666_))
                               (let ((_e1364713671_
                                      (##vector-ref _block1364213651_ '2)))
                                 (let ((_phi13674_ _e1364713671_))
                                   (let ((_e1364813676_
                                          (##vector-ref _block1364213651_ '3)))
                                     (let ((_n13679_ _e1364813676_))
                                       (let ((_e1364913681_
                                              (##vector-ref
                                               _block1364213651_
                                               '4)))
                                         (let ((_code13684_ _e1364913681_))
                                           (_K1364513663_
                                            _code13684_
                                            _n13679_
                                            _phi13674_
                                            _ctx13669_)))))))))
                           (_E1364413655_))))))
               '()
               (gxc#meta-state-blocks _state13638_)))))
  (define gxc#collect-expression-refs
    (lambda (_stx13634_)
      (let ((_ht13636_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx13634_ _ht13636_)
          _ht13636_))))
  (define gxc#collect-refs-lambda%
    (lambda (_stx13566_ _ht13567_)
      (let ((_g1356913586_
             (lambda (_g1357013583_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1357013583_))))
        (let ((_g1356813631_
               (lambda (_g1357013589_)
                 (if (gx#stx-pair? _g1357013589_)
                     (let ((_e1357313591_ (gx#stx-e _g1357013589_)))
                       (let ((_hd1357413594_ (##car _e1357313591_))
                             (_tl1357513596_ (##cdr _e1357313591_)))
                         (if (gx#stx-pair? _tl1357513596_)
                             (let ((_e1357613599_ (gx#stx-e _tl1357513596_)))
                               (let ((_hd1357713602_ (##car _e1357613599_))
                                     (_tl1357813604_ (##cdr _e1357613599_)))
                                 (if (gx#stx-pair? _tl1357813604_)
                                     (let ((_e1357913607_
                                            (gx#stx-e _tl1357813604_)))
                                       (let ((_hd1358013610_
                                              (##car _e1357913607_))
                                             (_tl1358113612_
                                              (##cdr _e1357913607_)))
                                         (if (gx#stx-null? _tl1358113612_)
                                             ((lambda (_L13615_ _L13616_)
                                                (gxc#compile-e
                                                 _L13615_
                                                 _ht13567_))
                                              _hd1358013610_
                                              _hd1357713602_)
                                             (_g1356913586_ _g1357013589_))))
                                     (_g1356913586_ _g1357013589_))))
                             (_g1356913586_ _g1357013589_))))
                     (_g1356913586_ _g1357013589_)))))
          (_g1356813631_ _stx13566_)))))
  (define gxc#collect-refs-case-lambda%
    (lambda (_stx13448_ _ht13449_)
      (let ((_g1345113479_
             (lambda (_g1345213476_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1345213476_))))
        (let ((_g1345013563_
               (lambda (_g1345213482_)
                 (if (gx#stx-pair? _g1345213482_)
                     (let ((_e1345513484_ (gx#stx-e _g1345213482_)))
                       (let ((_hd1345613487_ (##car _e1345513484_))
                             (_tl1345713489_ (##cdr _e1345513484_)))
                         (if (gx#stx-pair/null? _tl1345713489_)
                             (if (fx>= (gx#stx-length _tl1345713489_) '0)
                                 (let ((_g18670_
                                        (gx#syntax-split-splice
                                         _tl1345713489_
                                         '0)))
                                   (begin
                                     (let ((_g18671_ (values-count _g18670_)))
                                       (if (not (fx= _g18671_ 2))
                                           (error "Context expects 2 values"
                                                  _g18671_)))
                                     (let ((_target1345813492_
                                            (values-ref _g18670_ 0))
                                           (_tl1346013494_
                                            (values-ref _g18670_ 1)))
                                       (if (gx#stx-null? _tl1346013494_)
                                           (letrec ((_loop1346113497_
                                                     (lambda (_hd1345913500_
                                                              _body1346513502_
                                                              _hd1346613504_)
                                                       (if (gx#stx-pair?
                                                            _hd1345913500_)
                                                           (let ((_e1346213507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1345913500_)))
                     (let ((_lp-hd1346313510_ (##car _e1346213507_))
                           (_lp-tl1346413512_ (##cdr _e1346213507_)))
                       (if (gx#stx-pair? _lp-hd1346313510_)
                           (let ((_e1346913515_ (gx#stx-e _lp-hd1346313510_)))
                             (let ((_hd1347013518_ (##car _e1346913515_))
                                   (_tl1347113520_ (##cdr _e1346913515_)))
                               (if (gx#stx-pair? _tl1347113520_)
                                   (let ((_e1347213523_
                                          (gx#stx-e _tl1347113520_)))
                                     (let ((_hd1347313526_
                                            (##car _e1347213523_))
                                           (_tl1347413528_
                                            (##cdr _e1347213523_)))
                                       (if (gx#stx-null? _tl1347413528_)
                                           (_loop1346113497_
                                            _lp-tl1346413512_
                                            (cons _hd1347313526_
                                                  _body1346513502_)
                                            (cons _hd1347013518_
                                                  _hd1346613504_))
                                           (_g1345113479_ _g1345213482_))))
                                   (_g1345113479_ _g1345213482_))))
                           (_g1345113479_ _g1345213482_))))
                   (let ((_body1346713531_ (reverse _body1346513502_))
                         (_hd1346813533_ (reverse _hd1346613504_)))
                     ((lambda (_L13536_ _L13537_)
                        (for-each
                         (lambda (_g1355113553_)
                           (gxc#compile-e _g1355113553_ _ht13449_))
                         (begin
                           '#!void
                           (foldr (lambda (_g1355513558_ _g1355613560_)
                                    (cons _g1355513558_ _g1355613560_))
                                  '()
                                  _L13536_))))
                      _body1346713531_
                      _hd1346813533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1346113497_
                                              _target1345813492_
                                              '()
                                              '()))
                                           (_g1345113479_ _g1345213482_)))))
                                 (_g1345113479_ _g1345213482_))
                             (_g1345113479_ _g1345213482_))))
                     (_g1345113479_ _g1345213482_)))))
          (_g1345013563_ _stx13448_)))))
  (define gxc#collect-refs-let-values%
    (lambda (_stx13301_ _ht13302_)
      (let ((_g1330413339_
             (lambda (_g1330513336_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1330513336_))))
        (let ((_g1330313445_
               (lambda (_g1330513342_)
                 (if (gx#stx-pair? _g1330513342_)
                     (let ((_e1330913344_ (gx#stx-e _g1330513342_)))
                       (let ((_hd1331013347_ (##car _e1330913344_))
                             (_tl1331113349_ (##cdr _e1330913344_)))
                         (if (gx#stx-pair? _tl1331113349_)
                             (let ((_e1331213352_ (gx#stx-e _tl1331113349_)))
                               (let ((_hd1331313355_ (##car _e1331213352_))
                                     (_tl1331413357_ (##cdr _e1331213352_)))
                                 (if (gx#stx-pair/null? _hd1331313355_)
                                     (if (fx>= (gx#stx-length _hd1331313355_)
                                               '0)
                                         (let ((_g18672_
                                                (gx#syntax-split-splice
                                                 _hd1331313355_
                                                 '0)))
                                           (begin
                                             (let ((_g18673_
                                                    (values-count _g18672_)))
                                               (if (not (fx= _g18673_ 2))
                                                   (error "Context expects 2 values"
                                                          _g18673_)))
                                             (let ((_target1331513360_
                                                    (values-ref _g18672_ 0))
                                                   (_tl1331713362_
                                                    (values-ref _g18672_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1331713362_)
                                                   (letrec ((_loop1331813365_
                                                             (lambda (_hd1331613368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1332213370_
                              _hd1332313372_)
                       (if (gx#stx-pair? _hd1331613368_)
                           (let ((_e1331913375_ (gx#stx-e _hd1331613368_)))
                             (let ((_lp-hd1332013378_ (##car _e1331913375_))
                                   (_lp-tl1332113380_ (##cdr _e1331913375_)))
                               (if (gx#stx-pair? _lp-hd1332013378_)
                                   (let ((_e1332613383_
                                          (gx#stx-e _lp-hd1332013378_)))
                                     (let ((_hd1332713386_
                                            (##car _e1332613383_))
                                           (_tl1332813388_
                                            (##cdr _e1332613383_)))
                                       (if (gx#stx-pair? _tl1332813388_)
                                           (let ((_e1332913391_
                                                  (gx#stx-e _tl1332813388_)))
                                             (let ((_hd1333013394_
                                                    (##car _e1332913391_))
                                                   (_tl1333113396_
                                                    (##cdr _e1332913391_)))
                                               (if (gx#stx-null?
                                                    _tl1333113396_)
                                                   (_loop1331813365_
                                                    _lp-tl1332113380_
                                                    (cons _hd1333013394_
                                                          _expr1332213370_)
                                                    (cons _hd1332713386_
                                                          _hd1332313372_))
                                                   (_g1330413339_
                                                    _g1330513342_))))
                                           (_g1330413339_ _g1330513342_))))
                                   (_g1330413339_ _g1330513342_))))
                           (let ((_expr1332413399_ (reverse _expr1332213370_))
                                 (_hd1332513401_ (reverse _hd1332313372_)))
                             (if (gx#stx-pair? _tl1331413357_)
                                 (let ((_e1333213404_
                                        (gx#stx-e _tl1331413357_)))
                                   (let ((_hd1333313407_ (##car _e1333213404_))
                                         (_tl1333413409_
                                          (##cdr _e1333213404_)))
                                     (if (gx#stx-null? _tl1333413409_)
                                         ((lambda (_L13412_ _L13413_ _L13414_)
                                            (if (for-each
                                                 (lambda (_g1343313435_)
                                                   (gxc#compile-e
                                                    _g1343313435_
                                                    _ht13302_))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1343713440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1343813442_)
                    (cons _g1343713440_ _g1343813442_))
                  '()
                  _L13413_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e
                                                 _L13412_
                                                 _ht13302_)
                                                (_g1330413339_ _g1330513342_)))
                                          _hd1333313407_
                                          _expr1332413399_
                                          _hd1332513401_)
                                         (_g1330413339_ _g1330513342_))))
                                 (_g1330413339_ _g1330513342_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1331813365_
                                                      _target1331513360_
                                                      '()
                                                      '()))
                                                   (_g1330413339_
                                                    _g1330513342_)))))
                                         (_g1330413339_ _g1330513342_))
                                     (_g1330413339_ _g1330513342_))))
                             (_g1330413339_ _g1330513342_))))
                     (_g1330413339_ _g1330513342_)))))
          (_g1330313445_ _stx13301_)))))
  (define gxc#collect-refs-ref%
    (lambda (_stx13244_ _ht13245_)
      (let ((_g1324713260_
             (lambda (_g1324813257_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1324813257_))))
        (let ((_g1324613298_
               (lambda (_g1324813263_)
                 (if (gx#stx-pair? _g1324813263_)
                     (let ((_e1325013265_ (gx#stx-e _g1324813263_)))
                       (let ((_hd1325113268_ (##car _e1325013265_))
                             (_tl1325213270_ (##cdr _e1325013265_)))
                         (if (gx#stx-pair? _tl1325213270_)
                             (let ((_e1325313273_ (gx#stx-e _tl1325213270_)))
                               (let ((_hd1325413276_ (##car _e1325313273_))
                                     (_tl1325513278_ (##cdr _e1325313273_)))
                                 (if (gx#stx-null? _tl1325513278_)
                                     ((lambda (_L13281_)
                                        (let ((_bind13293_
                                               (gx#resolve-identifier
                                                _L13281_)))
                                          (let ((_eid13295_
                                                 (if _bind13293_
                                                     (gx#binding-id
                                                      _bind13293_)
                                                     (gx#stx-e _L13281_))))
                                            (let ()
                                              (hash-put!
                                               _ht13245_
                                               _eid13295_
                                               _eid13295_)))))
                                      _hd1325413276_)
                                     (_g1324713260_ _g1324813263_))))
                             (_g1324713260_ _g1324813263_))))
                     (_g1324713260_ _g1324813263_)))))
          (_g1324613298_ _stx13244_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx13171_ _ht13172_)
      (let ((_g1317413191_
             (lambda (_g1317513188_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1317513188_))))
        (let ((_g1317313241_
               (lambda (_g1317513194_)
                 (if (gx#stx-pair? _g1317513194_)
                     (let ((_e1317813196_ (gx#stx-e _g1317513194_)))
                       (let ((_hd1317913199_ (##car _e1317813196_))
                             (_tl1318013201_ (##cdr _e1317813196_)))
                         (if (gx#stx-pair? _tl1318013201_)
                             (let ((_e1318113204_ (gx#stx-e _tl1318013201_)))
                               (let ((_hd1318213207_ (##car _e1318113204_))
                                     (_tl1318313209_ (##cdr _e1318113204_)))
                                 (if (gx#stx-pair? _tl1318313209_)
                                     (let ((_e1318413212_
                                            (gx#stx-e _tl1318313209_)))
                                       (let ((_hd1318513215_
                                              (##car _e1318413212_))
                                             (_tl1318613217_
                                              (##cdr _e1318413212_)))
                                         (if (gx#stx-null? _tl1318613217_)
                                             ((lambda (_L13220_ _L13221_)
                                                (let ((_bind13236_
                                                       (gx#resolve-identifier
                                                        _L13221_)))
                                                  (let ((_eid13238_
                                                         (if _bind13236_
                                                             (gx#binding-id
                                                              _bind13236_)
                                                             (gx#stx-e
                                                              _L13221_))))
                                                    (let ()
                                                      (begin
                                                        (hash-put!
                                                         _ht13172_
                                                         _eid13238_
                                                         _eid13238_)
                                                        (gxc#compile-e
                                                         _L13220_
                                                         _ht13172_))))))
                                              _hd1318513215_
                                              _hd1318213207_)
                                             (_g1317413191_ _g1317513194_))))
                                     (_g1317413191_ _g1317513194_))))
                             (_g1317413191_ _g1317513194_))))
                     (_g1317413191_ _g1317513194_)))))
          (_g1317313241_ _stx13171_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx13133_)
      (let ((_g1313513145_
             (lambda (_g1313613142_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1313613142_))))
        (let ((_g1313413168_
               (lambda (_g1313613148_)
                 (if (gx#stx-pair? _g1313613148_)
                     (let ((_e1313813150_ (gx#stx-e _g1313613148_)))
                       (let ((_hd1313913153_ (##car _e1313813150_))
                             (_tl1314013155_ (##cdr _e1313813150_)))
                         ((lambda (_L13158_) (ormap gxc#compile-e _L13158_))
                          _tl1314013155_)))
                     (_g1313513145_ _g1313613148_)))))
          (_g1313413168_ _stx13133_))))))
